type t =
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
  | IfEq of Id.t * Id.t * t * t * int
  | IfLE of Id.t * Id.t * t * t * int
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

val fv : t -> S.t
val f : Syntax.t -> t
