// #pragma once
#include "fpu_common.hpp"
// #include "simu_fadd.hpp"
// #include <bits/stdc++.h>
// using namespace std;
// #define Bit32 unsigned int
// #define Bit64 unsigned long long
// Bit64 sub_uint (Bit64 i, int a, int b){ //i[a:b]
//     // e1  = x1  >> 22 & (1 << 8 - 1); x1[30:23];
//     // cout << b << " " << (a-b+1) << endl;
//     Bit64 x = (i >> b) & ((1ULL << (a-b+1)) - 1);
//     return x;
// }
// Bit64 at_uint (Bit64 i, int a){ //i[a:b]; i[a]
//     // e1  = x1  >> 22 & (1 << 8 - 1); x1[30:23];
//     int b = a;
//     // cout << b << " " << (a-b+1) << endl;
//     Bit64 x = i >> b & ((1 << (a-b+1)) - 1);
//     return x;
// }
// unsigned int f_to_bit (float x){
//     unsigned int x_;
//     union { float f; int i; } a;
//     int i;
//     a.f = x;
//     x_ = a.i;
//     return x_;
    
// }
// void print_bit(Bit32 x, int n){
//     for(int i = n-1; i >= 0; i-- ){
//         printf("%d", (x >> i) & 1);
//     }
//     puts("\n");
// }
// void print_sub_bit(Bit32 y){
//     print_bit(( y >> 31 ) & 1, 1);
//     print_bit(( y >> 23 ) & ((1 << 8)-1), 8);
//     print_bit(y & ((1 << 23)-1), 23);
// }
Bit32 ftoi(Bit32 x){
    Bit32 s,e;
    Bit64 m;
    s = at_uint(x, 31);
    e = sub_uint(x, 30,23);
    m = (1ULL << 32) | (sub_uint(x,22,0) << 9);
    cout << "M" << m << endl;
    print_sub_bit(m);
    //2.
    Bit32 shamt, adjusted, y, valid;  
    Bit64 shifted;
    shamt = 127 + 31 - e;
    shifted = m >> signed(shamt); //$signed?
    puts("shifted");
    print_sub_bit(shifted);
    cout << sub_uint(shifted,32,1) << endl;
    cout << ((shifted >> 1) & ((1ULL << 32)-1)) << endl;
    adjusted = (sub_uint(shifted,0,0) == 0)? sub_uint(shifted,32,1) :(sub_uint(shifted,32,1))+1;//32'b1;);
    y = (s == 0)? adjusted : -adjusted;
    // Bit32 valid;
    return y;

}
// int main(){
//     float x_1 = 1.829;
//     Bit32 x1 = f_to_bit(x_1);
//     x1 = 0x44fa21b3;
//     Bit32 y = ftoi(x1);
//     puts("ftoi");
//     print_sub_bit(y);
// }
