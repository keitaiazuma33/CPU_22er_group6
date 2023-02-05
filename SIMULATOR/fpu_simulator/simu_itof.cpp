// #pragma once
// #include "fpu_common.hpp"
// #include "simu_ftoi.hpp"
// #include "simu_fadd.hpp"
#include <bits/stdc++.h>
using namespace std;
#define Bit32 unsigned int
#define Bit64 unsigned long long
Bit64 sub_uint (Bit64 i, int a, int b){ //i[a:b]
    // e1  = x1  >> 22 & (1 << 8 - 1); x1[30:23];
    // cout << b << " " << (a-b+1) << endl;
    // cout << (i >> b) << " " << (1ULL << (a-b+1)) - 1 << endl;
    Bit64 x = (i >> b) & ((1ULL << (a-b+1)) - 1);
    return x;
}
Bit64 at_uint (Bit64 i, int a){ //i[a:b]; i[a]
    // e1  = x1  >> 22 & (1 << 8 - 1); x1[30:23];
    int b = a;
    // cout << b << " " << (a-b+1) << endl;
    Bit64 x = i >> b & ((1ULL << (a-b+1)) - 1);
    return x;
}
unsigned int f_to_bit (float x){
    unsigned int x_;
    union { float f; int i; } a;
    int i;
    a.f = x;
    x_ = a.i;
    return x_;
    
}
void print_bit(Bit32 x, int n){
    for(int i = n-1; i >= 0; i-- ){
        printf("%d", (x >> i) & 1);
    }
    puts("\n");
}
void print_sub_bit(Bit32 y){
    print_bit(( y >> 31 ) & 1, 1);
    print_bit(( y >> 23 ) & ((1 << 8)-1), 8);
    print_bit(y & ((1 << 23)-1), 23);
}
Bit32 itof(Bit32 x){
    // 1
    Bit32 s, x_abs;
    s = at_uint(x,31);
    x_abs = (s == 0)? sub_uint(x,31,0): -sub_uint(x,31,0);
    // print_sub_bit(x_abs);
    // 2
    Bit32 shamt;
    shamt = 0;
    for(int i = 31; i >= 0; i--){
        if(at_uint(x_abs, i) == 1){
            shamt = 32-i;
            break;
        }   
    }
    // cout << "shamt" << shamt << endl;
    // Stage 2
    Bit64 shifted;
    Bit32 ans_m, e_plus, ans_e, y;
    shifted = ((Bit64)x_abs) << shamt;
    // print_sub_bit(shifted);
    // print_bit(sub_uint(shifted,31,9), 32); //okそう
    ans_m = (sub_uint(shifted,8,8) == 0) ? sub_uint(shifted,31,9) : sub_uint(shifted,31,9)+1;
    // e_plus = (sub_uint(shifted,31,8)) ? 1 : 0;
    e_plus = 1;
    for(int i = 31; i >= 8 ; i++){
        if(at_uint(shifted, i) == 0){
            e_plus = 0; break;
        }
    }
    // cout << e_plus << endl;
    
    ans_e = 127 + 32 - shamt + e_plus;
    y = (shamt == 0)? 0 : (s << 31 | ans_e << 23 | ans_m);
    return y;

}
int main(){
    // float x_1 = 1.829;
    // Bit32 x = f_to_bit(x_1);
    Bit32 x = 0x44fa21b3;
    // Bit32 y = ftoi(x);
    puts("ftoi");
    // print_sub_bit(y);
    puts("itof");
    Bit32 z = itof(x);
    print_sub_bit(z);
    print_sub_bit(x);    
}
