open KNormal

let memi x env =
  try (match M.find x env with Int(_) -> true | _ -> false)
  with Not_found -> false
let memf x env =
  try (match M.find x env with Float(_) -> true | _ -> false)
  with Not_found -> false
let memt x env =
  try (match M.find x env with Tuple(_, _) -> true | _ -> false)
  with Not_found -> false

let findi x env = (match M.find x env with Int(i) -> i | _ -> raise Not_found)
let findf x env = (match M.find x env with Float(d) -> d | _ -> raise Not_found)
let findt x env = (match M.find x env with Tuple(ys, _) -> ys | _ -> raise Not_found)

(* (Id.t * t) * t -> t *)
let rec g env = function 
  | Var(x, _) when memi x env -> Int(findi x env)
  (* | Var(x) when memf x env -> Float(findf x env) *)
  (* | Var(x) when memt x env -> Tuple(findt x env) *)
  | Neg(x, _) when memi x env -> Int(-(findi x env))
  | Add(x, y, _) when memi x env && memi y env -> Int(findi x env + findi y env)
  | Sub(x, y, _) when memi x env && memi y env -> Int(findi x env - findi y env)
  | Xor(x, y, _) when memi x env && memi y env -> Int((findi x env) lxor (findi y env))
  | Or(x, y, _) when memi x env && memi y env -> Int((findi x env) lor (findi y env))
  | And(x, y, _) when memi x env && memi y env -> Int((findi x env) land (findi y env))
  | SLL(x, y, _) when memi x env && memi y env -> Int((findi x env) lsl (findi y env))
  | SRL(x, y, _) when memi x env && memi y env -> Int((findi x env) lsr (findi y env))
  | Sqrt(x, _) when memf x env -> Float(sqrt (findf x env))
  | FAbs(x, _) when memf x env -> let i = findf x env in if i < 0.0 then Float(-.i) else Float(i)
  | FNeg(x, _) when memf x env -> Float(-.(findf x env))
  | FAdd(x, y, _) when memf x env && memf y env -> Float(findf x env +. findf y env)
  | FSub(x, y, _) when memf x env && memf y env -> Float(findf x env -. findf y env)
  | FMul(x, y, _) when memf x env && memf y env -> Float(findf x env *. findf y env)
  | FDiv(x, y, _) when memf x env && memf y env -> Float(findf x env /. findf y env)
  | IfEq(x, y, e1, e2, _) when memi x env && memi y env -> if findi x env = findi y env then g env e1 else g env e2
  | IfEq(x, y, e1, e2, _) when memf x env && memf y env -> if findf x env = findf y env then g env e1 else g env e2
  | IfEq(x, y, e1, e2, n) -> IfEq(x, y, g env e1, g env e2, n)
  | IfLE(x, y, e1, e2, _) when memi x env && memi y env -> if findi x env <= findi y env then g env e1 else g env e2
  | IfLE(x, y, e1, e2, _) when memf x env && memf y env -> if findf x env <= findf y env then g env e1 else g env e2
  | IfLE(x, y, e1, e2, n) -> IfLE(x, y, g env e1, g env e2, n)
  | Let((x, t), e1, e2, n) ->
      let e1' = g env e1 in
      let e2' = g (M.add x e1' env) e2 in
      Let((x, t), e1', e2', n)
  | LetRec({ name = x; args = ys; body = e1 }, e2, n) ->
      LetRec({ name = x; args = ys; body = g env e1 }, g env e2, n)
  | LetTuple(xts, y, e, n) when memt y env ->
      List.fold_left2
        (fun e' xt z -> Let(xt, Var(z, n), e', n))
        (g env e)
        xts
        (findt y env)
  | LetTuple(xts, y, e, n) -> LetTuple(xts, y, g env e, n)
  | e -> e

let f = g M.empty
