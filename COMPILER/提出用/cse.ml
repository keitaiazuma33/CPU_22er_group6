(* 共通部分式削除(CSE) *)

open KNormal

exception Not_found

let rec effect = function (* 副作用の有無 *)
  | Let(_, e1, e2, _) | IfEq(_, _, e1, e2, _) | IfLE(_, _, e1, e2, _) -> effect e1 || effect e2
  | LetRec(_, e, _) | LetTuple(_, _, e, _) -> effect e
  | App _ | Put _ | ExtFunApp _ | Ini _ | Inf _ | Out _ | Sethp _ -> true
  | _ -> false

let rec equal_knormal e1 e2 =
  match e1, e2 with
  | Unit, Unit -> true
  | Int(i1), Int(i2) -> i1 = i2
  | Float(d1), Float(d2) -> d1 = d2
  | Neg(x,_), Neg(y,_) | FNeg(x,_), FNeg(y,_) | Sqrt(x,_), Sqrt(y,_) | FAbs(x,_), FAbs(y,_) 
  | Ini(x,_), Ini(y,_) | Inf(x,_), Inf(y,_) | Out(x,_), Out(y,_)
  | Var(x,_), Var(y,_) | ExtArray(x,_), ExtArray(y,_) | FtoI(x,_), FtoI(y,_) | ItoF(x,_), ItoF(y,_) -> x = y
  | Sub(x1,y1,_), Sub(x2,y2,_) | FSub(x1,y1,_), FSub(x2,y2,_) | SLL(x1,y1,_), SLL(x2,y2,_)
  | FDiv(x1,y1,_), FDiv(x2,y2,_) | Get(x1,y1,_), Get(x2,y2,_) | SRL(x1,y1,_), SRL(x2,y2,_) ->
    x1 = x2 && y1 = y2
  | Add(x1,y1,_), Add(x2,y2,_) | FAdd(x1,y1,_), FAdd(x2,y2,_) | FMul(x1,y1,_), FMul(x2,y2,_)
  | Xor(x1,y1,_), Xor(x2,y2,_) | Or(x1,y1,_), Or(x2,y2,_) | And(x1,y1,_), And(x2,y2,_) ->
    (x1 = x2 && y1 = y2) || (x1 = y2 && x2 = y1)
  | IfEq(x1,y1,e11,e21,_), IfEq(x2,y2,e12,e22,_) | IfLE(x1,y1,e11,e21,_), IfLE(x2,y2,e12,e22,_) ->
    if x1 = x2 && y1 = y2 then equal_knormal e11 e12 && equal_knormal e21 e22
    else false
  | Let((x1,t1),e11,e21,_), Let((x2,t2),e12,e22,_) ->
    if x1 = x2 && t1 = t2 then equal_knormal e11 e12 && equal_knormal e21 e22
    else false
  | LetRec(f1,e1,_), LetRec(f2,e2,_) ->
    f1 = f2 && e1 = e2
  | App(x1,ys1,_), App(x2,ys2,_) | ExtFunApp(x1,ys1,_), ExtFunApp(x2,ys2,_) ->
    x1 = x2 && ys1 = ys2
  | Tuple(xs1,_), Tuple(xs2,_) -> xs1 = xs2
  | LetTuple(xts1,y1,e1,_), LetTuple(xts2,y2,e2,_) ->
    if xts1 = xts2 && y1 = y2 then equal_knormal e1 e2 else false
  | Put(x1,y1,z1,_), Put(x2,y2,z2,_) ->
    x1 = x2 && y1 = y2 && z1 = z2
  | _ -> false
  

let rec find_snd x e env =
  match env with
  | [] -> raise Not_found
  | (x', e') :: env' -> 
    (if equal_knormal e e' then x' else find_snd x e env')

(* (Id.t * t) * t -> t *)
let rec g env = function
  | Unit -> Unit
  | Int(i) -> Int(i)
  | Float(d) -> Float(d)
  | Neg(x, n) -> Neg(x, n)
  | Add(x, y, n) -> Add(x, y, n)
  | Sub(x, y, n) -> Sub(x, y, n)
  | Xor(x, y, n) -> Xor(x, y, n)
  | Or(x, y, n) -> Or(x, y, n)
  | And(x, y, n) -> And(x, y, n)
  | SLL(x, y, n) -> SLL(x, y, n)
  | SRL(x, y, n) -> SRL(x, y, n)
  | Sqrt(x, n) -> Sqrt(x, n)
  | FAbs(x, n) -> FAbs(x, n)
  | FNeg(x, n) -> FNeg(x, n)
  | FAdd(x, y, n) -> FAdd(x, y, n)
  | FSub(x, y, n) -> FSub(x, y, n)
  | FMul(x, y, n) -> FMul(x, y, n)
  | FDiv(x, y, n) -> FDiv(x, y, n)
  | FtoI(x, n) -> FtoI(x, n)
  | ItoF(x, n) -> ItoF(x, n)
  | Ini(x, n) -> Ini(x, n)
  | Out(x, n) -> Out(x, n)
  | IfEq(x, y, e1, e2, n) -> IfEq(x, y, g env e1, g env e2, n)
  | IfLE(x, y, e1, e2, n) -> IfLE(x, y, g env e1, g env e2, n)
  | Let((x, t), e1, e2, n) -> 
    if effect e1 then (let env' = (x, e1) :: env in Let((x, t), g env e1, g env' e2, n)) else
    (try (let y = find_snd x e1 env in
          let env' = (x, Var(y, n)) :: env in
            Let((x, t), Var(y, n), g env' e2, n)) with Not_found -> 
      let env' = (x, e1) :: env in
        Let((x, t), g env e1, g env' e2, n))
  | Var(x, n) -> Var(x, n)
  | LetRec(f, e, n) -> LetRec(f, g env e, n)
  | App(x, ys, n) -> App(x, ys, n)
  | Tuple(xs, n) -> Tuple(xs, n)
  | LetTuple(xts, y, e, n) -> LetTuple(xts, y, g env e, n)
  | Get(x, y, n) -> Get(x, y, n)
  | Put(x, y, z, n) -> Put(x, y, z, n)
  | ExtArray(x, n) -> ExtArray(x, n)
  | ExtFunApp(x, ys, n) -> ExtFunApp(x, ys, n)
  | e -> e

let f = g []