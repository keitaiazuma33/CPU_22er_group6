type closure = { entry : Id.l; actual_fv : Id.t list }
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

val fv : t -> S.t
val f : KNormal.t -> prog
val pos_of_type : t -> int
