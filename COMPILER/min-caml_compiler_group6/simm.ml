open Asm

let rec g env = function (* ̿�����13bit¨�ͺ�Ŭ�� (caml2html: simm13_g) *)
  | Ans(exp, n) -> Ans(g' env exp, n)
  | Let((x, t), Set(i), e, n) when -2048 <= i && i < 2048 ->
      (* Format.eprintf "found simm13 %s = %d@." x i; *)
      let e' = g (M.add x i env) e in
      if List.mem x (fv e') then Let((x, t), Set(i), e', n) else
      ((* Format.eprintf "erased redundant Set to %s@." x; *)
       e')
  | Let(xt, SLL(y, C(i)), e, n) when M.mem y env -> (* for array access *)
      (* Format.eprintf "erased redundant SLL on %s@." x; *)
      g env (Let(xt, Set((M.find y env) lsl i), e, n))
  | Let(xt, exp, e, n) -> Let(xt, g' env exp, g env e, n)
and g' env = function (* ��̿���13bit¨�ͺ�Ŭ�� (caml2html: simm13_gprime) *)
  | Add(x, V(y)) when M.mem y env -> Add(x, C(M.find y env))
  | Add(x, V(y)) when M.mem x env -> Add(y, C(M.find x env))
  | Sub(x, V(y)) when M.mem y env -> Sub(x, C(M.find y env))
  | Xor(x, V(y)) when M.mem y env -> Xor(x, C(M.find y env))
  | Xor(x, V(y)) when M.mem x env -> Xor(y, C(M.find x env))
  | SLL(x, V(y)) when M.mem y env -> SLL(x, C(M.find y env))
  | SRL(x, V(y)) when M.mem y env -> SRL(x, C(M.find y env))
  | Ld(x, V(y), n) when M.mem y env -> Ld(x, C(M.find y env), n)
  | St(x, y, V(z), n) when M.mem z env -> St(x, y, C(M.find z env), n)
  | LdDF(x, V(y), n) when M.mem y env -> LdDF(x, C(M.find y env), n)
  | StDF(x, y, V(z), n) when M.mem z env -> StDF(x, y, C(M.find z env), n)
  | IfEq(x, V(y), e1, e2) when M.mem y env -> IfEq(x, C(M.find y env), g env e1, g env e2)
  | IfLE(x, V(y), e1, e2) when M.mem y env -> IfLE(x, C(M.find y env), g env e1, g env e2)
  | IfGE(x, V(y), e1, e2) when M.mem y env -> IfGE(x, C(M.find y env), g env e1, g env e2)
  | IfEq(x, V(y), e1, e2) when M.mem x env -> IfEq(y, C(M.find x env), g env e1, g env e2)
  | IfLE(x, V(y), e1, e2) when M.mem x env -> IfGE(y, C(M.find x env), g env e1, g env e2)
  | IfGE(x, V(y), e1, e2) when M.mem x env -> IfLE(y, C(M.find x env), g env e1, g env e2)
  | IfEq(x, y', e1, e2) -> IfEq(x, y', g env e1, g env e2)
  | IfLE(x, y', e1, e2) -> IfLE(x, y', g env e1, g env e2)
  | IfGE(x, y', e1, e2) -> IfGE(x, y', g env e1, g env e2)
  | IfFEq(x, y, e1, e2) -> IfFEq(x, y, g env e1, g env e2)
  | IfFLE(x, y, e1, e2) -> IfFLE(x, y, g env e1, g env e2)
  | e -> e

let h { name = l; args = xs; fargs = ys; body = e; ret = t } = (* �ȥåץ�٥�ؿ���13bit¨�ͺ�Ŭ�� *)
  { name = l; args = xs; fargs = ys; body = g M.empty e; ret = t }

let f (Prog(data, fundefs, e)) = (* �ץ���������Τ�13bit¨�ͺ�Ŭ�� *)
  Prog(data, List.map h fundefs, g M.empty e)
