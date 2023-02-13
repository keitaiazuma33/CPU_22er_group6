open Asm

(* external gethi : float -> int32 = "gethi"
external getlo : float -> int32 = "getlo" *)

let pc = ref 0
let pc_env = ref M.empty
let incr_pc a =
  pc := !pc + 4
let add_pc_env l n =
  pc_env := M.add l n (!pc_env)
let find_pc_env l =
  (try M.find l (!pc_env) with Not_found -> Printf.fprintf stdout "%s\n" l; assert false)
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
let offset x = try 4 * List.hd (locate x) with Failure _ -> Printf.fprintf stdout "%s\n" x; assert false
let stacksize () = ((List.length !stackmap + 1) * 4)

let pp_id_or_imm = function
  | V(x) -> x
  | C(i) -> string_of_int i

let pp_id_or_imm' oc = function
  | V(x) -> x
  | C(i) when i = 0 -> reg_zero
  | C(i) -> incr_pc ();Printf.fprintf oc "\taddi\t%s, %s, %d  #pc %d\n" reg_cons reg_zero i (!pc); reg_cons

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

let rec print_mv oc x y n =
  incr_pc ();
  if is_xreg x then
    Printf.fprintf oc "\taddi\t%s, %s, %d  #%d pc %d\n" x y 0 n (!pc)
  else
    if (is_freg x) && (is_freg y) then
      Printf.fprintf oc "\tfadd\t%s, %s, %s  #%d pc %d\n" x y freg_zero n (!pc)
    else
      Printf.fprintf oc "\tfmv\t%s, %s  #%d pc %d\n" x y n (!pc)

type dest = Tail | NonTail of Id.t (* �������ɤ�����ɽ���ǡ����� (caml2html: emit_dest) *)
let rec g oc = function (* ̿����Υ�����֥����� (caml2html: emit_g) *)
  | dest, Ans(exp, n) -> g' oc (dest, exp, n)
  | dest, Let((x, t), exp, e, n) ->
      g' oc (NonTail(x), exp, n);
      g oc (dest, e)
and g' oc = function (* ��̿��Υ�����֥����� (caml2html: emit_gprime) *)
  (* �����Ǥʤ��ä���׻���̤�dest�˥��å� (caml2html: emit_nontail) *)
  | NonTail(_), Nop, _ -> ()
  | NonTail(x), Set(i), n -> incr_pc ();Printf.fprintf oc "\taddi\t%s, %s, %d  #%d pc %d\n" x reg_zero i n (!pc)
  | NonTail(x), SetL(Id.L(y)), n -> if M.mem y (!pc_env) then
                                      (let y_pc = find_pc_env y in
                                      incr_pc ();Printf.fprintf oc "\taddi\t%s, %s, %d  #%d %s pc %d\n" x reg_zero y_pc n y (!pc);
                                      (*incr_pc ();Printf.fprintf oc "\tmv\t%s, %s  #%d pc %d\n" x reg_cons n (!pc)*))
                                    else
                                      ((*incr_pc ();Printf.fprintf oc "\tmv\t%s, %s  #%d pc %d\n" x y n (!pc)*)
                                      print_mv oc x y n)
  | NonTail(x), Mov(y), _ when x = y -> ()
  | NonTail(x), Mov(y), n -> (*incr_pc ();Printf.fprintf oc "\tmv\t%s, %s  #%d pc %d\n" x y n (!pc)*)
                            print_mv oc x y n
  | NonTail(x), Neg(y), n -> incr_pc ();Printf.fprintf oc "\tsub\t%s, %s, %s  #%d pc %d\n" x reg_zero y n (!pc)
  | NonTail(x), Add(y, V z), n -> incr_pc ();Printf.fprintf oc "\tadd\t%s, %s, %s  #%d pc %d\n" x y z n (!pc)
  | NonTail(x), Add(y, C i), n -> incr_pc ();Printf.fprintf oc "\taddi\t%s, %s, %d  #%d pc %d\n" x y i n (!pc)
  | NonTail(x), Sub(y, V z), n -> incr_pc ();Printf.fprintf oc "\tsub\t%s, %s, %s  #%d pc %d\n" x y z n (!pc)
  | NonTail(x), Sub(y, C i), n -> incr_pc ();Printf.fprintf oc "\taddi\t%s, %s, %d  #%d pc %d\n" x y (-i) n (!pc)
  | NonTail(x), Xor(y, V z), n -> incr_pc ();Printf.fprintf oc "\txor\t%s, %s, %s  #%d pc %d\n" x y z n (!pc)
  | NonTail(x), Xor(y, C i), n -> incr_pc ();Printf.fprintf oc "\txori\t%s, %s, %d  #%d pc %d\n" x y i n (!pc)
  | NonTail(x), Or(y, V z), n -> incr_pc ();Printf.fprintf oc "\tor\t%s, %s, %s  #%d pc %d\n" x y z n (!pc)
  | NonTail(x), Or(y, C i), n -> incr_pc ();Printf.fprintf oc "\tori\t%s, %s, %d  #%d pc %d\n" x y i n (!pc)
  | NonTail(x), And(y, V z), n -> incr_pc ();Printf.fprintf oc "\tand\t%s, %s, %s  #%d pc %d\n" x y z n (!pc)
  | NonTail(x), And(y, C i), n -> incr_pc ();Printf.fprintf oc "\tandi\t%s, %s, %d  #%d pc %d\n" x y i n (!pc)
  | NonTail(x), SLL(y, V z), n -> incr_pc ();Printf.fprintf oc "\tsll\t%s, %s, %s  #%d pc %d\n" x y z n (!pc)
  | NonTail(x), SLL(y, C i), n -> incr_pc ();Printf.fprintf oc "\tslli\t%s, %s, %d  #%d pc %d\n" x y i n (!pc)
  | NonTail(x), SRL(y, V z), n -> incr_pc ();Printf.fprintf oc "\tsrl\t%s, %s, %s  #%d pc %d\n" x y z n (!pc)
  | NonTail(x), SRL(y, C i), n -> incr_pc ();Printf.fprintf oc "\tsrli\t%s, %s, %d  #%d pc %d\n" x y i n (!pc)
  | NonTail(x), Ld(y, C i, _), n -> incr_pc ();Printf.fprintf oc "\tlw\t%s, %d(%s)  #%d pc %d\n"x i y n (!pc)
  | NonTail(x), Ld(y, V z, _), n -> incr_pc ();Printf.fprintf oc "\tadd\t%s, %s, %s  #%d pc %d\n" reg_cons z y n (!pc);
                                    incr_pc ();Printf.fprintf oc "\tlw\t%s, %d(%s)  #%d pc %d\n" x 0 reg_cons n (!pc)
  (*| NonTail(x), Ld(y, z', _), n -> let z = pp_id_or_imm' oc z' in
                                  (incr_pc ();Printf.fprintf oc "\tadd\t%s, %s, %s  #%d pc %d\n" reg_cons z y n (!pc);
                                  incr_pc ();Printf.fprintf oc "\tlw\t%s, %d(%s)  #%d pc %d\n" x 0 reg_cons n (!pc))*)
  | NonTail(_), St(x, y, C i, _), n -> incr_pc ();Printf.fprintf oc "\tsw\t%s, %d(%s)  #%d pc %d\n" x i y n (!pc)
  | NonTail(_), St(x, y, V z, _), n -> incr_pc ();Printf.fprintf oc "\tadd\t%s, %s, %s  #%d pc %d\n" reg_cons z y n (!pc);
                                      incr_pc ();Printf.fprintf oc "\tsw\t%s, %d(%s)  #%d pc %d\n" x 0 reg_cons n (!pc)
  (*| NonTail(_), St(x, y, z', _), n -> let z = pp_id_or_imm' oc z' in
                                    (incr_pc ();Printf.fprintf oc "\tadd\t%s, %s, %s  #%d pc %d\n" reg_cons z y n (!pc);
                                    incr_pc ();Printf.fprintf oc "\tsw\t%s, %d(%s)  #%d pc %d\n" x 0 reg_cons n (!pc))*)
  | NonTail(x), FAbs(y), n ->
      incr_pc ();Printf.fprintf oc "\tfabs\t%s, %s  #%d pc %d\n" x y n (!pc)
  | NonTail(x), Sqrt(y), n ->
      incr_pc ();Printf.fprintf oc "\tfsqrt\t%s, %s  #%d pc %d\n" x y n (!pc)
  | NonTail(x), FMovD(y), _ when x = y -> ()
  | NonTail(x), FMovD(y), n ->
      (*incr_pc ();Printf.fprintf oc "\tmv\t%s, %s  #%d pc %d\n" x y n (!pc);*)
      print_mv oc x y n
      (*incr_pc ();Printf.fprintf oc "\tmv\t%s, %s  #%d pc %d\n" (co_freg x) (co_freg y) n (!pc)*)
  | NonTail(x), FNegD(y), n ->
      incr_pc ();Printf.fprintf oc "\tfsub\t%s, %s, %s  #%d pc %d\n" x freg_zero y n (!pc);
      (*if x <> y then (incr_pc ();Printf.fprintf oc "\tmv\t%s, %s  #%d pc %d\n" (co_freg x) (co_freg y) n (!pc))*)
  | NonTail(x), FAddD(y, z), n -> incr_pc ();Printf.fprintf oc "\tfadd\t%s, %s, %s  #%d pc %d\n" x y z n (!pc)
  | NonTail(x), FSubD(y, z), n -> incr_pc ();Printf.fprintf oc "\tfsub\t%s, %s, %s  #%d pc %d\n" x y z n (!pc)
  | NonTail(x), FMulD(y, z), n -> incr_pc ();Printf.fprintf oc "\tfmul\t%s, %s, %s  #%d pc %d\n" x y z n (!pc)
  | NonTail(x), FDivD(y, z), n -> incr_pc ();Printf.fprintf oc "\tfdiv\t%s, %s, %s  #%d pc %d\n" x y z n (!pc)
  | NonTail(x), FtoI(y), n -> incr_pc ();Printf.fprintf oc "\tftoi\t%s, %s  #%d pc %d\n" x y n (!pc)
  | NonTail(x), ItoF(y), n -> incr_pc ();Printf.fprintf oc "\titof\t%s, %s  #%d pc %d\n" x y n (!pc)
  | NonTail(_), Out(x), n -> incr_pc ();Printf.fprintf oc "\tsw\t%s, %d(%s)  #%d pc %d\n" x 0 reg_out n (!pc);
                            incr_pc ();Printf.fprintf oc "\taddi\t%s, %s, 4  #%d pc %d\n" reg_out reg_out n (!pc)
  | NonTail(x), Ini, n -> incr_pc ();Printf.fprintf oc "\tlw\t%s, %d(%s)  #%d pc %d\n" x 0 reg_in n (!pc);
                          incr_pc ();Printf.fprintf oc "\taddi\t%s, %s, 4  #%d pc %d\n" reg_in reg_in n (!pc)
  | NonTail(x), Inf, n -> incr_pc ();Printf.fprintf oc "\tflw\t%s, %d(%s)  #%d pc %d\n" x 0 reg_in n (!pc);
                          incr_pc ();Printf.fprintf oc "\taddi\t%s, %s, 4  #%d pc %d\n" reg_in reg_in n (!pc)
  | NonTail(_), Sethp(x), n -> (*incr_pc ();Printf.fprintf oc "\tmv\t%s, %s  #%d pc %d\n" reg_hp x n (!pc)*)
                              print_mv oc reg_hp x n
  | NonTail(x), Gethp, n -> (*incr_pc ();Printf.fprintf oc "\tmv\t%s, %s  #%d pc %d\n" x reg_hp n (!pc)*)
                            print_mv oc x reg_hp n
  | NonTail(x), LdDF(y, C i, _), n -> incr_pc ();Printf.fprintf oc "\tflw\t%s, %d(%s)  #%d pc %d\n" x i y n (!pc)
  | NonTail(x), LdDF(y, V z, _), n -> incr_pc ();Printf.fprintf oc "\tadd\t%s, %s, %s  #%d pc %d\n" reg_cons z y n (!pc);
                                      incr_pc ();Printf.fprintf oc "\tflw\t%s, %d(%s)  #%d pc %d\n" x 0 reg_cons n (!pc)
  (*| NonTail(x), LdDF(y, z', _), n -> let z = pp_id_or_imm' oc z' in
                                    (incr_pc ();Printf.fprintf oc "\tadd\t%s, %s, %s  #%d pc %d\n" reg_cons z y n (!pc);
                                    incr_pc ();Printf.fprintf oc "\tflw\t%s, %d(%s)  #%d pc %d\n" x 0 reg_cons n (!pc))*)
  | NonTail(_), StDF(x, y, C i, _), n -> incr_pc ();Printf.fprintf oc "\tfsw\t%s, %d(%s)  #%d pc %d\n" x i y n (!pc)
  | NonTail(_), StDF(x, y, V z, _), n -> incr_pc ();Printf.fprintf oc "\tadd\t%s, %s, %s  #%d pc %d\n" reg_cons z y n (!pc);
                                        incr_pc ();Printf.fprintf oc "\tfsw\t%s, %d(%s) #%d pc %d\n" x 0 reg_cons n (!pc)
  (*| NonTail(_), StDF(x, y, z', _), n -> let z = pp_id_or_imm' oc z' in
                                    (incr_pc ();Printf.fprintf oc "\tadd\t%s, %s, %s  #%d pc %d\n" reg_cons z y n (!pc);
                                    incr_pc ();Printf.fprintf oc "\tfsw\t%s, %d(%s) #%d pc %d\n" x 0 reg_cons n (!pc))*)
  | NonTail(_), Comment(s), n -> Printf.fprintf oc "\t# %s  %d\n" s n
  (* ����β���̿��μ��� (caml2html: emit_save) *)
  | NonTail(_), Save(x, y), n when List.mem x allregs && not (S.mem y !stackset) ->
      save y;
      incr_pc ();Printf.fprintf oc "\tsw\t%s, %d(%s)  #%d pc %d\n" x (offset y) reg_sp n (!pc)
  | NonTail(_), Save(x, y), n when List.mem x allfregs && not (S.mem y !stackset) ->
      savef y;
      incr_pc ();Printf.fprintf oc "\tfsw\t%s, %d(%s)  #%d pc %d\n" x (offset y) reg_sp n (!pc)
  | NonTail(_), Save(x, y), _ -> assert (S.mem y !stackset); ()
  (* �����β���̿��μ��� (caml2html: emit_restore) *)
  | NonTail(x), Restore(y), n when List.mem x allregs ->
      incr_pc ();Printf.fprintf oc "\tlw\t%s, %d(%s)  #%d pc %d\n" x (offset y) reg_sp n (!pc)
  | NonTail(x), Restore(y), n ->
      assert (List.mem x allfregs);
      incr_pc ();Printf.fprintf oc "\tflw\t%s, %d(%s)  #%d pc %d\n" x (offset y) reg_sp n (!pc)
  (* �������ä���׻���̤����쥸�����˥��åȤ��ƥ꥿���� (caml2html: emit_tailret) *)
  | Tail, (SetL(Id.L(y)) as exp), n ->
    if is_xreg y then
      (g' oc (NonTail(regs.(0)), exp, n);
      incr_pc ();Printf.fprintf oc "\tret #pc %d\n" (!pc);
      incr_pc ();Printf.fprintf oc "\tnop #pc %d\n" (!pc))
    else
      (g' oc (NonTail(fregs.(0)), exp, n);
      incr_pc ();Printf.fprintf oc "\tret #pc %d\n" (!pc);
      incr_pc ();Printf.fprintf oc "\tnop #pc %d\n" (!pc))
  | Tail, (Nop | Out _ | Sethp _ | St _ | StDF _ | Comment _ | Save _ as exp), n ->
      g' oc (NonTail(Id.gentmp Type.Unit), exp, n);
      incr_pc ();Printf.fprintf oc "\tret #pc %d\n" (!pc);
      incr_pc ();Printf.fprintf oc "\tnop #pc %d\n" (!pc)
  | Tail, (FtoI _ | Ini | Gethp | Set _ | Mov _ | Neg _ | Add _ | Sub _ | Xor _ | Or _ | And _ | SLL _ | SRL _ | Ld _ as exp), n ->
      g' oc (NonTail(regs.(0)), exp, n);
      incr_pc ();Printf.fprintf oc "\tret #pc %d\n" (!pc);
      incr_pc ();Printf.fprintf oc "\tnop #pc %d\n" (!pc)
  | Tail, (ItoF _ | Inf | Sqrt _ | FAbs _ | FMovD _ | FNegD _ | FAddD _ | FSubD _ | FMulD _ | FDivD _ | LdDF _ as exp), n ->
      g' oc (NonTail(fregs.(0)), exp, n);
      incr_pc ();Printf.fprintf oc "\tret #pc %d\n" (!pc);
      incr_pc ();Printf.fprintf oc "\tnop #pc %d\n" (!pc)
  | Tail, (Restore(x) as exp), n ->
      (match locate x with
      | [i] -> g' oc (NonTail(regs.(0)), exp, n)
      | [i; j] when i + 1 = j -> g' oc (NonTail(fregs.(0)), exp, n)
      | _ -> assert false);
      incr_pc ();Printf.fprintf oc "\tret #pc %d\n" (!pc);
      incr_pc ();Printf.fprintf oc "\tnop #pc %d\n" (!pc)
  | Tail, IfEq(x, y', e1, e2), n ->
    let y = pp_id_or_imm' oc y' in
      incr_pc ();Printf.fprintf oc "\tbeq\t%s, %s, 12  #%d pc %d\n" x y n (!pc);
      g'_tail_if oc e1 e2 "be"
  | Tail, IfLE(x, y', e1, e2), n ->
    let y = pp_id_or_imm' oc y' in
      incr_pc ();Printf.fprintf oc "\tbge\t%s, %s, 12  #%d pc %d\n" y x n (!pc);
      g'_tail_if oc e1 e2 "ble"
  | Tail, IfGE(x, y', e1, e2), n ->
    let y = pp_id_or_imm' oc y' in
      incr_pc ();Printf.fprintf oc "\tbge\t%s, %s, 12  #%d pc %d\n" x y n (!pc);
      g'_tail_if oc e1 e2 "bge"
  | Tail, IfFEq(x, y, e1, e2), n ->
      incr_pc ();Printf.fprintf oc "\tfeq\t%s, %s, %s  #%d pc %d\n" freg_cons x y n (!pc);
      incr_pc ();Printf.fprintf oc "\tftoi\t%s, %s  #%d pc %d\n" reg_cons freg_cons n (!pc);
      incr_pc ();Printf.fprintf oc "\tblt\t%s, %s, 12  #%d pc %d\n" reg_zero reg_cons n (!pc);
      g'_tail_if oc e1 e2 "fbe"
  | Tail, IfFLE(x, y, e1, e2), n ->
      incr_pc ();Printf.fprintf oc "\tfle\t%s, %s, %s  #%d pc %d\n" freg_cons x y n (!pc);
      incr_pc ();Printf.fprintf oc "\tftoi\t%s, %s  #%d pc %d\n" reg_cons freg_cons n (!pc);
      incr_pc ();Printf.fprintf oc "\tblt\t%s, %s, 12  #%d pc %d\n" reg_zero reg_cons n (!pc);
      g'_tail_if oc e1 e2 "fble"
  | NonTail(z), IfEq(x, y', e1, e2), n ->
    let y = pp_id_or_imm' oc y' in
      incr_pc ();Printf.fprintf oc "\tbeq\t%s, %s, 12  #%d pc %d\n" x y n (!pc);
      g'_non_tail_if oc (NonTail(z)) e1 e2 "be"
  | NonTail(z), IfLE(x, y', e1, e2), n ->
    let y = pp_id_or_imm' oc y' in
      incr_pc ();Printf.fprintf oc "\tbge\t%s, %s, 12  #%d pc %d\n" y x n (!pc);
      g'_non_tail_if oc (NonTail(z)) e1 e2 "ble"
  | NonTail(z), IfGE(x, y', e1, e2), n ->
    let y = pp_id_or_imm' oc y' in
      incr_pc ();Printf.fprintf oc "\tbge\t%s, %s, 12  #%d pc %d\n" x y n (!pc);
      g'_non_tail_if oc (NonTail(z)) e1 e2 "bge"
  | NonTail(z), IfFEq(x, y, e1, e2), n ->
      incr_pc ();Printf.fprintf oc "\tfeq\t%s, %s, %s  #%d pc %d\n" freg_cons x y n (!pc);
      incr_pc ();Printf.fprintf oc "\tftoi\t%s, %s  #%d pc %d\n" reg_cons freg_cons n (!pc);
      incr_pc ();Printf.fprintf oc "\tblt\t%s, %s, 12  #%d pc %d\n" reg_zero reg_cons n (!pc);
      g'_non_tail_if oc (NonTail(z)) e1 e2 "fbe"
  | NonTail(z), IfFLE(x, y, e1, e2), n ->
      incr_pc ();Printf.fprintf oc "\tfle\t%s, %s, %s  #%d pc %d\n" freg_cons x y n (!pc);
      incr_pc ();Printf.fprintf oc "\tftoi\t%s, %s  #%d pc %d\n" reg_cons freg_cons n (!pc);
      incr_pc ();Printf.fprintf oc "\tblt\t%s, %s, 12  #%d pc %d\n" reg_zero reg_cons n (!pc);
      g'_non_tail_if oc (NonTail(z)) e1 e2 "fble"
  (* �ؿ��ƤӽФ��β���̿��μ��� (caml2html: emit_call) *)
  | Tail, CallCls(x, ys, zs), n -> (* �����ƤӽФ� (caml2html: emit_tailcall) *)
      g'_args oc [(x, reg_cl)] ys zs;
      incr_pc ();Printf.fprintf oc "\tlw\t%s, 0(%s)  #%d pc %d\n" reg_sw reg_cl n (!pc);
      incr_pc ();Printf.fprintf oc "\tjalr\t%s, %s, %d  #%d pc %d\n" reg_zero reg_sw 0 n (!pc);
      incr_pc ();Printf.fprintf oc "\tnop #pc %d\n" (!pc)
  | Tail, CallDir(Id.L(x), ys, zs), n -> (* �����ƤӽФ� *)
      g'_args oc [] ys zs;
      incr_pc ();Printf.fprintf oc "\tj\t%s  #%d pc %d\n" x n (!pc);
      incr_pc ();Printf.fprintf oc "\tnop #pc %d\n" (!pc)
  | NonTail(a), CallCls(x, ys, zs), n ->
      g'_args oc [(x, reg_cl)] ys zs;
      let ss = stacksize () in
      incr_pc ();Printf.fprintf oc "\tsw\t%s, %d(%s)  #%d pc %d\n" reg_ra (ss - 4) reg_sp n (!pc);
      incr_pc ();Printf.fprintf oc "\tlw\t%s, 0(%s)  #%d pc %d\n" reg_sw reg_cl n (!pc);
      incr_pc ();Printf.fprintf oc "\taddi\t%s, %s, %d  #%d pc %d\n" reg_sp reg_sp ss n (!pc);
      incr_pc ();Printf.fprintf oc "\tjalr\t%s, %s, %d  #%d pc %d\n" reg_ra reg_sw 0 n (!pc);
      (* Printf.fprintf oc "\taddi\t%s, %s, %d\t# delay slot  %d\n" reg_sp reg_sp ss n; *)
      incr_pc ();Printf.fprintf oc "\taddi\t%s, %s, %d  #%d pc %d\n" reg_sp reg_sp (-ss) n (!pc);
      incr_pc ();Printf.fprintf oc "\tlw\t%s, %d(%s)  #%d pc %d\n" reg_ra (ss - 4) reg_sp n (!pc);
      if List.mem a allregs && a <> regs.(0) then
        ((*incr_pc ();Printf.fprintf oc "\tmv\t%s, %s  #%d pc %d\n" a regs.(0) n (!pc)*)
        print_mv oc a regs.(0) n)
      else if List.mem a allfregs && a <> fregs.(0) then
        ((*incr_pc ();Printf.fprintf oc "\tmv\t%s, %s  #%d pc %d\n" a fregs.(0) n (!pc);*)
        print_mv oc a fregs.(0) n
         (*incr_pc ();Printf.fprintf oc "\tmv\t%s, %s  #%d pc %d\n" (co_freg a) (co_freg fregs.(0)) n (!pc)*))
  | NonTail(a), CallDir(Id.L(x), ys, zs), n ->
      g'_args oc [] ys zs;
      let ss = stacksize () in
      incr_pc ();Printf.fprintf oc "\tsw\t%s, %d(%s)  #%d pc %d\n" reg_ra (ss - 4) reg_sp n (!pc);
      incr_pc ();Printf.fprintf oc "\taddi\t%s, %s, %d  #%d pc %d\n" reg_sp reg_sp ss n (!pc);
      incr_pc ();Printf.fprintf oc "\tjal\t%s, %s  #%d pc %d\n" reg_ra x n (!pc);
      (* Printf.fprintf oc "\taddi\t%s, %s, %d\t# delay slot  %d\n" reg_sp reg_sp ss n; *)
      incr_pc ();Printf.fprintf oc "\taddi\t%s, %s, %d  #%d pc %d\n" reg_sp reg_sp (-ss) n (!pc);
      incr_pc ();Printf.fprintf oc "\tlw\t%s, %d(%s) #%d pc %d\n" reg_ra (ss - 4) reg_sp n (!pc);
      if List.mem a allregs && a <> regs.(0) then
        ((*incr_pc ();Printf.fprintf oc "\tmv\t%s, %s  #%d pc %d\n" a regs.(0) n (!pc)*)
        print_mv oc a regs.(0) n)
      else if List.mem a allfregs && a <> fregs.(0) then
        ((*incr_pc ();Printf.fprintf oc "\tmv\t%s, %s  #%d pc %d\n" a fregs.(0) n (!pc);*)
        print_mv oc a fregs.(0) n
         (*incr_pc ();Printf.fprintf oc "\tmv\t%s, %s  #%d pc %d\n" (co_freg a) (co_freg fregs.(0)) n (!pc)*))
and g'_tail_if oc e1 e2 b =
  let b_else = Id.genid (b ^ "_else") in
  incr_pc ();Printf.fprintf oc "\tj\t%s #pc %d\n" b_else (!pc);
  incr_pc ();Printf.fprintf oc "\tnop #pc %d\n" (!pc);
  let stackset_back = !stackset in
  g oc (Tail, e1);
  Printf.fprintf oc "%s: #pc %d\n" b_else ((!pc)+4);
  stackset := stackset_back;
  g oc (Tail, e2)
and g'_non_tail_if oc dest e1 e2 b =
  let b_else = Id.genid (b ^ "_else") in
  let b_cont = Id.genid (b ^ "_cont") in
  incr_pc ();Printf.fprintf oc "\tj\t%s #pc %d\n" b_else (!pc);
  incr_pc ();Printf.fprintf oc "\tnop #pc %d\n" (!pc);
  let stackset_back = !stackset in
  g oc (dest, e1);
  let stackset1 = !stackset in
  incr_pc ();Printf.fprintf oc "\tj\t%s #pc %d\n" b_cont (!pc);
  incr_pc ();Printf.fprintf oc "\tnop #pc %d\n" (!pc);
  Printf.fprintf oc "%s: #pc %d\n" b_else ((!pc)+4);
  stackset := stackset_back;
  g oc (dest, e2);
  Printf.fprintf oc "%s: #pc %d\n" b_cont ((!pc)+4);
  let stackset2 = !stackset in
  stackset := S.inter stackset1 stackset2
and g'_args oc x_reg_cl ys zs =
  let (i, yrs) =
    List.fold_left
      (fun (i, yrs) y -> (i + 1, (y, regs.(i)) :: yrs))
      (0, x_reg_cl)
      ys in
  List.iter
    (fun (y, r) -> if y = "%g0" then 
                      (*Printf.fprintf oc "\tmv\t%s, %s #pc %d\n" r reg_zero (!pc)*)
                      print_mv oc r reg_zero 0
                    else  
                      (*Printf.fprintf oc "\tmv\t%s, %s #pc %d\n" r y (!pc)*)
                      print_mv oc r y 0)
    (shuffle reg_sw yrs);
  let (d, zfrs) =
    List.fold_left
      (fun (d, zfrs) z -> (d + 1, (z, fregs.(d)) :: zfrs))
      (0, [])
      zs in
  List.iter
    (fun (z, fr) ->
      (*incr_pc ();Printf.fprintf oc "\tmv\t%s, %s #pc %d\n" fr z (!pc);*)
      print_mv oc fr z 0
      (*incr_pc ();Printf.fprintf oc "\tmv\t%s, %s #pc %d\n" (co_freg fr) (co_freg z) (!pc)*))
    (shuffle reg_fsw zfrs)

let h oc { name = Id.L(x); args = _; fargs = _; body = e; ret = _ } =
  Printf.fprintf oc "%s:  #pc %d\n" x ((!pc)+4);
  add_pc_env x ((!pc)+4);
  stackset := S.empty;
  stackmap := [];
  g oc (Tail, e)

let f oc (Prog(data, fundefs, e)) =
  pc := -4;
  pc_env := M.empty;
  Format.eprintf "generating assembly...@.";
  Printf.fprintf oc ".section\t\".rodata\"\n";
  Printf.fprintf oc ".align\t8\n";
  List.iter
    (fun (Id.L(x), d) ->
      Printf.fprintf oc "%s:\t! %f\n" x d;
      (*Printf.fprintf oc "\t.long\t0x%lx\n" (gethi d);
      Printf.fprintf oc "\t.long\t0x%lx\n" (getlo d)*))
    data;
  Printf.fprintf oc ".section\t\".text\"\n";
  List.iter (fun fundef -> h oc fundef) fundefs;
  Printf.fprintf oc ".global\tmin_caml_start\n";
  Printf.fprintf oc "min_caml_start:\n";
  (*Printf.fprintf oc "\tsave\t%%sp, -112, %%sp\n";  from gcc; why 112? *)
  incr_pc ();Printf.fprintf oc "\taddi\t%s, %s, 10000000\n" reg_sp reg_zero;
  incr_pc ();Printf.fprintf oc "\taddi\t%s, %s, 10002000\n" reg_hp reg_zero;
  incr_pc ();Printf.fprintf oc "\taddi\t%s, %s, 8192\n" reg_in reg_zero;
  incr_pc ();Printf.fprintf oc "\taddi\t%s, %s, 65536\n" reg_out reg_zero;
  stackset := S.empty;
  stackmap := [];
  g oc (NonTail("%g0"), e);
  (* Printf.fprintf oc "\tret\n"; *)
  (* Printf.fprintf oc "\trestore\n" *)
  (*incr_pc ();Printf.fprintf oc "\taddi\t%s, %s, 112\n" reg_sp reg_sp;*)
