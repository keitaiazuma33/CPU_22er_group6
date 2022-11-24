#include <bits/stdc++.h>
using namespace std;
int64_t reg(string a0){ // asmの変数をc++の変数に
    // 変換操作
    // a0;t8の8のみ取り出し配列のインデックスに
    int64_t num = 0;
    if((a0[0] >= '0') && (a0[0] <= '9')){ //imm;数字だったら
        // return -1;
        // cout << "before" << a0 << endl;
        num = atoi(a0.c_str());
        // cout << "atoi" << num << endl;
        // num = (２進数)に

    }
    else{
        // for(int i = 1; i < a0.size(); i++){
        //     int num0 = a0[i] - 48;
        //     num += pow(10, (i-1)) * num0; 
        // }
        string op = a0;
        if(op == "zero") num = 0;
        else if(op == "ra") num = 1;
        else if(op == "sp") num = 2;
        else if(op == "gp") num = 3;
        else if(op == "tp") num = 4;
        else if(op == "t0") num = 5;
        else if(op == "t1") num = 6;
        else if(op == "t2") num = 7;
        else if(op == "s0" || op == "fp") num = 8;
        else if(op == "s1") num = 9;
        else if(op == "a0") num = 10;
        else if(op == "a1") num = 11;
        else if(op == "a2") num = 12;
        else if(op == "a3") num = 13;
        else if(op == "a4") num = 14;
        else if(op == "a5") num = 15;
        else if(op == "a6") num = 16;
        else if(op == "a7") num = 17;
        else if(op == "s2") num = 18;
        else if(op == "s3") num = 19;
        else if(op == "s4") num = 20;
        else if(op == "s5") num = 21;
        else if(op == "s6") num = 22;
        else if(op == "s7") num = 23;
        else if(op == "s8") num = 24;
        else if(op == "s9") num = 25;
        else if(op == "s10") num = 26;
        else if(op == "s11") num = 27;
        else if(op == "t3") num = 28;
        else if(op == "t4") num = 29;
        else if(op == "t5") num = 30;
        else if(op == "t6") num = 31;
    // }
    // // num = a0[1] - 48; //a0[1]でもない？
    // // cout << "after_2 " << num << endl;
    }
    return num; //(int)とすると51に
    // cout << num << endl;
    
}