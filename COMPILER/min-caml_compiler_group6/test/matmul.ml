let rec fiszero x = (x = 0.0) in

let rec fispos x = (x > 0.0) in

let rec fisneg x = (x < 0.0) in

let rec fneg x = -.x in

let rec fsqr x = x *. x in

let rec fhalf x = 0.5 *. x in

let rec fless x y = x < y in

let rec sin x = 
  let x2 = x *. x in
  let x3 = x *. x2 in
  let x5 = x3 *. x2 in
  let x7 = x5 *. x2 in
  x -. 0.166666666 *. x3 +. 0.00833333333 *. x5 -. 0.00019841269 *. x7
in

let rec cos x =
  let x2 = x *. x in
  let x4 = x2 *. x2 in
  let x6 = x4 *. x2 in
  1.0 -. 0.5 *. x2 +. 0.041666666666 *. x4 -. 0.00138888888888 *. x6
in

let rec atan x =
  let x2 = x *. x in
  let x3 = x *. x2 in
  let x5 = x3 *. x2 in
  let x7 = x5 *. x2 in
  let x9 = x7 *. x2 in
  let x11 = x9 *. x2 in
  x -. 0.3333333333 *. x3 +. 0.2 *. x5 -. 0.142857142 *. x7 +. 0.111111111 *. x9 -. 0.0909090909 *. x11
in

let rec floor x =
  if x >= 0.0 then
    itof (ftoi x)
  else
    itof (ftoi (x -. 1.0))
in

let rec abs_float x = fabs x
in

let rec float_of_int x = itof x
in

let rec int_of_float x = ftoi x
in

let rec mul_abs a b i acc =
  if i = -1 then
    acc
  else
    if b land (1 lsl i) = 0 then
      mul_abs a b (i-1) acc
    else
      mul_abs a b (i-1) (acc + (a lsl i))
in

let rec mul a b =
  let abs_a = if a < 0 then -a else a in
  let abs_b = if b < 0 then -b else b in
  let abs_mul = mul_abs abs_a abs_b 30 0 in
  if (a lsr 31) = (b lsr 31) then 
    abs_mul
  else
    -abs_mul
in

let rec div_abs a b i acc =
  if i = -1 then
    acc
  else
    if (a lsr i) >= b then
      div_abs (a - (b lsl i)) b (i-1) (acc + (1 lsl i))
    else
      div_abs a b (i-1) acc
in

let rec div a b =
  let abs_a = if a < 0 then -a else a in
  let abs_b = if b < 0 then -b else b in
  let abs_div = div_abs abs_a abs_b 30 0 in
  if (a lsr 31) = (b lsr 31) then 
    abs_div
  else
    -abs_div
in

let rec print_char a = output a 
in

let rec print_int a =
  if a < 0 then
    (output 45;
    print_int (-a))
  else
    if a < 10 then
      output (a + 48)
    else
      let b = div a 10 in
      (print_int b;
      output (a - (mul b 10) + 48))
in

(*let rec print_int a = outi a 
in*)

let rec read_int a = ini a
in

let rec read_float a = inf a
in

(*let rec read_int_sub acc cnt =
  let byte = input () in
  if 48 <= byte then
    if byte <= 57 then
      read_int_sub ((mul acc 10) + (byte - 48)) (cnt+1)
    else
      if byte = 45 then
        let (ac, cn) = read_int_sub acc cnt in
        (-ac, cn)
      else (acc, cnt)
  else
    (acc, cnt)
in

let rec read_int a =
  let (acc, cnt) = read_int_sub 0 0 in
  acc
in*)

(*let rec pow a b =
  if b <= 0 then
    a 
  else
    pow (a *. (itof b)) (b-1)
in

let rec read_float_sub acc =
  let byte = input () in
  if 48 <= byte then
    if byte <= 57 then
      read_float_sub (acc *. 10.0 +. (itof (byte - 48)))
    else
      if byte = 45 then
        -.(read_float_sub acc)
      else 
        if byte = 46 then
        let (acc2, cnt) = read_int_sub 0 0 in
        acc +. ((itof acc2) /. (pow 10.0 cnt))
        else
          acc
  else acc
in

let rec read_float a =
  read_float_sub 0.0
in*)

let rec assign_array hp a n =
  if n < 0 then
    ()
  else 
    if n = 0 then
      hp.(n) <- a 
    else
      (hp.(n) <- a;
      assign_array hp a (n-1))
in

let rec create_array n a =
  let hp = gethp () in
  let hp_array = itoia(hp) in
  sethp (hp + (n lsl 2));
  assign_array hp_array a (n-1);
  hp_array
in

let rec assign_farray hp a n =
  if n < 0 then
    ()
  else 
    if n = 0 then
      hp.(n) <- a 
    else
      (hp.(n) <- a;
      assign_farray hp a (n-1))
in

let rec create_float_array n a =
  let hp = gethp () in
  let hp_array = itofa(hp) in
  sethp (hp + (n lsl 2));
  assign_farray hp_array a (n-1);
  hp_array
in


let rec mul l m n a b c =
  let rec loop1 i =
    if i < 0 then () else
    let rec loop2 j =
      if j < 0 then () else
      let rec loop3 k =
        if k < 0 then () else
        (c.(i).(j) <- c.(i).(j) +. a.(i).(k) *. b.(k).(j);
         loop3 (k - 1)) in
      loop3 (m - 1);
      loop2 (j - 1) in
    loop2 (n - 1);
    loop1 (i - 1) in
  loop1 (l - 1) in
let dummy = Array.make 0 0. in
let rec make m n =
  let mat = Array.make m dummy in
  let rec init i =
    if i < 0 then () else
    (mat.(i) <- Array.make n 0.;
     init (i - 1)) in
  init (m - 1);
  mat in
let a = make 2 3 in
let b = make 3 2 in
let c = make 2 2 in
a.(0).(0) <- 1.; a.(0).(1) <- 2.; a.(0).(2) <- 3.;
a.(1).(0) <- 4.; a.(1).(1) <- 5.; a.(1).(2) <- 6.;
b.(0).(0) <- 7.; b.(0).(1) <- 8.;
b.(1).(0) <- 9.; b.(1).(1) <- 10.;
b.(2).(0) <- 11.; b.(2).(1) <- 12.;
mul 2 3 2 a b c;
print_int (truncate (c.(0).(0)));
print_newline ();
print_int (truncate (c.(0).(1)));
print_newline ();
print_int (truncate (c.(1).(0)));
print_newline ();
print_int (truncate (c.(1).(1)));
print_newline ()
