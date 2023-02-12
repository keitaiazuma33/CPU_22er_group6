(* give names to intermediate values (K-normalization) *)

type t = (* K��������μ� (caml2html: knormal_t) *)
  | Unit
  | Int of int
  | Float of float
  | Neg of Id.t * int
  | Add of Id.t * Id.t * int
  | Sub of Id.t * Id.t * int
  | Xor of Id.t * Id.t * int
  | Or of Id.t * Id.t * int
  | And of Id.t * Id.t * int
  | SLL of Id.t * Id.t * int
  | SRL of Id.t * Id.t * int
  | Sqrt of Id.t * int
  | FNeg of Id.t * int
  | FAdd of Id.t * Id.t * int
  | FSub of Id.t * Id.t * int
  | FMul of Id.t * Id.t * int
  | FDiv of Id.t * Id.t * int
  | FAbs of Id.t * int
  | FtoI of Id.t * int
  | ItoF of Id.t * int
  | IfEq of Id.t * Id.t * t * t * int (* ��� + ʬ�� (caml2html: knormal_branch) *)
  | IfLE of Id.t * Id.t * t * t * int (* ��� + ʬ�� *)
  | Let of (Id.t * Type.t) * t * t * int
  | Var of Id.t * int
  | LetRec of fundef * t * int
  | App of Id.t * Id.t list * int
  | Tuple of Id.t list * int
  | LetTuple of (Id.t * Type.t) list * Id.t * t * int
  | Get of Id.t * Id.t * int
  | Put of Id.t * Id.t * Id.t * int
  | ExtArray of Id.t * int
  | ExtFunApp of Id.t * Id.t list * int
  | Ini of Id.t * int
  | Inf of Id.t * int
  | Out of Id.t * int
  | ItoIA of Id.t * int
  | ItoFA of Id.t * int
  | Gethp of Id.t * int
  | Sethp of Id.t * int
and fundef = { name : Id.t * Type.t; args : (Id.t * Type.t) list; body : t }

let rec fv = function (* ���˽и�����ʼ�ͳ�ʡ��ѿ� (caml2html: knormal_fv) *)
  | Unit | Int(_) | Float(_) | ExtArray(_,_) -> S.empty
  | Neg(x,_) | FNeg(x,_) | Sqrt(x,_) | FAbs(x,_) | FtoI(x,_) | ItoF(x,_) 
  | Ini(x,_) | Inf(x,_) | Out(x,_) | ItoIA(x,_) | ItoFA(x,_) | Gethp(x,_) | Sethp(x,_) -> S.singleton x
  | Add(x, y, _) | Sub(x, y, _) | FAdd(x, y, _) | FSub(x, y, _) | FMul(x, y, _) | FDiv(x, y, _) 
  | Get(x, y, _) | Xor(x, y, _) | Or(x, y, _) | And(x, y, _) | SLL(x, y, _) | SRL(x, y, _) -> S.of_list [x; y]
  | IfEq(x, y, e1, e2, _) | IfLE(x, y, e1, e2, _) -> S.add x (S.add y (S.union (fv e1) (fv e2)))
  | Let((x, t), e1, e2, _) -> S.union (fv e1) (S.remove x (fv e2))
  | Var(x, _) -> S.singleton x
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2,_) ->
      let zs = S.diff (fv e1) (S.of_list (List.map fst yts)) in
      S.diff (S.union zs (fv e2)) (S.singleton x)
  | App(x, ys, _) -> S.of_list (x :: ys)
  | Tuple(xs, _) | ExtFunApp(_, xs, _) -> S.of_list xs
  | Put(x, y, z, _) -> S.of_list [x; y; z]
  | LetTuple(xs, y, e, _) -> S.add y (S.diff (fv e) (S.of_list (List.map fst xs)))

(* (t * Type.t) * (t -> (t * Type.t)) -> t * Type.t *)
let insert_let (e, t) k = (* let��������������ؿ� (caml2html: knormal_insert) *)
  match e with
  | Var(x, _) -> k x
  | _ ->
      let x = Id.gentmp t in
      let e', t' = k x in
      Let((x, t), e, e', 0), t'

(* (Id.t * Type.t) * Syntax.t -> t * Type.t *)
let rec g env = function (* K�������롼�������� (caml2html: knormal_g) *)
  | Syntax.Unit -> Unit, Type.Unit
  | Syntax.Bool(b) -> Int(if b then 1 else 0), Type.Int (* ������true, false������1, 0���Ѵ� (caml2html: knormal_bool) *)
  | Syntax.Int(i) -> Int(i), Type.Int
  | Syntax.Float(d) -> Float(d), Type.Float
  | Syntax.Not(e,n) -> g env (Syntax.If(e, Syntax.Bool(false), Syntax.Bool(true),n))
  | Syntax.Neg(e,n) ->
      insert_let (g env e)
        (fun x -> Neg(x,n), Type.Int)
  | Syntax.Add(e1, e2, n) ->
    (try 
      (Typing.unify Type.Int (Typing.g env e1);
      (insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> Add(x, y, n), Type.Int))))
    with Typing.Unify(_,_) -> (insert_let (g env e1)
    (fun x -> insert_let (g env e2)
        (fun y -> FAdd(x, y, n), Type.Float))))
  | Syntax.Sub(e1, e2, n) ->
    (try 
      (Typing.unify Type.Int (Typing.g env e1);
      (insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> Sub(x, y, n), Type.Int))))
    with Typing.Unify(_,_) -> (insert_let (g env e1)
    (fun x -> insert_let (g env e2)
        (fun y -> FSub(x, y, n), Type.Float))))
  | Syntax.Mul(e1, e2, n) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> App("mul", [x;y], n), Type.Int))
  | Syntax.Div(e1, e2, n) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> App("div", [x;y], n), Type.Int))
  | Syntax.Xor(e1, e2, n) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> Xor(x, y, n), Type.Int))
  | Syntax.Or(e1, e2, n) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> Or(x, y, n), Type.Int))
  | Syntax.And(e1, e2, n) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> And(x, y, n), Type.Int))
  | Syntax.SLL(e1, e2, n) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> SLL(x, y, n), Type.Int))
  | Syntax.SRL(e1, e2, n) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> SRL(x, y, n), Type.Int))
  | Syntax.FNeg(e, n) ->
      insert_let (g env e)
        (fun x -> FNeg(x, n), Type.Float)
  | Syntax.Sqrt(e, n) ->
      insert_let (g env e)
        (fun x -> Sqrt(x, n), Type.Float)
  | Syntax.FAbs(e, n) ->
      insert_let (g env e)
        (fun x -> FAbs(x, n), Type.Float)
  | Syntax.FtoI(e, n) ->
      insert_let (g env e)
        (fun x -> FtoI(x, n), Type.Int)
  | Syntax.ItoF(e, n) ->
      insert_let (g env e)
        (fun x -> ItoF(x, n), Type.Float)
  | Syntax.Ini(e, n) ->
      insert_let (g env e)
        (fun x -> Ini(x, n), Type.Int)
  | Syntax.Inf(e, n) ->
      insert_let (g env e)
        (fun x -> Inf(x, n), Type.Float)
  | Syntax.Out(e, n) ->
      insert_let (g env e)
        (fun x -> Out(x, n), Type.Unit)
  | Syntax.ItoIA(e, n) ->
      insert_let (g env e)
        (fun x -> ItoIA(x, n), Type.Array(Type.Int))
  | Syntax.ItoFA(e, n) ->
      insert_let (g env e)
        (fun x -> ItoFA(x, n), Type.Array(Type.Float))
  | Syntax.Gethp(e, n) ->
      insert_let (g env e)
        (fun x -> Gethp(x, n), Type.Int)
  | Syntax.Sethp(e, n) ->
      insert_let (g env e)
        (fun x -> Sethp(x, n), Type.Unit)
  | Syntax.FAdd(e1, e2, n) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> FAdd(x, y, n), Type.Float))
  | Syntax.FSub(e1, e2, n) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> FSub(x, y, n), Type.Float))
  | Syntax.FMul(e1, e2, n) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> FMul(x, y, n), Type.Float))
  | Syntax.FDiv(e1, e2, n) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> FDiv(x, y, n), Type.Float))
  | Syntax.Eq (_, _, n) | Syntax.LE (_, _, n) as cmp ->
      g env (Syntax.If(cmp, Syntax.Bool(true), Syntax.Bool(false), n))
  | Syntax.If(Syntax.Not(e1, _), e2, e3, n) -> g env (Syntax.If(e1, e3, e2, n)) (* not�ˤ��ʬ�����Ѵ� (caml2html: knormal_not) *)
  | Syntax.If(Syntax.Eq(e1, e2, _), e3, e4, n) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y ->
              let e3', t3 = g env e3 in
              let e4', t4 = g env e4 in
              IfEq(x, y, e3', e4', n), t3))
  | Syntax.If(Syntax.LE(e1, e2, n), e3, e4, _) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y ->
              let e3', t3 = g env e3 in
              let e4', t4 = g env e4 in
              IfLE(x, y, e3', e4', n), t3))
  | Syntax.If(e1, e2, e3, n) -> g env (Syntax.If(Syntax.Eq(e1, Syntax.Bool(false), n), e3, e2, n)) (* ��ӤΤʤ�ʬ�����Ѵ� (caml2html: knormal_if) *)
  | Syntax.Let((x, t), e1, e2, n) ->
      let e1', t1 = g env e1 in
      let e2', t2 = g (M.add x t env) e2 in
      Let((x, t), e1', e2', n), t2
  | Syntax.Var(x, n) when M.mem x env -> Var(x, n), M.find x env
  | Syntax.Var(x, n) -> (* ��������λ��� (caml2html: knormal_extarray) *)
      (match M.find x !Typing.extenv with
      | Type.Array(_) as t -> ExtArray (x, n), t
      | _ -> failwith (Printf.sprintf "external variable %s does not have an array type from knormal.ml" x))
  | Syntax.LetRec({ Syntax.name = (x, t); Syntax.args = yts; Syntax.body = e1 }, e2, n) ->
      let env' = M.add x t env in
      let e2', t2 = g env' e2 in
      let e1', t1 = g (M.add_list yts env') e1 in
      LetRec({ name = (x, t); args = yts; body = e1' }, e2', n), t2
  | Syntax.App(Syntax.Var(f, _), e2s, n) when not (M.mem f env) -> (* �����ؿ��θƤӽФ� (caml2html: knormal_extfunapp) *)
      (match M.find f !Typing.extenv with
      | Type.Fun(_, t) ->
          let rec bind xs = function (* "xs" are identifiers for the arguments *)
            | [] -> ExtFunApp(f, xs, n), t
            | e2 :: e2s ->
                insert_let (g env e2)
                  (fun x -> bind (xs @ [x]) e2s) in
          bind [] e2s (* left-to-right evaluation *)
      | _ -> assert false)
  | Syntax.App(e1, e2s, n) ->
      (match g env e1 with
      | _, Type.Fun(_, t) as g_e1 ->
          insert_let g_e1
            (fun f ->
              let rec bind xs = function (* "xs" are identifiers for the arguments *)
                | [] -> App(f, xs, n), t
                | e2 :: e2s ->
                    insert_let (g env e2)
                      (fun x -> bind (xs @ [x]) e2s) in
              bind [] e2s) (* left-to-right evaluation *)
      | _ -> assert false)
  | Syntax.Tuple(es, n) ->
      let rec bind xs ts = function (* "xs" and "ts" are identifiers and types for the elements *)
        | [] -> Tuple(xs, n), Type.Tuple(ts)
        | e :: es ->
            let _, t as g_e = g env e in
            insert_let g_e
              (fun x -> bind (xs @ [x]) (ts @ [t]) es) in
      bind [] [] es
  | Syntax.LetTuple(xts, e1, e2, n) ->
      insert_let (g env e1)
        (fun y ->
          let e2', t2 = g (M.add_list xts env) e2 in
          LetTuple(xts, y, e2', n), t2)
  | Syntax.Array(e1, e2, n) ->
      insert_let (g env e1)
        (fun x ->
          let _, t2 as g_e2 = g env e2 in
          insert_let g_e2
            (fun y ->
              let l =
                match t2 with
                | Type.Float -> "create_float_array"
                | _ -> "create_array" in
              App(l, [x; y], n), Type.Array(t2)))
  | Syntax.Get(e1, e2, n) ->
      (match g env e1 with
      |        _, Type.Array(t) as g_e1 ->
          insert_let g_e1
            (fun x -> insert_let (g env e2)
                (fun y -> Get(x, y, n), t))
      | _ -> assert false)
  | Syntax.Put(e1, e2, e3, n) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> insert_let (g env e3)
                (fun z -> Put(x, y, z, n), Type.Unit)))

let f e = fst (g M.empty e)
