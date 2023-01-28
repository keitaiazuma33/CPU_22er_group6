// #pragma once
#include "fpu_common.hpp"
#include "simu_fadd.hpp"
#include <bits/stdc++.h>
using namespace std;
#define Bit32 unsigned int
#define Bit64 unsigned long long
// Bit64 sub_uint (Bit64 i, int a, int b){ //i[a:b]
//     // e1  = x1  >> 22 & (1 << 8 - 1); x1[30:23];
//     // cout << b << " " << (a-b+1) << endl;
//     Bit64 x = (i >> b) & ((1 << (a-b+1)) - 1);
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
Bit32 fmul(Bit32 x1, Bit32 x2){ //float x_2){
    // Bit32 x1, x2;
    // x1 = f_to_bit(x_1); x2 = f_to_bit(x_2);
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

Bit32 finv(Bit32 x){ //float x_){
    
    // x = f_to_bit(x_); 
    Bit32 ena, wea, dina;
    ena = 1; wea = 0; dina = 0;
    // Bit32 m = sub_uint(x,22,0);
    // 配列アクセスした結果をdoutaに入れる
    Bit32 bram_addr = sub_uint(x,22,13);
    // data_a; gradient, data_b; 傾き；goodnote
    // Bit32 douta = array0[sub_uint(m, 22,13) << 1 |0]; //array[bram_addr];
    // vector<vector<int> > array0(1024, vector<int>(40));
    // vector<Bit32> array0(1024);
    // array0にtxtファイルの内容入れる
    in_data(); 
    // for(int i = 0; i < 1024;i++){
    //     // cout << array0[i] << endl; //ok
    // }
    // Bit64?
    Bit64 data_from_a = array0[bram_addr]; //arrayから撮ってきたもの？
    // puts("data_from_a");
    // cout << "bram_addr" << bram_addr << endl;
    // print_sub_bit(data_from_a); 
    Bit32 addr_a;
    // while(){// if(RST != 1){
    addr_a = bram_addr;
    Bit32 gradient, delta, y_intersect;
    gradient = (sub_uint(data_from_a, 35,35) == 0) ? ((0b101111110<<23) | (sub_uint(data_from_a,34,23) << 11)) : (0b101111101<<23 | (sub_uint(data_from_a,34,23)<<11));
    delta = ((0b001111111<<23) | sub_uint(x,22,0));
    y_intersect = ((0b001111111<<23) | sub_uint(data_from_a,22,0));
    Bit32 fmul_ans, fadd_ans;
    fmul_ans = fmul(gradient, delta);
    fadd_ans = fadd(y_intersect, fmul_ans);
    Bit32 return_s, return_e, return_m;
    return_s = sub_uint(x,31,31);
    return_e = (sub_uint(x,22,0) == 0) ? 254 - sub_uint(x,30,23) : 253 - sub_uint(x,30,23);
    return_m = sub_uint(fadd_ans,22,0);
    Bit32 y;
    y = (return_s << 31) | (return_e << 23) | return_m;
    return y;
}
Bit32 fdiv(Bit32 x1, Bit32 x2){
    Bit32 finv_ans, y;
    finv_ans = finv(x2);
    y = fmul(x1, finv_ans);
    return y;
}
int main(){
    float x_1, x_2;
    x_1 = 1.64; //0	100	0011	1	001	0101	0000	0000	0000	0000
    x_2 = 0.82;
    Bit32 x1, x2;
    x1 = f_to_bit(x_1); x2 = f_to_bit(x_2);
    Bit32 y = fmul(x1, x2);
    puts("fmul");
    print_sub_bit(y);
    
    Bit32 ans = f_to_bit(x_1 * x_2);
    puts("fmul_ans");
    print_sub_bit(ans);
    puts("finv");
    y = finv(x1);
    print_sub_bit(y);
    
    puts("finv_ans");
    ans = f_to_bit(1/x_1);
    print_sub_bit(ans);
    puts("fdiv");
    y = fdiv(x1, x2);
    print_sub_bit(y);
    puts("fdiv_ans");
    ans = f_to_bit(x_1 / x_2);
    print_sub_bit(ans);
    return 0;
}