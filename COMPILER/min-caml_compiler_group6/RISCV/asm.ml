(* SPARC assembly with a few virtual instructions *)

type id_or_imm = V of Id.t | C of int
type t = (* ̿����� (caml2html: sparcasm_t) *)
  | Ans of exp * int
  | Let of (Id.t * Type.t) * exp * t * int
and exp = (* ��İ�Ĥ�̿����б����뼰 (caml2html: sparcasm_exp) *)
  | Nop
  | Set of int
  | SetL of Id.l
  | Mov of Id.t
  | Neg of Id.t
  | Add of Id.t * id_or_imm
  | Sub of Id.t * id_or_imm
  | Xor of Id.t * id_or_imm
  | Or of Id.t * id_or_imm
  | And of Id.t * id_or_imm
  | SLL of Id.t * id_or_imm
  | SRL of Id.t * id_or_imm
  | Ld of Id.t * id_or_imm * int
  | St of Id.t * Id.t * id_or_imm * int
  | FMovD of Id.t
  | FNegD of Id.t
  | FAddD of Id.t * Id.t
  | FSubD of Id.t * Id.t
  | FMulD of Id.t * Id.t
  | FDivD of Id.t * Id.t
  | Sqrt of Id.t
  | FAbs of Id.t
  | FtoI of Id.t
  | ItoF of Id.t
  | Gethp
  | Sethp of Id.t
  | In 
  | Out of Id.t
  | LdDF of Id.t * id_or_imm * int
  | StDF of Id.t * Id.t * id_or_imm * int
  | Comment of string
  (* virtual instructions *)
  | IfEq of Id.t * id_or_imm * t * t
  | IfLE of Id.t * id_or_imm * t * t
  | IfGE of Id.t * id_or_imm * t * t (* �����оΤǤϤʤ��Τ�ɬ�� *)
  | IfFEq of Id.t * Id.t * t * t
  | IfFLE of Id.t * Id.t * t * t
  (* closure address, integer arguments, and float arguments *)
  | CallCls of Id.t * Id.t list * Id.t list
  | CallDir of Id.l * Id.t list * Id.t list
  | Save of Id.t * Id.t (* �쥸�����ѿ����ͤ򥹥��å��ѿ�����¸ (caml2html: sparcasm_save) *)
  | Restore of Id.t (* �����å��ѿ������ͤ����� (caml2html: sparcasm_restore) *)
type fundef = { name : Id.l; args : Id.t list; fargs : Id.t list; body : t; ret : Type.t }
(* �ץ���������� = ��ư���������ơ��֥� + �ȥåץ�٥�ؿ� + �ᥤ��μ� (caml2html: sparcasm_prog) *)
type prog = Prog of (Id.l * float) list * fundef list * t

let fletd(x, e1, e2, n) = Let((x, Type.Float), e1, e2, n)
let seq(e1, e2, n) = Let((Id.gentmp Type.Unit, Type.Unit), e1, e2, n)

let regs = (* Array.init 16 (fun i -> Printf.sprintf "%%r%d" i) *)
  [| "%x5"; "%x6"; "%x7"; "%x8"; "%x9";
     "%x10"; "%x11"; "%x12"; "%x13"; "%x14"; "%x15"; "%x16"; "%x17";
     "%x18"; "%x19"; "%x20"; "%x21"; "%x22"; "%x23"; "%x24"; "%x25";
     "%x26"; "%x27"; "%x28"; "%x29"; "%x30" |]
let fregs = Array.init 30 (fun i -> Printf.sprintf "%%f%d" i) 
(* let fregs =
  [| "%f1"; "%f2"; "%f3"; "%f4"; "%f5"; "%f6"; "%f7"; "%f8";
     "%f9"; "%f10"; "%f11"; "%f12"; "%f13"; "%f14"; "%f15"; "%f16";
     "%f17"; "%f18"; "%f19"; "%f20"; "%f21"; "%f22"; "%f23"; "%f24";
     "%f25"; "%f26"; "%f27"; "%f28"; "%f29"; "%f30"|] *)
let allregs = Array.to_list regs
let allfregs = Array.to_list fregs
let reg_cl = regs.(Array.length regs - 2) (* closure address (caml2html: sparcasm_regcl) *)
let reg_sw = regs.(Array.length regs - 1) (* temporary for swap *)
let reg_fsw = fregs.(Array.length fregs - 1) (* temporary for swap *)
let reg_sp = "%x2" (* stack pointer *)
let reg_hp = "%x3" (* heap pointer (caml2html: sparcasm_reghp) *)
let reg_ra = "%x1" (* return address *)
let reg_zero = "%x0"
let reg_cons = "%x31"
let freg_zero = "%f30"
let freg_cons = "%f31"
let is_reg x = (x.[0] = '%')
let is_xreg x = (x.[0] = '%' && x.[1] = 'x')
let is_freg x = (x.[0] = '%' && x.[1] = 'f')
(*let co_freg_table =
  let ht = Hashtbl.create 16 in
  for i = 0 to 15 do
    Hashtbl.add
      ht
      (Printf.sprintf "%%f%d" (i * 2))
      (Printf.sprintf "%%f%d" (i * 2 + 1))
  done;
  ht
let co_freg freg = Hashtbl.find co_freg_table freg*) (* "companion" freg *)

(* super-tenuki *)
let rec remove_and_uniq xs = function
  | [] -> []
  | x :: ys when S.mem x xs -> remove_and_uniq xs ys
  | x :: ys -> x :: remove_and_uniq (S.add x xs) ys

(* free variables in the order of use (for spilling) (caml2html: sparcasm_fv) *)
let fv_id_or_imm = function V(x) -> [x] | _ -> []
let rec fv_exp = function
  | Nop | Set(_) | SetL(_) | Comment(_) | Restore(_) | In | Gethp -> []
  | Mov(x) | Neg(x) | FAbs(x) | Sqrt(x) | FMovD(x) | FNegD(x) | Save(x, _) 
  | FtoI(x) | ItoF(x) | Out(x) | Sethp(x) -> [x]
  | Add(x, y') | Sub(x, y') | Xor(x, y') | Or(x, y') | And(x, y') | SLL(x, y') 
  | SRL(x, y') | Ld(x, y', _) | LdDF(x, y', _) -> x :: fv_id_or_imm y'
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

(*let align i = (if i mod 8 = 0 then i else i + 4)*)


(* \t��n����Ϥ���ؿ� *)
let rec print_tab outchan n =
  if n = 0 then () else (Printf.fprintf outchan "\t"; print_tab outchan (n-1))

(* Id.l����Ϥ���ؿ� *)
let print_idl outchan i =
  match i with
  | Id.L s -> Printf.fprintf outchan "%s" s
  | _ -> ()

(* �ѿ��Υꥹ�Ȥ���Ϥ���ؿ� *)
let rec print_idlist outchan ts =
  match ts with
  | [] -> Printf.fprintf outchan "\n"
  | t :: ts' -> Printf.fprintf outchan "%s " t; print_idlist outchan ts'

(* Asm.id_or_imm����Ϥ���ؿ� *)
let print_id_or_imm outchan = function
  | V x -> Printf.fprintf outchan "%s\n" x
  | C i -> Printf.fprintf outchan "%d\n" i

(* Asm.t�����Ƥ���Ϥ���ؿ� *)
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
  | In -> Printf.fprintf outchan "IN\n"
  | Out x -> Printf.fprintf outchan "OUT %s\n" x
  | Gethp -> Printf.fprintf outchan "GETHP\n"
  | Sethp x -> Printf.fprintf outchan "SETHP %s\n" x 
  | Set i -> Printf.fprintf outchan "SET %d\n" i
  | SetL l -> print_idl outchan l; Printf.fprintf outchan "\n"
  | Mov x -> Printf.fprintf outchan "MOV %s\n" x
  | Neg x -> Printf.fprintf outchan "NEG %s\n" x
  | Add (x,y) -> Printf.fprintf outchan "ADD %s " x;
                print_id_or_imm outchan y
  | Sub (x,y) -> Printf.fprintf outchan "SUB %s " x;
                print_id_or_imm outchan y
  | Xor (x,y) -> Printf.fprintf outchan "XOR %s " x;
                print_id_or_imm outchan y
  | Or (x,y) -> Printf.fprintf outchan "OR %s " x;
                print_id_or_imm outchan y
  | And (x,y) -> Printf.fprintf outchan "AND %s " x;
                print_id_or_imm outchan y
  | SLL (x,y) -> Printf.fprintf outchan "SLL %s " x;
                print_id_or_imm outchan y
  | SRL (x,y) -> Printf.fprintf outchan "SRL %s " x;
                print_id_or_imm outchan y
  | Ld (x,y,_) -> Printf.fprintf outchan "LD %s " x;
                  print_id_or_imm outchan y
  | St (x,y,z,_) -> Printf.fprintf outchan "ST %s %s " x y;
                    print_id_or_imm outchan z
  | FMovD x -> Printf.fprintf outchan "FMOVD %s\n" x
  | FNegD x -> Printf.fprintf outchan "FNEGD %s\n" x
  | FAbs x -> Printf.fprintf outchan "FABS %s\n" x
  | FtoI x -> Printf.fprintf outchan "FTOI %s\n" x
  | ItoF x -> Printf.fprintf outchan "ITOF %s\n" x
  | Sqrt x -> Printf.fprintf outchan "SQRT %s\n" x
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

(* Asm.fundef�����Ƥ���Ϥ���ؿ� *)
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

(* Asm.prog�����Ƥ�file(outchan)�˽��Ϥ���ؿ� *)
let rec print_asm outchan prog = 
  match prog with
  | Prog (_, [], t) -> Printf.fprintf outchan "\n"; print_asm_t outchan t 0
  | Prog(ft, (f :: fs), t) -> print_asm_fundef outchan f; 
                            print_asm outchan (Prog (ft, fs, t))
  | _ -> ()