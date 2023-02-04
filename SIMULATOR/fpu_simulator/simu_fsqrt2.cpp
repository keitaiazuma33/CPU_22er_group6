// #include "fpu_common.hpp"
// #include "simu_fadd.hpp"
// #include "simu_fmul.hpp"
#include <bits/stdc++.h>
using namespace std;
#define Bit32 unsigned int
#define Bit64 unsigned long long
vector<Bit64> array0(1025);
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
Bit64 bit_to_ulong(string s){
    // cout << s << endl;
    if(s.find(',')){
        s.erase(s.find(','));
    }else if(s.find(';')){
        s.erase(s.find(';'));
    }
    // cout << s << endl;
    char *end;
    // cout << std::stoi("1000", nullptr, 2) << endl; //8
    // cout << ""
    Bit64 i = std::stoull(s, nullptr, 2);
    // cout << i << endl;
    // cout << i << endl;
    return i;
}
void in_data(string filename){
    // string filename ("finv_data.coe"); //asm_3
    vector<string> lines;
    string line;

    ifstream file(filename);
    if (!file.is_open()) {
        cerr << "Could not open the file - '"
             << filename << "'" << endl;
        // return 1;
    }
    // Bit64 bram_addr;
    
    // 011111111100011111111110000000000111
    
    int idx = 0;
    while(getline(file,line)){
        if('0' <= line.at(0) && line.at(0)<= '9'){
            array0[idx] = bit_to_ulong(line);
            // cout << idx << " " << array0[idx] << endl;
            idx++;
            // stoiした後にbitを整数にして保管
            // bit_to_unint関数
        }else continue;
    }
   
}
float uint_to_float(Bit32 x){
    Bit32 m; //0, m1; //23 bitの仮数
    Bit32 e; //0, e1; // 8 bitの指数
    Bit32 s;// s: 1bitの符号
    m = x & ((1 << 23) - 1);
    e  = x  >> 23 & ((1 << 8) - 1);
    s  = (x  >> 31) & 1; 
    cout << m << " " << e << " " << s << endl;
    float y;
    y = pow(-1,s) * pow(2,e-127) * (1 + m * pow(2, -23));
    return y;
}
Bit32 fsqrt(Bit32 x){
    // Bit32 x;
    // x = f_to_bit(x_); 
    Bit32 ena, wea, dina;
    ena = 1; wea = 0; dina = 0;
    // 配列アクセスした結果をdoutaに入れる
    Bit32 addra = (sub_uint(x,23,23) == 0) ? ((1<<9)| sub_uint(x,22,14)) : (sub_uint(x,22,14));
    cout << "bram_addr" << addra; //ok
    // data_a; gradient, data_b; 傾き；goodnote
    // Bit32 douta = array0[sub_uint(m, 22,13) << 1 |0]; //array[bram_addr];
    // vector<vector<int> > array0(1024, vector<int>(40));
    string filename = "fsqrt_data.coe";
    in_data(filename);
    Bit64 data_from_a = array0[addra]; //arrayから撮ってきたもの？ 
    cout << "data_from_a" << data_from_a << endl; //ここまでok
    // Bit32 addr_a;
    // addr_a = bram_addr;

    Bit32 gradient, delta_x, y_intersect;
    gradient = ((0b1<<23) | (sub_uint(data_from_a,35,23) <<10));
    delta_x   = (sub_uint(x,23,23) == 0) ? ((0b1<<24)| sub_uint(x,22,0)<<1) : ((0b01<<23)| sub_uint(x,22,0));
    y_intersect = ((0b1<<23) | sub_uint(data_from_a,22,0));
    
    float f_g, f_d;
    f_g = pow(2,-25) * (1 + gradient * pow(2, -23));
    // Bit64 delta_y = gradient * delta_x; //ここが違う
    cout << gradient * delta_x << endl;
    cout << (gradient * delta_x) % (1ll << 49) << endl;
    Bit64 delta_y = (gradient * delta_x) % (1ll << 49);
    Bit32 fsqrt_ans, fsqrt_float;
    fsqrt_ans = y_intersect + sub_uint(delta_y, 48,24); //ここが違う
    fsqrt_float = (sub_uint(fsqrt_ans,25,25) == 0b1) ? (0b01111111<<23 | (1<<23)-1) :
    (at_uint(fsqrt_ans,24) == 0b1) ? (0b01111111<<23 | sub_uint(fsqrt_ans,23,1)) :
    (0b01111111<<23) ;
    
    Bit32 return_e, return_m;
    // return_s = sub_uint(x,31,31);
    return_e = (sub_uint(x,23,23) == 0) ? (sub_uint(x,30,23)>>1) - 64 + 127/*fsqrt_float[30:23]*/ :  ((sub_uint(x,30,23)+1)>>1) - 64 + 127/*fsqrt_float[30:23]*/;  //x[30:23] / 2 + 63 + (fadd_ans[30:23] - 127)のつもり
    return_m = sub_uint(fsqrt_float,22,0);
    Bit32 y;
    y = (sub_uint(x,31,31) == 1) ? (0b01111111111111111111111111111111) :
    ((return_e << 23) | return_m);

    return y;
}
int main(){
    float x_1, x_2;
    x_1 = 1.64; 
    x_2 = 2.23; 
    Bit32 x1, x2;
    // x1 = f_to_bit(x_1); x2 = f_to_bit(x_2);
    x1 = 0x44fa21b3;
    // x2 = 0x44fa40f8;
    // Bit32 y = fadd(x1, x2);
    // puts("fadd");
    // // print_sub_bit(y);
    // // y = fmul(x1, x2);
    // puts("fmul");
    // print_sub_bit(y);
    
    // Bit32 ans = f_to_bit(x_1 * x_2);
    // puts("fmul_ans");
    // print_sub_bit(ans);
    // puts("finv");
    // // y = finv(x1);
    // print_sub_bit(y);
    
    // puts("finv_ans");
    // ans = f_to_bit(1/x_1);
    // print_sub_bit(ans);
    // puts("fdiv");
    // // y = fdiv(x1, x2);
    // print_sub_bit(y);
    // puts("fdiv_ans");
    // ans = f_to_bit(x_1 / x_2);
    // print_sub_bit(ans);
    // // float x_1, x_2;
    // // x_1 = 1.64; //0	100	0011	1	001	0101	0000	0000	0000	0000
    // // x_2 = 0.82;
    // // Bit32 x1, x2;
    // // x1 = f_to_bit(x_1); x2 = f_to_bit(x_2);
    puts("fsqrt");
    Bit32 y = fsqrt(x1);
    print_sub_bit(y);
    
    // puts("fsqrt_ans");
    // ans = f_to_bit(sqrt(x_1));
    // print_sub_bit(ans);
    return 0;
}
