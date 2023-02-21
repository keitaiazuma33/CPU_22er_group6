type t = 
  | Unit
  | Bool of bool
  | Int of int
  | Float of float
  | Not of t * int
  | Neg of t * int
  | Add of t * t * int
  | Sub of t * t * int
  | Mul of t * t * int
  | Div of t * t * int
  | Xor of t * t * int
  | And of t * t * int
  | Or of t * t * int
  | SLL of t * t * int
  | SRL of t * t * int
  | Sqrt of t * int
  | FNeg of t * int
  | FAdd of t * t * int
  | FSub of t * t * int
  | FMul of t * t * int
  | FDiv of t * t * int
  | FAbs of t * int
  | FtoI of t * int
  | ItoF of t * int
  | Eq of t * t * int
  | LE of t * t * int
  | If of t * t * t * int
  | Let of (Id.t * Type.t) * t * t * int
  | Var of Id.t * int
  | LetRec of fundef * t * int
  | App of t * t list * int
  | Tuple of t list * int
  | LetTuple of (Id.t * Type.t) list * t * t * int
  | Array of t * t * int
  | Get of t * t * int
  | Put of t * t * t * int
  | Ini of t * int
  | Inf of t * int
  | Out of t * int
  | ItoIA of t * int
  | ItoFA of t * int
  | Sethp of t * int
  | Gethp of t * int
and fundef = { name : Id.t * Type.t; args : (Id.t * Type.t) list; body : t }
