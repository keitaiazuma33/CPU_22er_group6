(* translation into SPARC assembly with infinite number of virtual registers *)

open Asm

let data = ref [] (* ?????????????????????? (caml2html: virtual_data) *)

(* addfは何か(iniと同じ型)とId.tを引数にとる *)
(* addiは何か(iniと同じ型)とId.t, Type.tを引数にとる *)
let classify xts ini addf addi =
  List.fold_left
    (fun acc (x, t) ->
      match t with
      | Type.Unit -> acc
      | Type.Float -> addf acc x
      | _ -> addi acc x t)
    ini
    xts

let separate xts =
  classify
    xts
    ([], [])
    (fun (int, float) x -> (int, float @ [x]))
    (fun (int, float) x _ -> (int @ [x], float))

(* (offset, acc)はiniと同じ型 *)
(* addfはId.tとoffset,accを引数にとる *)
(* addiはId.t, Type.tとoffset, accを引数にとる *)
let expand xts ini addf addi =
  classify
    xts
    ini
    (fun (offset, acc) x ->
      let offset = align offset in
      (offset + 8, addf x offset acc))
    (fun (offset, acc) x t ->
      (offset + 4, addi x t offset acc))

let rec g env = function (* ???β?????????????? (caml2html: virtual_g) *)
  | Closure.Unit -> Ans(Nop, 0)
  | Closure.Int(i) -> Ans(Set(i), 0)
  | Closure.Float(d) ->
      let l =
        try
          (* ?????????????????ä???????? Cf. https://github.com/esumii/min-caml/issues/13 *)
          let (l, _) = List.find (fun (_, d') -> d = d') !data in
          l
        with Not_found ->
          let l = Id.L(Id.genid "l") in
          data := (l, d) :: !data;
          l in
      let x = Id.genid "l" in
      Let((x, Type.Int), SetL(l), Ans(LdDF(x, C(0), 0), 0), 0)
  | Closure.Neg(x, n) -> Ans(Neg(x), n)
  | Closure.Add(x, y, n) -> Ans(Add(x, V(y)), n)
  | Closure.Sub(x, y, n) -> Ans(Sub(x, V(y)), n)
  | Closure.FNeg(x, n) -> Ans(FNegD(x), n)
  | Closure.FAdd(x, y, n) -> Ans(FAddD(x, y), n)
  | Closure.FSub(x, y, n) -> Ans(FSubD(x, y), n)
  | Closure.FMul(x, y, n) -> Ans(FMulD(x, y), n)
  | Closure.FDiv(x, y, n) -> Ans(FDivD(x, y), n)
  | Closure.IfEq(x, y, e1, e2, n) ->
      (match M.find x env with
      | Type.Bool | Type.Int -> Ans(IfEq(x, V(y), g env e1, g env e2), n)
      | Type.Float -> Ans(IfFEq(x, y, g env e1, g env e2), n)
      | _ -> failwith "equality supported only for bool, int, and float from virtual.ml")
  | Closure.IfLE(x, y, e1, e2, n) ->
      (match M.find x env with
      | Type.Bool | Type.Int -> Ans(IfLE(x, V(y), g env e1, g env e2), n)
      | Type.Float -> Ans(IfFLE(x, y, g env e1, g env e2), n)
      | _ -> failwith "inequality supported only for bool, int, and float from virtual.ml")
  | Closure.Let((x, t1), e1, e2, _) ->
      let e1' = g env e1 in
      let e2' = g (M.add x t1 env) e2 in
      concat e1' (x, t1) e2'
  | Closure.Var(x, n) ->
      (match M.find x env with
      | Type.Unit -> Ans(Nop, n)
      | Type.Float -> Ans(FMovD(x), n)
      | _ -> Ans(Mov(x), n))
  | Closure.MakeCls((x, t), { Closure.entry = l; Closure.actual_fv = ys }, e2, n) -> (* ??????????????? (caml2html: virtual_makecls) *)
      (* Closure?Υ??????å??????顢????????????? *)
      let e2' = g (M.add x t env) e2 in
      let offset, store_fv =
        expand
          (List.map (fun y -> (y, M.find y env)) ys)
          (4, e2')
          (fun y offset store_fv -> seq(StDF(y, x, C(offset), n), store_fv, n))
          (fun y _ offset store_fv -> seq(St(y, x, C(offset), n), store_fv, n)) in
      Let((x, t), Mov(reg_hp),
          Let((reg_hp, Type.Int), Add(reg_hp, C(align offset)),
              (let z = Id.genid "l" in
              Let((z, Type.Int), SetL(l),
                  seq(St(z, x, C(0), n),
                      store_fv, n), n)), n), n)
  | Closure.AppCls(x, ys, n) ->
      let (int, float) = separate (List.map (fun y -> (y, M.find y env)) ys) in
      Ans(CallCls(x, int, float), n)
  | Closure.AppDir(Id.L(x), ys, n) ->
      let (int, float) = separate (List.map (fun y -> (y, M.find y env)) ys) in
      Ans(CallDir(Id.L(x), int, float), n)
  | Closure.Tuple(xs, n) -> (* ??????? (caml2html: virtual_tuple) *)
      let y = Id.genid "t" in
      let (offset, store) =
        expand
          (List.map (fun x -> (x, M.find x env)) xs)
          (0, Ans(Mov(y), n))
          (fun x offset store -> seq(StDF(x, y, C(offset), n), store, n))
          (fun x _ offset store -> seq(St(x, y, C(offset), n), store, n)) in
      Let((y, Type.Tuple(List.map (fun x -> M.find x env) xs)), Mov(reg_hp),
          Let((reg_hp, Type.Int), Add(reg_hp, C(align offset)),
              store, n), n)
  | Closure.LetTuple(xts, y, e2, n) ->
      let s = Closure.fv e2 in
      let (offset, load) =
        expand
          xts
          (0, g (M.add_list xts env) e2)
          (fun x offset load ->
            if not (S.mem x s) then load else (* [XX] a little ad hoc optimization *)
            fletd(x, LdDF(y, C(offset), n), load, n))
          (fun x t offset load ->
            if not (S.mem x s) then load else (* [XX] a little ad hoc optimization *)
            Let((x, t), Ld(y, C(offset), n), load, n)) in
      load
  | Closure.Get(x, y, n) -> (* ????????Ф? (caml2html: virtual_get) *)
      let offset = Id.genid "o" in
      (match M.find x env with
      | Type.Array(Type.Unit) -> Ans(Nop, n)
      | Type.Array(Type.Float) ->
          Let((offset, Type.Int), SLL(y, C(3)), (* y * 2**3 *)
              Ans(LdDF(x, V(offset), n), n), n)
      | Type.Array(_) ->
          Let((offset, Type.Int), SLL(y, C(2)), (* y * 2**2 *)
              Ans(Ld(x, V(offset), n), n), n)
      | _ -> assert false)
  | Closure.Put(x, y, z, n) ->
      let offset = Id.genid "o" in
      (match M.find x env with
      | Type.Array(Type.Unit) -> Ans(Nop, n)
      | Type.Array(Type.Float) ->
          Let((offset, Type.Int), SLL(y, C(3)),
              Ans(StDF(z, x, V(offset), n), n), n)
      | Type.Array(_) ->
          Let((offset, Type.Int), SLL(y, C(2)),
              Ans(St(z, x, V(offset), n), n), n)
      | _ -> assert false)
  | Closure.ExtArray(Id.L(x), n) -> Ans(SetL(Id.L("min_caml_" ^ x)), n)

(* ????β?????????????? (caml2html: virtual_h) *)
let h { Closure.name = (Id.L(x), t); Closure.args = yts; Closure.formal_fv = zts; Closure.body = e } =
  let n = Closure.pos_of_type e in
  let (int, float) = separate yts in
  let (offset, load) =
    expand
      zts
      (4, g (M.add x t (M.add_list yts (M.add_list zts M.empty))) e)
      (fun z offset load -> fletd(z, LdDF(x, C(offset), n), load, n))
      (fun z t offset load -> Let((z, t), Ld(x, C(offset), n), load, n)) in
  match t with
  | Type.Fun(_, t2) ->
      { name = Id.L(x); args = int; fargs = float; body = load; ret = t2 }
  | _ -> assert false

(* ???????????Τβ?????????????? (caml2html: virtual_f) *)
let f (Closure.Prog(fundefs, e)) =
  data := [];
  let fundefs = List.map h fundefs in
  let e = g M.empty e in
  Prog(!data, fundefs, e)
