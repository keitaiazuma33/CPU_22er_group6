let limit = ref 1000

let rec iter n e = (* ��Ŭ�������򤯤꤫���� (caml2html: main_iter) *)
  Format.eprintf "iteration %d@." n;
  if n = 0 then e else
  let e' = Elim.f (ConstFold.f (Inline.f (Assoc.f (Beta.f e)))) in
  if e = e' then e else
  iter (n - 1) e'

let lexbuf outchan l = (* �Хåե��򥳥�ѥ��뤷�ƥ����ͥ�ؽ��Ϥ��� (caml2html: main_lexbuf) *)
  Id.counter := 0;
  Typing.extenv := M.empty;
  Emit.f outchan
    (RegAlloc.f
       (Simm.f
          (Virtual.f
             (Closure.f
                (iter !limit
                  (Cse.f
                   (Alpha.f
                      (KNormal.f
                         (Typing.f
                            (Parser.exp Lexer.token l))))))))))

(* parsed�Ѥδؿ�(lexbuf) *)                            
let lexbuf_parsed l =
  Id.counter := 0;
  Parser.exp Lexer.token l

(* typing�Ѥδؿ�(lexbuf) *)
let lexbuf_typing l =
  Id.counter := 0;
  Typing.extenv := M.empty;
  Typing.f (Parser.exp Lexer.token l)

(* normalized�Ѥδؿ�(lexbuf) *)
let lexbuf_normalized l =
  Id.counter := 0;
  Typing.extenv := M.empty;
  KNormal.f (Typing.f (Parser.exp Lexer.token l))

(* BEFORE_CSE�Ѥδؿ�(lexbuf) *)
let lexbuf_before_cse l =
  Id.counter := 0;
  Typing.extenv := M.empty;
  Alpha.f (KNormal.f (Typing.f (Parser.exp Lexer.token l)))

(* AFTER_CSE�Ѥδؿ�(lexbuf) *)
let lexbuf_after_cse l =
  Id.counter := 0;
  Typing.extenv := M.empty;
  Cse.f (Alpha.f (KNormal.f (Typing.f (Parser.exp Lexer.token l))))

(* after_iter�Ѥδؿ�(lexbuf) *)
let lexbuf_after_iter l =
  Id.counter := 0;
  Typing.extenv := M.empty;
  iter !limit (Cse.f (Alpha.f (KNormal.f (Typing.f (Parser.exp Lexer.token l)))))

(* closure�Ѥδؿ�(lexbuf) *)
let lexbuf_closure l =
  Id.counter := 0;
  Typing.extenv := M.empty;
  Closure.f (iter !limit (Cse.f (Alpha.f (KNormal.f (Typing.f (Parser.exp Lexer.token l))))))

(* virtual�Ѥδؿ�(lexbuf) *)
let lexbuf_virtual l =
  Id.counter := 0;
  Typing.extenv := M.empty;
  Virtual.f (Closure.f (iter !limit (Cse.f (Alpha.f (KNormal.f (Typing.f (Parser.exp Lexer.token l)))))))

(* simm�Ѥδؿ�(lexbuf) *)
let lexbuf_simm l =
  Id.counter := 0;
  Typing.extenv := M.empty;
  Simm.f (Virtual.f (Closure.f (iter !limit (Cse.f (Alpha.f (KNormal.f (Typing.f (Parser.exp Lexer.token l))))))))

(* regAlloc�Ѥδؿ�(lexbuf) *)
let lexbuf_regalloc l =
  Id.counter := 0;
  Typing.extenv := M.empty;
  RegAlloc.f (Simm.f (Virtual.f (Closure.f (iter !limit (Cse.f (Alpha.f (KNormal.f (Typing.f (Parser.exp Lexer.token l)))))))))

(* \t��n����Ϥ���ؿ� *)
let rec print_tab outchan n =
  if n = 0 then () else (Printf.fprintf outchan "\t"; print_tab outchan (n-1))

(* Id.l����Ϥ���ؿ� *)
let print_idl outchan i =
  match i with
  | Id.L s -> Printf.fprintf outchan "%s" s
  | _ -> ()

(* �ѿ��Υꥹ�Ȥ���Ϥ���ؿ� *)
let rec print_idlist outchan ts =
  match ts with
  | [] -> Printf.fprintf outchan "\n"
  | t :: ts' -> Printf.fprintf outchan "%s " t; print_idlist outchan ts'

(* (Id.t * Type.t) list�����Ƥ�file(outchan)�˽��Ϥ���ؿ� *)
let rec print_arg outchan (arg: (Id.t * Type.t) list) =
  match arg with
  | [] -> Printf.fprintf outchan "\n"
  | (i,_) :: arg' -> Printf.fprintf outchan "%s " i; print_arg outchan arg'

(* Syntax.t�����Ƥ�file(outchan)�˽��Ϥ���ؿ� *)
let rec print_syntax outchan t n =
  print_tab outchan n;
  match t with
  | Syntax.Unit -> Printf.fprintf outchan "UNIT\n"
  | Syntax.Bool b -> Printf.fprintf outchan "BOOL %B\n" b
  | Syntax.Int i -> Printf.fprintf outchan "INT %d\n" i
  | Syntax.Float f -> Printf.fprintf outchan "FLOAT %f\n" f
  | Syntax.Not (t1,_) -> Printf.fprintf outchan "NOT\n";
                    print_syntax outchan t1 (n+1)
  | Syntax.Neg (t1,_) -> Printf.fprintf outchan "NEG\n";
                    print_syntax outchan t1 (n+1)
  | Syntax.Ini (t1,_) -> Printf.fprintf outchan "INI\n";
                        print_syntax outchan t1 (n+1)
  | Syntax.Inf (t1,_) -> Printf.fprintf outchan "INF\n";
                        print_syntax outchan t1 (n+1)
  | Syntax.Out (t1,_) -> Printf.fprintf outchan "OUT\n";
                        print_syntax outchan t1 (n+1)
  | Syntax.ItoIA (t1,_) -> Printf.fprintf outchan "ITOIA\n";
                        print_syntax outchan t1 (n+1)
  | Syntax.ItoFA (t1,_) -> Printf.fprintf outchan "ITOFA\n";
                        print_syntax outchan t1 (n+1)
  | Syntax.Gethp (t1,_) -> Printf.fprintf outchan "GETHP\n";
                        print_syntax outchan t1 (n+1)
  | Syntax.Sethp (t1,_) -> Printf.fprintf outchan "SETHP\n";
                        print_syntax outchan t1 (n+1)
  | Syntax.Add (t1,t2,_) -> Printf.fprintf outchan "ADD\n";
                          print_syntax outchan t1 (n+1);
                          print_syntax outchan t2 (n+1)
  | Syntax.Sub (t1,t2,_) -> Printf.fprintf outchan "SUB\n";
                          print_syntax outchan t1 (n+1);
                          print_syntax outchan t2 (n+1)
  | Syntax.Mul (t1,t2,_) -> Printf.fprintf outchan "MUL\n";
                          print_syntax outchan t1 (n+1);
                          print_syntax outchan t2 (n+1)
  | Syntax.Div (t1,t2,_) -> Printf.fprintf outchan "DIV\n";
                          print_syntax outchan t1 (n+1);
                          print_syntax outchan t2 (n+1)
  | Syntax.Xor (t1,t2,_) -> Printf.fprintf outchan "XOR\n";
                          print_syntax outchan t1 (n+1);
                          print_syntax outchan t2 (n+1)
  | Syntax.Or (t1,t2,_) -> Printf.fprintf outchan "OR\n";
                          print_syntax outchan t1 (n+1);
                          print_syntax outchan t2 (n+1)
  | Syntax.And (t1,t2,_) -> Printf.fprintf outchan "AND\n";
                          print_syntax outchan t1 (n+1);
                          print_syntax outchan t2 (n+1)
  | Syntax.SLL (t1,t2,_) -> Printf.fprintf outchan "SLL\n";
                          print_syntax outchan t1 (n+1);
                          print_syntax outchan t2 (n+1)
  | Syntax.SRL (t1,t2,_) -> Printf.fprintf outchan "SRL\n";
                          print_syntax outchan t1 (n+1);
                          print_syntax outchan t2 (n+1)
  | Syntax.Sqrt (t1,_) -> Printf.fprintf outchan "SQRT\n";
                          print_syntax outchan t1 (n+1)
  | Syntax.FAbs (t1,_) -> Printf.fprintf outchan "FABS\n";
                          print_syntax outchan t1 (n+1)
  | Syntax.FtoI (t1,_) -> Printf.fprintf outchan "FTOI\n";
                          print_syntax outchan t1 (n+1)
  | Syntax.ItoF (t1,_) -> Printf.fprintf outchan "ITOF\n";
                          print_syntax outchan t1 (n+1)
  | Syntax.FNeg (t1,_) -> Printf.fprintf outchan "FNEG\n";
                          print_syntax outchan t1 (n+1)
  | Syntax.FAdd (t1,t2,_) -> Printf.fprintf outchan "FADD\n";
                          print_syntax outchan t1 (n+1);
                          print_syntax outchan t2 (n+1)
  | Syntax.FSub (t1,t2,_) -> Printf.fprintf outchan "FSUB\n";
                          print_syntax outchan t1 (n+1);
                          print_syntax outchan t2 (n+1)
  | Syntax.FMul (t1,t2,_) -> Printf.fprintf outchan "FMUL\n";
                          print_syntax outchan t1 (n+1);
                          print_syntax outchan t2 (n+1)
  | Syntax.FDiv (t1,t2,_) -> Printf.fprintf outchan "FDIV\n";
                          print_syntax outchan t1 (n+1);
                          print_syntax outchan t2 (n+1)
  | Syntax.Eq (t1,t2,_) -> Printf.fprintf outchan "EQ\n";
                          print_syntax outchan t1 (n+1);
                          print_syntax outchan t2 (n+1)
  | Syntax.LE (t1,t2,_) -> Printf.fprintf outchan "LE\n";
                          print_syntax outchan t1 (n+1);
                          print_syntax outchan t2 (n+1)
  | Syntax.If (t1,t2,t3,_) -> Printf.fprintf outchan "IF\n";
                          print_syntax outchan t1 (n+1);
                          print_syntax outchan t2 (n+1);
                          print_syntax outchan t3 (n+1)
  | Syntax.Let ((i1,_),t1,t2,_) -> Printf.fprintf outchan "LET %s\n" i1;
                                print_syntax outchan t1 (n+1);
                                print_syntax outchan t2 (n+1)
  | Syntax.Var (i,_) -> Printf.fprintf outchan "VAR %s\n" i
  | Syntax.LetRec (f,t1,_) -> Printf.fprintf outchan "LET REC ";
                          print_fundef f outchan (n+1);
                          print_syntax outchan t1 (n+1)
  | Syntax.App (t1,ts,_) -> Printf.fprintf outchan "APP ";
                          print_syntax outchan t1 0;
                          print_tlist outchan ts (n+1)
  | Syntax.Tuple (ts,_) -> Printf.fprintf outchan "TUPLE\n";
                      print_tlist outchan ts (n+1)
  | Syntax.LetTuple (ids,t1,t2,_) -> Printf.fprintf outchan "LETTUPLE ";
                                  print_arg outchan ids;
                                  print_syntax outchan t1 (n+1);
                                  print_syntax outchan t2 (n+1)
  | Syntax.Array (t1,t2,_) -> Printf.fprintf outchan "ARRAY\n";
                            print_syntax outchan t1 (n+1);
                            print_syntax outchan t2 (n+1)
  | Syntax.Get (t1,t2,_) -> Printf.fprintf outchan "GET\n";
                            print_syntax outchan t1 (n+1);
                            print_syntax outchan t2 (n+1)
  | Syntax.Put (t1,t2,t3,_) -> Printf.fprintf outchan "PUT\n";
                            print_syntax outchan t1 (n+1);
                            print_syntax outchan t2 (n+1);
                            print_syntax outchan t3 (n+1)
and print_fundef f outchan n =
  match f.name with
  | (i,_) ->
  Printf.fprintf outchan "%s " i;
  print_arg outchan f.args;
  print_syntax outchan f.body n
and print_tlist outchan ts n =
  match ts with
  | [] -> ()
  | t :: ts' -> print_syntax outchan t n; print_tlist outchan ts' n

(* KNormal.t�����Ƥ�file(outchan)�˽��Ϥ���ؿ� *)
let rec print_knormal outchan t n =
  print_tab outchan n;
  match t with
  | KNormal.Unit -> Printf.fprintf outchan "UNIT\n"
  | KNormal.Int i -> Printf.fprintf outchan "INT %d\n" i
  | KNormal.Float f -> Printf.fprintf outchan "FLOAT %f\n" f
  | KNormal.Neg (t1,_) -> Printf.fprintf outchan "NEG %s\n" t1
  | KNormal.Out (t1,_) -> Printf.fprintf outchan "OUT %s\n" t1
  | KNormal.Ini (t1,_) -> Printf.fprintf outchan "INI %s\n" t1
  | KNormal.Inf (t1,_) -> Printf.fprintf outchan "INF %s\n" t1
  | KNormal.ItoIA (t1,_) -> Printf.fprintf outchan "ITOIA %s\n" t1
  | KNormal.ItoFA (t1,_) -> Printf.fprintf outchan "ITOFA %s\n" t1
  | KNormal.Gethp (t1,_) -> Printf.fprintf outchan "GETHP %s\n" t1
  | KNormal.Sethp (t1,_) -> Printf.fprintf outchan "SETHP %s\n" t1
  | KNormal.Add (t1,t2,_) -> Printf.fprintf outchan "ADD %s %s\n" t1 t2;
  | KNormal.Sub (t1,t2,_) -> Printf.fprintf outchan "SUB %s %s\n" t1 t2;
  | KNormal.Xor (t1,t2,_) -> Printf.fprintf outchan "XOR %s %s\n" t1 t2;
  | KNormal.Or (t1,t2,_) -> Printf.fprintf outchan "OR %s %s\n" t1 t2;
  | KNormal.And (t1,t2,_) -> Printf.fprintf outchan "AND %s %s\n" t1 t2;
  | KNormal.SLL (t1,t2,_) -> Printf.fprintf outchan "SLL %s %s\n" t1 t2;
  | KNormal.SRL (t1,t2,_) -> Printf.fprintf outchan "SRL %s %s\n" t1 t2;
  | KNormal.FAbs (t1,_) -> Printf.fprintf outchan "FABS %s \n" t1;
  | KNormal.Sqrt (t1,_) -> Printf.fprintf outchan "SQRT %s \n" t1;
  | KNormal.FtoI (t1,_) -> Printf.fprintf outchan "FTOI %s \n" t1;
  | KNormal.ItoF (t1,_) -> Printf.fprintf outchan "ITOF %s \n" t1;
  | KNormal.FNeg (t1,_) -> Printf.fprintf outchan "FNEG %s \n" t1;
  | KNormal.FAdd (t1,t2,_) -> Printf.fprintf outchan "FADD %s %s\n" t1 t2;
  | KNormal.FSub (t1,t2,_) -> Printf.fprintf outchan "FSUB %s %s\n" t1 t2;
  | KNormal.FMul (t1,t2,_) -> Printf.fprintf outchan "FMUL %s %s\n" t1 t2;
  | KNormal.FDiv (t1,t2,_) -> Printf.fprintf outchan "FDIV %s %s\n" t1 t2;
  | KNormal.IfEq (t1,t2,t3,t4,_) -> Printf.fprintf outchan "IFEQ %s %s\n" t1 t2;
                                  print_knormal outchan t3 (n+1);
                                  print_knormal outchan t4 (n+1);
  | KNormal.IfLE (t1,t2,t3,t4,_) -> Printf.fprintf outchan "IFLE %s %s\n" t1 t2;
                                  print_knormal outchan t3 (n+1);
                                  print_knormal outchan t4 (n+1);
  | KNormal.Let ((i1,_),t1,t2,_) -> Printf.fprintf outchan "LET %s\n" i1;
                                print_knormal outchan t1 (n+1);
                                print_knormal outchan t2 (n+1)
  | KNormal.Var (i,_) -> Printf.fprintf outchan "VAR %s\n" i
  | KNormal.LetRec (f,t1,_) -> Printf.fprintf outchan "LET REC ";
                          print_fundef2 f outchan (n+1);
                          print_knormal outchan t1 (n+1)
  | KNormal.App (t1,ts,_) -> Printf.fprintf outchan "APP %s " t1;
                          print_idlist outchan ts
  | KNormal.Tuple (ts,_) -> Printf.fprintf outchan "TUPLE\n";
                      print_tab outchan (n+1);
                      print_idlist outchan ts
  | KNormal.LetTuple (ids,t1,t2,_) -> Printf.fprintf outchan "LETTUPLE ";
                                  print_arg outchan ids;
                                  print_tab outchan (n+1);
                                  Printf.fprintf outchan "%s\n" t1;
                                  print_knormal outchan t2 (n+1)
  | KNormal.Get (t1,t2,_) -> Printf.fprintf outchan "GET %s %s\n" t1 t2;
  | KNormal.Put (t1,t2,t3,_) -> Printf.fprintf outchan "PUT %s %s %s\n" t1 t2 t3;
  | KNormal.ExtArray (t1,_) -> Printf.fprintf outchan "EXTARRAY %s\n" t1
  | KNormal.ExtFunApp (t1,ts,_) -> Printf.fprintf outchan "EXTFUNAPP %s " t1;
                                print_idlist outchan ts
and print_fundef2 f outchan n =
  match f.name with
  | (i,_) ->
  Printf.fprintf outchan "%s " i;
  print_arg outchan f.args;
  print_knormal outchan f.body n

(* Closure.closure�����Ƥ�file(outchan)�˽��Ϥ���ؿ� *)
let print_cl outchan {Closure.entry = l; Closure.actual_fv = ids} =
  print_idl outchan l;
  Printf.fprintf outchan " : ";
  print_idlist outchan ids

(* Closure.t�����Ƥ�file(outchan)�˽��Ϥ���ؿ� *)
let rec print_closure_t outchan t n =
  print_tab outchan n;
  match t with
  | Closure.Unit -> Printf.fprintf outchan "UNIT\n"
  | Closure.Ini _ -> Printf.fprintf outchan "INI\n"
  | Closure.Inf _ -> Printf.fprintf outchan "INF\n"
  | Closure.Gethp _ -> Printf.fprintf outchan "GETHP\n"
  | Closure.Out (t1,_) -> Printf.fprintf outchan "OUT %s\n" t1
  | Closure.ItoIA (t1,_) -> Printf.fprintf outchan "ITOIA %s\n" t1
  | Closure.ItoFA (t1,_) -> Printf.fprintf outchan "ITOFA %s\n" t1
  | Closure.Sethp (t1,_) -> Printf.fprintf outchan "SETHP %s\n" t1
  | Closure.Int i -> Printf.fprintf outchan "INT %d\n" i
  | Closure.Float f -> Printf.fprintf outchan "FLOAT %f\n" f
  | Closure.Neg (t1,_) -> Printf.fprintf outchan "NEG %s\n" t1
  | Closure.Add (t1,t2,_) -> Printf.fprintf outchan "ADD %s %s\n" t1 t2
  | Closure.Sub (t1,t2,_) -> Printf.fprintf outchan "SUB %s %s\n" t1 t2
  | Closure.Xor (t1,t2,_) -> Printf.fprintf outchan "XOR %s %s\n" t1 t2
  | Closure.Or (t1,t2,_) -> Printf.fprintf outchan "OR %s %s\n" t1 t2
  | Closure.And (t1,t2,_) -> Printf.fprintf outchan "AND %s %s\n" t1 t2
  | Closure.SLL (t1,t2,_) -> Printf.fprintf outchan "SLL %s %s\n" t1 t2
  | Closure.SRL (t1,t2,_) -> Printf.fprintf outchan "SRL %s %s\n" t1 t2
  | Closure.FAbs (t1,_) -> Printf.fprintf outchan "FABS %s \n" t1
  | Closure.Sqrt (t1,_) -> Printf.fprintf outchan "SQRT %s \n" t1
  | Closure.FtoI (t1,_) -> Printf.fprintf outchan "FTOI %s \n" t1
  | Closure.ItoF (t1,_) -> Printf.fprintf outchan "ITOF %s \n" t1
  | Closure.FNeg (t1,_) -> Printf.fprintf outchan "FNEG %s \n" t1
  | Closure.FAdd (t1,t2,_) -> Printf.fprintf outchan "FADD %s %s\n" t1 t2
  | Closure.FSub (t1,t2,_) -> Printf.fprintf outchan "FSUB %s %s\n" t1 t2
  | Closure.FMul (t1,t2,_) -> Printf.fprintf outchan "FMUL %s %s\n" t1 t2
  | Closure.FDiv (t1,t2,_) -> Printf.fprintf outchan "FDIV %s %s\n" t1 t2
  | Closure.IfEq (t1,t2,t3,t4,_) -> Printf.fprintf outchan "IFEQ %s %s\n" t1 t2;
                                  print_closure_t outchan t3 (n+1);
                                  print_closure_t outchan t4 (n+1);
  | Closure.IfLE (t1,t2,t3,t4,_) -> Printf.fprintf outchan "IFLE %s %s\n" t1 t2;
                                  print_closure_t outchan t3 (n+1);
                                  print_closure_t outchan t4 (n+1);
  | Closure.Let ((i1,_),t1,t2,_) -> Printf.fprintf outchan "LET %s\n" i1;
                                print_closure_t outchan t1 (n+1);
                                print_closure_t outchan t2 (n+1)
  | Closure.Var (i,_) -> Printf.fprintf outchan "VAR %s\n" i
  | Closure.MakeCls ((i,_),cl,t1,_) -> Printf.fprintf outchan "MAKECLS %s\n" i;
                                    print_tab outchan (n+1);
                                    print_cl outchan cl;
                                    print_closure_t outchan t1 (n+1)
  | Closure.AppCls (i, ids, _) -> Printf.fprintf outchan "APPCLS %s : " i;
                                  print_idlist outchan ids
  | Closure.AppDir (l, ids, _) -> Printf.fprintf outchan "APPDIR ";
                                  print_idl outchan l;
                                  Printf.fprintf outchan " : ";
                                  print_idlist outchan ids
  | Closure.Tuple (ts,_) -> Printf.fprintf outchan "TUPLE\n";
                      print_tab outchan (n+1);
                      print_idlist outchan ts
  | Closure.LetTuple (ids,t1,t2,_) -> Printf.fprintf outchan "LETTUPLE ";
                                  print_arg outchan ids;
                                  print_tab outchan (n+1);
                                  Printf.fprintf outchan "%s\n" t1;
                                  print_closure_t outchan t2 (n+1)
  | Closure.Get (t1,t2,_) -> Printf.fprintf outchan "GET %s %s\n" t1 t2
  | Closure.Put (t1,t2,t3,_) -> Printf.fprintf outchan "PUT %s %s %s\n" t1 t2 t3
  | Closure.ExtArray (l,_) -> Printf.fprintf outchan "EXTARRAY ";
                              print_idl outchan l;
                              Printf.fprintf outchan "\n"

(* Closure.fundef�����Ƥ�file(outchan)�˽��Ϥ���ؿ� *)
let print_closure_fundef outchan {Closure.name = (i,_); Closure.args = ids; Closure.formal_fv = fvs; Closure.body = t} =
  Printf.fprintf outchan "Name : ";
  print_idl outchan i;
  Printf.fprintf outchan "\nArgs : ";
  print_arg outchan ids;
  Printf.fprintf outchan "Formal_fv : ";
  print_arg outchan fvs;
  Printf.fprintf outchan "Body :\n";
  print_closure_t outchan t 0;
  Printf.fprintf outchan "\n"

(* Closure.prog�����Ƥ�file(outchan)�˽��Ϥ���ؿ� *)
let rec print_closure outchan (prog: Closure.prog) = 
  match prog with
  | Closure.Prog ([], t) -> Printf.fprintf outchan "\n"; print_closure_t outchan t 0
  | Closure.Prog((f :: fs), t) -> print_closure_fundef outchan f; 
                                  print_closure outchan (Closure.Prog (fs, t))
  | _ -> ()

let string s = lexbuf stdout (Lexing.from_string s) (* ʸ����򥳥�ѥ��뤷��ɸ����Ϥ�ɽ������ (caml2html: main_string) *)

let file f = (* �ե�����򥳥�ѥ��뤷�ƥե�����˽��Ϥ��� (caml2html: main_file) *)
  let inchan = open_in (f ^ ".ml") in
  let outchan = open_out (f ^ ".s") in
  try
    lexbuf outchan (Lexing.from_channel inchan);
    close_in inchan;
    close_out outchan;
  with e -> (close_in inchan; close_out outchan; raise e)

(* parsed�Ѥδؿ�(file) *)
let file_parsed f =
  let inchan = open_in (f ^ ".ml") in
  let outchan = open_out (f ^ ".parsed") in
  try
    (let t = lexbuf_parsed (Lexing.from_channel inchan) in
    print_syntax outchan t 0; close_in inchan; close_out outchan;)
  with e -> (close_in inchan; close_out outchan; raise e)

(* typing�Ѥδؿ�(file) *)
let file_typing f =
  let inchan = open_in (f ^ ".ml") in
  let outchan = open_out (f ^ ".typing") in
  try
    (let t = lexbuf_typing (Lexing.from_channel inchan) in
    print_syntax outchan t 0; close_in inchan; close_out outchan;)
  with e -> (close_in inchan; close_out outchan; raise e)

(* normalized�Ѥδؿ�(file) *)
let file_normalized f =
  let inchan = open_in (f ^ ".ml") in
  let outchan = open_out (f ^ ".normalized") in
  try
    (let t = lexbuf_normalized (Lexing.from_channel inchan) in
    print_knormal outchan t 0; close_in inchan; close_out outchan;)
  with e -> (close_in inchan; close_out outchan; raise e)

(* BEFORE_CSE�Ѥδؿ�(file) *)
let file_before_cse f =
  let inchan = open_in (f ^ ".ml") in
  let outchan = open_out (f ^ ".BEFORE_CSE") in
  try
    (let t = lexbuf_before_cse (Lexing.from_channel inchan) in
    print_knormal outchan t 0; close_in inchan; close_out outchan;)
  with e -> (close_in inchan; close_out outchan; raise e)

(* AFTER_CSE�Ѥδؿ�(file) *)
let file_after_cse f =
  let inchan = open_in (f ^ ".ml") in
  let outchan = open_out (f ^ ".AFTER_CSE") in
  try
    (let t = lexbuf_after_cse (Lexing.from_channel inchan) in
    print_knormal outchan t 0; close_in inchan; close_out outchan;)
  with e -> (close_in inchan; close_out outchan; raise e)

(* after_iter�Ѥδؿ�(file) *)
let file_after_iter f =
  let inchan = open_in (f ^ ".ml") in
  let outchan = open_out (f ^ ".AFTER_ITER") in
  try
    (let t = lexbuf_after_iter (Lexing.from_channel inchan) in
    print_knormal outchan t 0; close_in inchan; close_out outchan;)
  with e -> (close_in inchan; close_out outchan; raise e)

(* closure�Ѥδؿ�(file) *)
let file_closure f =
  let inchan = open_in (f ^ ".ml") in
  let outchan = open_out (f ^ ".closure") in
  try 
    (let prog = lexbuf_closure (Lexing.from_channel inchan) in
    print_closure outchan prog; close_in inchan; close_out outchan;)
  with e -> (close_in inchan; close_out outchan; raise e)

(* virtual�Ѥδؿ�(file) *)
let file_virtual f =
  let inchan = open_in (f ^ ".ml") in
  let outchan = open_out (f ^ ".virtual") in
  try 
    (let prog = lexbuf_virtual (Lexing.from_channel inchan) in
    Asm.print_asm outchan prog; close_in inchan; close_out outchan;)
  with e -> (close_in inchan; close_out outchan; raise e)

(* simm�Ѥδؿ�(file) *)
let file_simm f =
  let inchan = open_in (f ^ ".ml") in
  let outchan = open_out (f ^ ".simm") in
  try 
    (let prog = lexbuf_simm (Lexing.from_channel inchan) in
    Asm.print_asm outchan prog; close_in inchan; close_out outchan;)
  with e -> (close_in inchan; close_out outchan; raise e)

(* regAlloc�Ѥδؿ�(file) *)
let file_regalloc f =
  let inchan = open_in (f ^ ".ml") in
  let outchan = open_out (f ^ ".regalloc") in
  try 
    (let prog = lexbuf_regalloc (Lexing.from_channel inchan) in
    Asm.print_asm outchan prog; close_in inchan; close_out outchan;)
  with e -> (close_in inchan; close_out outchan; raise e)

let () = (* �������饳��ѥ���μ¹Ԥ����Ϥ���� (caml2html: main_entry) *)
  let files = ref [] in
  Arg.parse
    [("-inline", Arg.Int(fun i -> Inline.threshold := i), "maximum size of functions inlined");
     ("-iter", Arg.Int(fun i -> limit := i), "maximum number of optimizations iterated")]
    (fun s -> files := !files @ [s])
    ("Mitou Min-Caml Compiler (C) Eijiro Sumii\n" ^
     Printf.sprintf "usage: %s [-inline m] [-iter n] ...filenames without \".ml\"..." Sys.argv.(0));
  List.iter
    (fun f -> ignore (file_parsed f); ignore (file_typing f); ignore (file_normalized f); ignore (file_before_cse f); ignore (file_after_cse f); ignore (file_after_iter f); ignore (file_closure f); ignore (file_virtual f); ignore (file_simm f); ignore (file_regalloc f); ignore (file f))
    !files
