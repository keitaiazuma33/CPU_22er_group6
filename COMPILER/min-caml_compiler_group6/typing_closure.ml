open Closure

exception Unify of Type.t * Type.t
exception Error of t * Type.t * Type.t * int
exception Err

let extenv = ref M.empty
let defenv = ref M.empty

(* Type.tの型の種類を文字列で返す関数 *)
let rec string_type = function
| Type.Unit -> "Unit"
| Type.Int _ -> "Int"
| Type.Float _ -> "Float"
| Type.Bool _ -> "Bool"
| Type.Fun (ts,t) -> "Fun "^(List.fold_left (fun init t -> init^(string_type t)) "" ts)^(string_type t)
| Type.Tuple _ -> "Tuple"
| Type.Array t -> "Array "^(string_type t)
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
let rec deref_id_typ ((x:Id.t), t) = (x, deref_typ t)
(* Closure.t -> Closure.t *)
let rec deref_term = function
  | IfEq(x, y, e1, e2, n) -> IfEq(x, y, deref_term e1, deref_term e2, n)
  | IfLE(x, y, e1, e2, n) -> IfLE(x, y, deref_term e1, deref_term e2, n)
  | Let(xt, e1, e2, n) -> Let(deref_id_typ xt, deref_term e1, deref_term e2, n)
  | MakeCls(xt, cl, e1, n) -> MakeCls(deref_id_typ xt, cl, deref_term e1, n)
  | LetTuple(xts, x, e1, n) -> LetTuple(List.map deref_id_typ xts, x, deref_term e1, n)
  | e -> e
let rec deref_fundef { name = (Id.L(x),t); args = xs; formal_fv = ys; body = e } =
  { name = (Id.L(x), deref_typ t); args = List.map deref_id_typ xs;
    formal_fv = List.map deref_id_typ ys; body = deref_term e }

(* t option ref * Type.t -> bool *)
let rec occur r1 = function 
  | Type.Fun(t2s, t2) -> List.exists (occur r1) t2s || occur r1 t2
  | Type.Tuple(t2s) -> List.exists (occur r1) t2s
  | Type.Array(t2) -> occur r1 t2
  | Type.Var(r2) when r1 == r2 -> true
  | Type.Var({ contents = None }) -> false
  | Type.Var({ contents = Some(t2) }) -> occur r1 t2
  | _ -> false

(* Type.t * Type.t -> unit *)
let rec unify t1 t2 =
  match t1, t2 with
  | Type.Unit, Type.Unit | Type.Bool, Type.Bool | Type.Int, Type.Int | Type.Float, Type.Float
  | Type.Bool, Type.Int | Type.Int, Type.Bool -> ()
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


(* (Id.t * Type.t) * Closure.t -> Type.t *)
let rec g env e = 
    match e with
    | Unit -> Type.Unit
    | Int(_) -> Type.Int
    | Float(_) -> Type.Float
    | Ini(_) -> Type.Int
    | Inf(_) -> Type.Float
    | Gethp(_) -> Type.Int
    | Neg(x, n) when M.mem x env ->
        (try (unify Type.Int (M.find x env);
        Type.Int)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
    | Neg(x, n) when M.mem x !extenv ->
        (try (unify Type.Int (M.find x !extenv);
        Type.Int)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
    | Neg(x, n) -> raise Err
    | Out(x, n) ->
      (try (unify Type.Int (M.find x env);
      Type.Unit)
      with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2, n)))
    | ItoIA(x, n) ->
      (try (unify Type.Int (M.find x env);
      Type.Array(Type.Int))
      with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2, n)))
    | ItoFA(x, n) ->
      (try (unify Type.Int (M.find x env);
      Type.Array(Type.Float))
      with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2, n)))
    | Sethp(x, n) ->
      (try (unify Type.Int (M.find x env);
      Type.Unit)
      with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2, n)))
    | Add(x, y, n) | Sub(x, y, n) 
    | Xor(x, y, n) | Or(x, y, n) 
    | And(x, y, n) | SLL(x, y, n)
    | SRL(x, y, n) when M.mem x env ->
      (try
      (if M.mem y env then
        (unify Type.Int (M.find x env);
        unify Type.Int (M.find y env);
        Type.Int)
      else if M.mem y !extenv then
        (unify Type.Int (M.find x env);
        unify Type.Int (M.find y !extenv);
        Type.Int) else assert false)
      with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2, n)))
    | Add(x, y, n) | Sub(x, y, n)
    | Xor(x, y, n) | Or(x, y, n)
    | And(x, y, n) | SLL(x, y, n)
    | SRL(x, y, n) when M.mem x !extenv ->
      (try
        (if M.mem y env then
          (unify Type.Int (M.find x !extenv);
          unify Type.Int (M.find y env);
          Type.Int)
        else if M.mem y !extenv then
          (unify Type.Int (M.find x !extenv);
          unify Type.Int (M.find y !extenv);
          Type.Int) else assert false)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2, n)))
    | Add(x, y, n) | Sub(x, y, n) | Xor(x, y, n) | Or(x, y, n)
    | And(x, y, n) | SLL(x, y, n) | SRL(x, y, n) -> assert false
    | FtoI(x, n) when M.mem x env ->
      (try (unify Type.Float (M.find x env);
      Type.Int)
      with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
    | FtoI(x, n) when M.mem x !extenv ->
      (try (unify Type.Float (M.find x !extenv);
      Type.Int)
      with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
    | FtoI(x, n) -> assert false
    | ItoF(x, n) when M.mem x env ->
      (try (unify Type.Int (M.find x env);
      Type.Float)
      with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
    | ItoF(x, n) when M.mem x !extenv ->
      (try (unify Type.Int (M.find x !extenv);
      Type.Float)
      with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
    | ItoF(x, n) -> assert false
    | FAdd(x, y, n) | FSub(x, y, n) 
    | FMul(x, y, n) | FDiv(x, y, n) when M.mem x env ->
      if M.mem y env then
        (try (unify Type.Float (M.find x env);
        unify Type.Float (M.find y env);
        Type.Float)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
      else if M.mem y !extenv then
        (try (unify Type.Float (M.find x env);
        unify Type.Float (M.find y !extenv);
        Type.Float)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2, n)))
      else assert false
    | FAdd(x, y, n) | FSub(x, y, n)
    | FMul(x, y, n) | FDiv(x, y, n) when M.mem x !extenv ->
        if M.mem y env then
          (try (unify Type.Float (M.find x !extenv);
          unify Type.Float (M.find y env);
          Type.Float)
          with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
        else if M.mem y !extenv then
          (try (unify Type.Float (M.find x !extenv);
          unify Type.Float (M.find y !extenv);
          Type.Float)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2, n)))
      else assert false
    | FAdd(x, y, n) | FSub(x, y, n) | FMul(x, y, n) | FDiv(x, y, n) -> assert false
    | FNeg(x, n) | Sqrt(x, n)
    | FAbs(x, n) when M.mem x env ->
      (try (unify Type.Float (M.find x env);
      Type.Float)
      with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
    | FNeg(x, n)| Sqrt(x, n)
    | FAbs(x, n) when M.mem x !extenv ->
      (try (unify Type.Float (M.find x !extenv);
      Type.Float)
      with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
    | FNeg(x, n) | Sqrt(x, n) | FAbs(x, n) -> assert false
    | IfEq(x,y,e1,e2,n) | IfLE(x,y,e1,e2,n) when M.mem x env ->
      if M.mem y env then
        (try (unify (M.find x env) (M.find y env);
        let t1 = g env e1 in
        let t2 = g env e2 in
        unify t1 t2;
        t2)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2, n)))
      else if M.mem y !extenv then 
        (try (unify (M.find x env) (M.find y !extenv);
        let t1 = g env e1 in
        let t2 = g env e2 in
        unify t1 t2;
        t2)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2, n)))
      else assert false
    | IfEq(x,y,e1,e2,n) | IfLE(x,y,e1,e2,n) when M.mem x !extenv ->
      if M.mem y env then
        (try (unify (M.find x !extenv) (M.find y env);
        let t1 = g env e1 in
        let t2 = g env e2 in
        unify t1 t2;
        t2)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2, n)))
      else if M.mem y !extenv then 
        (try (unify (M.find x !extenv) (M.find y !extenv);
        let t1 = g env e1 in
        let t2 = g env e2 in
        unify t1 t2;
        t2)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2, n)))
      else assert false
    | IfEq(x,y,e1,e2,n) | IfLE(x,y,e1,e2,n) -> assert false
    | Let((x, t), e1, e2, n) -> 
        (try (unify t (g env e1);
        g (M.add x t env) e2)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
    | Var(x, n) when M.mem x env -> (try M.find x env
                                with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
    | Var(x, n) when M.mem x !extenv -> (try M.find x !extenv
                                with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
    | Var(x, n) -> 
        (try (Format.eprintf "free variable %s assumed as external from typing_closure.ml@." x;
        let t = Type.gentyp () in
        extenv := M.add x t !extenv;
        t)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
    | MakeCls((x, t), _, e, n) ->
        (try (
          g (M.add x t env) e
        ) with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2, n)))
    | AppCls(x, xs, n) -> 
        let rec g_app = (function
        | y :: ys -> if M.mem y env then (M.find y env) :: g_app ys
                      else if M.mem y !extenv then (M.find y !extenv) :: g_app ys
                      else raise Err
        | [] -> [] ) in
        let ts = g_app xs in
        (try(let t = Type.gentyp () in
        unify (M.find x env) (Type.Fun(ts, t));
        t)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
    | AppDir(Id.L(x), xs, n) -> 
        let rec g_app = (function
        | y :: ys -> if M.mem y env then (M.find y env) :: g_app ys
                      else if M.mem y !extenv then (M.find y !extenv) :: g_app ys
                      else raise Err
        | [] -> [] ) in
        let ts = g_app xs in
        (*List.iter (fun s -> Printf.fprintf stdout "%s " s) (List.map string_type ts);*)
        (try(let t = Type.gentyp () in
        (*Printf.fprintf stdout "%s\n" (string_type (M.find x env));*)
        (if x = "min_caml_create_array" then unify (let t' = Type.gentyp() in Type.Fun([Type.Int; t'], Type.Array(t'))) (Type.Fun(ts,t)) else
        unify (M.find x env) (Type.Fun(ts, t)));
        (*Printf.fprintf stdout "ok\n";*)
        t)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
    | Tuple(xs, n) -> 
      let rec g_app = (function
        | y :: ys -> if M.mem y env then (M.find y env) :: g_app ys
                  else if M.mem y !extenv then (M.find y !extenv) :: g_app ys
                  else raise Err
        | [] -> [] ) in
      let ts = g_app xs in
      Type.Tuple(ts)
    | LetTuple(xts, x, e1, n) ->
        let t = (if M.mem x env then M.find x env else if M.mem x !extenv then M.find x !extenv else assert false) in
        (try (unify (Type.Tuple(List.map snd xts)) t;
        g (M.add_list xts env) e1)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
    | Get(x, y, n) when M.mem x env ->
      if M.mem y env then
        (try (let t = Type.gentyp () in
        unify (Type.Array(t)) (M.find x env);
        unify Type.Int (M.find y env);
        t)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
      else if M.mem y !extenv then
        (try (let t = Type.gentyp () in
        unify (Type.Array(t)) (M.find x env);
        unify Type.Int (M.find y !extenv);
        t)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
      else assert false
    | Get(x, y, n) when M.mem x !extenv ->
      if M.mem y env then
        (try (let t = Type.gentyp () in
        unify (Type.Array(t)) (M.find x !extenv);
        unify Type.Int (M.find y env);
        t)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
      else if M.mem y !extenv then
        (try (let t = Type.gentyp () in
        unify (Type.Array(t)) (M.find x !extenv);
        unify Type.Int (M.find y !extenv);
        t)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))
      else assert false
    | Get(x, y, n) -> raise Err
    | Put(x, y, z, n) ->
      let rec g_put a =
        if M.mem a env then M.find a env
        else if M.mem a !extenv then M.find a !extenv
        else raise Err
      in
      (try (let t = g_put z in
      unify (Type.Array(t)) (g_put x);
      unify Type.Int (g_put y);
      Type.Unit)
        with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2,n)))

(* Closure.fundef -> Type.t *)
let rec h { name = (Id.L(x),t); args = xts; formal_fv = yts; body = e } =
  (*Printf.fprintf stdout "%s\n" x;
  Printf.fprintf stdout "%d\n" (List.length xts);
  List.iter (fun s -> Printf.fprintf stdout "%s " s) (List.map string_type (List.map snd (xts@yts)));*)
  (try ((*Printf.fprintf stdout "%s\n" (string_type (g (M.add_list (xts@yts) !defenv) e));*)
  (*(match t with
  | Type.Fun(ts,t') -> List.iter (fun s -> Printf.fprintf stdout "%s " s) (List.map string_type ts);
  Printf.fprintf stdout "%s\n" (string_type t'));*)
  unify t (Type.Fun((List.map snd xts), g (M.add_list (xts @ yts) !defenv) e));
  t)
with Unify(t1,t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2, 0)))

let add_defenv defenv { name = (Id.L(x),t); args = _; formal_fv = _; body = _ } =
  defenv := M.add x t !defenv

let f (Prog(fs, e)) =
  extenv := M.empty;
  defenv := M.add_list (List.map (fun (x,t) -> ("min_caml_"^x,t)) (M.bindings !(Typing.extenv))) M.empty;
  let env0 = [("mul", Type.Fun([Type.Int; Type.Int], Type.Int)); ("div", Type.Fun([Type.Int; Type.Int], Type.Int));
  ("min_caml_create_array", let t = Type.gentyp() in Type.Fun([Type.Int; t], Type.Array(t)));
  ("min_caml_create_float_array", Type.Fun([Type.Int; Type.Float], Type.Array(Type.Float)))] in
  defenv := M.add_list env0 !defenv;
  List.map (add_defenv defenv) fs;
  List.map h fs;
  (match deref_typ (g (M.add_list env0 !defenv) e) with
  | Type.Unit -> ()
  | _ -> Format.eprintf "warning: final result does not have type unit@.");

  (*(try unify Type.Unit (g (M.add_list env0 M.empty) e)
  with 
  | Error (_,t1,t2,n) -> let s1 = string_type t1 in
                        let s2 = string_type t2 in
                        failwith ("type error near line "^(string_of_int n)^
                        ", "^s1^" vs "^s2)
  | Unify _ -> failwith "top level does not have type unit");*)
  extenv := M.map deref_typ !extenv;
  Prog (List.map deref_fundef fs, deref_term e)
