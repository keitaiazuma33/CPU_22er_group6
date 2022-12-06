#include <bits/stdc++.h>
// #pragma once
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
#include <time.h> 
#include "sim_cache_index.hpp"
#include "op_type.hpp"
#include "sub_func.hpp"
#include "reg.hpp"
// #include "const.hpp"
using namespace std;
#define SIZE 1024
#define ull uint64_t
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

int main(){
    // ファイルから読み込む
    // FILE *file; 

    // file = fopen("fib.txt", "r"); //asm
    // if (file == NULL) {                             
    //     printf("ファイルが開けません。¥n");            
    //     exit(1);                                    // 異常終了
    // }
    string filename ("fib_2.txt"); //asm_3
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
        }else if (line.size() > 0){
            con_line[pc] = line;
            pc += 4;
        }else{}
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
    
    
    hit_count = 0;
    miss_count = 0;
    //getline(file2, line))
    clock_t start = clock();   
    while(pc < pc_size) {// file; 第３引数に持ってくる or fstream型に
        // string S;
        // cin >> S; //"add a0, a1, a2"
        // 文字の読み込み方；　単語ずつ？
        // op1 = 
        // if(con_line[pc] != line){
        //     // line = con_line[pc];
        //     continue;
        // }
        line = con_line[pc];
        cout << "line" << line << endl;
        line += '\n';
        cout << "whileループ pc " << pc << endl;
        vector<string> words; //[0];
        words.clear();
        string word = "";
        if(line.find(':') < 100){ //line.at(0) != ' '
            // 
            continue;
        }
        for(int i = 0; i < line.size(); i++){
            if(line.at(i) == '#'|| line.at(i) == '\n' || line.at(i) == ')'){
                // cout << "# found break" << endl;
                break;
            }
            if(line.at(i) == '(' || line.at(i) == ' ' ||(line.at(i) == '\t') || (line.at(i) == ',')){
                // if(word != ""){
                //     words.push_back(word);
                // }
                // word = "";
                continue;
            }
            else{
                word.push_back(line.at(i));
                if(line.at(i+1) == '('|| line.at(i+1) == ')' || line.at(i+1) == '#' || line.at(i+1) == '\n' || line.at(i+1) == ' ' || line.at(i+1) == ',' || (line.at(i+1) == '\t')){ // || line.at(i+1) == ' '){
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
        // if(words.size() == 0) {pc += 4;continue;}
        // cout << words[0] << " " << words[1] << " " << words[2] << " " << words[3] << endl;
        int words_i = 0;
        while(words_i < words.size()){
            // cout << words[words_i] << " ";
            words_i++;
        }
        // cout << endl;
        string opcode, a0, a1, a2;
        
        // a3 = words[4];
        for(int i = 1; i <= 3 ; i++){ //words.size()
            int label_find = label.count(words[i]); //" "
            // cout << "label found" << label_find << endl;
            if(label_find > 0){
                // pc = label[i][0];
                int a_pc = label[words[i]];
                // continue;
                int diff = a_pc - pc; 
                // cout << diff << endl; //offset
                // pc += diff;
                // if(diff < 0) diff -= 4;
                words[i] = to_string(diff);
                // cout << "diff" << words[i] << endl; //ここまでok
            }
        }
        int sign_imm = 0;
        for(int i = 0; i < words.size();i++){
            if(words[i].at(0) == '-'){
                sign_imm = 1;
                words[i] = words[i].substr(1, words[i].length() - 1);
                // cout << "-の処理 " << words[i] << endl;
            
            }
        }
        opcode = words[0]; //ここまでok
        a0 = words[1]; a1 = words[2]; a2 = words[3];
        // substr(line.find(" ")); //?
        // opcode = op[0];
        // a0 = op;
        // 変数定義
        // vector<int> a(SIZE);//20でok?
         //int?
        imm = 0;//2で割ったあまり
        // 0で初期化？
        rd = 0; rs1 = 0; rs2 = 0; rs3 = 0;
        
        // li, j, mvの処理
        // li t3, 10 –> addi x28, x0, 10
        // j label3 –> jal x0, label3
        // mv t6, t4 –> addi x31, x29, 0
        // string opcode, a0, a1, a2;
        if(opcode == "li") {a2 = a1; a1 = "zero"; opcode = "addi";}
        else if(opcode == "j") {opcode = "jal"; a1 = a0; a0 = "zero";}//L3?; ' '
        else if(opcode == "jal" && a1 == "") {a1 = a0; a0 = "ra";}//L3?; ' '
        else if(opcode == "mv"){opcode = "addi", a2 = "zero";}
        else if(opcode == "bgt") {opcode = "blt"; swap(a0,a1);}
        else if(opcode == "ble") {opcode = "bge"; swap(a0,a1);}
        else if(opcode == "bgtu") {opcode = "bltu"; swap(a0,a1);}
        else if(opcode == "bleu") {opcode = "bgeu"; swap(a0,a1);}
        else if(opcode == "beqz") {opcode = "beq"; a2 = a1; a1 = "zero";}
        else if(opcode == "bnez") {opcode = "bne"; a2 = a1; a1 = "zero";}
        // retだけ処理
        else if(opcode == "ret"){
            opcode = "jalr"; a0 = "zero"; a1 = "ra"; a2 = "0";
        }
        // ？ここから怪しい
        // 以下の疑似命令書かないようにお願い
        // else if(opcode == "blez") {opcode = "bge"; a2 =  ;}
        // else if(opcode == "bgez") {opcode = "bge"; a2 = a1; a1 = "zero";}
        // else if(opcode == "beqz" ||opcode == "bnez" || opcode == "bgez" || opcode == "bltz" ){
        //     a2 = a1; a1 = "zero";
        // }else if(opcode == "blez" || opcode == "bgtz"){// opcode == "beqz" ||opcode == "bnez" || opcode == "blez" ||opcode == "bgez" || opcode == "bltz" || opcode == "bgtz"){
        //     a2 = a1; a1 = a0;
        // }
        // bitset
        // 0になるまで割って；配列に入れて
        // vector<int> M(SIZE);
        // cout << "l138 " << opcode << " "<< a0 << " " << a1 << " "<< a2 << endl;
        if((a0[0] >= '0') && (a0[0] <= '9')){
            // cout << a0 << endl; 
            imm = reg(a0);
        } 
        else rd =  a[reg(a0)]; //, M[reg(a0)]); 
        if((a1[0] >= 48) && (a1[0] <= 57)) imm = reg(a1);
        else rs1 = a[reg(a1)];
        if((a2[0] >= '0') && (a2[0] <= '9')) imm = reg(a2);
        else rs2 = a[reg(a2)]; //L1でセグフォ
        // if((a3[0] >= 48) && (a3[0] <= 57)) imm = (int64_t)reg(a3);
        // else if (a3) rs3 = a[reg(a3)];
        // else {}
        // cout << "l241" << rd << rs1 << rs2 <<endl;
        // bitset<100> imm(imm_int);
        
        // cout << "imm " << imm << endl;
        // int pc;
        int num_i;
        // constexpr size_t 
        offset_dig = 4;
        // constexpr size_t 
        index_dig = 10;
        // constexpr size_t 
        tag_dig = 13;
                // offset_dig = 4;index_dig = 10; tag_dig = 13;
        int addr_dig = 27;
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
                } //Multiply Extention
                else if(opcode == "mul"){
                    rd = (rs1 * rs2)%((int)pow(2,32));//[31:0]
                    pc += 4;
                }else if(opcode == "div"){
                    rd = rs1/rs2;
                    pc += 4;
                }
                if((a0[0] >= '0') && (a0[0] <= '9')){} 
                else a[reg(a0)] = rd; 
                cout << "# " << rd << " "<< rs1 <<" " << rs2 << endl;
                continue;
            case I_1:
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
                }else if(opcode == "jalr"){
                    rd=pc+4;pc=rs1+imm;
                } 
                // else 
                if((a0[0] >= '0') && (a0[0] <= '9')){} 
                else a[reg(a0)] = rd; 
                cout << "# " << rd << " "<< rs1 <<" " << rs2 << endl;
                continue;
            case I_2:
        
                rs1 = reg(a2);//a[reg(a2)]
                num_i = 0;
                
                cache_load();
                // if(opcode == "lb"){
                //     // index = (a[rs1]+imm)/4
                    // rd = M[rs1+imm];//[0:7]; 
                //     pc += 4;   
                // }else if(opcode == "lh"){
                //     rd = M[rs1+imm];//[0:15];
                //     pc += 4;
                // }else if(opcode == "lw"){
                //     rd = M[rs1+imm];//[0:31];
                //     pc += 4;
                // }else if(opcode == "lbu"){
                //     rd = M[rs1+imm];//[0:7];
                //     pc += 4;
                // }else if(opcode == "lhu"){
                //     rd = M[rs1+imm];//[0:15];
                //     pc += 4;
                // }
                pc += 4;
                if((a0[0] >= '0') && (a0[0] <= '9')){} 
                else a[reg(a0)] = rd; 
                cout << "# " << rd << " "<< rs1 <<" " << rs2 << endl;
                num_i = 0;
                
                continue;
            case S:
                
                rs1 = reg(a2);
                rs2 = a[reg(a0)];
                cout << "rs1 rs2 " << rs1 << " " << rs2 << endl;
                num_i = 0;
    
                cache_store(opcode);
                pc += 4;
                // if((a0[0.] >= '0') && (a0[0] <= '9')){} 
                // else a[reg(a0)] = rd; 
                cout << "# " << rd << " "<< rs1 <<" " << rs2 << endl;
                // num_i = 0;
                // while(M[num_i]){
                //     a[num_i] = M[num_i];
                //     num_i++;
                // }
                continue;
            case B:
                rs2 = rs1; rs1 = rd; 
                if(sign_imm == 1) imm = -imm;
                cout << "# "  << rs1 <<" " << rs2 << endl;
                if(opcode == "beq"|| opcode == "beqz"){
                    if(rs1 == rs2) pc += imm; //PC?
                    else pc += 4;
                }else if(opcode == "bne"|| opcode == "bnez"){
                    if(rs1 != rs2) pc += imm;
                    else pc += 4;
                }//ここ抜け
                else if(opcode == "blt" || opcode == "bgt"){
                    // cout << pc << " " << imm << endl;
                    if(rs1 < rs2) pc += imm;
                    else pc += 4;
                    // cout << "pc" << pc << endl;
                }else if(opcode == "bge"|| opcode == "ble"){
                    if(rs1 >= rs2) pc += imm;
                    else pc += 4;
                }else if(opcode == "bltu"||opcode == "bgtu"){
                    if(rs1 < rs2) pc += imm;
                    else pc += 4;
                }else if(opcode == "bgeu"||opcode == "bleu"){
                    if(rs1 >= rs2) pc += imm;
                    else pc += 4;
                }
                cout << "pc" << pc << endl;
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
    cout << "hit miss " << hit_count << " " << miss_count << endl;
    clock_t end = clock();     // 終了時間
    std::cout << "duration = " << (double)(end - start) / CLOCKS_PER_SEC << "sec.\n";
    // cout << "fileclose" << endl;
    // file2.close();
    return 0;
}