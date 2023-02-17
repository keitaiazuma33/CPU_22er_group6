// #pragma once
#include "fpu_common.hpp"
// #include "simu_fadd.hpp"
#include <bits/stdc++.h>
using namespace std;
#define Bit32 unsigned int
#define Bit64 unsigned long long
// vector<Bit64> array0(1025);
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
//     Bit64 x = i >> b & ((1ULL << (a-b+1)) - 1);
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
// Bit64 bit_to_ulong(string s){
//     // cout << s << endl;
//     if(s.find(',')){
//         s.erase(s.find(','));
//     }else if(s.find(';')){
//         s.erase(s.find(';'));
//     }
//     // cout << s << endl;
//     char *end;
//     // cout << std::stoi("1000", nullptr, 2) << endl; //8
//     // cout << ""
//     Bit64 i = std::stoull(s, nullptr, 2);
//     // cout << i << endl;
//     // cout << i << endl;
//     return i;
// }
// void in_data(string filename){
//     // string filename ("finv_data.coe"); //asm_3
//     vector<string> lines;
//     string line;

//     ifstream file(filename);
//     if (!file.is_open()) {
//         cerr << "Could not open the file - '"
//              << filename << "'" << endl;
//         // return 1;
//     }
//     // Bit64 bram_addr;
    
//     // 011111111100011111111110000000000111
    
//     int idx = 0;
//     while(getline(file,line)){
//         if('0' <= line.at(0) && line.at(0)<= '9'){
//             array0[idx] = bit_to_ulong(line);
//             // cout << idx << " " << array0[idx] << endl;
//             idx++;
//             // stoiした後にbitを整数にして保管
//             // bit_to_unint関数
//         }else continue;
//     }
   
// }

// v
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
   
    // for(int i = 31; i >= 0; i-- ){
    //     printf("%d", (y >> i) & 1);
    // }
    // puts("\n");
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

// 
// Bit32 fdiv(Bit32 x1, Bit32 x2){
//     Bit32 finv_ans, y;
//     finv_ans = finv(x2);
//     y = fmul(x1, finv_ans);
//     return y;
// }
Bit32 fdiv(Bit32 x1, Bit32 x2){
   Bit32 ena, wea, dina;
    ena = 1; wea = 0; dina = 0;
    // Bit32 m = sub_uint(x,22,0);
    // 配列アクセスした結果をdoutaに入れる
    Bit32 bram_addr = sub_uint(x2,22,13);
    // array0にtxtファイルの内容入れる
    string filename = "finv_data.coe"; //inv
    in_data(filename);
    Bit64 data_from_a = array0[bram_addr]; //arrayから撮ってきたもの？
    // cout << "bram_addr" << bram_addr;
    // cout << "data_from_a" << data_from_a << endl; //ここok
    Bit32 addr_a;
    // while(){// if(RST != 1){
    addr_a = bram_addr;
    Bit32 gradient, delta_x, y_intersect; //すべてok
    gradient = (sub_uint(data_from_a, 35,35) == 0) ? ((1<<24) | (sub_uint(data_from_a,34,23) << 12)) : ((1<<23) | (sub_uint(data_from_a,34,23)<<11) );
    delta_x = ((1<<23) | sub_uint(x2,22,0));
    y_intersect = ((1<<23) | sub_uint(data_from_a,22,0)); //ok

    Bit64 delta_y_l, delta_y_h; //ok
    delta_y_l = ((Bit64)sub_uint(gradient,17,11)*delta_x) << 11ULL;
    delta_y_h = ((Bit64)sub_uint(gradient,24,18)*delta_x) << 18ULL;

    Bit64 delta_y,finv_ans;
    delta_y = delta_y_h + delta_y_l; //ok
    // finv_ans違う
    // cout << ((Bit64)y_intersect << 25ULL) << " "<< (((sub_uint(delta_y,48,25) | sub_uint(delta_y,24,0))))<< endl;
    // ((sub_uint(delta_y,48,25)　<< 25ULL) | sub_uint(delta_y,24,0)
    finv_ans = ((Bit64)y_intersect << 25ULL) - (((sub_uint(delta_y,48,25)<<25ULL | sub_uint(delta_y,24,0))));
    // cout << finv_ans << endl;
    // print_bit(finv_ans,64);
    Bit32 finv_float_s, finv_float_e, finv_float_m;
    finv_float_s = at_uint(x2,31);
    finv_float_e = (sub_uint(x2,22,0) == 0) ? 253 - sub_uint(x2,30,23) : 253 - sub_uint(x2,30,23);
    finv_float_m = (at_uint(finv_ans,48) == 1)? 1:
    (at_uint(finv_ans,47) == 1) ? sub_uint(finv_ans,46,24):0;
    Bit32 finv_float, y;
    finv_float = ((finv_float_s << 31) | (finv_float_e << 23) | finv_float_m);
    // ここまでok
    y = fmul(x1, finv_float);
    // Bit32 fmul_ans, fadd_ans;
    // fmul_ans = fmul(gradient, delta);
    // fadd_ans = fadd(y_intersect, fmul_ans);
    // Bit32 return_s, return_e, return_m;
    // return_s = sub_uint(x,31,31);
    // return_e = 
    // return_m = sub_uint(fadd_ans,22,0);
    // Bit32 y;
    // y = (return_s << 31) | (return_e << 23) | return_m;
    return y; //ok
}
// int main(){
//     float x_1, x_2;
//     x_1 = 1.64; //44fa21b3
//     x_2 = 2.23; //44fa40f8
//     Bit32 x1, x2;
//     x1 = f_to_bit(x_1); x2 = f_to_bit(x_2);
//     // x1 = stoul("1000101111011110110001000110101", nullptr, 2); //45ef6235
//     // x2 = stoul("1000100001001100100010001010101", nullptr, 2); //44264455
//     // x1 = 0x44fa21b3;
//     // x2 = 0x44fa40f8;
    
//     Bit32 y = fmul(x1, x2);
//     puts("fmul");
//     print_sub_bit(y);
//     cout << bit_to_float(y) << endl;
    
//     Bit32 ans = f_to_bit(x_1 * x_2);
//     cout << x_1*x_2 << endl;
//     puts("fmul_ans");
//     print_sub_bit(ans);
    
//     puts("fdiv");
//     y = fdiv(x1, x2);
//     print_sub_bit(y);
//     cout << bit_to_float(y) << endl;
//     puts("fdiv_ans");
//     ans = f_to_bit(x_1 / x_2);
//     print_sub_bit(ans);
//     cout << x_1/x_2 << endl;
//     return 0;
// }
// Bit32 finv(Bit32 x){ //float x_){
    
//     // x = f_to_bit(x_); 
//     Bit32 ena, wea, dina;
//     ena = 1; wea = 0; dina = 0;
//     // Bit32 m = sub_uint(x,22,0);
//     // 配列アクセスした結果をdoutaに入れる
//     Bit32 bram_addr = sub_uint(x,22,13);
//     // data_a; gradient, data_b; 傾き；goodnote
//     // Bit32 douta = array0[sub_uint(m, 22,13) << 1 |0]; //array[bram_addr];
//     // vector<vector<int> > array0(1024, vector<int>(40));
//     // vector<Bit32> array0(1024);
//     // array0にtxtファイルの内容入れる
//     string filename = "finv_data.coe"; //inv
//     in_data(filename);
//     // for(int i = 0; i < 1024;i++){
//     //     // cout << array0[i] << endl; //ok
//     // }
//     // Bit64?
//     Bit64 data_from_a = array0[bram_addr]; //arrayから撮ってきたもの？
//     cout << "bram_addr" << bram_addr;
//     cout << "data_from_a" << data_from_a << endl; //ここok
//     Bit32 addr_a;
//     // while(){// if(RST != 1){
//     addr_a = bram_addr;
//     Bit32 gradient, delta, y_intersect;
//     gradient = (sub_uint(data_from_a, 35,35) == 0) ? ((0b101111110<<23) | (sub_uint(data_from_a,34,23) << 11))% (1ll << 32) : ((0b101111101<<23) | (sub_uint(data_from_a,34,23)<<11) % (1ll << 32));
//     delta = ((0b001111111<<23) | sub_uint(x,22,0));
//     y_intersect = ((0b001111111<<23) | sub_uint(data_from_a,22,0));
//     Bit32 fmul_ans, fadd_ans;
//     fmul_ans = fmul(gradient, delta);
//     fadd_ans = fadd(y_intersect, fmul_ans);
//     Bit32 return_s, return_e, return_m;
//     return_s = sub_uint(x,31,31);
//     return_e = (sub_uint(x,22,0) == 0) ? 254 - sub_uint(x,30,23) : 253 - sub_uint(x,30,23);
//     return_m = sub_uint(fadd_ans,22,0);
//     Bit32 y;
//     y = (return_s << 31) | (return_e << 23) | return_m;
//     return y;
// }