(* 2オペランドではなく3オペランドのx86アセンブリもどき *)

type id_or_imm = V of Id.t | C of int
type t = (* 命令の列 (caml2html: sparcasm_t) *)
  | Ans of exp * int
  | Let of (Id.t * Type.t) * exp * t * int
and exp = (* 一つ一つの命令に対応する式 (caml2html: sparcasm_exp) *)
  | Nop
  | Set of int
  | SetL of Id.l
  | Mov of Id.t
  | Neg of Id.t
  | Add of Id.t * id_or_imm
  | Sub of Id.t * id_or_imm
  | Ld of Id.t * id_or_imm * int
  | St of Id.t * Id.t * id_or_imm * int
  | FMovD of Id.t
  | FNegD of Id.t
  | FAddD of Id.t * Id.t
  | FSubD of Id.t * Id.t
  | FMulD of Id.t * Id.t
  | FDivD of Id.t * Id.t
  | LdDF of Id.t * id_or_imm * int
  | StDF of Id.t * Id.t * id_or_imm * int
  | Comment of string
  (* virtual instructions *)
  | IfEq of Id.t * id_or_imm * t * t
  | IfLE of Id.t * id_or_imm * t * t
  | IfGE of Id.t * id_or_imm * t * t (* 左右対称ではないので必要 *)
  | IfFEq of Id.t * Id.t * t * t
  | IfFLE of Id.t * Id.t * t * t
  (* closure address, integer arguments, and float arguments *)
  | CallCls of Id.t * Id.t list * Id.t list
  | CallDir of Id.l * Id.t list * Id.t list
  | Save of Id.t * Id.t (* レジスタ変数の値をスタック変数へ保存 (caml2html: sparcasm_save) *)
  | Restore of Id.t (* スタック変数から値を復元 (caml2html: sparcasm_restore) *)
type fundef = { name : Id.l; args : Id.t list; fargs : Id.t list; body : t; ret : Type.t }
(* プログラム全体 = 浮動小数点数テーブル + トップレベル関数 + メインの式 (caml2html: sparcasm_prog) *)
type prog = Prog of (Id.l * float) list * fundef list * t

let fletd(x, e1, e2, n) = Let((x, Type.Float), e1, e2, n)
let seq(e1, e2, n) = Let((Id.gentmp Type.Unit, Type.Unit), e1, e2, n)

let regs = (* Array.init 16 (fun i -> Printf.sprintf "%%r%d" i) *)
  [| "%eax"; "%ebx"; "%ecx"; "%edx"; "%esi"; "%edi" |]
let fregs = Array.init 8 (fun i -> Printf.sprintf "%%xmm%d" i)
let allregs = Array.to_list regs
let allfregs = Array.to_list fregs
let reg_cl = regs.(Array.length regs - 1) (* closure address (caml2html: sparcasm_regcl) *)
(*
let reg_sw = regs.(Array.length regs - 1) (* temporary for swap *)
let reg_fsw = fregs.(Array.length fregs - 1) (* temporary for swap *)
*)
let reg_sp = "%ebp" (* stack pointer *)
let reg_hp = "min_caml_hp" (* heap pointer (caml2html: sparcasm_reghp) *)
(* let reg_ra = "%eax" (* return address *) *)
let is_reg x = (x.[0] = '%' || x = reg_hp)

(* super-tenuki *)
let rec remove_and_uniq xs = function
  | [] -> []
  | x :: ys when S.mem x xs -> remove_and_uniq xs ys
  | x :: ys -> x :: remove_and_uniq (S.add x xs) ys

(* free variables in the order of use (for spilling) (caml2html: sparcasm_fv) *)
let fv_id_or_imm = function V(x) -> [x] | _ -> []
let rec fv_exp = function
  | Nop | Set(_) | SetL(_) | Comment(_) | Restore(_) -> []
  | Mov(x) | Neg(x) | FMovD(x) | FNegD(x) | Save(x, _) -> [x]
  | Add(x, y') | Sub(x, y') | Ld(x, y', _) | LdDF(x, y', _) -> x :: fv_id_or_imm y'
  | St(x, y, z', _) | StDF(x, y, z', _) -> x :: y :: fv_id_or_imm z'
  | FAddD(x, y) | FSubD(x, y) | FMulD(x, y) | FDivD(x, y) -> [x; y]
  | IfEq(x, y', e1, e2) | IfLE(x, y', e1, e2) | IfGE(x, y', e1, e2) -> x :: fv_id_or_imm y' @ remove_and_uniq S.empty (fv e1 @ fv e2) (* uniq here just for efficiency *)
  | IfFEq(x, y, e1, e2) | IfFLE(x, y, e1, e2) -> x :: y :: remove_and_uniq S.empty (fv e1 @ fv e2) (* uniq here just for efficiency *)
  | CallCls(x, ys, zs) -> x :: ys @ zs
  | CallDir(_, ys, zs) -> ys @ zs
and fv = function
  | Ans(exp, _) -> fv_exp exp
  | Let((x, t), exp, e, _) ->
      fv_exp exp @ remove_and_uniq (S.singleton x) (fv e)
let fv e = remove_and_uniq S.empty (fv e)

let rec concat e1 xt e2 =
  match e1 with
  | Ans(exp, n) -> Let(xt, exp, e2, n)
  | Let(yt, exp, e1', n) -> Let(yt, exp, concat e1' xt e2, n)

let align i = (if i mod 8 = 0 then i else i + 4)

(* \tをn回出力する関数 *)
let rec print_tab outchan n =
  if n = 0 then () else (Printf.fprintf outchan "\t"; print_tab outchan (n-1))

(* Id.lを出力する関数 *)
let print_idl outchan i =
  match i with
  | Id.L s -> Printf.fprintf outchan "%s" s
  | _ -> ()

(* 変数のリストを出力する関数 *)
let rec print_idlist outchan ts =
  match ts with
  | [] -> Printf.fprintf outchan "\n"
  | t :: ts' -> Printf.fprintf outchan "%s " t; print_idlist outchan ts'

(* Asm.id_or_immを出力する関数 *)
let print_id_or_imm outchan = function
  | V x -> Printf.fprintf outchan "%s\n" x
  | C i -> Printf.fprintf outchan "%d\n" i

(* Asm.tの内容を出力する関数 *)
let rec print_asm_t outchan t n =
  print_tab outchan n;
  match t with
  | Ans (exp,_) -> Printf.fprintf outchan "ANS\n";
                  print_asm_exp outchan exp (n+1)
  | Let ((x,_),exp,t1,_) -> Printf.fprintf outchan "LET\n";
                            print_tab outchan (n+1);
                            Printf.fprintf outchan "%s\n" x;
                            print_asm_exp outchan exp (n+1);
                            print_asm_t outchan t1 (n+1)
and print_asm_exp outchan exp n =
  print_tab outchan n;
  match exp with
  | Nop -> Printf.fprintf outchan "NOP\n"
  | Set i -> Printf.fprintf outchan "SET %d\n" i
  | SetL l -> print_idl outchan l; Printf.fprintf outchan "\n"
  | Mov x -> Printf.fprintf outchan "MOV %s\n" x
  | Neg x -> Printf.fprintf outchan "NEG %s\n" x
  | Add (x,y) -> Printf.fprintf outchan "ADD %s " x;
                print_id_or_imm outchan y
  | Sub (x,y) -> Printf.fprintf outchan "SUB %s " x;
                print_id_or_imm outchan y
  | Ld (x,y,_) -> Printf.fprintf outchan "LD %s " x;
                  print_id_or_imm outchan y
  | St (x,y,z,_) -> Printf.fprintf outchan "ST %s %s " x y;
                    print_id_or_imm outchan z
  | FMovD x -> Printf.fprintf outchan "FMOVD %s\n" x
  | FNegD x -> Printf.fprintf outchan "FNEGD %s\n" x
  | FAddD (x,y) -> Printf.fprintf outchan "FADDD %s %s\n" x y
  | FSubD (x,y) -> Printf.fprintf outchan "FSUBD %s %s\n" x y
  | FMulD (x,y) -> Printf.fprintf outchan "FMULD %s %s\n" x y
  | FDivD (x,y) -> Printf.fprintf outchan "FDIVD %s %s\n" x y
  | LdDF (x,y,_) -> Printf.fprintf outchan "LDDF %s " x;
                    print_id_or_imm outchan y
  | StDF (x,y,z,_) -> Printf.fprintf outchan "STDF %s %s " x y;
                      print_id_or_imm outchan z
  | Comment s -> Printf.fprintf outchan "COMMENT %s\n" s
  | IfEq (x,y,t1,t2) -> Printf.fprintf outchan "IFEQ %s " x;
                        print_id_or_imm outchan y;
                        print_asm_t outchan t1 (n+1);
                        print_asm_t outchan t2 (n+1)
  | IfLE (x,y,t1,t2) -> Printf.fprintf outchan "IFLE %s " x;
                        print_id_or_imm outchan y;
                        print_asm_t outchan t1 (n+1);
                        print_asm_t outchan t2 (n+1)
  | IfGE (x,y,t1,t2) -> Printf.fprintf outchan "IFGE %s " x;
                        print_id_or_imm outchan y;
                        print_asm_t outchan t1 (n+1);
                        print_asm_t outchan t2 (n+1)
  | IfFEq (x,y,t1,t2) -> Printf.fprintf outchan "IFFEQ %s %s\n" x y;
                        print_asm_t outchan t1 (n+1);
                        print_asm_t outchan t2 (n+1)
  | IfFLE (x,y,t1,t2) -> Printf.fprintf outchan "IFFLE %s %s\n" x y;
                        print_asm_t outchan t1 (n+1);
                        print_asm_t outchan t2 (n+1)
  | CallCls (x,ys,zs) -> Printf.fprintf outchan "CALLCLS %s\n" x;
                        print_tab outchan (n+1);
                        print_idlist outchan ys;
                        print_tab outchan (n+1);
                        print_idlist outchan zs
  | CallDir (x,ys,zs) -> Printf.fprintf outchan "CALLDIR ";
                        print_idl outchan x; Printf.fprintf outchan "\n";
                        print_tab outchan (n+1);
                        print_idlist outchan ys;
                        print_tab outchan (n+1);
                        print_idlist outchan zs
  | Save (x,y) -> Printf.fprintf outchan "SAVE %s %s\n" x y
  | Restore x -> Printf.fprintf outchan "RESTORE %s\n" x

(* Asm.fundefの内容を出力する関数 *)
let print_asm_fundef outchan {name = l; args = xs; fargs = ys; body = t; ret = _} =
  Printf.fprintf outchan "Name : ";
  print_idl outchan l;
  Printf.fprintf outchan "\nArgs : ";
  print_idlist outchan xs;
  Printf.fprintf outchan "\nFArgs : ";
  print_idlist outchan ys;
  Printf.fprintf outchan "Body :\n";
  print_asm_t outchan t 0;
  Printf.fprintf outchan "\n"

(* Asm.progの内容をfile(outchan)に出力する関数 *)
let rec print_asm outchan prog = 
  match prog with
  | Prog (_, [], t) -> Printf.fprintf outchan "\n"; print_asm_t outchan t 0
  | Prog(ft, (f :: fs), t) -> print_asm_fundef outchan f; 
                            print_asm outchan (Prog (ft, fs, t))
  | _ -> ()