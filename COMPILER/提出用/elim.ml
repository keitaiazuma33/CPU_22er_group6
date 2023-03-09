open KNormal

let rec effect = function 
  | Let(_, e1, e2, _) | IfEq(_, _, e1, e2, _) | IfLE(_, _, e1, e2, _) -> effect e1 || effect e2
  | LetRec(_, e, _) | LetTuple(_, _, e, _) -> effect e
  | App _ | Put _ | ExtFunApp _ | Ini _ | Inf _ | Out _ | Sethp _ -> true
  | _ -> false

let rec f = function
  | IfEq(x, y, e1, e2, n) -> IfEq(x, y, f e1, f e2, n)
  | IfLE(x, y, e1, e2, n) -> IfLE(x, y, f e1, f e2, n)
  | Let((x, t), e1, e2, n) -> 
      let e1' = f e1 in
      let e2' = f e2 in
      if effect e1' || S.mem x (fv e2') then Let((x, t), e1', e2', n) else
      ((*Format.eprintf "eliminating variable %s from elim.ml@." x;*)
       e2')
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2, n) -> 
      let e2' = f e2 in
      if S.mem x (fv e2') then
        LetRec({ name = (x, t); args = yts; body = f e1 }, e2', n)
      else
        ((*Format.eprintf "eliminating function %s from elim.ml@." x;*)
         e2')
  | LetTuple(xts, y, e, n) ->
      let xs = List.map fst xts in
      let e' = f e in
      let live = fv e' in
      if List.exists (fun x -> S.mem x live) xs then LetTuple(xts, y, e', n) else
      ((*Format.eprintf "eliminating variables %s from elim.ml@." (Id.pp_list xs);*)
       e')
  | e -> e
