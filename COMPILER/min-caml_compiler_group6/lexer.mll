{
open Parser
open Type
}

let space = [' ' '\t' '\r']
let line = ['\n']
let digit = ['0'-'9']
let lower = ['a'-'z']
let upper = ['A'-'Z']

rule token = parse
| space+
    { token lexbuf }
| line
    { Lexing.new_line lexbuf; token lexbuf }
| "(*"
    { comment lexbuf;
      token lexbuf }
| '('
    { LPAREN }
| ')'
    { RPAREN }
| "true"
    { BOOL(true) }
| "false"
    { BOOL(false) }
| "not"
    { NOT }
| "lxor"
    { XOR }
| "lor"
    { OR }
| "land"
    { AND }
| "lsl"
    { SLL }
| "lsr"
    { SRL }
| "sqrt"
    { SQRT }
| "fabs"
    { FABS }
| "ftoi"
    { FTOI }
| "itof"
    { ITOF }
| digit+ 
    { INT(int_of_string (Lexing.lexeme lexbuf)) }
| digit+ ('.' digit*)? (['e' 'E'] ['+' '-']? digit+)?
    { FLOAT(float_of_string (Lexing.lexeme lexbuf)) }
| '-' 
    { MINUS }
| '+' 
    { PLUS }
| '*'
    { AST }
| '/'
    { SLASH }
| "-."
    { MINUS_DOT }
| "+."
    { PLUS_DOT }
| "*."
    { AST_DOT }
| "/."
    { SLASH_DOT }
| '='
    { EQUAL }
| "<>"
    { LESS_GREATER }
| "<="
    { LESS_EQUAL }
| ">="
    { GREATER_EQUAL }
| '<'
    { LESS }
| '>'
    { GREATER }
| "if"
    { IF }
| "then"
    { THEN }
| "else"
    { ELSE }
| "let"
    { LET }
| "in"
    { IN }
| "rec"
    { REC }
| "ini"
    { INI }
| "inf"
    { INF }
| "output"
    { OUTPUT }
| "itoia"
    { ITOIA }
| "itofa"
    { ITOFA }
| "gethp"
    { GETHP }
| "sethp"
    { SETHP }
| ','
    { COMMA }
| '_'
    { IDENT(Id.gentmp Type.Unit) }
| "Array.create" | "Array.make" (* [XX] ad hoc *)
    { ARRAY_CREATE }
| '.'
    { DOT }
| "<-"
    { LESS_MINUS }
| ';'
    { SEMICOLON }
| eof
    { EOF }
| lower (digit|lower|upper|'_')* 
    { IDENT(Lexing.lexeme lexbuf) }
| _
    { failwith
        (Printf.sprintf "unknown token %s near characters %d-%d"
           (Lexing.lexeme lexbuf)
           (Lexing.lexeme_start lexbuf)
           (Lexing.lexeme_end lexbuf)) }
and comment = parse
| "*)"
    { () }
| "(*"
    { comment lexbuf;
      comment lexbuf }
| line
    { Lexing.new_line lexbuf; comment lexbuf }
| eof
    { Format.eprintf "warning: unterminated comment@." }
| _
    { comment lexbuf }
