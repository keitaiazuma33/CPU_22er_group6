// #include "fpu_common.hpp"
#include <bits/stdc++.h>
using namespace std;
#define Bit32 unsigned int
// bitset mask(int N){
//     // 0ビット目からN-1ビット目までがすべて1である値を生成します。 (N-1ビットまでのマスク生成
//     return (1 << N) - 1;
// }
// float x_1, x_2;
/* 文字列変換の際に指定対象となる型 */
// enum class Stype{
//     t_default, t_dec, t_bin, t_hex, t_float, t_op
// };

/* 内部表現を考慮したfloat */
struct Float{
    unsigned int m : 23;
    unsigned int e : 8;
    unsigned int s : 1;
};

// union Bit32{
//     int i;
//     unsigned int ui;
//     float f;
//     Float F;
//     constexpr Bit32();
//     constexpr Bit32(int i);
//     constexpr Bit32(unsigned int ui);
//     constexpr Bit32(float f);
//     std::string to_string();
//     std::string to_string(Stype t);
// };
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
Bit32 fadd(float x_1, float x_2){
    // floatからunsigned int；逆もの関数
    Bit32 x1;
    Bit32 x2;
    x1 = f_to_bit(x_1); 
    x2 = f_to_bit(x_2);
    for(int i = 31; i >= 0; i-- ){
        printf("%d", (x1 >> i) & 1);
    }
    puts("\n");
    for(int i = 31; i >= 0; i-- ){
        printf("%d", (x2 >> i) & 1);
    }
    puts("\n");
    // 1.
    Bit32 m1, m2; //23 bitの仮数
    Bit32 e1, e2; // 8 bitの指数
    Bit32 s1, s2;// s: 1bitの符号
    Bit32 m1a, m2a;
    Bit32 e1a, e2a;
    m1 = x1 & ((1 << 23) - 1);
    m2  = x2  & ((1 << 23) - 1);
    e1  = x1  >> 23 & ((1 << 8) - 1);
    e2  = x2  >> 23 & ((1 << 8) - 1);
    s1  = (x1  >> 31) & 1; //30?
    s2  = (x2  >> 31) & 1;
    // 2.
    m1a  = (e1  == 0) ? m1  : ((1 << 23) | m1 ); //23bit
    m2a  = (e2  == 0) ? m2  : ((1 << 23) | m2 );
    // 3.
    e1a  = (e1  == 0) ? 0b00000001 : e1 ; //8bit
    e2a  = (e2  == 0) ? 0b00000001 : e1 ;
    // 4,5
    Bit32 e2ai, te;
    e2ai  = ~e2a ; //pow(2,8) - 1 - e2a ; //8bit
    te  = e1a  + e2ai ; //8bit?
    // 6
    Bit32 ce, tde_long, tde;
    ce = ((te  & 1 << 8) == 1) ? 0 : 1;
    // 何bit?
    tde_long  = ((te  & 1 << 8) == 1) ? te  + 1: ~te ; //(pow(2,8) - 1 - te );
    tde  = tde_long  & ((1 << 8) - 1);
    // 7, 8
    Bit32 de, sel;
    de  = (tde  > 31) ? 31 : tde ;
    // m1aの方が大きければsel==0
    sel  = (de  == 0) ? ((m1a  > m2a ) ? 0 : 1) : ce ;
    // 9
    Bit32 ms, mi, es, ei, ss;
    ms  = (sel  == 0) ? m1a  : m2a ; //superior
    mi  = (sel  == 0) ? m2a  : m1a ; //inferior
    es  = (sel  == 0) ? e1a  : e2a ;
    ei  = (sel  == 0)? e2a  : e1a ;
    ss  = (sel  == 0)? s1  : s2 ;

    // 10,11
    unsigned long mie, mia;
    mie = mi  << 31;
    //mieをdeだけ右に論理シフト
    mia = mie >> de ;
    // 12
    // mia[28:0]のうち１つでも１なら
    // unsigned long
    Bit32 tstck;
    // tstck = sub_uint(mia, 28, 0) | ((1 << 29) - 1);
    tstck = 0;
    for(int i = 0; i <= 28; i++){
        if(at_uint(mia, i)) tstck = 1;
    }
    // 13
    Bit32 mye;
    if(s1  == s2 ) mye = (ms  << 2) + sub_uint(mia, 55, 29);
    else mye = (ms  << 2) - sub_uint(mia, 55,29);
    //mia >> 28 && (1 << 26 - 1)
    // 14
    Bit32 esi;
    esi  = es  + 1;
    // 15
    Bit32 eyd, myd, stck, ovf_flag1;
    eyd = (at_uint(mye, 26) == 1) ? (esi  == 255 ? 255 : esi) : es;
    myd = (at_uint(mye, 26) == 1) ? (esi  == 255 ? 1 << 25: mye  >> 1) : mye;
    stck  = (at_uint(mye,26) == 1) ? (esi  == 255 ? 0 :tstck | at_uint(mye,0) ) : tstck ;
    ovf_flag1 = (at_uint(mye, 26) == 1) ? (esi == 255 ? 1 : 0) : 0;
    // 16
    Bit32 se;
    int i = 25;
    while(i >= 0){
        if(i == 0){
            se = 26; break;
        }else if(at_uint(myd, i) == 1){
            se = 25- i; cout << "se " << se << endl;
            break;
        }
        i--;
    }
    // 17
    Bit32 eyf;
    eyf = eyd - se;
    // 18
    Bit32 eyr, myf;
    myf = (eyf > 0 ) ? myd << se : myd << (sub_uint(eyd,4,0) - 1);
    eyr = (eyf > 0) ? sub_uint(eyf,7,0) :0 ;
    // 19, 20
    Bit32 myr, eyri;
    myr = ((at_uint(myf,1) == 1 && at_uint(myf,0)== 0 && stck == 0 && at_uint(myf,2) == 1 ) || ( at_uint(myf,1) == 1 && at_uint(myf,0) == 0 && (s1 == s2) && stck == 1 ) || ( at_uint(myf,1) == 1 && at_uint(myf,0) == 1 ) ) ? sub_uint(myf,26,2) << 25 : sub_uint(myf,26,2);
    // ここまでok
    eyri = eyr + (1 << 8) - 1;//>> 8;
    // 21
    Bit32 ey, my, ovf_flag2;
    ey = (at_uint(myr,24) == 1) ? eyri  : (sub_uint(myr,23,0) == 0 ? 0 : eyr);
    my = (at_uint(myr,24) == 1) ? 0 : (sub_uint(myr, 23, 0) == 0 ? 0 : sub_uint(myr,22,0));
    //Procedure 22
    Bit32 sy;
    sy = (ey == 0 && my == 0) ? (s1 & s2) : ss;
    //Procedure 23
    // i = 22;
    Bit32 nzm1, nzm2, y, ovf;
    nzm1 = 0; nzm2 = 0;
    for(int i = 0; i <= 22; i++){
        if(at_uint(m1, i)) nzm1 = 1;
        if(at_uint(m2, i)) nzm2 = 1;
    }
    // nzm2 = sub_uint(m2,22,0) |((1 << 23)-1);
    y = ( e1 == 255 && e2 != 255) ? (s1 << 31) | (255 << 23) | (nzm1 << 22) | (m1 & ((1 << 22) - 1)) :
        ( e2 == 255 && e1 != 255) ? ((s2<<31)| (255 << 23) | (nzm2 << 22) | sub_uint(m2,21,0)) :
        ( e1 == 255 && e2 == 255 && nzm1) ? (s1 << 31) | (255 << 23) | (1 << 22) | (m1 & ((1 << 22) - 1)) :
        ( e1 == 255 && e2 == 255 && nzm2) ? (s2 << 31) | (255 << 23) | (1 << 22) | (m2 & ((1 << 22) - 1)) :
        ( e1 == 255 && e2 == 255 && (s1 == s2)) ? (s1 << 31) | (255 << 23):
        ( e1 == 255 && e2 == 255) ? (1 << 31) | (255 << 23) | 1 << 22:
        (sy<<31) | (ey<<23) |my;
    ovf = ((e1a != 255 && e2a != 255) && (ovf_flag1 == 1 || ovf_flag2 == 1) ? 1 : 0);
    // cout << "ans " << y << "ovf " << ovf << endl;
    for( i = 31; i >= 0; i-- ){
        printf("%d", (y >> i) & 1);
    }
    puts("\n");
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

int main(){
    float x_1, x_2;
    x_1 = 0.298; //0	100	0011	1	001	0101	0000	0000	0000	0000
    x_2 = 0.476;
    Bit32 y = fadd(x_1, x_2);
    print_sub_bit(y);
    // printf( "符号部 : %X\n", ( y >> 31 ) & 1 );
    // printf( "指数部 : %X\n", ( y >> 23 ) & ((1 << 8)-1) );//0xFF
    // printf( "仮数部 : %X\n", y & ((1 << 23)-1)); //0x7FFFFF );
    Bit32 ans = f_to_bit(x_1 + x_2);
    print_sub_bit(ans);
    // printf( "符号部 : %X\n", ( ans >> 31 ) & 1 );
    // printf( "指数部 : %X\n", ( ans >> 23 ) & ((1 << 8)-1) ); //0xFF );
    // printf( "仮数部 : %X\n", ans & ((1 << 23)-1)); //0x7FFFFF );
    return 0;
}

// https://tools.m-bsys.com/calculators/ieee754.php