(* flatten let-bindings (just for prettier printing) *)

open KNormal

(* t -> t *)
let rec f = function 
  | IfEq(x, y, e1, e2, n) -> IfEq(x, y, f e1, f e2, n)
  | IfLE(x, y, e1, e2, n) -> IfLE(x, y, f e1, f e2, n)
  | Let(xt, e1, e2, n) ->
      let rec insert = function
        | Let(yt, e3, e4, n) -> Let(yt, e3, insert e4, n)
        | LetRec(fundefs, e, n) -> LetRec(fundefs, insert e, n)
        | LetTuple(yts, z, e, n) -> LetTuple(yts, z, insert e, n)
        | e -> Let(xt, e, f e2, n) in
      insert (f e1)
  | LetRec({ name = xt; args = yts; body = e1 }, e2, n) ->
      LetRec({ name = xt; args = yts; body = f e1 }, f e2, n)
  | LetTuple(xts, y, e, n) -> LetTuple(xts, y, f e, n)
  | e -> e
