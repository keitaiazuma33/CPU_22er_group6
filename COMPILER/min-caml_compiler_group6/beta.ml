open KNormal

let find x env = try M.find x env with Not_found -> x (* �ִ��Τ���δؿ� (caml2html: beta_find) *)

(* (Id.t * Id.t) * t -> t *)
let rec g env = function (* �´���롼�������� (caml2html: beta_g) *)
  | Unit -> Unit
  | Int(i) -> Int(i)
  | Float(d) -> Float(d)
  | Neg(x, n) -> Neg(find x env, n)
  | Add(x, y, n) -> Add(find x env, find y env, n)
  | Sub(x, y, n) -> Sub(find x env, find y env, n)
  | Xor(x, y, n) -> Xor(find x env, find y env, n)
  | Or(x, y, n) -> Or(find x env, find y env, n)
  | And(x, y, n) -> And(find x env, find y env, n)
  | SLL(x, y, n) -> SLL(find x env, find y env, n)
  | SRL(x, y, n) -> SRL(find x env, find y env, n)
  | Sqrt(x, n) -> Sqrt(find x env, n)
  | FAbs(x, n) -> FAbs(find x env, n)
  | FNeg(x, n) -> FNeg(find x env, n)
  | FAdd(x, y, n) -> FAdd(find x env, find y env, n)
  | FSub(x, y, n) -> FSub(find x env, find y env, n)
  | FMul(x, y, n) -> FMul(find x env, find y env, n)
  | FDiv(x, y, n) -> FDiv(find x env, find y env, n)
  | FtoI(x, n) -> FtoI(find x env, n)
  | ItoF(x, n) -> ItoF(find x env, n)
  | In(x, n) -> In(find x env, n)
  | Out(x, n) -> Out(find x env, n)
  | ItoIA(x, n) -> ItoIA(find x env, n)
  | ItoFA(x, n) -> ItoFA(find x env, n)
  | Gethp(x, n) -> Gethp(find x env, n)
  | Sethp(x, n) -> Sethp(find x env, n)
  | IfEq(x, y, e1, e2, n) -> IfEq(find x env, find y env, g env e1, g env e2, n)
  | IfLE(x, y, e1, e2, n) -> IfLE(find x env, find y env, g env e1, g env e2, n)
  | Let((x, t), e1, e2, n) -> (* let�Φ´��� (caml2html: beta_let) *)
      (match g env e1 with
      | Var(y, _) ->
          Format.eprintf "beta-reducing %s = %s from beta.ml@." x y;
          g (M.add x y env) e2
      | e1' ->
          let e2' = g env e2 in
          Let((x, t), e1', e2', n))
  | LetRec({ name = xt; args = yts; body = e1 }, e2, n) ->
      LetRec({ name = xt; args = yts; body = g env e1 }, g env e2, n)
  | Var(x, n) -> Var(find x env, n) (* �ѿ����ִ� (caml2html: beta_var) *)
  | Tuple(xs, n) -> Tuple(List.map (fun x -> find x env) xs, n)
  | LetTuple(xts, y, e, n) -> LetTuple(xts, find y env, g env e, n)
  | Get(x, y, n) -> Get(find x env, find y env, n)
  | Put(x, y, z, n) -> Put(find x env, find y env, find z env, n)
  | App(g, xs, n) -> App(find g env, List.map (fun x -> find x env) xs, n)
  | ExtArray(x, n) -> ExtArray(x, n)
  | ExtFunApp(x, ys, n) -> ExtFunApp(x, List.map (fun y -> find y env) ys, n)

let f = g M.empty
