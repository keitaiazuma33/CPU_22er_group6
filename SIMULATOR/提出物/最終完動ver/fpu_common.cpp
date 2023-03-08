#include <bits/stdc++.h>
using namespace std;
#define Bit32 unsigned int
#define Bit64 unsigned long long
#define ull unsigned long long
vector<Bit64> array0(1025);
vector<Bit64> array1(1025);
Bit64 sub_uint (Bit64 i, int a, int b){ //i[a:b]
    // e1  = x1  >> 22 & (1 << 8 - 1); x1[30:23];
    // cout << b << " " << (a-b+1) << endl;
    Bit64 x = (i >> b) & ((1ULL << (a-b+1)) - 1);
    return x;
}
// Bit64 sub_uint (ull d, int m, int l) {
//     ull ret = d;
//     ret <<= (63 - (ull)m);
//     ret >>= (63 + (ull)l - (ull)m);
// 	return ret;
// }

Bit64 at_uint (Bit64 i, int a){ //i[a:b]; i[a]
    // e1  = x1  >> 22 & (1 << 8 - 1); x1[30:23];
    // int b = a;
    // cout << b << " " << (a-b+1) << endl;
    // Bit64 x = i >> b & ((1ULL << (a-b+1)) - 1);
    Bit64 x = (i >> a) & 1;
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
float bit_to_float (unsigned int x){
    float x_;
    union { float f; int i; } a;
    int i;
    a.i = x;
    x_ = a.f;
    return x_;
    
}
int64_t bit_to_int64 (unsigned int x){
    Bit32 m, e,s;
    m = x & ((1 << 23) - 1);
    e  = x  >> 23 & ((1 << 8) - 1);
    s  = (x  >> 31) & 1; //30?
    int64_t y;
    y = pow(-1,s) * pow(2, e-127) * (1 + m *  pow(2, -23));
    return y;
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

void in_data_sqrt(){ //string filename){
    // string filename ("finv_data.coe"); //asm_3
    vector<string> lines;
    string line;
    string filename = "fsqrt_data.coe"; 
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
            array1[idx] = bit_to_ulong(line);
            // cout << idx << " " << array0[idx] << endl;
            idx++;
            // stoiした後にbitを整数にして保管
            // bit_to_unint関数
        }else continue;
    }
   
}