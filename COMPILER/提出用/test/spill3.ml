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


(* http://blog.livedoor.jp/azounoman/archives/50392600.html *)
let rec f x0 =
  let x1 = x0 + 1 in
  let x2 = x1 + 1 in
  let x3 = x2 + 1 in
  let x4 = x3 + 1 in
  let x5 = x4 + 1 in
  let x6 = x5 + 1 in
  let x7 = x6 + 1 in
  let x8 = x7 + 1 in
  let x9 = x8 + 1 in
  let x10 = x9 + 1 in
  let x11 = x10 + 1 in
  let x12 = x11 + 1 in
  let x13 = x12 + 1 in
  let x14 = x13 + 1 in
  let x15 = x14 + 1 in
  let x16 = x15 + 1 in
  let x17 = x16 + 1 in
  let x18 = x17 + 1 in
  let x19 = x18 + x1 in
  let x20 = x19 + x2 in
  let x21 = x20 + x3 in
  let x22 = x21 + x4 in
  let x23 = x22 + x5 in
  let x24 = x23 + x6 in
  let x25 = x24 + x7 in
  let x26 = x25 + x8 in
  let x27 = x26 + x9 in
  let x28 = x27 + x10 in
  let x29 = x28 + x11 in
  let x30 = x29 + x12 in
  let x31 = x30 + x13 in
  let x32 = x31 + x14 in
  let x33 = x32 + x15 in
  let x34 = x33 + x16 in
  let x35 = x34 + x17 in
  let x36 = x35 + x0 in
  x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + 
    x10 + x11 + x12 + x13 + x14 + x15 + x16 + x17 + x18 + x19 +
    x20 + x21 + x22 + x23 + x24 + x25 + x26 + x27 + x28 + x29 +
    x30 + x31 + x32 + x33 + x34 + x35 + x36 + x0 in
print_int (f 0)
