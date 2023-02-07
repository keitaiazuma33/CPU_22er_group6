%{
(* parser�����Ѥ����ѿ����ؿ������ʤɤ���� *)
open Syntax
let addtyp x = (x, Type.gentyp ())
%}

/* (* �����ɽ���ǡ���������� (caml2html: parser_token) *) */
%token <bool> BOOL
%token <int> INT
%token <float> FLOAT
%token NOT
%token XOR
%token OR
%token AND
%token SLL
%token SRL
%token SQRT
%token FABS
%token MINUS
%token PLUS
%token AST
%token SLASH
%token MINUS_DOT
%token PLUS_DOT
%token AST_DOT
%token SLASH_DOT
%token FTOI
%token ITOF
%token EQUAL
%token LESS_GREATER
%token LESS_EQUAL
%token GREATER_EQUAL
%token LESS
%token GREATER
%token IF
%token THEN
%token ELSE
%token <Id.t> IDENT
%token LET
%token IN
%token REC
%token INPUT
%token OUTPUT
%token ITOIA
%token ITOFA
%token GETHP
%token SETHP
%token COMMA
%token ARRAY_CREATE
%token DOT
%token LESS_MINUS
%token SEMICOLON
%token LPAREN
%token RPAREN
%token EOF

/* (* ͥ���̤�associativity��������㤤������⤤���ء� (caml2html: parser_prior) *) */
%nonassoc IN
%right prec_let
%right SEMICOLON
%right prec_if
%right LESS_MINUS
%nonassoc prec_tuple
%left COMMA
%left EQUAL LESS_GREATER LESS GREATER LESS_EQUAL GREATER_EQUAL
%left PLUS MINUS PLUS_DOT MINUS_DOT
%left AST SLASH AST_DOT SLASH_DOT XOR OR AND SLL SRL
%right prec_unary_minus
%left prec_app
%left DOT

/* (* ���ϵ������� *) */
%type <Syntax.t> exp
%start exp

%%

simple_exp: /* (* ��̤�Ĥ��ʤ��Ƥ�ؿ��ΰ����ˤʤ�뼰 (caml2html: parser_simple) *) */
| LPAREN exp RPAREN
    { $2 }
| LPAREN RPAREN
    { Unit }
| BOOL
    { Bool($1) }
| INT
    { Int($1) }
| FLOAT
    { Float($1) }
| IDENT
    { Var($1, (Parsing.symbol_start_pos ()).pos_lnum) }
| simple_exp DOT LPAREN exp RPAREN
    { Get($1, $4, (Parsing.symbol_start_pos ()).pos_lnum) }

exp: /* (* ���̤μ� (caml2html: parser_exp) *) */
| simple_exp
    { $1 }
| NOT exp
    %prec prec_app
    { Not($2, (Parsing.symbol_start_pos ()).pos_lnum) }
| MINUS exp
    %prec prec_unary_minus
    { match $2 with
    | Float(f) -> Float(-.f) (* -1.23�ʤɤϷ����顼�ǤϤʤ��Τ��̰��� *)
    | e -> Neg(e, (Parsing.symbol_start_pos ()).pos_lnum) }
| exp PLUS exp /* (* ­������ʸ���Ϥ���롼�� (caml2html: parser_add) *) */
    { Add($1, $3, (Parsing.symbol_start_pos ()).pos_lnum) }
| exp MINUS exp
    { Sub($1, $3, (Parsing.symbol_start_pos ()).pos_lnum) }
| exp AST exp
    { Mul($1, $3, (Parsing.symbol_start_pos ()).pos_lnum) }
| exp SLASH exp
    { Div($1, $3, (Parsing.symbol_start_pos ()).pos_lnum) }
| exp XOR exp
    { Xor($1, $3, (Parsing.symbol_start_pos ()).pos_lnum) }
| exp AND exp
    { And($1, $3, (Parsing.symbol_start_pos ()).pos_lnum) }
| exp OR exp
    { Or($1, $3, (Parsing.symbol_start_pos ()).pos_lnum) }
| exp SLL exp
    { SLL($1, $3, (Parsing.symbol_start_pos ()).pos_lnum) }
| exp SRL exp
    { SRL($1, $3, (Parsing.symbol_start_pos ()).pos_lnum) }
| exp EQUAL exp
    { Eq($1, $3, (Parsing.symbol_start_pos ()).pos_lnum) }
| exp LESS_GREATER exp
    { Not(Eq($1, $3, (Parsing.symbol_start_pos ()).pos_lnum), (Parsing.symbol_start_pos ()).pos_lnum) (* some float comparisons differ from OCaml for NaN; see: https://github.com/esumii/min-caml/issues/13#issuecomment-1147032750 *) }
| exp LESS exp
    { Not(LE($3, $1, (Parsing.symbol_start_pos ()).pos_lnum), (Parsing.symbol_start_pos ()).pos_lnum) }
| exp GREATER exp
    { Not(LE($1, $3, (Parsing.symbol_start_pos ()).pos_lnum), (Parsing.symbol_start_pos ()).pos_lnum) }
| exp LESS_EQUAL exp
    { LE($1, $3, (Parsing.symbol_start_pos ()).pos_lnum) }
| exp GREATER_EQUAL exp
    { LE($3, $1, (Parsing.symbol_start_pos ()).pos_lnum) }
| IF exp THEN exp ELSE exp
    %prec prec_if
    { If($2, $4, $6, (Parsing.symbol_start_pos ()).pos_lnum) }
| MINUS_DOT exp
    %prec prec_unary_minus
    { FNeg($2, (Parsing.symbol_start_pos ()).pos_lnum) }
| exp PLUS_DOT exp
    { FAdd($1, $3, (Parsing.symbol_start_pos ()).pos_lnum) }
| exp MINUS_DOT exp
    { FSub($1, $3, (Parsing.symbol_start_pos ()).pos_lnum) }
| exp AST_DOT exp
    { FMul($1, $3, (Parsing.symbol_start_pos ()).pos_lnum) }
| exp SLASH_DOT exp
    { FDiv($1, $3, (Parsing.symbol_start_pos ()).pos_lnum) }
| SQRT exp
    { Sqrt($2, (Parsing.symbol_start_pos ()).pos_lnum) }
| FABS exp 
    { FAbs($2, (Parsing.symbol_start_pos ()).pos_lnum) }
| FTOI simple_exp
    %prec prec_app
    { FtoI($2, (Parsing.symbol_start_pos ()).pos_lnum) }
| ITOF simple_exp
    %prec prec_app
    { ItoF($2, (Parsing.symbol_start_pos ()).pos_lnum) }
| INPUT simple_exp
    %prec prec_app
    { In($2, (Parsing.symbol_start_pos ()).pos_lnum) }
| OUTPUT simple_exp
    %prec prec_app
    { Out($2, (Parsing.symbol_start_pos ()).pos_lnum) }
| ITOIA simple_exp
    %prec prec_app
    { ItoIA($2, (Parsing.symbol_start_pos ()).pos_lnum) }
| ITOFA simple_exp
    %prec prec_app
    { ItoFA($2, (Parsing.symbol_start_pos ()).pos_lnum) }
| GETHP simple_exp
    %prec prec_app
    { Gethp($2, (Parsing.symbol_start_pos ()).pos_lnum) }
| SETHP simple_exp
    %prec prec_app
    { Sethp($2, (Parsing.symbol_start_pos ()).pos_lnum) }
| LET IDENT EQUAL exp IN exp
    %prec prec_let
    { Let(addtyp $2, $4, $6, (Parsing.symbol_start_pos ()).pos_lnum) }
| LET REC fundef IN exp
    %prec prec_let
    { LetRec($3, $5, (Parsing.symbol_start_pos ()).pos_lnum) }
| simple_exp actual_args
    %prec prec_app
    { App($1, $2, (Parsing.symbol_start_pos ()).pos_lnum) }
| elems
    %prec prec_tuple
    { Tuple($1, (Parsing.symbol_start_pos ()).pos_lnum) }
| LET LPAREN pat RPAREN EQUAL exp IN exp
    { LetTuple($3, $6, $8, (Parsing.symbol_start_pos ()).pos_lnum) }
| simple_exp DOT LPAREN exp RPAREN LESS_MINUS exp
    { Put($1, $4, $7, (Parsing.symbol_start_pos ()).pos_lnum) }
| exp SEMICOLON exp
    { Let((Id.gentmp Type.Unit, Type.Unit), $1, $3, (Parsing.symbol_start_pos ()).pos_lnum) }
| ARRAY_CREATE simple_exp simple_exp
    %prec prec_app
    { Array($2, $3, (Parsing.symbol_start_pos ()).pos_lnum) }
| error
    { failwith
        (Printf.sprintf "parse error near line %d"
           (Parsing.symbol_start_pos ()).pos_lnum) }

fundef:
| IDENT formal_args EQUAL exp
    { { name = addtyp $1; args = $2; body = $4 } }

formal_args:
| IDENT formal_args
    { addtyp $1 :: $2 }
| IDENT
    { [addtyp $1] }

actual_args:
| actual_args simple_exp
    %prec prec_app
    { $1 @ [$2] }
| simple_exp
    %prec prec_app
    { [$1] }

elems:
| elems COMMA exp
    { $1 @ [$3] }
| exp COMMA exp
    { [$1; $3] }

pat:
| pat COMMA IDENT
    { $1 @ [addtyp $3] }
| IDENT COMMA IDENT
    { [addtyp $1; addtyp $3] }
