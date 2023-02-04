#include "fpu_common.hpp"
#include "simu_fadd.hpp"
#include "simu_fmul.hpp"
Bit32 fsqrt(Bit32 x){
    // Bit32 x;
    // x = f_to_bit(x_); 
    Bit32 ena, wea, dina;
    ena = 1; wea = 0; dina = 0;
    // Bit32 m = sub_uint(x,22,0);
    // 配列アクセスした結果をdoutaに入れる
    Bit32 bram_addr = (sub_uint(x,23,23) == 0) ? ((1<<9)| sub_uint(x,22,14)) : (sub_uint(x,22,14));
    // data_a; gradient, data_b; 傾き；goodnote
    // Bit32 douta = array0[sub_uint(m, 22,13) << 1 |0]; //array[bram_addr];
    // vector<vector<int> > array0(1024, vector<int>(40));
    string filename = "fsqrt_data.coe";
    in_data(filename);
    Bit64 data_from_a = array0[bram_addr]; //arrayから撮ってきたもの？
    cout << "bram_addr" << bram_addr; //ok
    cout << "data_from_a" << data_from_a << endl; //ここまでok
    Bit32 addr_a;
    addr_a = bram_addr;

    Bit32 gradient, virtual_x, y_intersect;
    gradient = ((0b001111101<<23) | (sub_uint(data_from_a,35,23) <<10));
    virtual_x   = (sub_uint(x,23,23) == 0) ? ((0b010000000<<23)| sub_uint(x,22,0)) : ((0b001111111<<23)| sub_uint(x,22,0));
    y_intersect = ((0b001111110<<23) | sub_uint(data_from_a,22,0));
    Bit32 fmul_ans, fadd_ans;
    fmul_ans = fmul(gradient, virtual_x);
    fadd_ans = fadd(y_intersect, fmul_ans);
    Bit32 return_s, return_e, return_m;
    return_s = sub_uint(x,31,31);
    return_e = (sub_uint(x,23,23) == 0) ? (((sub_uint(x,30,23))>>1) + sub_uint(fadd_ans,30,23) - 64) :  ((sub_uint(x,30,23)+1)>>1) + sub_uint(fadd_ans,30,23) - 64;  //x[30:23] / 2 + 63 + (fadd_ans[30:23] - 127)のつもり
    return_m = sub_uint(fadd_ans,22,0);
    Bit32 y;
    y = (sub_uint(x,31,31) == 1) ? (0b01111111111111111111111111111111) :
    (return_s << 31) | (return_e << 23) | return_m;
    return y;
}
int main(){
    float x_1, x_2;
    x_1 = 1.64; 
    x_2 = 2.23; 
    Bit32 x1, x2;
    // x1 = f_to_bit(x_1); x2 = f_to_bit(x_2);
    x1 = 0x44fa21b3;
    x2 = 0x44fa40f8;
    Bit32 y = fadd(x1, x2);
    puts("fadd");
    print_sub_bit(y);
    y = fmul(x1, x2);
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
    // float x_1, x_2;
    // x_1 = 1.64; //0	100	0011	1	001	0101	0000	0000	0000	0000
    // x_2 = 0.82;
    // Bit32 x1, x2;
    // x1 = f_to_bit(x_1); x2 = f_to_bit(x_2);
    puts("fsqrt");
    y = fsqrt(x1);
    print_sub_bit(y);
    
    puts("fsqrt_ans");
    ans = f_to_bit(sqrt(x_1));
    print_sub_bit(ans);
    return 0;
}
