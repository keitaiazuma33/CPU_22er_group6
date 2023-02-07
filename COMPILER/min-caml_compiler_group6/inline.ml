open KNormal

(* インライン展開する関数の最大サイズ (caml2html: inline_threshold) *)
let threshold = ref 0 (* Mainで-inlineオプションによりセットされる *)

let rec size = function
  | IfEq(_, _, e1, e2, _) | IfLE(_, _, e1, e2, _)
  | Let(_, e1, e2, _) | LetRec({ body = e1 }, e2, _) -> 1 + size e1 + size e2
  | LetTuple(_, _, e, _) -> 1 + size e
  | _ -> 1

(* (Id.t * ((Id.t * Type.t) list * t)) * t -> t *)
let rec g env = function (* インライン展開ルーチン本体 (caml2html: inline_g) *)
  | IfEq(x, y, e1, e2, n) -> IfEq(x, y, g env e1, g env e2, n)
  | IfLE(x, y, e1, e2, n) -> IfLE(x, y, g env e1, g env e2, n)
  | Let(xt, e1, e2, n) -> Let(xt, g env e1, g env e2, n)
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2, n) -> (* 関数定義の場合 (caml2html: inline_letrec) *)
      let env = if size e1 > !threshold then env else M.add x (yts, e1) env in
      LetRec({ name = (x, t); args = yts; body = g env e1}, g env e2, n)
  | App(x, ys, n) when M.mem x env -> (* 関数適用の場合 (caml2html: inline_app) *)
      let (zs, e) = M.find x env in
      Format.eprintf "inlining %s from inline.ml@." x;
      let env' =
        List.fold_left2
          (fun env' (z, t) y -> M.add z y env')
          M.empty
          zs
          ys in
      Alpha.g' env' n e
  | LetTuple(xts, y, e, n) -> LetTuple(xts, y, g env e, n)
  | e -> e

let f e = g M.empty e
