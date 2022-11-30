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
// #include "sim_cache_index.hpp"
// #include "op_type.hpp"
// #include "sub_func.hpp"
// #include "reg.hpp"
// #include "IO/reader.py"
// #include "const.hpp"
using namespace std;
#define SIZE 1024
#define ull uint64_t

enum Type {
        R, I_1, I_2, S, B, U, J, F
};
struct Op {
  
    enum Type _type;
    // int _type;
    int conv_type(string op){
        if ((op == "add") || (op == "sub")|| (op == "xor")|| (op == "or")|| (op == "and")|| (op == "sll")|| (op == "srl")|| (op == "sra")|| (op == "slt")|| (op == "sltu")){
            _type = R;
        }else if((op == "addi") || (op == "xori")|| (op == "ori")|| (op == "andi")|| (op == "slli")|| (op == "srli")|| (op == "srai")|| (op == "slti")|| (op == "sltiu")){
            _type = I_1;
        }else if((op == "lb") || (op == "lh")|| (op == "lw")|| (op == "lbu")|| (op == "lhu")){
            _type = I_2;
        }else if((op == "sb") || (op == "sh")|| (op == "sw")){
            _type = S;
        }else if((op == "beq") || (op == "bne")|| (op == "blt")|| (op == "bge")|| (op == "bltu")|| (op == "bgeu")){
            _type = B;
        }else if(op == "jal"){
            _type = J;
        }else if(op == "jalr"){
            _type = I_1;
        }else if(op == "lui" || op == "auipc"){
            _type = U;
        }else if(op == "mul" || op == "mulh" || op == "mulsu"
        || op == "mulu" || op == "div" || op == "divu" || op == "rem" || op == "remu"){
            _type = R;
        // }else if(op == "mul" || op == "div"){
        //     _type = R;
        }else if(op == "flw" || op == "fsw" || op == "fmadd.s" || op == "fmsub.s" || op == "fnmadd.s" || op == "fnmsub.s" || 
        op == "fadd.s" || op == "fsub.s" || op == "fmul.s" || op == "fdiv.s" || op == "fsqrt.s" 
        || op == "fsgnj.s" || op == "fsgnjn.s" || op == "fsgnjx.s" || op == "fmin.s" || op == "fmax.s"
        || op == "fcvt.s.w" || op == "fcvt.s.wu" || op == "fcvt.w.s" || op == "fcvt.wu.s"
        || op == "fmu.x.w" || op == "fmu.w.x" || op == "feq.s" || op == "flt.s" || op == "fle.s" || op == "fclass.s"){
            _type = F;
        }
        // jalr以降書き忘れ
        // mul以降も；２ページ目
        return _type;
    }

};

double sign(double A){
    if(A>0) return 1;
    else if(A<0) return -1;
    else return 0;
}
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

string bury_zero(int64_t imm, int dig_num){
    // string imm = "1010";
    // cout<<"#"<<imm<<endl;
    // int64_t value = stoi(imm);
    // std::ios::fmtflags curret_flag = std::cout.flags();
    std::ostringstream ss;
    // dig_nim+1: imm[12]とか
    ss << setw(dig_num+1) << setfill('0') << imm; // << "\n";
    std::string s(ss.str());
	// std::cout << s << endl;
    return s;
    // bitset<(size_t)dig_num> s;   
}
// numのi番目右シフト；j桁取り出す
uint64_t sub_uint(uint64_t num, int i, int j){
    num = (num >> i) & ((1 << (j+1))-1);
    return num;
}

#define SIZE 1024
// #include <sim_cathe.hpp>
vector<int> a(SIZE);
vector<int> M(SIZE);
vector<vector<int> > L1(SIZE/10);
vector<vector<int> > L2(SIZE/10);
map<uint64_t, uint64_t> PMT1; //L1に対応
// map<int, uint64_t> 
// vector<uint64_t> L1_status(SIZE/10);
vector<vector <uint64_t> > L1_status(2, vector<uint64_t>(SIZE));
vector<vector <uint64_t> > L2_status(2, vector<uint64_t>(SIZE));
vector<vector <uint64_t> > L1_tag(2, vector<uint64_t>(SIZE));
vector<vector <uint64_t> > L2_tag(2, vector<uint64_t>(SIZE));
string s = "/Users/maimai/my-3A/cpu-simu/sim_result.txt";
ofstream ofs(s);
// vector<uint64_t> L2_tag(SIZE/10);
// map<uint64_t, vector<int> > 
// (3, vector<int>(4));
// vector<vector<vector<uint64_t> > > L1_data (2, vector<vector<uint64_t>>(SIZE/10), vector<uint64_t> (100));
// vector<vector<uint64_t> > L2_data(SIZE/10);
// class Cache {
//     vector<vector <uint64_t> > L_status(2, vector<uint64_t>(SIZE));
// };
// int main(){
//     Cache.L_status L1_status;
// }
int rd, rs1, rs2, rs3;
int64_t imm;
uint64_t addr, tag, index_, offset;
int offset_dig, index_dig, tag_dig;
int hit_count, miss_count;
// #include "const.hpp"
// #pragma once
// vector<vector<vector<uint64_t> > > L1_data (2, vector<vector<uint64_t>>(SIZE/10), vector<uint64_t> (100));

void cache_load(){
    addr = a[rs1]+imm;
    // 一度intに変換；bitsetに直す
    tag = addr >> (index_dig+offset_dig);
    index_ = (addr >> offset_dig) & ((1 << (index_dig))-1);
    offset = addr & ((1<<4) - 1);//1111;
    cout << "addr,tag,index_,offset " << addr << " " << tag << " " << index_ << " " << offset << endl;
    // valid1,dirty1,accessed
    
    // L1_way0; 一致していてかつvalid=1&&accessed=0なら
    if(L1_tag[0][index_] == tag && (((L1_status[0][index_]>>1) & ((1<<2)-1)) == 0b10)){ //PMT1[index_].at(0) == 1 && PMT1[index_].at(1) == 0){
        hit_count++;
        // 64byteのデータからoffsetの場所にあるものを引く
        // uint64_t data = L1_data[0][index_][offset]; //sub_uint(PMT1[index_], 0, 64); //PMT1[index_].substr(14, 64);
        // rd = (int)data;
    }else if(L1_tag[1][index_] == tag && (((L1_status[1][index_]>>1) & ((1<<2)-1)) == 0b10)){
        hit_count++;
    }
    else{
        //L1にはないためL2を見にいく；繰り返し
        if(L2_tag[0][index_] == tag && L2_status[0][index_] == 100){ //PMT1[index_].at(0) == 1 && PMT1[index_].at(1) == 0){
            hit_count++;
            // 64byteのデータからoffsetの場所にあるものを引く
            
        }else if(L2_tag[1][index_] == tag && L2_status[1][index_] == 100){
            hit_count++;
        }else{
            miss_count++;
            
        }
    }
    rd = M[rs1+imm];
    ofs << "load" << " " << M[rs1+imm] << endl;
}
void cache_store(string opcode){
    addr = a[rs1]+imm; //レジスタの中身+即値
    tag = addr >> (index_dig+offset_dig);
    index_ = (addr >> offset_dig) & ((1 << (index_dig+1))-1);
    offset = addr & (1<<5)-1;
    cout << "addr,tag,index_,offset " << addr << " " << tag << " " << index_ << " " << offset << endl;
    
    // valid1,dirty1,accessed
    // L1_way0:データを保持していなかったら；　valid = 0
    bool flag = 0;
    for(int w=0; w < 2; w++){ //way0,way1
    // int i = 0;
        if((L1_status[w][index_]>>2 & 1) == 0) { //at(0)
            flag = 1;
            uint64_t data_num = uint64_t(offset);
            if(opcode == "sb"){
                // PMT1[index_].substr(3+tag_dig+4*data_num, 4) 
                // L1_data[w][index_][data_num]= rs2%128; //convert(rs2%128,32);
                L1_status[w][index_] = 110; //dirty
                M[rs1+imm] = rs2%128;
            }else if(opcode == "sh"){
                // PMT1[index_].substr(3+tag_dig,data_num) = convert(rs2%65536, 32);
                // L1_data[w][index_][data_num]= rs2%65536;
                L1_status[w][index_] = 110;
                M[rs1+imm] = rs2%65536;
            }else if(opcode == "sw"){
                // L1_data[w][index_][data_num]= rs2%4294967296;
                L1_status[w][index_] = 110;
                M[rs1+imm] = rs2%4294967296;
            }
            // if(PMT1[index_].at(0) != 1){
                // PMT1[index_].substr(0,3+tag_dig) = "100"+ tag; //dataとは？
            L1_status[w][index_] = 100;
            L1_tag[w][index_] = tag;
    
            flag = 1;
        }
    }
    //%2;
    // if (PMT1[index_].at(0) == 1 && PMT2[index_].at(0) == 1){
    
    // valid,dirty,accessed
    // L1,L2ともデータ保持;既にあり；validでok?
    for(int w=0; w < 2; w++){
        if(flag == 1) {cout << "次へ" << endl; break;}
        if(L1_status[w][index_]>>2 == 1 && L2_status[w][index_]>>2 == 1){
            flag = 1;
            // PMT1[index_] = bury_zero(0, 3+tag_dig+64); //85); //0>> 85;
            int data_num = int(offset);
            if(opcode == "sb"){
                // M[rs1+imm] = PMT1[index_].substr(3+tag_dig+4*data_num, 4); //rs2%128;
                // PMT1[index_].substr(3+tag_dig+4*data_num, 4) = rs2%128;
                // L1_data[w][index_][data_num]= rs2%128;
                M[rs1+imm] = rs2%128;
            }else if(opcode == "sh"){
                // L1_data[w][index_][data_num]= rs2%65536;
                M[rs1+imm] = rs2%65536;
            }else if(opcode == "sw"){
                // L1_data[w][index_][data_num]= rs2%4294967296;
                M[rs1+imm] = rs2%4294967296;
            }
            // PMT1[index_].substr(0,3+tag_dig) = "101"+ tag;
            L1_status[w][index_] = 101;
            L1_tag[w][index_] = tag;
        //↓L2が空き 
        }
    }
    // else 
    // L2のどちらかが空いている
    for(int w=0; w < 2; w++){
        if(flag == 1) {cout << "次へ" << endl; break;}
        // valid,dirty,accessed
        if(L2_status[w][index_]>>2 == 0){ //PMT2[index_].at(0) != 1
            // PMT2[index_] = bury_zero(0,85); //0>> 85;
            int data_num = int(offset);
            // PMT2[index_].substr(14,data_num) = rs2%128;
            if(opcode == "sb"){
                // PMT2[index_].substr(14,data_num) = bury_zero(rs2%128, 4);
                // L2_data[w][index_][data_num]= rs2%128;
                M[rs1+imm] = rs2%128;
            }else if(opcode == "sh"){
                // L2_data[index_][data_num] = rs2%65536;
                M[rs1+imm] = rs2%65536;
            }else if(opcode == "sw"){
                // L2_data[index_][data_num] = rs2%4294967296;
                M[rs1+imm] = rs2%4294967296;
            }
            // PMT2[index_].substr(0,13) = "100"+ tag; //dataとは？
            L2_status[w][index_] = 100;
            L2_tag[w][index_] = tag;
        }
        flag = 1;
    }
    // cout << flag? "Ok":"Ng" << endl;
    cout << "flag " << flag << endl;
    ofs << "store" << " " << M[rs1+imm] << endl;
}
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
    vector<int> bin(SIZE);
    if(filename.find(".dat") < 100){
        // メモリにおく；並べていく
        int bin_i = 0;
        while(getline(file, line)){
            int bin_j = 0;
            while(line[bin_i]){
                bin[bin_i] = line[bin_j];
                bin_i++;
                bin_j++;
            }
        }

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
        string opcode, a0, a1, a2, a3;
        
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
        a0 = words[1]; a1 = words[2]; a2 = words[3], a3 = words[4];
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
        else if(opcode == "mv"){opcode = "addi", a2 = "0";}
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
        if((a3[0] >= 48) && (a3[0] <= 57)) imm = (int64_t)reg(a3);
        else rs3 = a[reg(a3)];
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
                //Multiply Extention
                }else if(opcode == "mul"){
                    rd = (rs1 * rs2)%((int)pow(2,32));//[31:0]
                    pc += 4;
                }else if(opcode == "mulh" || opcode == "mulsu" || opcode == "mulu"){
                    rd = (rs1 * rs2)%((int)pow(2,64));//[63:32]
                    pc += 4;
                }else if(opcode == "div" || opcode == "divu"){
                    rd = rs1/rs2;
                    pc += 4;
                }else if(opcode == "rem" || opcode == "remu"){
                    rd = rs1%rs2;
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
                ofs << "rd " << rd << endl;
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
                pc += 4;
                if((a0[0] >= '0') && (a0[0] <= '9')){} 
                else a[reg(a0)] = rd; 
                cout << "# " << rd << " "<< rs1 <<" " << rs2 << endl;
                continue;
            case F:
                // 事前設定？
                if(opcode == "flw"){
                    rd = M[rs1 + imm];
                }else if(opcode == "fsw"){ //怪しい？
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
                    rd = abs(rs1) * sign(rs2);
                }else if(opcode == "fsgnjn.s"){
                    rd = abs(rs1) * -sign(rs2);
                }else if(opcode == "fsgnjx.s"){
                    rd = rs1 * sign(rs2);
                }else if(opcode == "fmin.s"){
                    rd = min(rs1, rs2);
                }else if(opcode == "fmax.s"){
                    rd = max(rs1, rs2);
                }else if(opcode == "fcvt.s.w"){
                    rd = (float) rs1;
                }else if(opcode == "fcvt.s.wu"){
                    rd = (float) rs1;
                }else if(opcode == "fcvt.w.s"){
                    rd = (int32_t) rs1;
                }else if(opcode == "fcvt.wu.s"){
                    rd = (uint32_t) rs1;
                }else if(opcode == "fmv.x.w"){
                    rd = *((int*) &rs1);
                }else if(opcode == "fmv.w.x"){
                    rd = *((float*) &rs1);
                }else if(opcode == "feq.s"){
                    rd = (rs1 == rs2) ? 1 : 0;
                }else if(opcode == "flt.s"){
                    rd = (rs1 < rs2) ? 1 : 0;
                }else if(opcode == "fle.s"){
                    rd = (rs1 <= rs2) ? 1 : 0;
                }
                // else if(opcode == "fclass.s"){
                //     rd = 0..9;
                // }
                pc += 4;
                if((a0[0] >= '0') && (a0[0] <= '9')){} 
                else a[reg(a0)] = rd; 
                cout << "# " << rd << " "<< rs1 <<" " << rs2 << endl;
                continue;
            default:
                continue;
        }
        
        // Transfer control to OS 
        // Transfer control to debugger
        // case F:
        
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
