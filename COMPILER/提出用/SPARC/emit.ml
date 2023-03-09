open Asm

external gethi : float -> int32 = "gethi"
external getlo : float -> int32 = "getlo"

let stackset = ref S.empty (* ���Ǥ�Save���줿�ѿ��ν��� (caml2html: emit_stackset) *)
let stackmap = ref [] (* Save���줿�ѿ��Ρ������å��ˤ�������� (caml2html: emit_stackmap) *)
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
let stacksize () = align ((List.length !stackmap + 1) * 4)

let pp_id_or_imm = function
  | V(x) -> x
  | C(i) -> string_of_int i

(* �ؿ��ƤӽФ��Τ���˰������¤��ؤ���(register shuffling) (caml2html: emit_shuffle) *)
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

type dest = Tail | NonTail of Id.t (* �������ɤ�����ɽ���ǡ����� (caml2html: emit_dest) *)
let rec g oc = function (* ̿����Υ�����֥����� (caml2html: emit_g) *)
  | dest, Ans(exp, n) -> g' oc (dest, exp, n)
  | dest, Let((x, t), exp, e, n) ->
      g' oc (NonTail(x), exp, n);
      g oc (dest, e)
and g' oc = function (* ��̿��Υ�����֥����� (caml2html: emit_gprime) *)
  (* �����Ǥʤ��ä���׻���̤�dest�˥��å� (caml2html: emit_nontail) *)
  | NonTail(_), Nop, _ -> ()
  | NonTail(x), Set(i), n -> Printf.fprintf oc "\tset\t%d, %s  #%d\n" i x n
  | NonTail(x), SetL(Id.L(y)), n -> Printf.fprintf oc "\tset\t%s, %s  #%d\n" y x n
  | NonTail(x), Mov(y), _ when x = y -> ()
  | NonTail(x), Mov(y), n -> Printf.fprintf oc "\tmov\t%s, %s  #%d\n" y x n
  | NonTail(x), Neg(y), n -> Printf.fprintf oc "\tneg\t%s, %s  #%d\n" y x n
  | NonTail(x), Add(y, z'), n -> Printf.fprintf oc "\tadd\t%s, %s, %s  #%d\n" y (pp_id_or_imm z') x n
  | NonTail(x), Sub(y, z'), n -> Printf.fprintf oc "\tsub\t%s, %s, %s  #%d\n" y (pp_id_or_imm z') x n
  | NonTail(x), SLL(y, z'), n -> Printf.fprintf oc "\tsll\t%s, %s, %s  #%d\n" y (pp_id_or_imm z') x n
  | NonTail(x), Ld(y, z', _), n -> Printf.fprintf oc "\tld\t[%s + %s], %s  #%d\n" y (pp_id_or_imm z') x n
  | NonTail(_), St(x, y, z', _), n -> Printf.fprintf oc "\tst\t%s, [%s + %s]  #%d\n" x y (pp_id_or_imm z') n
  | NonTail(x), FMovD(y), _ when x = y -> ()
  | NonTail(x), FMovD(y), n ->
      Printf.fprintf oc "\tfmovs\t%s, %s  #%d\n" y x n;
      Printf.fprintf oc "\tfmovs\t%s, %s  #%d\n" (co_freg y) (co_freg x) n
  | NonTail(x), FNegD(y), n ->
      Printf.fprintf oc "\tfnegs\t%s, %s  #%d\n" y x n;
      if x <> y then Printf.fprintf oc "\tfmovs\t%s, %s  #%d\n" (co_freg y) (co_freg x) n
  | NonTail(x), FAddD(y, z), n -> Printf.fprintf oc "\tfaddd\t%s, %s, %s  #%d\n" y z x n
  | NonTail(x), FSubD(y, z), n -> Printf.fprintf oc "\tfsubd\t%s, %s, %s  #%d\n" y z x n
  | NonTail(x), FMulD(y, z), n -> Printf.fprintf oc "\tfmuld\t%s, %s, %s  #%d\n" y z x n
  | NonTail(x), FDivD(y, z), n -> Printf.fprintf oc "\tfdivd\t%s, %s, %s  #%d\n" y z x n
  | NonTail(x), LdDF(y, z', _), n -> Printf.fprintf oc "\tldd\t[%s + %s], %s  #%d\n" y (pp_id_or_imm z') x n
  | NonTail(_), StDF(x, y, z', _), n -> Printf.fprintf oc "\tstd\t%s, [%s + %s] #%d\n" x y (pp_id_or_imm z') n
  | NonTail(_), Comment(s), n -> Printf.fprintf oc "\t! %s  #%d\n" s n
  (* ����β���̿��μ��� (caml2html: emit_save) *)
  | NonTail(_), Save(x, y), n when List.mem x allregs && not (S.mem y !stackset) ->
      save y;
      Printf.fprintf oc "\tst\t%s, [%s + %d]  #%d\n" x reg_sp (offset y) n
  | NonTail(_), Save(x, y), n when List.mem x allfregs && not (S.mem y !stackset) ->
      savef y;
      Printf.fprintf oc "\tstd\t%s, [%s + %d]  #%d\n" x reg_sp (offset y) n
  | NonTail(_), Save(x, y), _ -> assert (S.mem y !stackset); ()
  (* �����β���̿��μ��� (caml2html: emit_restore) *)
  | NonTail(x), Restore(y), n when List.mem x allregs ->
      Printf.fprintf oc "\tld\t[%s + %d], %s  #%d\n" reg_sp (offset y) x n
  | NonTail(x), Restore(y), n ->
      assert (List.mem x allfregs);
      Printf.fprintf oc "\tldd\t[%s + %d], %s  #%d\n" reg_sp (offset y) x n
  (* �������ä���׻���̤����쥸�����˥��åȤ��ƥ꥿���� (caml2html: emit_tailret) *)
  | Tail, (Nop | St _ | StDF _ | Comment _ | Save _ as exp), n ->
      g' oc (NonTail(Id.gentmp Type.Unit), exp, n);
      Printf.fprintf oc "\tretl\n";
      Printf.fprintf oc "\tnop\n"
  | Tail, (Set _ | SetL _ | Mov _ | Neg _ | Add _ | Sub _ | SLL _ | Ld _ as exp), n ->
      g' oc (NonTail(regs.(0)), exp, n);
      Printf.fprintf oc "\tretl\n";
      Printf.fprintf oc "\tnop\n"
  | Tail, (FMovD _ | FNegD _ | FAddD _ | FSubD _ | FMulD _ | FDivD _ | LdDF _ as exp), n ->
      g' oc (NonTail(fregs.(0)), exp, n);
      Printf.fprintf oc "\tretl\n";
      Printf.fprintf oc "\tnop\n"
  | Tail, (Restore(x) as exp), n ->
      (match locate x with
      | [i] -> g' oc (NonTail(regs.(0)), exp, n)
      | [i; j] when i + 1 = j -> g' oc (NonTail(fregs.(0)), exp, n)
      | _ -> assert false);
      Printf.fprintf oc "\tretl\n";
      Printf.fprintf oc "\tnop\n"
  | Tail, IfEq(x, y', e1, e2), n ->
      Printf.fprintf oc "\tcmp\t%s, %s  #%d\n" x (pp_id_or_imm y') n;
      g'_tail_if oc e1 e2 "be" "bne"
  | Tail, IfLE(x, y', e1, e2), n ->
      Printf.fprintf oc "\tcmp\t%s, %s  #%d\n" x (pp_id_or_imm y') n;
      g'_tail_if oc e1 e2 "ble" "bg"
  | Tail, IfGE(x, y', e1, e2), n ->
      Printf.fprintf oc "\tcmp\t%s, %s  #%d\n" x (pp_id_or_imm y') n;
      g'_tail_if oc e1 e2 "bge" "bl"
  | Tail, IfFEq(x, y, e1, e2), n ->
      Printf.fprintf oc "\tfcmpd\t%s, %s  #%d\n" x y n;
      Printf.fprintf oc "\tnop\n";
      g'_tail_if oc e1 e2 "fbe" "fbne"
  | Tail, IfFLE(x, y, e1, e2), n ->
      Printf.fprintf oc "\tfcmpd\t%s, %s  #%d\n" x y n;
      Printf.fprintf oc "\tnop\n";
      g'_tail_if oc e1 e2 "fble" "fbg"
  | NonTail(z), IfEq(x, y', e1, e2), n ->
      Printf.fprintf oc "\tcmp\t%s, %s  #%d\n" x (pp_id_or_imm y') n;
      g'_non_tail_if oc (NonTail(z)) e1 e2 "be" "bne"
  | NonTail(z), IfLE(x, y', e1, e2), n ->
      Printf.fprintf oc "\tcmp\t%s, %s  #%d\n" x (pp_id_or_imm y') n;
      g'_non_tail_if oc (NonTail(z)) e1 e2 "ble" "bg"
  | NonTail(z), IfGE(x, y', e1, e2), n ->
      Printf.fprintf oc "\tcmp\t%s, %s  #%d\n" x (pp_id_or_imm y') n;
      g'_non_tail_if oc (NonTail(z)) e1 e2 "bge" "bl"
  | NonTail(z), IfFEq(x, y, e1, e2), n ->
      Printf.fprintf oc "\tfcmpd\t%s, %s  #%d\n" x y n;
      Printf.fprintf oc "\tnop\n";
      g'_non_tail_if oc (NonTail(z)) e1 e2 "fbe" "fbne"
  | NonTail(z), IfFLE(x, y, e1, e2), n ->
      Printf.fprintf oc "\tfcmpd\t%s, %s  #%d\n" x y n;
      Printf.fprintf oc "\tnop\n";
      g'_non_tail_if oc (NonTail(z)) e1 e2 "fble" "fbg"
  (* �ؿ��ƤӽФ��β���̿��μ��� (caml2html: emit_call) *)
  | Tail, CallCls(x, ys, zs), n -> (* �����ƤӽФ� (caml2html: emit_tailcall) *)
      g'_args oc [(x, reg_cl)] ys zs;
      Printf.fprintf oc "\tld\t[%s + 0], %s  #%d\n" reg_cl reg_sw n;
      Printf.fprintf oc "\tjmp\t%s  #%d\n" reg_sw n;
      Printf.fprintf oc "\tnop\n"
  | Tail, CallDir(Id.L(x), ys, zs), n -> (* �����ƤӽФ� *)
      g'_args oc [] ys zs;
      Printf.fprintf oc "\tb\t%s  #%d\n" x n;
      Printf.fprintf oc "\tnop\n"
  | NonTail(a), CallCls(x, ys, zs), n ->
      g'_args oc [(x, reg_cl)] ys zs;
      let ss = stacksize () in
      Printf.fprintf oc "\tst\t%s, [%s + %d]  #%d\n" reg_ra reg_sp (ss - 4) n;
      Printf.fprintf oc "\tld\t[%s + 0], %s  #%d\n" reg_cl reg_sw n;
      Printf.fprintf oc "\tcall\t%s  #%d\n" reg_sw n;
      Printf.fprintf oc "\tadd\t%s, %d, %s\t! delay slot  %d\n" reg_sp ss reg_sp n;
      Printf.fprintf oc "\tsub\t%s, %d, %s  #%d\n" reg_sp ss reg_sp n;
      Printf.fprintf oc "\tld\t[%s + %d], %s  #%d\n" reg_sp (ss - 4) reg_ra n;
      if List.mem a allregs && a <> regs.(0) then
        Printf.fprintf oc "\tmov\t%s, %s  #%d\n" regs.(0) a n
      else if List.mem a allfregs && a <> fregs.(0) then
        (Printf.fprintf oc "\tfmovs\t%s, %s  #%d\n" fregs.(0) a n;
         Printf.fprintf oc "\tfmovs\t%s, %s  #%d\n" (co_freg fregs.(0)) (co_freg a) n)
  | NonTail(a), CallDir(Id.L(x), ys, zs), n ->
      g'_args oc [] ys zs;
      let ss = stacksize () in
      Printf.fprintf oc "\tst\t%s, [%s + %d]  #%d\n" reg_ra reg_sp (ss - 4) n;
      Printf.fprintf oc "\tcall\t%s  #%d\n" x n;
      Printf.fprintf oc "\tadd\t%s, %d, %s\t! delay slot  %d\n" reg_sp ss reg_sp n;
      Printf.fprintf oc "\tsub\t%s, %d, %s  #%d\n" reg_sp ss reg_sp n;
      Printf.fprintf oc "\tld\t[%s + %d], %s  #%d\n" reg_sp (ss - 4) reg_ra n;
      if List.mem a allregs && a <> regs.(0) then
        Printf.fprintf oc "\tmov\t%s, %s  #%d\n" regs.(0) a n
      else if List.mem a allfregs && a <> fregs.(0) then
        (Printf.fprintf oc "\tfmovs\t%s, %s  #%d\n" fregs.(0) a n;
         Printf.fprintf oc "\tfmovs\t%s, %s  #%d\n" (co_freg fregs.(0)) (co_freg a) n)
and g'_tail_if oc e1 e2 b bn =
  let b_else = Id.genid (b ^ "_else") in
  Printf.fprintf oc "\t%s\t%s\n" bn b_else;
  Printf.fprintf oc "\tnop\n";
  let stackset_back = !stackset in
  g oc (Tail, e1);
  Printf.fprintf oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc (Tail, e2)
and g'_non_tail_if oc dest e1 e2 b bn =
  let b_else = Id.genid (b ^ "_else") in
  let b_cont = Id.genid (b ^ "_cont") in
  Printf.fprintf oc "\t%s\t%s\n" bn b_else;
  Printf.fprintf oc "\tnop\n";
  let stackset_back = !stackset in
  g oc (dest, e1);
  let stackset1 = !stackset in
  Printf.fprintf oc "\tb\t%s\n" b_cont;
  Printf.fprintf oc "\tnop\n";
  Printf.fprintf oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc (dest, e2);
  Printf.fprintf oc "%s:\n" b_cont;
  let stackset2 = !stackset in
  stackset := S.inter stackset1 stackset2
and g'_args oc x_reg_cl ys zs =
  let (i, yrs) =
    List.fold_left
      (fun (i, yrs) y -> (i + 1, (y, regs.(i)) :: yrs))
      (0, x_reg_cl)
      ys in
  List.iter
    (fun (y, r) -> Printf.fprintf oc "\tmov\t%s, %s\n" y r)
    (shuffle reg_sw yrs);
  let (d, zfrs) =
    List.fold_left
      (fun (d, zfrs) z -> (d + 1, (z, fregs.(d)) :: zfrs))
      (0, [])
      zs in
  List.iter
    (fun (z, fr) ->
      Printf.fprintf oc "\tfmovs\t%s, %s\n" z fr;
      Printf.fprintf oc "\tfmovs\t%s, %s\n" (co_freg z) (co_freg fr))
    (shuffle reg_fsw zfrs)

let h oc { name = Id.L(x); args = _; fargs = _; body = e; ret = _ } =
  Printf.fprintf oc "%s:\n" x;
  stackset := S.empty;
  stackmap := [];
  g oc (Tail, e)

let f oc (Prog(data, fundefs, e)) =
  Format.eprintf "generating assembly...@.";
  Printf.fprintf oc ".section\t\".rodata\"\n";
  Printf.fprintf oc ".align\t8\n";
  List.iter
    (fun (Id.L(x), d) ->
      Printf.fprintf oc "%s:\t! %f\n" x d;
      Printf.fprintf oc "\t.long\t0x%lx\n" (gethi d);
      Printf.fprintf oc "\t.long\t0x%lx\n" (getlo d))
    data;
  Printf.fprintf oc ".section\t\".text\"\n";
  List.iter (fun fundef -> h oc fundef) fundefs;
  Printf.fprintf oc ".global\tmin_caml_start\n";
  Printf.fprintf oc "min_caml_start:\n";
  Printf.fprintf oc "\tsave\t%%sp, -112, %%sp\n"; (* from gcc; why 112? *)
  stackset := S.empty;
  stackmap := [];
  g oc (NonTail("%g0"), e);
  Printf.fprintf oc "\tret\n";
  Printf.fprintf oc "\trestore\n"
