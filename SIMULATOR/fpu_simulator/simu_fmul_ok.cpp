// #pragma once
// #include "fpu_common.hpp"
// #include "simu_fadd.hpp"
#include <bits/stdc++.h>
using namespace std;
#define Bit32 unsigned int
#define Bit64 unsigned long long
Bit64 sub_uint (Bit64 i, int a, int b){ //i[a:b]
    // e1  = x1  >> 22 & (1 << 8 - 1); x1[30:23];
    // cout << b << " " << (a-b+1) << endl;
    Bit64 x = (i >> b) & ((1 << (a-b+1)) - 1);
    return x;
}
Bit64 at_uint (Bit64 i, int a){ //i[a:b]; i[a]
    // e1  = x1  >> 22 & (1 << 8 - 1); x1[30:23];
    int b = a;
    // cout << b << " " << (a-b+1) << endl;
    Bit64 x = i >> b & ((1 << (a-b+1)) - 1);
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
Bit32 fmul(float x_1, float x_2){
    Bit32 x1, x2;
    x1 = f_to_bit(x_1); x2 = f_to_bit(x_2);
    // x1 = 0x44fa21b3;
    // x2 = 0x44fa40f8;
    Bit32 mh1_bef, mh2_bef;
    Bit32 ml1,e1,s1;
    mh1_bef = sub_uint(x1, 22, 11);
    ml1 = sub_uint(x1,10,0);
    e1 = sub_uint(x1,30,23);
    s1 = at_uint(x1,31);
    Bit32 ml2,e2,s2;
    mh2_bef = sub_uint(x2,22,11);
    ml2 = sub_uint(x2,10,0);
    e2 = sub_uint(x2,30,23);
    s2 = at_uint(x2,31);
    Bit32 mh1_ext, mh2_ext;
    mh1_ext = ( (e1 == 0) ? mh1_bef  : (0b1 << 12 | mh1_bef));
    mh2_ext = ( (e2 == 0) ? mh2_bef  : (0b1 << 12 | mh2_bef));
    // 1
    Bit32 hh,hl,lh;
    hh = mh1_ext * mh2_ext;
    hl = mh1_ext * ml2;
    lh = ml1 * mh2_ext;
    // 指数部
    Bit32 ans_e_pre;
    ans_e_pre = e1 + e2 + 129;
    // 符号部
    Bit32 ans_s;
    ans_s = s1 ^ s2;
    // 2
    Bit32 ans_m_long, ans_e_pre_plus_one;
    Bit32 eplus, unf,ovf;
    ans_m_long = hh + (hl >> 11) + (lh >> 11) + 2;
    ans_e_pre_plus_one = ans_e_pre + 1;
    eplus = (at_uint(ans_m_long,25) == 1) ? 1 : 0;
    unf = (sub_uint(ans_e_pre,8,7) == 0b01) ? 0b1 : 0b0;
    ovf = (sub_uint(ans_e_pre,8,7) == 0b00) ? 0b1 : 0b0;
    // 3.
    Bit32 ans_m, ans_e, y;
    ans_m = (at_uint(ans_m_long,25) == 0b1) ? sub_uint(ans_m_long,24,2) : sub_uint(ans_m_long,23,1);
    ans_e = (unf == 0b1) ? 0 : ( (ovf == 1) ? 255 : ((eplus == 1) ? sub_uint(ans_e_pre_plus_one,7,0) : sub_uint(ans_e_pre,7,0)));
    y = (x1 == 0 || x2 == 0) ? 0 : (ans_s<<31 | ans_e<<23 | ans_m);
   
    for(int i = 31; i >= 0; i-- ){
        printf("%d", (y >> i) & 1);
    }
    puts("\n");
    return y;
}
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
