#include <bits/stdc++.h>
// #progma once
#include <map>
#include <iostream>
#include <string.h>
#include <fstream>
#include <sstream>
#include <iomanip>
#include <iterator>
#include <vector>
#include <algorithm>
#include <stdio.h>
#include <string>
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
enum Type {
        R, I, S, B, U, J
};
struct Op {
  
    enum Type _type;
    // int _type;
    int conv_type(string op){
        if ((op == "add") || (op == "sub")|| (op == "xor")|| (op == "or")|| (op == "and")|| (op == "sll")|| (op == "srl")|| (op == "sra")|| (op == "slt")|| (op == "sltu")){
            _type = R;
        }else if((op == "addi") || (op == "xori")|| (op == "ori")|| (op == "andi")|| (op == "slli")|| (op == "srli")|| (op == "srai")|| (op == "slti")|| (op == "sltiu")){
            _type = I;
        }else if((op == "lb") || (op == "lh")|| (op == "lw")|| (op == "lbu")|| (op == "lhu")){
            _type = I;
        }else if((op == "sb") || (op == "sh")|| (op == "sw")){
            _type = S;
        }else if((op == "beq") || (op == "bne")|| (op == "blt")|| (op == "bge")|| (op == "bltu")|| (op == "bgeu")){
            _type = B;
        }else if(op == "jal"){
            _type = J;
        }else if(op == "jalr"){
            _type = I;
        }else if(op == "lui" || op == "auipc"){
            _type = U;
        }
        // jalr以降書き忘れ
        // mul以降も；２ページ目
        return _type;
    }

};

int64_t reg(string a0){ //}, vector<int> a(n)){ // asmの変数をc++の変数に
    // 変換操作
    // a0;t8の8のみ取り出し配列のインデックスに
    int64_t num = 0;
    if((a0[0] >= '0') && (a0[0] <= '9')){ //imm;数字だったら
        // return -1;
        // cout << "before" << a0 << endl;
        num = atoi(a0.c_str());
        cout << "atoi" << num << endl;
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
    //     // ここからchange
    //     r = "01100";
    // }else if(op == "a3"){
    //     r = "01101";
    // }else if(op == "a4"){
    //     r = "01110";
    // }else if(op == "a5"){
    //     r = "01111";
    // }else if(op == "a6"){
    //     r = "10000";
    // }else if(op == "a7"){
    //     r = "10001";
    // }else if(op == "s2") r = "10010";
    // else if(op == "s3") r = "10011";
    // else if(op == "s4") r = "10100";
    // else if(op == "s5") r = "10101";
    // else if(op == "s6") r = "10110";
    // else if(op == "s7") r = "10111";
    // else if(op == "s8") r = "11000";
    // else if(op == "s9") r = "11001";
    // else if(op == "s10") r = "11010";
    // else if(op == "s11") r = "11011";
        else if(op == "t3") num = 29;
        else if(op == "t4") num = 30;
        else if(op == "t5") num = 31;
        else if(op == "t6") num = 32;
    // }
    // // num = a0[1] - 48; //a0[1]でもない？
    // // cout << "after_2 " << num << endl;
    }
    return num; //(int)とすると51に
    cout << num << endl;
    
}

int main(){
    // ファイルから読み込む
    // FILE *file; 

    // file = fopen("fib.txt", "r"); //asm
    // if (file == NULL) {                             
    //     printf("ファイルが開けません。¥n");            
    //     exit(1);                                    // 異常終了
    // }
    string filename ("fib.txt");
    vector<string> lines;
    string line;

    ifstream file(filename);
    if (!file.is_open()) {
        cerr << "Could not open the file - '"
             << filename << "'" << endl;
        return EXIT_FAILURE;
    }
    int pc = 0;
    std::map<string, int> label;
    map<int, string> con_line;//pcと対応したlineの中身
    while(getline(file, line)){
        // ラベルを見つけたらmap配列に格納
        //  map<string, int> score; 
        // １回読み込んでvectorに変換しておく
        cout << "PC " << pc << endl;
        if(line.find(':') < 100){ 
            line.erase(line.find(':')); //?
            label[line] = pc; 
        }else {
            con_line[pc] = line;
            pc += 4;
        }
    }
    cout << "fileclose" << endl;
    file.close();
    int pc_size = pc;
    // ifstream file2(filename);
    // if (!file2.is_open()) {
    //     cerr << "Could not open the file - '"
    //          << filename << "'" << endl;
    //     return EXIT_FAILURE;
    // }
    pc = 0;
    vector<int> a(SIZE);
    //getline(file2, line))
    while(pc <= pc_size) {// file; 第３引数に持ってくる or fstream型に
        // string S;
        // cin >> S; //"add a0, a1, a2"
        // 文字の読み込み方；　単語ずつ？
        // op1 = 
        // if(con_line[pc] != line){
        //     // line = con_line[pc];
        //     continue;
        // }
        line = con_line[pc];
        line += '\n';
        cout << "whileループ pc " << pc << endl;
        vector<string> words; //[0];
        string word = "";
        if(line.find(':') < 100){ //line.at(0) != ' '
            // 
            continue;
        }
        for(int i = 0; i < line.size(); i++){
            if(line.at(i) == '#'|| line.at(i) == '\n'){
                // cout << "# found break" << endl;
                break;
            }
            if((line.at(i) == ' ') ||(line.at(i) == '\t') || (line.at(i) == ',')){
                // if(word != ""){
                //     words.push_back(word);
                // }
                // word = "";
                continue;
            }
            else{
                word.push_back(line.at(i));
                if(line.at(i+1) == '#' || line.at(i+1) == '\n' || line.at(i+1) == ' ' || line.at(i+1) == ',' || (line.at(i+1) == '\t')){ // || line.at(i+1) == ' '){
                    words.push_back(word);
                    // cout << "word " << word << endl;
                    word = "";
                    // break;
                }
            }
            // これいる？？
            if(i == line.size()-1){
                if(word != ""){
                    words.push_back(word);
                }
            }
        }
        cout << words[0] << " " << words[1] << " " << words[2] << " " << words[3] << endl;
        string opcode, a0, a1, a2;
        
        // a3 = words[4];
        for(int i = 1; i <= 3; i++){
            int label_find = label.count(words[i]); //" "
            cout << "label found" << label_find << endl;
            if(label_find > 0){
                // pc = label[i][0];
                int a_pc = label[words[i]];
                // continue;
                int diff = a_pc - pc; 
                // cout << diff << endl; //offset
                // pc += diff;
                if(diff < 0) diff -= 4;
                words[i] = to_string(diff);
                cout << "diff" << words[i] << endl; //ここまでok
            }
        }
        int sign_imm = 0;
        for(int i = 0; i < words.size();i++){
            if(words[i].at(0) == '-'){
                sign_imm = 1;
                words[i] = words[i].substr(1, words[i].length() - 1);
                cout << "-の処理 " << words[i] << endl;
            
            }
        }
        opcode = words[0]; //ここまでok
        a0 = words[1]; a1 = words[2]; a2 = words[3];
        // substr(line.find(" ")); //?
        // opcode = op[0];
        // a0 = op;
        // 変数定義
        // vector<int> a(SIZE);//20でok?
        int rd, rs1, rs2, rs3; //int?
        int64_t imm = 0;//2で割ったあまり
        // 0で初期化？
        rd = 0; rs1 = 0; rs2 = 0; rs3 = 0;
        
        // li, j, mvの処理
        // li t3, 10 –> addi x28, x0, 10
        // j label3 –> jal x0, label3
        // mv t6, t4 –> addi x31, x29, 0
        // string opcode, a0, a1, a2;
        if(opcode == "li") {a2 = a1; a1 = "zero"; opcode = "addi";}
        else if(opcode == "j") {opcode = "jal"; a1 = a0; a0 = "zero";}//L3?; ' '
        else if(opcode == "mv"){opcode = "addi", a2 = "zero";}

        // bitset
        // 0になるまで割って；配列に入れて
        vector<int> M(SIZE);
        cout << "l138 " << opcode << " "<< a0 << " " << a1 << " "<< a2 << endl;
        if((a0[0] >= '0') && (a0[0] <= '9')){
            // cout << a0 << endl; 
            imm = reg(a0);
        } 
        else rd =  a[reg(a0)]; 
        if((a1[0] >= 48) && (a1[0] <= 57)) imm = reg(a1);
        else rs1 = a[reg(a1)];
        if((a2[0] >= '0') && (a2[0] <= '9')) imm = reg(a2);
        else rs2 = a[reg(a2)]; //L1でセグフォ
        // if((a3[0] >= 48) && (a3[0] <= 57)) imm = (int64_t)reg(a3);
        // else if (a3) rs3 = a[reg(a3)];
        // else {}
        // cout << "l241" << rd << rs1 << rs2 <<endl;
        // bitset<100> imm(imm_int);
        
        cout << "imm " << imm << endl;
        // int pc;
        Op op; 
        switch(op.conv_type(opcode)){
            case R:
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
                }
                if((a0[0] >= '0') && (a0[0] <= '9')){} 
                else a[reg(a0)] = rd; 
                cout << "# " << rd << " "<< rs1 <<" " << rs2 << endl;
                continue;
            case I:
                if(opcode == "addi"){
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
                }else if(opcode == "jalr"){
                    rd=pc+4;pc=rs1+imm;
                }
                if((a0[0] >= '0') && (a0[0] <= '9')){} 
                else a[reg(a0)] = rd; 
                cout << "# " << rd << " "<< rs1 <<" " << rs2 << endl;
                // }else if(opcode == "sb"){
                //     M[rs1+imm][0:7] = rs2[0:7];
                // }else if(opcode == "sh"){
                //     M[rs1+imm][0:15] = rs2[0:15];
                // }else if(opcode == "sw"){
                //     M[rs1+imm][0:31] = rs2[0:31];
                continue;
            case B:
                rs2 = rs1; rs1 = rd; 
                if(sign_imm == 1) imm = -imm;
                cout << "# "  << rs1 <<" " << rs2 << endl;
                if(opcode == "beq"){
                    if(rs1 == rs2) pc += imm; //PC?
                    else pc += 4;
                }else if(opcode == "bne"){
                    if(rs1 != rs2) pc += imm;
                    else pc += 4;
                }else if(opcode == "blt"){
                    cout << pc << " " << imm << endl;
                    if(rs1 < rs2) pc += imm;
                    else pc += 4;
                    cout << "pc" << pc << endl;
                }else if(opcode == "bge"){
                    if(rs1 >= rs2) pc += imm;
                    else pc += 4;
                }else if(opcode == "bltu"){
                    if(rs1 < rs2) pc += imm;
                    else pc += 4;
                }else if(opcode == "bgeu"){
                    if(rs1 >= rs2) pc += imm;
                    else pc += 4;
                }
                // jumpの処理？
                continue;
            case J:
                if(sign_imm == 1) imm = -imm;
                if(opcode == "jal"){
                    rd=pc+4;pc+=imm;
                    cout << "jal pc " << pc << endl;
                }
                continue;
            // case I:
                // if(opcode == "jalr"){
                //     rd=pc+4;pc=rs1+imm;
            // }else 
            case U:
                if(opcode == "lui"){
                    rd=imm<<12;
                }else if(opcode == "auipc"){
                    rd=pc+(imm<<12);
                }
                if((a0[0] >= '0') && (a0[0] <= '9')){} 
                else a[reg(a0)] = rd; 
                cout << "# " << rd << " "<< rs1 <<" " << rs2 << endl;
                continue;
            default:
                continue;
        }
        // Transfer control to OS 
        // Transfer control to debugger
        // }else if(opcode == "flw"){
        //     rd = M[rs1 + imm];
        // }else if(opcode == "fsw"){ //怪しい？
        //     M[rs1 + imm] = rs2;
        // }else if(opcode == "fmadd.s"){
        //     rd=rs1*rs2+rs3;
        // }else if(opcode == "fmsub.s"){
        //     rd=rs1*rs2-rs3;
        // }else if(opcode == "fnmadd.s"){
        //     rd=-rs1*rs2+rs3;
        // }else if(opcode == "fnmsub.s"){
        //     rd=-rs1*rs2-rs3;
        // }else if(opcode == "fadd.s"){
        //     rd=rs1+rs2;
        // }else if(opcode == "fsub.s"){
        //     rd=rs1-rs2;
        // }else if(opcode == "fmul.s"){
        //     rd=rs1*rs2;
        // }else if(opcode == "fdiv.s"){
        //     rd=rs1/rs2;
        // }else if(opcode == "fsqrt.s"){
        //     rd = sqrt(rs1);
        // }else if(opcode == "fsgnj.s"){
        //     rd = abs(rs1) * sgn(rs2);
        // }else if(opcode == "fsgnjn.s"){
        //     rd = abs(rs1) * -sgn(rs2)
        // }
        // rd = rs1 * sgn(rs2)
        // rd = min(rs1, rs2)
        // rd = max(rs1, rs2)
        // rd = (float) rs1
        // rd = (float) rs1
        // rd = (int32_t) rs1
        // rd = (uint32_t) rs1
        // rd = *((int*) &rs1)
        // reg(a0)を何かでおくor ポインタ？
            
        // if((a0[0] >= '0') && (a0[0] <= '9')){} 
        // else a[reg(a0)] = rd; 
        // cout << "# " << rd << " "<< rs1 <<" " << rs2 << endl;
        // if((a1[0] >= 48) && (a1[0] <= 57)) {}//imm = (int64_t)reg(a1);
        // else a[reg(a1)] = rs1;
        // if((a2[0] >= 48) && (a2[0] <= 57)) {} //imm = (int64_t)reg(a2);
        // else a[reg(a2)] = rs2; //L1でセグフォ
        
        // cout << "rs1 " << rs1 << endl;
    }
    // cout << "fileclose" << endl;
    // file2.close();
    return 0;
}
