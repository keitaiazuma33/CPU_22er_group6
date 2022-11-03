// #include <bits/stdc++.h>
// #progma once
#include <iostream>
#include <string>
#include <sstream>
#include <iterator>
#include <vector>
#include <algorithm>
#include <stdio.h>
#include <string>
#include <fstream>
using namespace std;
#define SIZE 1024
/* グローバル変数 */
// 内部処理関係
// std::vector<Operation> op_list; // 命令のリスト(PC順)
// Reg reg_int; // 整数レジスタ
// Reg reg_fp; // 浮動小数点数レジスタ
// Memory memory; // メモリ
// Fpu fpu; // FPU
// Cache cache; // キャッシュ
// Gshare branch_predictor(gshare_width); // 分岐予測器
// TransmissionQueue receive_buffer; // 外部通信での受信バッファ
// TransmissionQueue send_buffer; // 外部通信での送信バッファ

// unsigned int pc = 0; // プログラムカウンタ
// unsigned int code_size = 0; // コードサイズ
// int mem_size = 100; // メモリサイズ
// struct operation {

// }
int reg(string a0){ //}, vector<int> a(n)){ // asmの変数をc++の変数に
    // 変換操作
    // a0;t8の8のみ取り出し配列のインデックスに
    int num;
    if((a0[0] >= 48) && (a0[0] <= 57)){ //imm;数字だったら
        // return -1;
        // cout << "before" << a0 << endl;
        num = atoi(a0.c_str());
        // cout << "after" << num << endl;
        // num = (２進数)に

    }
    else{
        for(int i = 1; i < a0.size(); i++){
            int num0 = a0[i] - 48;
            num += pow(10, (i-1)) * num0; 
        }
    }
    // num = a0[1] - 48; //a0[1]でもない？
    // cout << "after_2 " << num << endl;
    return num; //(int)とすると51に
    
}
vector<string> word_split(string line){
    //"add a0, a1, a2"から単語ずつ取り出してstring opcode, a0, a1, a2; に
    //  https://www.delftstack.com/ja/howto/cpp/cpp-split-string-by-space/
    string space_delimiter = ",";
    vector<string> words(20);
    size_t pos = 0;
    while((pos = line.find(space_delimiter)) != string::npos){
        words.push_back(line.substr(0, pos)); //wordsに一単語追加
        line.erase(0, pos + space_delimiter.length()); //line開始点を読み込んだとことに
    }
    return words;
}
int main(){
    // ファイルから読み込む
    // FILE *file; 

    // file = fopen("fib.txt", "r"); //asm
    // if (file == NULL) {                             
    //     printf("ファイルが開けません。¥n");            
    //     exit(1);                                    // 異常終了
    // }
    string filename ("fib0.txt");
    vector<string> lines;
    string line;

    ifstream file(filename);
    if (!file.is_open()) {
        cerr << "Could not open the file - '"
             << filename << "'" << endl;
        return EXIT_FAILURE;
    }
    while(getline(file, line)){// file; 第３引数に持ってくる or fstream型に
        // string S;
        // cin >> S; //"add a0, a1, a2"
        // 文字の読み込み方；　単語ずつ？
        // op1 = 
        


        vector<string> words; //[0];
        string word = "";
        for(int i = 0; i < line.size(); i++){
            if((line.at(i) == ' ') || (line.at(i) == ',')){
                if(word != ""){
                    words.push_back(word);
                }
                word = "";
            }
            else{
                word.push_back(line.at(i));
            }
            if(i == line.size()-1){
                if(word != ""){
                    words.push_back(word);
                }
            }
        }
        string opcode, a0, a1, a2;
        string opp = words[0]; //ここまでok
        a0 = words[1]; a1 = words[2]; a2 = words[3];
        // cout << a0 << endl;
        // cout << a2 << endl;
        // cout << a0 << endl;
        // substr(line.find(" ")); //?
        // opcode = op[0];
        // a0 = op;
        // 変数定義
        vector<int> a(SIZE);//20でok?
        int rd, rs1, rs2; //int?
        int64_t imm = 0;//2で割ったあまり
        
        // li, j, mvの処理
        // li t3, 10 –> addi x28, x0, 10
        // j label3 –> jal x0, label3
        // mv t6, t4 –> addi x31, x29, 0
        if(opcode == "li") {op3 = op2; op2 = "zero"; opcode = "addi";}
        else if(opcode == "j") {}//L3?; ' '
        else if(opcode == "mv"){opcode = "addi", op3 = "zero";}
        // bitset
        // 0になるまで割って；配列に入れて
        vector<int> M(SIZE);
        cout << "a0" << a0 << endl;
        if((a0[0] >= 48) && (a0[0] <= 57)){
            cout << a0 << endl; 
            imm = (int64_t)reg(a0);
        } 
        else rd =  a[reg(a0)]; 
        if((a1[0] >= 48) && (a1[0] <= 57)) imm = (int64_t)reg(a1);
        else rs1 = a[reg(a1)];
        if((a2[0] >= 48) && (a2[0] <= 57)) imm = (int64_t)reg(a2);
        else rs2 = a[reg(a2)];
        // bitset<100> imm(imm_int);
        // if(opcode == "add"}{
        //     op1 = op2 + op3;
        //     // rd = rs1 + rs2;
        //     pc++; //?
            
        // }else if(opcode == "sub"}{
        //     op1 = op2 - op3;
            
        // }else if(opcode == "sll"}{
        //     op1 = op2 - op3;
            
        // }else
        cout << "imm " << imm << endl;
        int pc;
        if(opcode == "add"){
            rd=rs1+rs2;
            pc += 4; //最後に
        }else if(opcode == "sub"){
            rd=rs1-rs2;
            pc += 4;
        }else if(opcode == "xor"){
            rd=rs1 xor rs2; //xor
            pc += 4;
        }else if(opcode == "or"){
            rd=rs1|rs2;
            pc += 4;
        }else if(opcode == "and"){
            rd=rs1&rs2;
            pc += 4;
        }else if(opcode == "sll"){
            rd=rs1<<rs2;
            pc += 4;
        }else if(opcode == "srl"){
            rd=rs1>>rs2;
            pc += 4;
        }else if(opcode == "sra"){
            rd=rs1>>rs2;
            pc += 4;
        }else if(opcode == "slt"){
            rd = (rs1 < rs2)?1:0;
            pc += 4;
        }else if(opcode == "sltu"){
            rd = (rs1 < rs2)?1:0;
            pc += 4;
        }else if(opcode == "addi"){
            rd= rs1 +imm;
            pc += 4;
        }else if(opcode == "xori"){
            rd=rs1 xor imm;
            pc += 4;
        }else if(opcode == "ori"){
            rd=rs1|imm;
            pc += 4;
        }else if(opcode == "andi"){
            rd=rs1&imm;
            pc += 4;
        }else if(opcode == "slli"){
            rd = rs1 << (imm & ((1<<5)-1)); //そのままでも大丈夫かも
            pc += 4;
        }else if(opcode == "srli"){
            rd = rs1 >> imm; //[0:4];
            pc += 4;
        }else if(opcode == "srai"){
            rd = rs1 >> imm;//[0:4];
            pc += 4;
        }else if(opcode == "slti"){
            rd = (rs1 < imm)?1:0;
            pc += 4;
        }else if(opcode == "sltiu"){
            rd = (rs1 < imm)?1:0;
            pc += 4;
        }else if(opcode == "lb"){
            rd = M[rs1+imm];//[0:7]; 
            pc += 4;   
        }else if(opcode == "lh"){
            rd = M[rs1+imm];//[0:15];
            pc += 4;
        }else if(opcode == "lw"){
            rd = M[rs1+imm];//[0:31];
            pc += 4;
        }else if(opcode == "lbu"){
            rd = M[rs1+imm];//[0:7];
            pc += 4;
        }else if(opcode == "lhu"){
            rd = M[rs1+imm];//[0:15];
            pc += 4;
        // }else if(opcode == "sb"){
        //     M[rs1+imm][0:7] = rs2[0:7];
        // }else if(opcode == "sh"){
        //     M[rs1+imm][0:15] = rs2[0:15];
        // }else if(opcode == "sw"){
        //     M[rs1+imm][0:31] = rs2[0:31];
        }else if(opcode == "beq"){
            if(rs1 == rs2) pc += imm; //PC?
        }else if(opcode == "bne"){
            if(rs1 != rs2) pc += imm;
        }else if(opcode == "blt"){
            if(rs1 < rs2) pc += imm;
        }else if(opcode == "bge"){
            if(rs1 >= rs2) pc += imm;
        }else if(opcode == "bltu"){
            if(rs1 < rs2) pc += imm;
        }else if(opcode == "bgeu"){
            if(rs1 >= rs2) pc += imm;
        }else if(opcode == "jal"){
            rd=pc+4;pc+=imm;
        }else if(opcode == "jalr"){
            rd=pc+4;pc=rs1+imm;
        }else if(opcode == "lui"){
            rd=imm<<12;
        }else if(opcode == "auipc"){
            rd=pc+(imm<<12);
        // Transfer control to OS 
        // Transfer control to debugger
        }else if(opcode == "flw"){
            rd = M[rs1 + imm];
        }
        }else if(opcode == "flw"){
            M[rs1 + imm] = rs2;
        }else if(opcode == "fmadd.s"){
            rd=rs1*rs2+rs3;
        }else if(opcode == "fmsub.s"){
            rd=rs1*rs2-rs3;
        }else if(opcode == "fnmadd.s"){
            rd=-rs1*rs2+rs3;
        }else if(opcode == "fnmsub.s"){
            rd=-rs1*rs2-rs3;
        }else if(opcode == "fadd.s"){
            rd=rs1+rs2;
        }else if(opcode == "fsub.s"){
            rd=rs1-rs2;
        }else if(opcode == "fmul.s"){
            rd=rs1*rs2;
        }else if(opcode == "fdiv.s"){
            rd=rs1/rs2;
        }else if(opcode == "fsqrt.s"){
            rd = sqrt(rs1);
        }else if(opcode == "fsgnj.s"){
            rd = abs(rs1) * sgn(rs2);
        }else if(opcode == "fsgnjn.s"){
            rd = abs(rs1) * -sgn(rs2)
        rd = rs1 * sgn(rs2)
        rd = min(rs1, rs2)
        rd = max(rs1, rs2)
        rd = (float) rs1
        rd = (float) rs1
        rd = (int32_t) rs1
        rd = (uint32_t) rs1
        rd = *((int*) &rs1)
        cout << rd << endl;
        cout << "rs1 " << rs1 << endl;
    }
    file.close();
    return EXIT_SUCCESS;
}