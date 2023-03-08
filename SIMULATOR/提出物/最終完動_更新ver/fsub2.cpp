// #pragma once
#include "fpu_common.hpp"

Bit32 fsub(float x_1, float x_2){
    // floatからunsigned int；逆もの関数
    Bit32 x1;
    Bit32 x2;
    x1 = f_to_bit(x_1); 
    x2 = f_to_bit(x_2);
    // for(int i = 31; i >= 0; i-- ){
    //     printf("%d", (x1 >> i) & 1);
    // }
    // puts("\n");
    // for(int i = 31; i >= 0; i-- ){
    //     printf("%d", (x2 >> i) & 1);
    // }
    // puts("\n");
    // 1.
    Bit32 m1, m2; //23 bitの仮数
    Bit32 e1, e2; // 8 bitの指数
    Bit32 s1, s2, s2_;// s: 1bitの符号
    Bit32 m1a, m2a;
    Bit32 e1a, e2a;
    m1 = x1 & ((1 << 23) - 1);
    m2  = x2  & ((1 << 23) - 1);
    e1  = x1  >> 23 & ((1 << 8) - 1);
    e2  = x2  >> 23 & ((1 << 8) - 1);
    s1  = (x1  >> 31) & 1; //30?
    s2_  = (x2  >> 31) & 1;
    // s2 = ~s2_;
    if(s2_ == 1) s2 = 0;
    else s2 = 1;
    // cout << "s2" << s2 << endl; //本来のと反転
    // 2.
    m1a  = (e1  == 0) ? m1  : ((1 << 23) | m1 ); //23bit
    m2a  = (e2  == 0) ? m2  : ((1 << 23) | m2 );
    // 3.
    e1a  = (e1  == 0) ? 0b00000001 : e1 ; //8bit
    e2a  = (e2  == 0) ? 0b00000001 : e2 ;
    // 4,5
    Bit32 e2ai, te;
    e2ai  = pow(2,8) - 1 - e2a ; //8bit
    te  = e1a  + e2ai ; //8bit?
    // 6
    Bit32 ce, tde_long, tde;
    ce = (at_uint(te,8) == 1) ? 0 : 1;
    // 何bit?
    tde_long  = (at_uint(te,8) == 1) ? te  + 1: (pow(2,9) -1 - te ) ; //(pow(2,8) - 1 - te );
    tde  = tde_long  & ((1 << 8) - 1);
    // 7, 8
    Bit32 de, sel;
    de  = (tde  > 31) ? 31 : sub_uint(tde,4,0) ; //?
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
    Bit64 mie, mia;
    mie = ((unsigned long long)mi  << 31);
    //mieをdeだけ右に論理シフト
    mia = mie >> de ;
    // 12
    // mia[28:0]のうち１つでも１なら
    // unsigned long
    Bit32 tstck;
    // tstck = sub_uint(mia, 28, 0) | ((1 << 29) - 1);
    tstck = 0;
    for(int i = 0; i <= 28; i++){
        if(at_uint(mia, i)){tstck = 1; break;} 
    }
    // 13
    Bit32 mye;
    mye = (s1  == s2 )? mye = (ms  << 2) + sub_uint(mia, 55, 29): (ms  << 2) - sub_uint(mia, 55,29);
    // if(s1  == s2 ) mye = (ms  << 2) + sub_uint(mia, 55, 29);
    // else mye = (ms  << 2) - sub_uint(mia, 55,29);
    //mia >> 28 && (1 << 26 - 1)
    // 14
    Bit32 esi;
    esi  = es  + 1;
    // 15
    Bit32 eyd, myd, stck, ovf_flag1;
    eyd = (at_uint(mye, 26) == 1) ? (esi  == 255 ? 255 : esi) : es;
    myd = (at_uint(mye, 26) == 1) ? (esi  == 255 ? (1 << 25): (mye  >> 1)) : mye;
    stck  = (at_uint(mye,26) == 1) ? (esi  == 255 ? 0 :(tstck|| at_uint(mye,0) )) : tstck ;
    ovf_flag1 = (at_uint(mye, 26) == 1) ? (esi == 255 ? 1 : 0) : 0;
    // 16
    Bit32 se;
    int i = 25;
    while(i >= 0){
        if(i == 0){
            se = 26; break;
        }else if(at_uint(myd, i) == 1){
            se = 25- i; 
            // cout << "se " << se << endl;
            break;
        }
        i--;
    }
    // 17
    Bit32 eyf;
    eyf = eyd - se;
    // 18
    Bit32 eyr, myf;
    myf = (eyf > 0 ) ? (myd << se) : (myd << (sub_uint(eyd,4,0) - 1));
    eyr = (eyf > 0) ? sub_uint(eyf,7,0) :0 ;
    // 19, 20
    Bit32 myr, eyri;
    myr = ((at_uint(myf,1) == 1 && at_uint(myf,0)== 0 && stck == 0 && at_uint(myf,2) == 1 ) || ( at_uint(myf,1) == 1 && at_uint(myf,0) == 0 && (s1 == s2) && stck == 1 ) || ( at_uint(myf,1) == 1 && at_uint(myf,0) == 1 ) ) ? (sub_uint(myf,26,2) + (1<<25)-1) : sub_uint(myf,26,2);
    // ここまでok
    eyri = eyr + (1 << 8) - 1;//>> 8;
    // 21
    Bit32 ey, my, ovf_flag2;
    ey = (at_uint(myr,24) == 1) ? eyri  : (sub_uint(myr,23,0) == 0 ? 0 : eyr);
    my = (at_uint(myr,24) == 1) ? 0 : (sub_uint(myr, 23, 0) == 0 ? 0 : sub_uint(myr,22,0));
    ovf_flag2 = (at_uint(myr,24) == 1) ? (eyri == 255 ? 1:0) :0;
    //Procedure 22
    Bit32 sy;
    sy = (ey == 0 && my == 0) ? (s1 & s2) : ss;
    //Procedure 23
    // i = 22;
    Bit32 nzm1, nzm2, y, ovf;
    nzm1 = 0; nzm2 = 0;
    // for(int i = 0; i <= 22; i++){
    //     if(at_uint(m1, i)) nzm1 = 1;
    //     if(at_uint(m2, i)) nzm2 = 1;
    // }
    for(int i = 0; i <= 22; i++){
        if(at_uint(m1, i)) {
            nzm1 = 1; break;
        }      
    }
    for(int i = 0; i <= 22; i++){
        if(at_uint(m2, i)){
            nzm2 = 1; break;
        }
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
    // for( i = 31; i >= 0; i-- ){
    //     printf("%d", (y >> i) & 1);
    // }
    // puts("\n");
    return y;
}
float f_max(float a, float b, float c, float d) {
    float max = a;
    if(b > max) b = max;
    if(c > max) c = max;
    if(d > max) d = max;
    return max;
}
int main(){
    float x_1, x_2;
    // x_1 = 508.414093017578; //4.5087; //0	100	0011	1	001	0101	0000	0000	0000	0000
    // x_2 = 6.28318500518799; //48.3003;
    x_1 = -pow(2, 127); x_2 = -pow(2, 127);
    while(1){
        x_1 += pow(2, 120);
        if(x_1 > pow(2, 127)) {cout << "i " << x_1<<endl; break;}
        while(1){
            x_2 += pow(2, 120);
            if(x_2 > pow(2, 127)) break;
            if(abs(x_1 - x_2) > pow(2, 127)) continue;
            Bit32 y = fsub(x_1, x_2);
            float f_y = bit_to_float(y);
            float ans = x_1 - x_2;
            float diff = abs(f_y - ans);
            // if(diff > pow(2, -126)){
            //     int max = max(abs(x_1)*pow(2,-23), abs(x_2)*pow(2,-23))
            // }
            float max = f_max(abs(x_1)*pow(2,-23), abs(x_2)*pow(2,-23), abs(x_1 - x_2)*pow(2,-23), pow(2,-126));
            // cout << diff << " " << max << endl;
            if(diff > max){
                cout << "No" << f_y << " " << ans << endl;
            }
        }
    }
    // for(int i = 0; i < pow(2,152); i++){
    //     for(int j = 0; j < pow(2,152); j++){
    //         x_1 = -pow(2, 127) + i * pow(2, -23);
    //         x_2 = -pow(2, 127) + j * pow(2, -23);
            
    //         if(abs(x_1 - x_2) > pow(2, 127)) break;
    //         if(x_1 > pow(2, 127)) {cout << "i " << x_1<<endl; continue;}
    //         if(x_2 > pow(2, 127)) continue;
            
    //         Bit32 y = fsub(x_1, x_2);
    //         float f_y = bit_to_float(y);
    //         float ans = x_1 - x_2;
    //         float diff = abs(f_y - ans);
    //         // if(diff > pow(2, -126)){
    //         //     int max = max(abs(x_1)*pow(2,-23), abs(x_2)*pow(2,-23))
    //         // }
    //         float max = f_max(abs(x_1)*pow(2,-23), abs(x_2)*pow(2,-23), abs(x_1 - x_2)*pow(2,-23), pow(2,-126));
    //         if(diff > max){
    //             cout << "No" << f_y << " " << ans << endl;
    //         }
    //     }
        
    // }
    cout << x_1 << endl;
    // Bit32 y = fsub(x_1, x_2);
    // print_sub_bit(y);
    
    // Bit32 ans = f_to_bit(x_1 - x_2);
    // print_sub_bit(ans);
    // cout << setprecision(15) << bit_to_float(y) << endl;
    // cout << setprecision(15) << x_1 - x_2 << endl;
    return 0;
}