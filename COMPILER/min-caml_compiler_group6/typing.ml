(* type inference/reconstruction *)

open Syntax

exception Unify of Type.t * Type.t
exception Error of t * Type.t * Type.t * int

let extenv = ref M.empty

(* Type.tの型の種類を文字列で返す関数 *)
let string_type = function
| Type.Unit -> "Unit"
| Type.Int _ -> "Int"
| Type.Float _ -> "Float"
| Type.Bool _ -> "Bool"
| Type.Fun (_,_) -> "Fun"
| Type.Tuple _ -> "Tuple"
| Type.Array _ -> "Array"
| Type.Var _ -> "Var"

(* for pretty printing (and type normalization) *)
(* Type.t -> Type.t *)
let rec deref_typ = function 
  | Type.Fun(t1s, t2) -> Type.Fun(List.map deref_typ t1s, deref_typ t2)
  | Type.Tuple(ts) -> Type.Tuple(List.map deref_typ ts)
  | Type.Array(t) -> Type.Array(deref_typ t)
  | Type.Var({ contents = None } as r) ->
      Format.eprintf "uninstantiated type variable detected; assuming int@.";
      r := Some(Type.Int);
      Type.Int
  | Type.Var({ contents = Some(t) } as r) ->
      let t' = deref_typ t in
      r := Some(t');
      t'
  | t -> t
(* (Id.t * Type.t) -> (Id.t * Type.t) *)
let rec deref_id_typ (x, t) = (x, deref_typ t)
(* Syntax.t -> Syntax.t *)
let rec deref_term = function
  | Not(e, n) -> Not(deref_term e, n)
  | Neg(e, n) -> Neg(deref_term e, n)
  | Add(e1, e2, n) -> Add(deref_term e1, deref_term e2, n)
  | Sub(e1, e2, n) -> Sub(deref_term e1, deref_term e2, n)
  | Mul(e1, e2, n) -> Mul(deref_term e1, deref_term e2, n)
  | Div(e1, e2, n) -> Div(deref_term e1, deref_term e2, n)
  | Xor(e1, e2, n) -> Xor(deref_term e1, deref_term e2, n)
  | Or(e1, e2, n) -> Or(deref_term e1, deref_term e2, n)
  | And(e1, e2, n) -> And(deref_term e1, deref_term e2, n)
  | SLL(e1, e2, n) -> SLL(deref_term e1, deref_term e2, n)
  | SRL(e1, e2, n) -> SRL(deref_term e1, deref_term e2, n)
  | Eq(e1, e2, n) -> Eq(deref_term e1, deref_term e2, n)
  | LE(e1, e2, n) -> LE(deref_term e1, deref_term e2, n)
  | Sqrt(e1, n) -> Sqrt(deref_term e1, n)
  | FNeg(e, n) -> FNeg(deref_term e, n)
  | FAdd(e1, e2, n) -> FAdd(deref_term e1, deref_term e2, n)
  | FSub(e1, e2, n) -> FSub(deref_term e1, deref_term e2, n)
  | FMul(e1, e2, n) -> FMul(deref_term e1, deref_term e2, n)
  | FDiv(e1, e2, n) -> FDiv(deref_term e1, deref_term e2, n)
  | FAbs(e1, n) -> FAbs(deref_term e1, n)
  | FtoI(e1, n) -> FtoI(deref_term e1, n)
  | ItoF(e1, n) -> ItoF(deref_term e1, n)
  | Ini(e1, n) -> Ini(deref_term e1, n)
  | Inf(e1, n) -> Inf(deref_term e1, n)
  | Out(e1, n) -> Out(deref_term e1, n)
  | ItoIA(e1, n) -> ItoIA(deref_term e1, n)
  | ItoFA(e1, n) -> ItoFA(deref_term e1, n)
  | Gethp(e1, n) -> Gethp(deref_term e1, n)
  | Sethp(e1, n) -> Sethp(deref_term e1, n)
  | If(e1, e2, e3, n) -> If(deref_term e1, deref_term e2, deref_term e3, n)
  | Let(xt, e1, e2, n) -> Let(deref_id_typ xt, deref_term e1, deref_term e2, n)
  | LetRec({ name = xt; args = yts; body = e1 }, e2, n) ->
      LetRec({ name = deref_id_typ xt;
               args = List.map deref_id_typ yts;
               body = deref_term e1 },
             deref_term e2, n)
  | App(e, es, n) -> App(deref_term e, List.map deref_term es, n)
  | Tuple(es, n) -> Tuple(List.map deref_term es, n)
  | LetTuple(xts, e1, e2, n) -> LetTuple(List.map deref_id_typ xts, deref_term e1, deref_term e2, n)
  | Array(e1, e2, n) -> Array(deref_term e1, deref_term e2, n)
  | Get(e1, e2, n) -> Get(deref_term e1, deref_term e2, n)
  | Put(e1, e2, e3, n) -> Put(deref_term e1, deref_term e2, deref_term e3, n)
  | e -> e

(* t option ref * Type.t -> bool *)
let rec occur r1 = function (* occur check (caml2html: typing_occur) *)
  | Type.Fun(t2s, t2) -> List.exists (occur r1) t2s || occur r1 t2
  | Type.Tuple(t2s) -> List.exists (occur r1) t2s
  | Type.Array(t2) -> occur r1 t2
  | Type.Var(r2) when r1 == r2 -> true
  | Type.Var({ contents = None }) -> false
  | Type.Var({ contents = Some(t2) }) -> occur r1 t2
  | _ -> false

(* Type.t * Type.t -> unit *)
let rec unify t1 t2 = match t1, t2 with
  | Type.Unit, Type.Unit | Type.Bool, Type.Bool | Type.Int, Type.Int | Type.Float, Type.Float -> ()
  | Type.Fun(t1s, t1'), Type.Fun(t2s, t2') ->
      (try List.iter2 unify t1s t2s
      with Invalid_argument(_) -> raise (Unify(t1, t2)));
      unify t1' t2'
  | Type.Tuple(t1s), Type.Tuple(t2s) ->
      (try List.iter2 unify t1s t2s
      with Invalid_argument(_) -> raise (Unify(t1, t2)))
  | Type.Array(t1), Type.Array(t2) -> unify t1 t2
  | Type.Var(r1), Type.Var(r2) when r1 == r2 -> ()
  | Type.Var({ contents = Some(t1') }), _ -> unify t1' t2
  | _, Type.Var({ contents = Some(t2') }) -> unify t1 t2'
  | Type.Var({ contents = None } as r1), _ -> 
      if occur r1 t2 then raise (Unify(t1, t2));
      r1 := Some(t2)
  | _, Type.Var({ contents = None } as r2) ->
      if occur r2 t1 then raise (Unify(t1, t2));
      r2 := Some(t1)
  | _, _ -> raise (Unify(t1, t2))

(* (Id.t * Type.t) * Syntax.t -> Type.t *)
let rec g env e = 
    match e with
    | Unit -> Type.Unit
    | Bool(_) -> Type.Bool
    | Int(_) -> Type.Int
    | Float(_) -> Type.Float
    | Not(e1, n) ->
        (try (unify Type.Bool (g env e1);
            Type.Bool) 
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
    | Neg(e1, n) ->
        (try (unify Type.Int (g env e1);
        Type.Int)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
    | FtoI(e1, n) ->
        (try (unify Type.Float (g env e1);
        Type.Int)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2, n)))
    | ItoF(e1, n) ->
        (try (unify Type.Int (g env e1);
        Type.Float)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2, n)))
    | Ini(e1, n) ->
        (try (unify Type.Unit (g env e1);
        Type.Int)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2, n)))
    | Inf(e1, n) ->
        (try (unify Type.Unit (g env e1);
        Type.Float)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2, n)))
    | Out(e1, n) ->
        (try (unify Type.Int (g env e1);
        Type.Unit)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2, n)))
    | ItoIA(e1, n) ->
        (try (unify Type.Int (g env e1);
        Type.Array(Type.Int))
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2, n)))
    | ItoFA(e1, n) ->
        (try (unify Type.Int (g env e1);
        Type.Array(Type.Float))
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2, n)))
    | Gethp(e1, n) ->
        (try (unify Type.Unit (g env e1);
        Type.Int)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2, n)))
    | Sethp(e1, n) ->
        (try (unify Type.Int (g env e1);
        Type.Unit)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2, n)))
    | Mul(e1, e2, n) | Div(e1, e2, n) | Xor(e1, e2, n)
    | Or(e1, e2, n) | And(e1, e2, n) | SLL(e1, e2, n) | SRL(e1, e2, n) ->
        (try (unify Type.Int (g env e1);
        unify Type.Int (g env e2);
        Type.Int)
    with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
    | Add(e1, e2, n) | Sub(e1, e2, n) ->
        (try (unify Type.Int (g env e1);
        unify Type.Int (g env e2);
        Type.Int)
        with Unify(_,_) -> (try (unify Type.Float (g env e1);
                                unify Type.Float (g env e2);
                                Type.Float)
                            with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n))))
    | FNeg(e1, n) | Sqrt(e1, n) | FAbs(e1, n) ->
        (try (unify Type.Float (g env e1);
        Type.Float)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
    | FAdd(e1, e2, n) | FSub(e1, e2, n) | FMul(e1, e2, n) | FDiv(e1, e2, n) ->
        (try (unify Type.Float (g env e1);
        unify Type.Float (g env e2);
        Type.Float)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
    | Eq(e1, e2, n) | LE(e1, e2, n) ->
        (try (unify (g env e1) (g env e2);
        Type.Bool)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
    | If(e1, e2, e3, n) ->
        (try (unify (g env e1) Type.Bool;
        let t2 = g env e2 in
        let t3 = g env e3 in
        unify t2 t3;
        t2)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
    | Let((x, t), e1, e2, n) -> 
        (try (unify t (g env e1);
        g (M.add x t env) e2)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
    | Var(x, n) when M.mem x env -> (try M.find x env
                                with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
    | Var(x, n) when M.mem x !extenv -> (try M.find x !extenv
                                with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
    | Var(x, n) ->
        (try (Format.eprintf "free variable %s assumed as external from typing.ml@." x;
        let t = Type.gentyp () in
        extenv := M.add x t !extenv;
        t)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
    | LetRec({ name = (x, t); args = yts; body = e1 }, e2, n) ->
        (try (let env = M.add x t env in
        unify t (Type.Fun(List.map snd yts, g (M.add_list yts env) e1));
        g env e2)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
    | App(e1, es, n) ->
        (try(let t = Type.gentyp () in
        unify (g env e1) (Type.Fun(List.map (g env) es, t));
        t)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
    | Tuple(es, n) -> (try Type.Tuple(List.map (g env) es)
                with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
    | LetTuple(xts, e1, e2, n) ->
        (try (unify (Type.Tuple(List.map snd xts)) (g env e1);
        g (M.add_list xts env) e2)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
    | Array(e1, e2, n) -> (* must be a primitive for "polymorphic" typing *)
        (try (unify (g env e1) Type.Int;
        Type.Array(g env e2))
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
    | Get(e1, e2, n) ->
        (try (let t = Type.gentyp () in
        unify (Type.Array(t)) (g env e1);
        unify Type.Int (g env e2);
        t)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
    | Put(e1, e2, e3, n) ->
        (try (let t = g env e3 in
        unify (Type.Array(t)) (g env e1);
        unify Type.Int (g env e2);
        Type.Unit)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))

let f e =
  extenv := M.empty;
(*
  (match deref_typ (g M.empty e) with
  | Type.Unit -> ()
  | _ -> Format.eprintf "warning: final result does not have type unit@.");
*)
  (try unify Type.Unit (g M.empty e)
  with 
  | Error (_,t1,t2,n) -> let s1 = string_type t1 in
                        let s2 = string_type t2 in
                        failwith ("type error near line "^(string_of_int n)^
                        ", "^s1^" vs "^s2)
  | Unify _ -> failwith "top level does not have type unit");
  extenv := M.map deref_typ !extenv;
  deref_term e
