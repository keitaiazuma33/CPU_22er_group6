#include <bits/stdc++.h>
using namespace std;
#define Bit32 unsigned int
unsigned long sub_uint (unsigned long i, int a, int b){ //i[a:b]
    // e1  = x1  >> 22 & (1 << 8 - 1); x1[30:23];
    // cout << b << " " << (a-b+1) << endl;
    unsigned long x = i >> b & ((1 << (a-b+1)) - 1);
    return x;
}
unsigned long at_uint (unsigned long i, int a){ //i[a:b]; i[a]
    // e1  = x1  >> 22 & (1 << 8 - 1); x1[30:23];
    int b = a;
    // cout << b << " " << (a-b+1) << endl;
    unsigned long x = i >> b & ((1 << (a-b+1)) - 1);
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