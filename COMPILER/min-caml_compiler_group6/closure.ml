type closure = { entry : Id.l; actual_fv : Id.t list }
(* Id.t���ѿ���̾���Υǡ�������Id.l�ϥȥåץ�٥�ؿ���̾���Υǡ����� *)
type t = (* �����������Ѵ���μ� (caml2html: closure_t) *)
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
  | FAbs of Id.t * int
  | FNeg of Id.t * int
  | FAdd of Id.t * Id.t * int
  | FSub of Id.t * Id.t * int
  | FMul of Id.t * Id.t * int
  | FDiv of Id.t * Id.t * int
  | FtoI of Id.t * int
  | ItoF of Id.t * int
  | Ini of int
  | Inf of int
  | Out of Id.t * int
  | ItoIA of Id.t * int
  | ItoFA of Id.t * int
  | Gethp of int
  | Sethp of Id.t * int
  | IfEq of Id.t * Id.t * t * t * int
  | IfLE of Id.t * Id.t * t * t * int
  | Let of (Id.t * Type.t) * t * t * int
  | Var of Id.t * int
  | MakeCls of (Id.t * Type.t) * closure * t * int
  | AppCls of Id.t * Id.t list * int
  | AppDir of Id.l * Id.t list * int
  | Tuple of Id.t list * int
  | LetTuple of (Id.t * Type.t) list * Id.t * t * int
  | Get of Id.t * Id.t * int
  | Put of Id.t * Id.t * Id.t * int
  | ExtArray of Id.l * int
type fundef = { name : Id.l * Type.t;
                args : (Id.t * Type.t) list;
                formal_fv : (Id.t * Type.t) list;
                body : t }
type prog = Prog of fundef list * t

let pos_of_type e =
  match e with
  | Unit | Int _ | Float _ -> 0
  | Neg (_,n) | Add (_,_,n) | Sub (_,_,n) | Xor (_,_,n) | Or (_,_,n) | And (_,_,n) 
  | SLL (_,_,n) | SRL(_,_,n) | Sqrt (_,n) | FAbs (_,n) | FNeg (_,n) | FAdd (_,_,n) 
  | FSub (_,_,n) | FMul (_,_,n) | FDiv (_,_,n) | IfEq (_,_,_,_,n) | IfLE (_,_,_,_,n)
  | Let (_,_,_,n) | Var (_,n) | MakeCls (_,_,_,n) | AppCls (_,_,n) | AppDir (_,_,n)
  | Tuple (_,n) | LetTuple (_,_,_,n) | Get (_,_,n) | Put (_,_,_,n) | FtoI(_,n) | ItoF(_,n)
  | ExtArray (_,n) | Ini n | Inf n | Out(_,n) | ItoIA(_,n) | ItoFA(_,n) | Gethp n | Sethp(_,n) -> n

(* t -> list *)
(* Closure.t�˴ޤޤ�뼫ͳ�ѿ��Υꥹ�Ȥ��֤� *)
let rec fv = function
  | Unit | Int(_) | Float(_) | ExtArray(_, _) | Ini(_) | Inf(_) | Gethp(_) -> S.empty
  | Neg(x, _) | FNeg(x, _) | Sqrt(x, _) | FAbs(x, _) | FtoI(x, _) | ItoF(x, _) 
  | Out(x, _) | ItoIA(x, _) | ItoFA(x, _) | Sethp(x, _) -> S.singleton x
  | Add(x, y, _) | Sub(x, y, _) | Or(x, y, _) | Xor(x, y, _) | And(x, y, _) | SLL(x, y, _) | SRL(x, y, _)
  | FAdd(x, y, _) | FSub(x, y, _) | FMul(x, y, _) | FDiv(x, y, _) | Get(x, y, _) -> S.of_list [x; y]
  | IfEq(x, y, e1, e2, _)| IfLE(x, y, e1, e2, _) -> S.add x (S.add y (S.union (fv e1) (fv e2)))
  | Let((x, t), e1, e2, _) -> S.union (fv e1) (S.remove x (fv e2))
  | Var(x, _) -> S.singleton x
  | MakeCls((x, t), { entry = l; actual_fv = ys }, e, _) -> S.remove x (S.union (S.of_list ys) (fv e))
  | AppCls(x, ys, _) -> S.of_list (x :: ys)
  | AppDir(_, xs, _) | Tuple(xs, _) -> S.of_list xs
  | LetTuple(xts, y, e, _) -> S.add y (S.diff (fv e) (S.of_list (List.map fst xts)))
  | Put(x, y, z, _) -> S.of_list [x; y; z]

(* �ȥåץ�٥�ؿ��ν��� *)
let toplevel : fundef list ref = ref []

(* (Id.t * Type.t) * Id.t list * KNormal.t -> t *)
(* known�ϡּ�ͳ�ѿ����ʤ��Ȥ狼�äƤ��ơ����̤˸ƤӽФ���״ؿ��ν��� *)
let rec g env known = function (* �����������Ѵ��롼�������� (caml2html: closure_g) *)
  | KNormal.Unit -> Unit
  | KNormal.Int(i) -> Int(i)
  | KNormal.Float(d) -> Float(d)
  | KNormal.Neg(x, n) -> Neg(x, n)
  | KNormal.Add(x, y, n) -> Add(x, y, n)
  | KNormal.Sub(x, y, n) -> Sub(x, y, n)
  | KNormal.Xor(x, y, n) -> Xor(x, y, n)
  | KNormal.Or(x, y, n) -> Or(x, y, n)
  | KNormal.And(x, y, n) -> And(x, y, n)
  | KNormal.SLL(x, y, n) -> SLL(x, y, n)
  | KNormal.SRL(x, y, n) -> SRL(x, y, n)
  | KNormal.Sqrt(x, n) -> Sqrt(x, n)
  | KNormal.FAbs(x, n) -> FAbs(x, n)
  | KNormal.FNeg(x, n) -> FNeg(x, n)
  | KNormal.FAdd(x, y, n) -> FAdd(x, y, n)
  | KNormal.FSub(x, y, n) -> FSub(x, y, n)
  | KNormal.FMul(x, y, n) -> FMul(x, y, n)
  | KNormal.FDiv(x, y, n) -> FDiv(x, y, n)
  | KNormal.FtoI(x, n) -> FtoI(x, n)
  | KNormal.ItoF(x, n) -> ItoF(x, n)
  | KNormal.Ini(x, n) -> Ini(n)
  | KNormal.Inf(x, n) -> Inf(n)
  | KNormal.Out(x, n) -> Out(x, n)
  | KNormal.ItoIA(x, n) -> ItoIA(x, n)
  | KNormal.ItoFA(x, n) -> ItoFA(x, n)
  | KNormal.Gethp(x, n) -> Gethp(n)
  | KNormal.Sethp(x, n) -> Sethp(x, n)
  | KNormal.IfEq(x, y, e1, e2, n) -> IfEq(x, y, g env known e1, g env known e2, n)
  | KNormal.IfLE(x, y, e1, e2, n) -> IfLE(x, y, g env known e1, g env known e2, n)
  | KNormal.Let((x, t), e1, e2, n) -> Let((x, t), g env known e1, g (M.add x t env) known e2, n)
  | KNormal.Var(x, n) -> Var(x, n)
  | KNormal.LetRec({ KNormal.name = (x, t); KNormal.args = yts; KNormal.body = e1 }, e2, n) -> (* �ؿ�����ξ�� (caml2html: closure_letrec) *)
      (* �ؿ����let rec x y1 ... yn = e1 in e2�ξ��ϡ�
         x�˼�ͳ�ѿ����ʤ�(closure��𤵤�direct�˸ƤӽФ���)
         �Ȳ��ꤷ��known���ɲä���e1�򥯥��������Ѵ����Ƥߤ� *)
      let toplevel_backup = !toplevel in
      let env' = M.add x t env in
      let known' = S.add x known in
      let e1' = g (M.add_list yts env') known' e1 in
      (* �����˼�ͳ�ѿ����ʤ��ä������Ѵ����e1'���ǧ���� *)
      (* ����: e1'��x���Ȥ��ѿ��Ȥ��ƽи��������closure��ɬ��!
         (thanks to nuevo-namasute and azounoman; test/cls-bug2.ml����) *)
      let zs = S.diff (fv e1') (S.of_list (List.map fst yts)) in
      let known', e1' =
        if S.is_empty zs then known', e1' else
        (* ���ܤ��ä������(toplevel����)���ᤷ�ơ������������Ѵ�����ľ�� *)
        (Format.eprintf "free variable(s) %s found in function %s from closure.ml@." (Id.pp_list (S.elements zs)) x;
         Format.eprintf "function %s cannot be directly applied in fact from closure.ml@." x;
         toplevel := toplevel_backup;
         let e1' = g (M.add_list yts env') known e1 in
         known, e1') in
      let zs = S.elements (S.diff (fv e1') (S.add x (S.of_list (List.map fst yts)))) in (* ��ͳ�ѿ��Υꥹ�� *)
      let zts = List.map (fun z -> (z, M.find z env')) zs in (* �����Ǽ�ͳ�ѿ�z�η����������˰���env��ɬ�� *)
      (* e1'��x����ͳ�ѿ��Ȥ����о줷�ʤ��ä��ʤ�zts�϶��ꥹ�� *)
      toplevel := { name = (Id.L(x), t); args = yts; formal_fv = zts; body = e1' } :: !toplevel; (* �ȥåץ�٥�ؿ����ɲ� *)
      let e2' = g env' known' e2 in
      if S.mem x (fv e2') then (* x���ѿ��Ȥ���e2'�˽и����뤫 *)
        MakeCls((x, t), { entry = Id.L(x); actual_fv = zs }, e2', n) (* �и����Ƥ����������ʤ� *)
      else
        (Format.eprintf "eliminating closure(s) %s from closure.ml@." x;
         e2') (* �и����ʤ����MakeCls���� *)
  | KNormal.App(x, ys, n) when S.mem x known -> (* �ؿ�Ŭ�Ѥξ�� (caml2html: closure_app) *)
      Format.eprintf "directly applying %s from closure.ml@." x;
      AppDir(Id.L(x), ys, n)
  | KNormal.App(f, xs, n) -> AppCls(f, xs, n)
  | KNormal.Tuple(xs, n) -> Tuple(xs, n)
  | KNormal.LetTuple(xts, y, e, n) -> LetTuple(xts, y, g (M.add_list xts env) known e, n)
  | KNormal.Get(x, y, n) -> Get(x, y, n)
  | KNormal.Put(x, y, z, n) -> Put(x, y, z, n)
  | KNormal.ExtArray(x, n) -> ExtArray(Id.L(x), n)
  | KNormal.ExtFunApp(x, ys, n) -> AppDir(Id.L("min_caml_" ^ x), ys, n)

let f e =
  toplevel := [];
  let env0 = [("mul", Type.Fun([Type.Int; Type.Int], Type.Int)); ("div", Type.Fun([Type.Int; Type.Int], Type.Int))] in
  let e' = g (M.add_list env0 M.empty) S.empty e in
  Prog(List.rev !toplevel, e')
