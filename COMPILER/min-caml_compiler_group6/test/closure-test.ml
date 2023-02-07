let z = 4 in 
let rec f x = x - z in 
let a = f 8 in
print_var a;
let rec g x = x - 2 in
let a = g 6 in
print_var2 a;
let rec f x = x - 1 in
let a = f in
print_var3 a;
let rec g h = 
  let rec i x = h x in
   i in 
   let a = g in
   print_var4 a;
let rec i x = x in 
let z = 4 in 
let rec f x = i (z - 5) in 
if z < 6 then 
  let a = (i, f 7) in print_var5 a
 else let a = (f, 8) in print_var5 a