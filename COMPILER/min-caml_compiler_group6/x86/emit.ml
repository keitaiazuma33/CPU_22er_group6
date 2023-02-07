open Asm

external gethi : float -> int32 = "gethi"
external getlo : float -> int32 = "getlo"

let stackset = ref S.empty (* すでにSaveされた変数の集合 (caml2html: emit_stackset) *)
let stackmap = ref [] (* Saveされた変数の、スタックにおける位置 (caml2html: emit_stackmap) *)
let save x =
  stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    stackmap := !stackmap @ [x]
let savef x =
  stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    (let pad =
      if List.length !stackmap mod 2 = 0 then [] else [Id.gentmp Type.Int] in
    stackmap := !stackmap @ pad @ [x; x])
let locate x =
  let rec loc = function
    | [] -> []
    | y :: zs when x = y -> 0 :: List.map succ (loc zs)
    | y :: zs -> List.map succ (loc zs) in
  loc !stackmap
let offset x = 4 * List.hd (locate x)
let stacksize () = align (List.length !stackmap * 4)

let pp_id_or_imm = function
  | V(x) -> x
  | C(i) -> "$" ^ string_of_int i

(* 関数呼び出しのために引数を並べ替える(register shuffling) (caml2html: emit_shuffle) *)
let rec shuffle sw xys =
  (* remove identical moves *)
  let _, xys = List.partition (fun (x, y) -> x = y) xys in
  (* find acyclic moves *)
  match List.partition (fun (_, y) -> List.mem_assoc y xys) xys with
  | [], [] -> []
  | (x, y) :: xys, [] -> (* no acyclic moves; resolve a cyclic move *)
      (y, sw) :: (x, y) :: shuffle sw (List.map
                                         (function
                                           | (y', z) when y = y' -> (sw, z)
                                           | yz -> yz)
                                         xys)
  | xys, acyc -> acyc @ shuffle sw xys

type dest = Tail | NonTail of Id.t (* 末尾かどうかを表すデータ型 (caml2html: emit_dest) *)
let rec g oc = function (* 命令列のアセンブリ生成 (caml2html: emit_g) *)
  | dest, Ans(exp, n) -> g' oc (dest, exp, n)
  | dest, Let((x, t), exp, e, n) ->
      g' oc (NonTail(x), exp, n);
      g oc (dest, e)
and g' oc = function (* 各命令のアセンブリ生成 (caml2html: emit_gprime) *)
  (* 末尾でなかったら計算結果をdestにセット (caml2html: emit_nontail) *)
  | NonTail(_), Nop, _ -> ()
  | NonTail(x), Set(i), n -> Printf.fprintf oc "\tmovl\t$%d, %s  #%d\n" i x n
  | NonTail(x), SetL(Id.L(y)), n -> Printf.fprintf oc "\tmovl\t$%s, %s  #%d\n" y x n
  | NonTail(x), Mov(y), n ->
      if x <> y then Printf.fprintf oc "\tmovl\t%s, %s  #%d\n" y x n
  | NonTail(x), Neg(y), n ->
      if x <> y then Printf.fprintf oc "\tmovl\t%s, %s  #%d\n" y x n;
      Printf.fprintf oc "\tnegl\t%s  #%d\n" x n
  | NonTail(x), Add(y, z'), n ->
      if V(x) = z' then
        Printf.fprintf oc "\taddl\t%s, %s  #%d\n" y x n
      else
        (if x <> y then Printf.fprintf oc "\tmovl\t%s, %s  #%d\n" y x n;
         Printf.fprintf oc "\taddl\t%s, %s  #%d\n" (pp_id_or_imm z') x n)
  | NonTail(x), Sub(y, z'), n ->
      if V(x) = z' then
        (Printf.fprintf oc "\tsubl\t%s, %s  #%d\n" y x n;
         Printf.fprintf oc "\tnegl\t%s  #%d\n" x n)
      else
        (if x <> y then Printf.fprintf oc "\tmovl\t%s, %s  #%d\n" y x n;
         Printf.fprintf oc "\tsubl\t%s, %s  #%d\n" (pp_id_or_imm z') x n)
  | NonTail(x), Ld(y, V(z), i), n -> Printf.fprintf oc "\tmovl\t(%s,%s,%d), %s  #%d\n" y z i x n
  | NonTail(x), Ld(y, C(j), i), n -> Printf.fprintf oc "\tmovl\t%d(%s), %s  #%d\n" (j * i) y x n
  | NonTail(_), St(x, y, V(z), i), n -> Printf.fprintf oc "\tmovl\t%s, (%s,%s,%d)  #%d\n" x y z i n
  | NonTail(_), St(x, y, C(j), i), n -> Printf.fprintf oc "\tmovl\t%s, %d(%s)  #%d\n" x (j * i) y n
  | NonTail(x), FMovD(y), n ->
      if x <> y then Printf.fprintf oc "\tmovsd\t%s, %s  #%d\n" y x n
  | NonTail(x), FNegD(y), n ->
      if x <> y then Printf.fprintf oc "\tmovsd\t%s, %s  #%d\n" y x n;
      Printf.fprintf oc "\txorpd\tmin_caml_fnegd, %s  #%d\n" x n
  | NonTail(x), FAddD(y, z), n ->
      if x = z then
        Printf.fprintf oc "\taddsd\t%s, %s  #%d\n" y x n
      else
        (if x <> y then Printf.fprintf oc "\tmovsd\t%s, %s  #%d\n" y x n;
         Printf.fprintf oc "\taddsd\t%s, %s  #%d\n" z x n)
  | NonTail(x), FSubD(y, z), n ->
      if x = z then (* [XXX] ugly *)
        let ss = stacksize () in
        Printf.fprintf oc "\tmovsd\t%s, %d(%s)  #%d\n" z ss reg_sp n;
        if x <> y then Printf.fprintf oc "\tmovsd\t%s, %s  #%d\n" y x n;
        Printf.fprintf oc "\tsubsd\t%d(%s), %s  #%d\n" ss reg_sp x n
      else
        (if x <> y then Printf.fprintf oc "\tmovsd\t%s, %s  #%d\n" y x n;
         Printf.fprintf oc "\tsubsd\t%s, %s  #%d\n" z x n)
  | NonTail(x), FMulD(y, z), n ->
      if x = z then
        Printf.fprintf oc "\tmulsd\t%s, %s  #%d\n" y x n
      else
        (if x <> y then Printf.fprintf oc "\tmovsd\t%s, %s  #%d\n" y x n;
         Printf.fprintf oc "\tmulsd\t%s, %s  #%d\n" z x n)
  | NonTail(x), FDivD(y, z), n ->
      if x = z then (* [XXX] ugly *)
        let ss = stacksize () in
        Printf.fprintf oc "\tmovsd\t%s, %d(%s)  #%d\n" z ss reg_sp n;
        if x <> y then Printf.fprintf oc "\tmovsd\t%s, %s  #%d\n" y x n;
        Printf.fprintf oc "\tdivsd\t%d(%s), %s  #%d\n" ss reg_sp x n
      else
        (if x <> y then Printf.fprintf oc "\tmovsd\t%s, %s  #%d\n" y x n;
         Printf.fprintf oc "\tdivsd\t%s, %s  #%d\n" z x n)
  | NonTail(x), LdDF(y, V(z), i), n -> Printf.fprintf oc "\tmovsd\t(%s,%s,%d), %s  #%d\n" y z i x n
  | NonTail(x), LdDF(y, C(j), i), n -> Printf.fprintf oc "\tmovsd\t%d(%s), %s  #%d\n" (j * i) y x n
  | NonTail(_), StDF(x, y, V(z), i), n -> Printf.fprintf oc "\tmovsd\t%s, (%s,%s,%d)  #%d\n" x y z i n
  | NonTail(_), StDF(x, y, C(j), i), n -> Printf.fprintf oc "\tmovsd\t%s, %d(%s)  #%d\n" x (j * i) y n
  | NonTail(_), Comment(s), n -> Printf.fprintf oc "\t# %s  #%d\n" s n
  (* 退避の仮想命令の実装 (caml2html: emit_save) *)
  | NonTail(_), Save(x, y), n when List.mem x allregs && not (S.mem y !stackset) ->
      save y;
      Printf.fprintf oc "\tmovl\t%s, %d(%s)  #%d\n" x (offset y) reg_sp n
  | NonTail(_), Save(x, y), n when List.mem x allfregs && not (S.mem y !stackset) ->
      savef y;
      Printf.fprintf oc "\tmovsd\t%s, %d(%s)  #%d\n" x (offset y) reg_sp n
  | NonTail(_), Save(x, y), _ -> assert (S.mem y !stackset); ()
  (* 復帰の仮想命令の実装 (caml2html: emit_restore) *)
  | NonTail(x), Restore(y), n when List.mem x allregs ->
      Printf.fprintf oc "\tmovl\t%d(%s), %s  #%d\n" (offset y) reg_sp x n
  | NonTail(x), Restore(y), n ->
      assert (List.mem x allfregs);
      Printf.fprintf oc "\tmovsd\t%d(%s), %s  #%d\n" (offset y) reg_sp x n
  (* 末尾だったら計算結果を第一レジスタにセットしてret (caml2html: emit_tailret) *)
  | Tail, (Nop | St _ | StDF _ | Comment _ | Save _ as exp), n ->
      g' oc (NonTail(Id.gentmp Type.Unit), exp, n);
      Printf.fprintf oc "\tret\n";
  | Tail, (Set _ | SetL _ | Mov _ | Neg _ | Add _ | Sub _ | Ld _ as exp), n ->
      g' oc (NonTail(regs.(0)), exp, n);
      Printf.fprintf oc "\tret\n";
  | Tail, (FMovD _ | FNegD _ | FAddD _ | FSubD _ | FMulD _ | FDivD _ | LdDF _  as exp), n ->
      g' oc (NonTail(fregs.(0)), exp, n);
      Printf.fprintf oc "\tret\n";
  | Tail, (Restore(x) as exp), n ->
      (match locate x with
      | [i] -> g' oc (NonTail(regs.(0)), exp, n)
      | [i; j] when i + 1 = j -> g' oc (NonTail(fregs.(0)), exp, n)
      | _ -> assert false);
      Printf.fprintf oc "\tret\n";
  | Tail, IfEq(x, y', e1, e2), n ->
      Printf.fprintf oc "\tcmpl\t%s, %s  #%d\n" (pp_id_or_imm y') x n;
      g'_tail_if oc e1 e2 "je" "jne"
  | Tail, IfLE(x, y', e1, e2), n ->
      Printf.fprintf oc "\tcmpl\t%s, %s  #%d\n" (pp_id_or_imm y') x n;
      g'_tail_if oc e1 e2 "jle" "jg"
  | Tail, IfGE(x, y', e1, e2), n ->
      Printf.fprintf oc "\tcmpl\t%s, %s  #%d\n" (pp_id_or_imm y') x n;
      g'_tail_if oc e1 e2 "jge" "jl"
  | Tail, IfFEq(x, y, e1, e2), n ->
      Printf.fprintf oc "\tcomisd\t%s, %s  #%d\n" y x n;
      g'_tail_if oc e1 e2 "je" "jne"
  | Tail, IfFLE(x, y, e1, e2), n ->
      Printf.fprintf oc "\tcomisd\t%s, %s  #%d\n" y x n;
      g'_tail_if oc e1 e2 "jbe" "ja"
  | NonTail(z), IfEq(x, y', e1, e2), n ->
      Printf.fprintf oc "\tcmpl\t%s, %s  #%d\n" (pp_id_or_imm y') x n;
      g'_non_tail_if oc (NonTail(z)) e1 e2 "je" "jne"
  | NonTail(z), IfLE(x, y', e1, e2), n ->
      Printf.fprintf oc "\tcmpl\t%s, %s  #%d\n" (pp_id_or_imm y') x n;
      g'_non_tail_if oc (NonTail(z)) e1 e2 "jle" "jg"
  | NonTail(z), IfGE(x, y', e1, e2), n ->
      Printf.fprintf oc "\tcmpl\t%s, %s  #%d\n" (pp_id_or_imm y') x n;
      g'_non_tail_if oc (NonTail(z)) e1 e2 "jge" "jl"
  | NonTail(z), IfFEq(x, y, e1, e2), n ->
      Printf.fprintf oc "\tcomisd\t%s, %s  #%d\n" y x n;
      g'_non_tail_if oc (NonTail(z)) e1 e2 "je" "jne"
  | NonTail(z), IfFLE(x, y, e1, e2), n ->
      Printf.fprintf oc "\tcomisd\t%s, %s  #%d\n" y x n;
      g'_non_tail_if oc (NonTail(z)) e1 e2 "jbe" "ja"
  (* 関数呼び出しの仮想命令の実装 (caml2html: emit_call) *)
  | Tail, CallCls(x, ys, zs), n -> (* 末尾呼び出し (caml2html: emit_tailcall) *)
      g'_args oc [(x, reg_cl)] ys zs;
      Printf.fprintf oc "\tjmp\t*(%s)  #%d\n" reg_cl n;
  | Tail, CallDir(Id.L(x), ys, zs), n -> (* 末尾呼び出し *)
      g'_args oc [] ys zs;
      Printf.fprintf oc "\tjmp\t%s  #%d\n" x n;
  | NonTail(a), CallCls(x, ys, zs), n ->
      g'_args oc [(x, reg_cl)] ys zs;
      let ss = stacksize () in
      if ss > 0 then Printf.fprintf oc "\taddl\t$%d, %s  #%d\n" ss reg_sp n;
      Printf.fprintf oc "\tcall\t*(%s)  #%d\n" reg_cl n;
      if ss > 0 then Printf.fprintf oc "\tsubl\t$%d, %s  #%d\n" ss reg_sp n;
      if List.mem a allregs && a <> regs.(0) then
        Printf.fprintf oc "\tmovl\t%s, %s  #%d\n" regs.(0) a n
      else if List.mem a allfregs && a <> fregs.(0) then
        Printf.fprintf oc "\tmovsd\t%s, %s  #%d\n" fregs.(0) a n
  | NonTail(a), CallDir(Id.L(x), ys, zs), n ->
      g'_args oc [] ys zs;
      let ss = stacksize () in
      if ss > 0 then Printf.fprintf oc "\taddl\t$%d, %s  #%d\n" ss reg_sp n;
      Printf.fprintf oc "\tcall\t%s  #%d\n" x n;
      if ss > 0 then Printf.fprintf oc "\tsubl\t$%d, %s  #%d\n" ss reg_sp n;
      if List.mem a allregs && a <> regs.(0) then
        Printf.fprintf oc "\tmovl\t%s, %s  #%d\n" regs.(0) a n
      else if List.mem a allfregs && a <> fregs.(0) then
        Printf.fprintf oc "\tmovsd\t%s, %s  #%d\n" fregs.(0) a n
and g'_tail_if oc e1 e2 b bn =
  let b_else = Id.genid (b ^ "_else") in
  Printf.fprintf oc "\t%s\t%s\n" bn b_else;
  let stackset_back = !stackset in
  g oc (Tail, e1);
  Printf.fprintf oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc (Tail, e2)
and g'_non_tail_if oc dest e1 e2 b bn =
  let b_else = Id.genid (b ^ "_else") in
  let b_cont = Id.genid (b ^ "_cont") in
  Printf.fprintf oc "\t%s\t%s\n" bn b_else;
  let stackset_back = !stackset in
  g oc (dest, e1);
  let stackset1 = !stackset in
  Printf.fprintf oc "\tjmp\t%s\n" b_cont;
  Printf.fprintf oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc (dest, e2);
  Printf.fprintf oc "%s:\n" b_cont;
  let stackset2 = !stackset in
  stackset := S.inter stackset1 stackset2
and g'_args oc x_reg_cl ys zs =
  assert (List.length ys <= Array.length regs - List.length x_reg_cl);
  assert (List.length zs <= Array.length fregs);
  let sw = Printf.sprintf "%d(%s)" (stacksize ()) reg_sp in
  let (i, yrs) =
    List.fold_left
      (fun (i, yrs) y -> (i + 1, (y, regs.(i)) :: yrs))
      (0, x_reg_cl)
      ys in
  List.iter
    (fun (y, r) -> Printf.fprintf oc "\tmovl\t%s, %s\n" y r)
    (shuffle sw yrs);
  let (d, zfrs) =
    List.fold_left
      (fun (d, zfrs) z -> (d + 1, (z, fregs.(d)) :: zfrs))
      (0, [])
      zs in
  List.iter
    (fun (z, fr) -> Printf.fprintf oc "\tmovsd\t%s, %s\n" z fr)
    (shuffle sw zfrs)

let h oc { name = Id.L(x); args = _; fargs = _; body = e; ret = _ } =
  Printf.fprintf oc "%s:\n" x;
  stackset := S.empty;
  stackmap := [];
  g oc (Tail, e)

let f oc (Prog(data, fundefs, e)) =
  Format.eprintf "generating assembly...@.";
  Printf.fprintf oc ".data\n";
  Printf.fprintf oc ".balign\t8\n";
  List.iter
    (fun (Id.L(x), d) ->
      Printf.fprintf oc "%s:\t# %f\n" x d;
      Printf.fprintf oc "\t.long\t0x%lx\n" (gethi d);
      Printf.fprintf oc "\t.long\t0x%lx\n" (getlo d))
    data;
  Printf.fprintf oc ".text\n";
  List.iter (fun fundef -> h oc fundef) fundefs;
  Printf.fprintf oc ".globl\tmin_caml_start\n";
  Printf.fprintf oc "min_caml_start:\n";
  Printf.fprintf oc ".globl\t_min_caml_start\n";
  Printf.fprintf oc "_min_caml_start: # for cygwin\n";
  Printf.fprintf oc "\tpushl\t%%eax\n";
  Printf.fprintf oc "\tpushl\t%%ebx\n";
  Printf.fprintf oc "\tpushl\t%%ecx\n";
  Printf.fprintf oc "\tpushl\t%%edx\n";
  Printf.fprintf oc "\tpushl\t%%esi\n";
  Printf.fprintf oc "\tpushl\t%%edi\n";
  Printf.fprintf oc "\tpushl\t%%ebp\n";
  Printf.fprintf oc "\tmovl\t32(%%esp),%s\n" reg_sp;
  Printf.fprintf oc "\tmovl\t36(%%esp),%s\n" regs.(0);
  Printf.fprintf oc "\tmovl\t%s,%s\n" regs.(0) reg_hp;
  stackset := S.empty;
  stackmap := [];
  g oc (NonTail(regs.(0)), e);
  Printf.fprintf oc "\tpopl\t%%ebp\n";
  Printf.fprintf oc "\tpopl\t%%edi\n";
  Printf.fprintf oc "\tpopl\t%%esi\n";
  Printf.fprintf oc "\tpopl\t%%edx\n";
  Printf.fprintf oc "\tpopl\t%%ecx\n";
  Printf.fprintf oc "\tpopl\t%%ebx\n";
  Printf.fprintf oc "\tpopl\t%%eax\n";
  Printf.fprintf oc "\tret\n";
