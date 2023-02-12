(* rename identifiers to make them unique (alpha-conversion) *)

open KNormal

let find x env = try M.find x env with Not_found -> x

(* ���ֹ�ξ������¸�����С������ *)
let rec g' env n = function (* ���Ѵ��롼�������� (caml2html: alpha_g) *)
  | Unit -> Unit
  | Int(i) -> Int(i)
  | Float(d) -> Float(d)
  | Neg(x, _) -> Neg(find x env, n)
  | Add(x, y, _) -> Add(find x env, find y env, n)
  | Sub(x, y, _) -> Sub(find x env, find y env, n)
  | Xor(x, y, _) -> Xor(find x env, find y env, n)
  | Or(x, y, _) -> Or(find x env, find y env, n)
  | And(x, y, _) -> And(find x env, find y env, n)
  | SLL(x, y, _) -> SLL(find x env, find y env, n)
  | SRL(x, y, _) -> SRL(find x env, find y env, n)
  | Sqrt(x, _) -> Sqrt(find x env, n)
  | FAbs(x, _) -> FAbs(find x env, n)
  | FNeg(x, _) -> FNeg(find x env, n)
  | FAdd(x, y, _) -> FAdd(find x env, find y env, n)
  | FSub(x, y, _) -> FSub(find x env, find y env, n)
  | FMul(x, y, _) -> FMul(find x env, find y env, n)
  | FDiv(x, y, _) -> FDiv(find x env, find y env, n)
  | FtoI(x, _) -> FtoI(find x env, n)
  | ItoF(x, _) -> ItoF(find x env, n)
  | Ini(x, _) -> Ini(find x env, n)
  | Inf(x, _) -> Inf(find x env, n)
  | Out(x, _) -> Out(find x env, n)
  | IfEq(x, y, e1, e2, _) -> IfEq(find x env, find y env, g' env n e1, g' env n e2, n)
  | IfLE(x, y, e1, e2, _) -> IfLE(find x env, find y env, g' env n e1, g' env n e2, n)
  | Let((x, t), e1, e2, _) -> (* let�Φ��Ѵ� (caml2html: alpha_let) *)
      let x' = Id.genid x in
      Let((x', t), g' env n e1, g' (M.add x x' env) n e2, n)
  | Var(x, _) -> Var(find x env, n)
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2, _) -> (* let rec�Φ��Ѵ� (caml2html: alpha_letrec) *)
      let env = M.add x (Id.genid x) env in
      let ys = List.map fst yts in
      let env' = M.add_list2 ys (List.map Id.genid ys) env in
      LetRec({ name = (find x env, t);
               args = List.map (fun (y, t) -> (find y env', t)) yts;
               body = g' env' n e1 },
             g' env n e2, n)
  | App(x, ys, _) -> App(find x env, List.map (fun y -> find y env) ys, n)
  | Tuple(xs, _) -> Tuple(List.map (fun x -> find x env) xs, n)
  | LetTuple(xts, y, e, _) -> (* LetTuple�Φ��Ѵ� (caml2html: alpha_lettuple) *)
      let xs = List.map fst xts in
      let env' = M.add_list2 xs (List.map Id.genid xs) env in
      LetTuple(List.map (fun (x, t) -> (find x env', t)) xts,
               find y env,
               g' env' n e, n)
  | Get(x, y, _) -> Get(find x env, find y env, n)
  | Put(x, y, z, _) -> Put(find x env, find y env, find z env, n)
  | ExtArray(x, _) -> ExtArray(x, n)
  | ExtFunApp(x, ys, _) -> ExtFunApp(x, List.map (fun y -> find y env) ys, n)

(* (Id.t * Id.t) * t -> t *)
let rec g env = function (* ���Ѵ��롼�������� (caml2html: alpha_g) *)
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
  | Ini(x, n) -> Ini(find x env, n)
  | Inf(x, n) -> Inf(find x env, n)
  | Out(x, n) -> Out(find x env, n)
  | ItoIA(x, n) -> ItoIA(find x env, n)
  | ItoFA(x, n) -> ItoFA(find x env, n)
  | Gethp(x, n) -> Gethp(find x env, n)
  | Sethp(x, n) -> Sethp(find x env, n)
  | IfEq(x, y, e1, e2, n) -> IfEq(find x env, find y env, g env e1, g env e2, n)
  | IfLE(x, y, e1, e2, n) -> IfLE(find x env, find y env, g env e1, g env e2, n)
  | Let((x, t), e1, e2, n) -> (* let�Φ��Ѵ� (caml2html: alpha_let) *)
      let x' = Id.genid x in
      Let((x', t), g env e1, g (M.add x x' env) e2, n)
  | Var(x, n) -> Var(find x env, n)
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2, n) -> (* let rec�Φ��Ѵ� (caml2html: alpha_letrec) *)
      let env = M.add x (Id.genid x) env in
      let ys = List.map fst yts in
      let env' = M.add_list2 ys (List.map Id.genid ys) env in
      LetRec({ name = (find x env, t);
               args = List.map (fun (y, t) -> (find y env', t)) yts;
               body = g env' e1 },
             g env e2, n)
  | App(x, ys, n) -> App(find x env, List.map (fun y -> find y env) ys, n)
  | Tuple(xs, n) -> Tuple(List.map (fun x -> find x env) xs, n)
  | LetTuple(xts, y, e, n) -> (* LetTuple�Φ��Ѵ� (caml2html: alpha_lettuple) *)
      let xs = List.map fst xts in
      let env' = M.add_list2 xs (List.map Id.genid xs) env in
      LetTuple(List.map (fun (x, t) -> (find x env', t)) xts,
               find y env,
               g env' e, n)
  | Get(x, y, n) -> Get(find x env, find y env, n)
  | Put(x, y, z, n) -> Put(find x env, find y env, find z env, n)
  | ExtArray(x, n) -> ExtArray(x, n)
  | ExtFunApp(x, ys, n) -> ExtFunApp(x, List.map (fun y -> find y env) ys, n)

let f = g M.empty
