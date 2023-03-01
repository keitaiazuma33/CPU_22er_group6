// #include "common_def.hpp"
// #include "convension.hpp"
// #include "sub_func.hpp"
#include "simu_itof.hpp"
#include "simu_ftoi.hpp"
#include "fpu_common.hpp"
#include "simu_fadd.hpp"
#include "fsub_sim.hpp"
#include "fdiv_fmul.hpp"
#include "simu_fsqrt2.hpp"
// 0. common_def

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
#include <unistd.h>
// #include "sim_cache_index.hpp"
// #include "op_type.hpp"
// #include "sub_func.hpp"
// #include "reg.hpp"
// #include "IO/reader.py"
// #include "const.hpp"
// #include <bits/stdc++.h>
using namespace std;
#define Bit32 unsigned int
#define Bit64 unsigned long long
// #define SIZE 1024
#define ull uint64_t

bool debug = false;
bool print_mem = false; //false
string debug_op;
// int break_line;
string break_label;
int64_t clock_count;

// const auto i = read_binary_as<std::int32_t>(ifs);
queue<int32_t> que; //<auto>?
string s = "/Users/maimai/my-3A/cpu-simu/simulator/高速化ver/sim_result.ppm";
ofstream ofs(s);
string s2 = "/Users/maimai/my-3A/cpu-simu/simulator/高速化ver/sim_calc.txt";
ofstream ofs2(s2);

#define SIZE 1024
#define L_SIZE 4096
// struct Op_words{
//     int64_t op_num;
//     int64_t rd;  //index
//     int64_t rs1; //index
//     int64_t rs2;
//     // int rs3;
//     int64_t imm;
// };
// // std::map <int, Op_words> op_pc; //vector<Op_words> 
// vector<Op_words> op_pc;
// #include <sim_cathe.hpp>
vector<int64_t> reg_val(33);
vector<float> freg(33);
// vector<int64_t> M(SIZE);
union data {
    int64_t i;
    float f;
};

// map<int64_t, int64_t> M;

#define MEMORY_SIZE 81880000 //4294967296 //81880000 //8188000
vector<union data> M(MEMORY_SIZE+1);
// union data* memory;
// M = (union data*)malloc(sizeof(union data) * MEMORY_SIZE);
// union data;
// map<data, data> M;
// map<int64_t, union data> memory;
// map<float, float> Fmemory;
// union memory{
//     map<int64_t, int64_t> mi;
//     map<float, float> mf; 
// }
vector<vector<int64_t> > L1(L_SIZE); //SIZE/10
// vector<vector<int> > L2(SIZE/10);

int64_t rd, rs1, rs2, rs3;
int64_t imm;
Bit32 addr = 0;
uint64_t tag, index_, offset;
// int offset_dig, index_dig, tag_dig;
int64_t hit_count, miss_count;
int dirty_miss, clean_miss;
// vector<int64_t> op_load(SIZE);//map<int, int64_t> op_load;
int way_num = 2;
int way_idx;
int acc_bit = 3;//acceseed3bit
// int offset_dig = 4;
// // constexpr size_t 
// int index_dig = 10;
// // constexpr size_t 
// int tag_dig = 13;
int TAGMSB    = 26; //tag msb
int TAGLSB    = 15; //tag lsb

int INDEXMSB  = 14; //index msb
int INDEXLSB  = 3 ; //index lsb

int OFFSETMSB =  2; //offset msb
int OFFSETLSB =  0;
// int acc_bit = 3;//acceseed3bit
int offset_dig = OFFSETMSB - OFFSETLSB + 1;//4;
// constexpr size_t 
int index_dig = INDEXMSB - INDEXLSB + 1;//10;
// constexpr size_t 
int tag_dig = TAGMSB - TAGLSB + 1;//13;
        // offset_dig = 4;index_dig = 10; tag_dig = 13;
int addr_dig = 27;
bool hit; bool flag;
bool float_sign = false;
int32_t q;
// #include "const.hpp"
// string s = "/Users/maimai/my-3A/cpu-simu/sim_result.txt";
// ofstream ofs(s);
bool fast_mode = true;
string debugmode(int argc, char* argv[]){
    
    
    int i, opt;

    opterr = 0; //getopt()のエラーメッセージを無効にする。

    while ((opt = getopt(argc, argv, "fgdh:")) != -1) {
        //コマンドライン引数のオプションがなくなるまで繰り返す
        switch (opt) {
            case 'f':
                fast_mode = true; debug = false;
                printf("-fがオプションとして渡されました\n");
                break;

            case 'g':
                fast_mode = false;
                printf("-gがオプションとして渡されました\n");
                break;
                

            case 'd':
                printf("-d：デバッグ\n");
                debug = true;
                break;
            case 'h':
                printf("-hがオプションとして渡されました\n");
                printf("引数optarg = %s\n", optarg);
                break;
            default: /* '?' */
                //指定していないオプションが渡された場合
                printf("Usage: %s [-f] [-g] [-h argment] arg1 ...\n", argv[0]);
                break;
        }
    }
    string s;
    //オプション以外の引数を出力する
    for (i = optind; i < argc; i++) {
        s += argv[i];      
        printf("arg = %s\n", argv[i]);
    }

    cout << s << endl;
    // debug_op = debugmode(argc, argv); 
    if(debug == true){
        // print mem[0:10]
        string debug_op = s;
        if(debug_op.find("printmem") != std::string::npos){
            print_mem = true;
            
        }else if(debug_op.find("break") != std::string::npos){
            debug_op.erase(0,5);
            break_label = debug_op;
            cout << "break_label " << break_label << endl;
        }
    }
    // cout << ((print_mem == true) ? "Yes" : "No") << endl;


    return s;
}
// 1. sub_func
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
// uint64_t sub_uint(uint64_t num, int i, int j){
//     num = (num >> i) & ((1 << (j+1))-1);
//     return num;
// }

// float bit_to_float (unsigned int x){
//     float x_;
//     union { float f; int i; } a;
//     int i;
//     a.i = x;
//     x_ = a.f;
//     return x_;
    
// }
// ppmファイル
template<typename T>
T read_binary_as(std::istream& is)
{
    T val;
    is.read(reinterpret_cast<char*>(std::addressof(val)),
            sizeof(T));
    return val;
}
void sld_to_ppm(){
    string filename ("contest.dat"); //base//contest.dat"); //asm_3
    vector<string> lines;
    string line;
    string s1 = "/Users/maimai/my-3A/cpu-simu/simulator/高速化ver/sim_base.ppm";
    ofstream ofs1(s1);
    ifstream file(filename, ios::binary);
    // ifstream file;
    // file = ifstream(filename, ios::binary);
    // std::int32_t i;
    if (!file.is_open()) {
        cerr << "Could not open the file - '"
             << filename << "'" << endl;
        // return -1; //EXIT_FAILURE;
    }
    // 第二引数で示された文字数だけ読み込み、第一引数で示された位置へその内容を書き込む
    // 4byteだけ読み込み、アドレスiへ書き込み
    // int i = 0;
    // while(addressof(i)){
    //     file.read(reinterpret_cast<char*>(std::addressof(i)),
    //      sizeof(std::int32_t)/* or simply 4 */);
        
    //     i += sizeof(std::int32_t);
    // }
    int64_t idx = 8192;
    while(!file.eof()){
        // const auto 
        int32_t q = read_binary_as<std::int32_t>(file);
        // if(q < -SIZE || q > SIZE) ofs1 << bit_to_float(q) << endl;
        // else ofs1 << q << endl;
        
        if(q < -SIZE || q > SIZE){
            // M[8192]から４とばしで
            M.at(idx).f = bit_to_float(q);
            cout << idx << "f " << M.at(idx).f << endl;
        }else{
            M.at(idx).f = (float)q;
            cout << idx << "i " << M.at(idx).f << endl;
        }
        // que.push(i);

        // 
        // line 1
        // for(int i = 0; i < 5; i++) M.at(idx).f = bit_to_float(q);

        // // line 2, 3
        // M.at(idx).i = q;
        // for(int i = 0; i < 3; i++) M.at(idx).f = bit_to_float(q);

        // // line 4 ...
        // for(int i = 0; i < 17; i++) {
        //     // if (nums[addr] == "-1") break;
        //     for(int i = 0; i < 4; i++) M.at(idx).i = q;
        //     for(int i = 0; i < 12; i++) M.at(idx).f = bit_to_float(q);
        // }

        // // til EOF
        // int tilEOF = std_cnt - addr;
        // for(int i = 0; i < tilEOF; i++)  M.at(idx).i = q;

        idx += 4;

    }
}

// エミュレート


// 2. キャッシュ定義, LRU
struct Status{
    int valid;
    int dirty;
    int acc; //accesessed
};
vector<vector <Status> > L_status(2, vector<Status>(L_SIZE));
vector<vector <uint64_t> > L1_tag(2, vector<uint64_t>(L_SIZE));
bool sign_in, sign_out;
int LRU(vector<vector <Status> > L_status, uint64_t index_){
    // return 0;
    // 一番accessedが低いものを選ぶ
    int min_way = 0;
    int acc_min = L_status[0][index_].acc;
    int  acc_max = acc_min; //L_status[i][index_].acc;
    // ofs << "LRU ";
    int max_way = 0;
    for (int i = 1; i < way_num; i++) {
        // L1_way0; 一致していてかつvalid=1&&accessed=0なら
        // ofs << "acc" << L_status[i][index_].acc << endl;
        int acc_i = L_status[i][index_].acc;
        if(acc_i < acc_min){
            min_way = i;
            acc_min = acc_i; //L_status[i][index_].acc;
        }else if(acc_i > acc_max){
            acc_max = acc_i; //L_status[i][index_].acc;
            max_way = i;
        }
    }
    // L_status[min_way][index_].dirty = 0;
    if(acc_max < 7){//7?
        L_status[min_way][index_].acc = acc_max;    
    } 
    else{//acc_max = 7; +1すると0に
        // for (int i = 0; i < way_num; i++) {//ここが怪しい？
        //     L_status[i][index_].acc = 0;
        // }
        L_status[min_way][index_].acc = 0;
        L_status[max_way][index_].acc = 0;

    }
    // ofs << "min_way " << min_way << endl;
    return min_way;
    // way_idxを返す
}

// 3. convension0
double sign(double A){
    if(A>0) return 1;
    else if(A<0) return -1;
    else return 0;
}
bool special;
int64_t op_to_num(string op){
    int num = 0;
    // case R
    if (op == "add") num = 33;
    else if (op == "sub") num =34;
    else if (op == "xor") num =35;
    else if (op == "or") num =36;
    else if (op == "and") num =37;
    else if (op == "sll") num =38;
    else if (op == "srl") num =39;
    else if (op == "sra") num =40;
    else if (op == "slt") num =41;
    else if (op == "sltu") num =42;
    else if (op == "mul") num =43;
    else if (op == "mulh" || op == "mulsu") num =44;
    else if (op == "div" || op == "divu") num =45;
    else if (op == "rem" || op == "remu") num =46;
    //     _type = I_1;
    else if (op == "mv") {cout << "op == mv?"<< endl;return -1;}
    else if (op == "addi") num =50;
    else if (op == "xori") num =51;
    else if (op == "ori") num =52;
    else if (op == "andi") num =53;
    else if(op == "slli") num = 54;
    else if (op == "srli") num = 55;
    else if (op == "srai") num = 56;
    else if (op == "slti") num = 57;
    else if (op == "sltiu") num = 58;
    //     _type = I_2;
    else if(op == "lb") num = 60;
    else if (op == "lh") num = 61;
    else if (op == "lw") num = 62;
    else if (op == "lbu") num = 63;
    else if (op == "lhu") num = 64;
    // _type = S;
    else if (op == "sb") num = 65;
    else if (op == "sh") num = 66;
    else if (op == "sw") num = 67;
    // _type = B;
    else if (op == "beq") num = 70;
    else if(op == "bne") num = 71;
    else if (op == "blt") num = 72;
    else if(op == "bge") num = 73;
    else if (op == "bltu") num = 74;
    else if (op == "bgeu") num = 75;
    //     _type = J;
    else if(op == "jal") num = 76;
    else if(op == "jalr") num = 59; // _type = I_1;
    else if(op == "lui") num = 77;
    else if (op == "auipc") num = 78; //     _type = U;
    else if (op == "addj") num = 79;
    else if (op == "flw") num = 81;
    else if (op == "fsw") num = 82;
    else if (op == "fmadd") num = 83;
    else if (op == "fmsub") num = 84;
    else if (op == "fnmadd") num = 85;
    else if (op == "fnmsub") num = 85;
    else if (op == "fadd") num = 87;
    else if (op == "fsub") num = 88;
    else if (op == "fmul") num = 89;
    else if (op == "fdiv") num = 90;
    else if (op == "fsqrt") num = 91;
    else if (op == "fsgnj") num = 92;
    else if (op == "fsgnjn") num = 93;
    // else if (op == "fsgnjx") num = 94;
    else if (op == "fabs") num = 94;
    else if (op == "fmin") num = 95;
    else if (op == "fmax") num = 96;
    // else if (op == "fcvt.") num = 97;
    else if (op == "fmv") num = 1;
    else if (op == "feq") num = 3;
    else if (op == "flt") num = 4;
    else if (op == "fle") num = 5;
    else if (op == "ftoi") num = 6;
    else if (op == "itof") num = 7;
    else if (op == "out") num = 10;
    else if (op == "in") num = 11;

    return num;
}
int64_t reg_index(string a0){ // asmの変数をc++の変数に
    // 変換操作
    // a0;t8の8のみ取り出し配列のインデックスに
    int64_t num = 0;
    // if(a0[0] == '%'){
    //     a0.erase(0, 1);
    // }
    if((a0[0] >= '0') && (a0[0] <= '9')){ //imm;数字だったら
        // return -1;
        // cout << "before" << a0 << endl;
        num = atoi(a0.c_str());
        // cout << "atoi" << num << endl;
        // num = (２進数)に

    }else if(a0[0] == 'x'){
        a0.erase(0, 1);
        num = atoi(a0.c_str());
        return num;
    }else if(a0[0] == 'f'){
        // float_sign = true;
        a0.erase(0, 1);
        num = atoi(a0.c_str());
        return num;
    }else if(a0[0] == '-'){
        // x0...常に0を格納
        // x1...戻りアドレスを格納
        // x2...スタックポインタ
        // x3...ヒープポインタ
        // x5-x23...汎用レジスタ
        // x24...定数を一時的に格納するレジスタ
        num = atoi(a0.c_str());
        // cout << "-あり" << num << endl;
        return num;
    }else{
        // for(int i = 1; i < a0.size(); i++){
        //     int num0 = a0[i] - 48;
        //     num += pow(10, (i-1)) * num0; 
        // }
        string op = a0;
        if(op == "zero") num = 0; //常に0
        else if(op == "ra") num = 1; //戻りアドレス
        else if(op == "sp") num = 2; //22?;
        // else if(op == "gp") num = 3; //ヒープポインタ？
        // else if(op == "tp") num = 24; //一時レジスタ
        // else if(op == "t0") num = 5;
        // else if(op == "t1") num = 6;
        // else if(op == "t2") num = 7;
        // else if(op == "s0" || op == "fp") num = 8;
        // else if(op == "s1") num = 9;
        else if(op == "a0") num = 10;
        else if(op == "a1") num = 11;
        // else if(op == "a2") num = 12;
        // else if(op == "a3") num = 13;
        // else if(op == "a4") num = 14;
        // else if(op == "a5") num = 15;
        // else if(op == "a6") num = 16;
        // else if(op == "a7") num = 17;
        // else if(op == "s2") num = 18;
        // else if(op == "s3") num = 19;
        // else if(op == "s4") num = 20;
        // else if(op == "s5") num = 21;
        // else if(op == "s6") num = 22;
        // else if(op == "s7") num = 23;
        // // else if(op == "s8") num = 24;
        // else if(op == "s9") num = 25;
        // else if(op == "s10") num = 26;
        // else if(op == "s11") num = 27;
        // else if(op == "t3") num = 28;
        // else if(op == "t4") num = 29;
        // else if(op == "t5") num = 30;
        // else if(op == "t6") num = 31;
        else if(a0 == ""){}
        else{
            // 特別なアドレス
            // special = 1;
            // cout << "   special op " << op << endl;
            num = 32; //出力用 or -1
        }
    // }
    // // num = a0[1] - 48; //a0[1]でもない？
    // // cout << "after_2 " << num << endl;
    }
    return num; //(int)とすると51に
    // cout << num << endl;
    
}
// 4. convension1

enum Type {
        R, I_1, I_2, S, B, U, J, F, O
};
struct Op {
  
    enum Type _type;
    // int _type;
    int conv_type(int op){
        if(op >= 30 && op < 49) _type = R;
        else if(op >= 49 && op < 60) _type = I_1;
        else if(op >= 60 && op < 65) _type = I_2;
        else if(op >= 65 && op < 70) _type = S;
        else if(op >= 70 && op <= 75) _type = B;
        else if(op == 76) _type = J;
        else if(op >= 77 && op < 80) _type = U;
        else if (op == 10 || op == 11)  {_type = O; cout << "type O" << endl; return -1;}
        else _type = F;

        // if ((op == "add") || (op == "sub")|| (op == "xor")|| (op == "or")|| (op == "and")|| (op == "sll")|| (op == "srl")|| (op == "sra")|| (op == "slt")|| (op == "sltu")){
        //     _type = R;
        // }else if((op == "addi") || (op == "xori")|| (op == "ori")|| (op == "andi")|| (op == "slli")|| (op == "srli")|| (op == "srai")|| (op == "slti")|| (op == "sltiu")){
        //     _type = I_1;
        // }else if((op == "lb") || (op == "lh")|| (op == "lw")|| (op == "lbu")|| (op == "lhu")){
        //     _type = I_2;
        // }else if((op == "sb") || (op == "sh")|| (op == "sw")){
        //     _type = S;
        // }else if((op == "beq") || (op == "bne")|| (op == "blt")|| (op == "bge")|| (op == "bltu")|| (op == "bgeu")){
        //     _type = B;
        // }else if(op == "jal"){
        //     _type = J;
        // }else if(op == "jalr"){
        //     _type = I_1;
        // }else if(op == "lui" || op == "auipc"){
        //     _type = U;
        // }else if(op == "mul" || op == "mulh" || op == "mulsu"
        // || op == "mulu" || op == "div" || op == "divu" || op == "rem" || op == "remu"){
        //     _type = R;
        // // }else if(op == "mul" || op == "div"){
        // //     _type = R;
        // }else if(op == "flw" || op == "fsw" || op == "fmadd.s" || op == "fmsub.s" || op == "fnmadd.s" || op == "fnmsub.s" || 
        // op == "fadd.s" || op == "fsub.s" || op == "fmul.s" || op == "fdiv.s" || op == "fsqrt.s" 
        // || op == "fsgnj.s" || op == "fsgnjn.s" || op == "fsgnjx.s" || op == "fmin.s" || op == "fmax.s"
        // || op == "fcvt.s.w" || op == "fcvt.s.wu" || op == "fcvt.w.s" || op == "fcvt.wu.s"
        // || op == "fmu.x.w" || op == "fmu.w.x" || op == "feq.s" || op == "flt.s" || op == "fle.s" || op == "fclass.s"){
        //     _type = F;
        // }
        // jalr以降書き忘れ
        // mul以降も；２ページ目
        return _type;
    }

};

// 5. メイン関数
int main(int argc, char *argv[]){
    // ファイルから読み込む
    // FILE *file; 

    // file = fopen("fib.txt", "r"); //asm
    // if (file == NULL) {                             
    //     printf("ファイルが開けません。¥n");            
    //     exit(1);                                    // 異常終了
    // }
    debug_op = debugmode(argc, argv); //char *argv[]
    bool break_symbol = false;
    bool step_symbol = false;
    bool print_symbol = false;
    sld_to_ppm();
    string filename ("minrt_addj.s"); //asm_3
    vector<string> lines;
    string line;

    ifstream file(filename);
    if (!file.is_open()) {
        cerr << "Could not open the file - '"
             << filename << "'" << endl;
        return EXIT_FAILURE;
    }
    
    
    int pc = 0;
    int pc_start = 0;
    std::map<string, int> label;
    map<int, string> con_line;//pcと対応したlineの中身
    map<int, string> con_label;
    map<string,string> f_data;
    // vector<float> float_table(SIZE);
    // map<float, string> fdata_num;
    // int sign_imm = 0;
    while(getline(file, line)){
        // ラベルを見つけたらmap配列に格納
        //  map<string, int> score; 
        // １回読み込んでvectorに変換しておく
        cout << "PC " << pc << endl;
        if(line.find("l.") < 100 && line.find(':') < 100 && line.find('!') != std::string::npos){
            vector<string> words; //[0];
            words.clear();
            string word = "";
            for(int i = 0; i < line.size(); i++){
                if(line.at(i) == '\n' ){
                    // cout << "# found break" << endl;
                    break;
                }
                if((line.at(i) == '!') || line.at(i) == ':' || line.at(i) == ' ' ||(line.at(i) == '\t') ){
                    continue;
                }
                else{
                    word.push_back(line.at(i));
                    if(i == line.size()-1){
                        if(word != ""){
                            words.push_back(word);
                        }
                    }
                    else if(line.at(i+1) == ':'|| line.at(i+1) == '\n'){
                        words.push_back(word);
                        // cout << "word " << word << endl;
                        word = "";
                        // break;
                    }
                }
                // これいる？？
                
            }
            // words.at(0).erase(words.at(0).find("l."), 2);
            cout << words.at(0) << " " << words.at(1) << endl;
            f_data[words.at(0)] = words.at(1); //valueがfloatの値（string型）
            // fdata_num[stof(words.at(1))] = words.at(0);
            // int num = stoi(words.at(0));
            // float_table.at(num) = stof(words.at(1)); 
        }else if(line.find(':') < 100){
            
            line.erase(line.find(':')); //?
            if(line.find("min_caml_start") != std::string::npos){
                pc_start = pc;
            }
            label[line] = pc; 
            con_label[pc] = line;
            
        // }
            // 読み飛ばし
        }else if (line.size() > 0){
            if (line[1] == '#' || line.at(0) == '.'){}
            else{
                con_line[pc] = line;
                pc += 4;
            }        
        }else{}
        
    }
    cout << "fileclose" << endl;
    file.close();
    int pc_size = pc;
    
    
    int64_t instr_count = 0;
    hit_count = 0;
    miss_count = 0;
    int pop_count = 0;
    //getline(file2, line))
    clock_t start = clock(); 
       
 
    struct Op_words{
        int64_t op_num;
        int64_t rd;
        int64_t rs1;
        int64_t rs2;
        int64_t rs3;
        union data imm;
        bool break_sign;
        bool float_sign;
        // bool isreg_float;
        // bool label_sign;
        // float f_imm;
    };
    vector<Op_words> op_pc(pc_size+4); 
    vector<int64_t> op_load(pc_size+4);//
    // map<int, int64_t> op_load;
    pc = 0;
    
    while(pc < pc_size) {// file; 第３引数に持ってくる or fstream型に
        if(con_label.count(pc)){
            cout << '[' << con_label[pc] << "] (" << pc << ')' <<endl;
            // if((con_label[pc]).find(break_label) != std::string::npos){
            //     // cout << "yes" << endl;
            //     break;
            // }
        }
        special = false;
        
        // instr_count++; //?
        line = con_line[pc];
        // cout << pc << " " << line << endl;
        // if(break_symbol == true) cout << "line" << line << endl;
        line += '\n';
        // cout << "   pc " << pc << endl;
        vector<string> words; //[0];
        words.clear();
        string word = "";
        
        
        reg_val[0] = 0;
        // cout << "l434" << endl;
        print_symbol = false;
       
        // op_pc[pc].break_sign = false;
        // op_pc[pc] = {0};
        if(line.find('*') != std::string::npos){ //line.at(0) != ' '
            cout << "   found * " << endl;
            line.erase(line.find('*'),1);
            // cout << "line" << line << endl;
            break_symbol = true;
            op_pc[pc].break_sign = true;
        }
        
        for(int i = 0; i < line.size(); i++){
            if(line.at(i) == '#'|| line.at(i) == '!'|| line.at(i) == '\n' || line.at(i) == ')'){
                // cout << "# found break" << endl;
                break;
            }
            if(line.at(i) == '%' ||line.at(i) == '*' || line.at(i) == '(' || line.at(i) == ' ' ||(line.at(i) == '\t') || (line.at(i) == ',')){
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
        // cout << "   " << words[0] << " " << words[1] << " " << words[2] << " " << words[3] << endl;
        int words_i = 0;
        while(words_i < words.size()){
            // cout << words[words_i] << " ";
            words_i++;
        }
        // cout << "l512" << endl;
        string opcode, a0, a1, a2, a3;
        
        
        // a3 = words[4];
        for(int i = 1; i < words.size() ; i++){ //<=3
            // label(map)にwods[i]が合ったら
            int label_find = label.count(words[i]); //" "
            int data_find = f_data.count(words[i]); //(words[i]).find("l.");
            // cout << "label found" << label_find << endl;
            if(data_find > 0){
                op_pc[pc].float_sign = true;
                words[i] = f_data[words[i]];
                // num = stoi(words[i].erase(words[i].find("l."),2));
                // words[i] = float_table.at(num)
                op_pc[pc].imm.f = stof(words[i]);
            }
            else if(label_find > 0){
                // pc = label[i][0];
                int a_pc = label[words[i]];
                // continue;
                int diff = a_pc - pc; 
                // op_pc[pc].label_sign = true;
                // cout << diff << endl; //offset
                // pc += diff;
                // if(diff < 0) diff -= 4;
                words[i] = to_string(diff);
                // cout << "diff" << words[i] << endl; //ここまでok
                // if(words[i].at(0) == '-'){
                //     sign_imm = 1;
                //     words[i] = words[i].substr(1, words[i].length() - 1);
                //     // cout << "-の処理 " << words[i] << endl;
                
                // }
                if(words[i] == "input"){
                    sign_in = true; special = true;
                }if(words[i] == "output"){
                    sign_out = true; special = true;
                }

            }
        }
        
        // for(int i = 0; i < words.size();i++){   
        // }
        // strcpy(a2, "\0");
        opcode.clear();
        a0.clear(); a1.clear(); a2.clear(); a3.clear();
        opcode = words.at(0); //ここまでok
        // 
        if(words.size() > 1) a0 = words.at(1); 
        if(words.size() > 2) a1 = words.at(2); 
        if(words.size() > 3) a2 = words.at(3); 
        if(words.size() > 4 )a3 = words.at(4);
        // cout << "clear?" << words[3] << a2 << endl;
        // substr(line.find(" ")); //?
        // opcode = op[0];
        // a0 = op;
        // 変数定義
        // vector<int> reg_val(SIZE);//20でok?
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
        // else if(opcode == "mv"){opcode = "addi", a2 = "0";}
        else if(opcode == "bgt") {opcode = "blt"; swap(a0,a1);}
        else if(opcode == "ble") {opcode = "bge"; swap(a0,a1);}
        else if(opcode == "bgtu") {opcode = "bltu"; swap(a0,a1);}
        else if(opcode == "bleu") {opcode = "bgeu"; swap(a0,a1);}
        else if(opcode == "beqz") {opcode = "beq"; a2 = a1; a1 = "zero";}
        else if(opcode == "bnez") {opcode = "bne"; a2 = a1; a1 = "zero";}
        // retだけ処理
        else if(opcode == "jalr" && a2 == ""){
            // jalr x0, x1, 0
            a2 = "0";
        }else if(opcode == "ret"){
            // jalr x0, x1, 0
            opcode = "jalr"; a0 = "x0"; a1 = "x1"; a2 = "0";
        }else if(opcode == "nop"){ //addi x0, x0, 0
            opcode = "addi"; a0 = "x0"; a1 = "x0"; a2 = "0";
        // }else if(opcode == "fabs"){
        //     opcode = "fsgnjx"; a2 = a1;
        }
        else if(opcode == "mv"){
            if(a1[0] == 'x'){opcode = "addi", a2 = "0";}
            else if(a1[0] == 'f'){opcode = "fadd", a2 = "f31";}
            else{opcode = "fmv";}
        } 
        // fadd %f1 %f3 %f31(
        
        
        // else if(opcode == "fabs"){
        //     opcode = "fsgnjx.d"; a2 = a1;
        // }
        // ？ここから怪しい
        // 以下の疑似命令書かないようにお願い
        // else if(opcode == "blez") {opcode = "bge"; a2 =  ;}
        // else if(opcode == "bgez") {opcode = "bge"; a2 = a1; a1 = "zero";}
        // else if(opcode == "beqz" ||opcode == "bnez" || opcode == "bgez" || opcode == "bltz" ){
        //     a2 = a1; a1 = "zero";
        // }else if(opcode == "blez" || opcode == "bgtz"){// opcode == "beqz" ||opcode == "bnez" || opcode == "blez" ||opcode == "bgez" || opcode == "bltz" || opcode == "bgtz"){
        //     a2 = a1; a1 = a0;
        // }
        // string pre_rd = "";
        // if(op_load[pre_pc] != ""){
        //     // cout << "hazard pc " << pc << op_load[pc-4] << endl;
        //     // cout << pc-4 << op_load[pc-4] << endl;
        //     pre_rd = op_load[pc-4];
        // }
        // if(op_load[pc-4] == a1 || op_load[pc-4] == a2 || op_load[pc-4] == a3){
        // // if(line.find(pre_rd) < 100 && pre_rd != a0){
        //     cout << "hazard" << pre_rd << endl;
        //     // cout << 
        //     instr_count++;
        // }
        // bitset
        // 0になるまで割って；配列に入れて
        // vector<int> memory(SIZE);
        // cout << pc << " | " << opcode << " "<< a0 << " " << a1 << " "<< a2 << endl;
        int64_t op_num = op_to_num(opcode);
        op_pc[pc].op_num = op_num;
        // if(line.find("input") || line.find("output")){

        // }
        // Op op0; 
        // switch
        if(op_num >= 30 && op_num < 49){ //op0.conv_type(op_num_num) == R){
            // case R: //add rd,rs1,rs2
            op_pc[pc].rd =  reg_index(a0);
            op_pc[pc].rs1 = reg_index(a1);//reg_val.at(
            op_pc[pc].rs2 = reg_index(a2); 
            op_pc[pc].imm.i = 0;
            // continue;
        // }else if(op_num == 49){
        //     if(a0[0] == 'f' && a1[0] == 'f'){
        //         op_pc[pc].isreg_float = true;
        //     }
        //     op_pc[pc].rd =  reg_index(a0);
        //     if(op_pc[pc].label_sign) op_pc[pc].imm.i = reg_index(a1);
        //     else op_pc[pc].rs1 = reg_index(a1);
        //     // if(op_pc[pc].float_sign) op_pc[pc].f_imm = stof()
        //     // if(!(op_pc[pc]._sign)) op_pc[pc].imm.i = reg_index(a2);
        //     op_pc[pc].rs2 = 0;
        }else if(op_num >= 50 && op_num < 60){//} _type = I_1; 
            //addi rd,rs1,imm
            op_pc[pc].rd =  reg_index(a0);
            op_pc[pc].rs1 = reg_index(a1);
            // if(op_pc[pc].float_sign) op_pc[pc].f_imm = stof()
            if(!(op_pc[pc].float_sign)) op_pc[pc].imm.i = reg_index(a2);
            op_pc[pc].rs2 = 0;
            // cout << "l440" << op_pc[pc].rd<< endl;
        }else if(op_num >= 60 && op_num < 65){//} _type = I_2;
            //lw rd,offset(rs1) 
            op_pc[pc].rd = reg_index(a0);
            if(!(op_pc[pc].float_sign)) op_pc[pc].imm.i = reg_index(a1);
            op_pc[pc].rs1 = reg_index(a2);
            op_pc[pc].rs2 = 0;
            
            // continue;
        }else if(op_num >= 65 && op_num < 70){ //} _type = S;
            //sw rs2,offset(rs1)
            op_pc[pc].rs2 = reg_index(a0);
            if(!(op_pc[pc].float_sign)) op_pc[pc].imm.i = reg_index(a1);
            op_pc[pc].rs1 = reg_index(a2);
            op_pc[pc].rd = 0;
            // continue;
        }else if(op_num >= 70 && op_num <= 75){ //} _type = B; 
            //beq rs1,rs2,offset
            op_pc[pc].rs1=  reg_index(a0);
            op_pc[pc].rs2 = reg_index(a1);
            if(!(op_pc[pc].float_sign)) op_pc[pc].imm.i = reg_index(a2);
            op_pc[pc].rd = 0;
            // continue;
        }else if(op_num == 76){
            // case J : //	jal rd,offset
            op_pc[pc].rd = reg_index(a0);
            // if(!(op_pc[pc].float_sign)) op_pc[pc].imm.i = reg_index(a1);
            cout << a1 << endl;
            if(a1[0] == '%' || a1[0] == 'x'){
                op_pc[pc].rd = reg_index(a1);
            }else{
                op_pc[pc].imm.i = reg_index(a1);
            }
            op_pc[pc].rs2 = 0;
            // continue;
        }else if(op_num >= 77 && op_num < 80){ //} _type = U;
            // case U : //lui rd,imm
            op_pc[pc].rd = reg_index(a0);
            if(!(op_pc[pc].float_sign)) op_pc[pc].imm.i = reg_index(a1);
            op_pc[pc].rs1 = 0;
            op_pc[pc].rs2 = 0;
        }else if(op_num == 81){ //flw;
            //lw rd,offset(rs1) 
            op_pc[pc].rd = reg_index(a0);
            if(!(op_pc[pc].float_sign)) op_pc[pc].imm.i = reg_index(a1);
            op_pc[pc].rs1 = reg_index(a2);
            op_pc[pc].rs2 = 0;
            
        }else if(op_num == 82){ //}fsw; 
            op_pc[pc].rs2 = reg_index(a0);
            if(!(op_pc[pc].float_sign)) op_pc[pc].imm.i = reg_index(a1);
            op_pc[pc].rs1 = reg_index(a2);
            op_pc[pc].rd = 0;
            // continue;
        }else if(op_num == 10 || op_num == 11){ //}out
            op_pc[pc].rd = reg_index(a0);
            op_pc[pc].rs1 = 0;
            // continue;
        }else{ //} _type = F;
            op_pc[pc].rd =  reg_index(a0);
            op_pc[pc].rs1 = reg_index(a1);
            // op_pc[pc].imm.f = reg_index(a2);
            op_pc[pc].rs2 = reg_index(a2);
            op_pc[pc].rs3 = reg_index(a3);
            // cout << "l440" << op_pc[pc].rd<< endl;
        }
        // op_pc[pc] = {op_num, rd, rs1, rs2};
        
        pc += 4;
    }
        // core_calc(op_pc[pc]);
    // void core_calc(vector<int> opline, int pc){
    pc = pc_start;
    // reg_val.at(2) = SIZE;
    int pre_pc = pc_start+4;
    float frd, frs1, frs2, frs3, fimm;
    string filename2 = "finv_data.coe"; //inv
    in_data(filename2);
    //inv
    in_data_sqrt(); //array1
    while(pc < pc_size){
        // if(pc == 112){
        //     cout << pc << " " << con_line[pc] << endl;
        //     return -1;
        // }
        reg_val.at(0) = 0;
        freg.at(30) = 0;
        if(debug){
            if(con_label.count(pc)){
            // if(debug) 
                cout << '[' << con_label[pc] << "] (" << pc << ')' <<endl;
            }
        }
        
        if(debug) cout << "[" << pc << "]" << endl;
        if(debug) cout << con_line[pc] << endl;
        
        Op_words opline = op_pc.at(pc);
        int64_t rd, rs1, rs2, rs3;
        rd = 0; rs1 = 0; rs2 = 0; rs3 = 0; imm = 0;
        // Op_words opline;
        int op_num = opline.op_num;
        int64_t imm;
        // if(op_pc[pc].float_sign) imm.f = opline.imm.f;
        print_symbol = false;
        break_symbol = opline.break_sign;
        // if(break_symbol == true){ //break_symbol
        //     for(int i = 0; i < 32; i++){
        //         // if(i == 0){cout << i << " " << reg_val.at(i) << endl;}
        //         if(freg[i]){
        //             cout << i << " " << freg.at(i) << endl;
        //         }
        //         if(reg_val[i]){
        //             cout << i << " " << reg_val.at(i) << endl;
        //         }
        //     }
        // }
        string str_next;
        if(break_symbol) cout << "line" << con_line[pc] << endl;
        if(break_symbol == true || step_symbol == true){ //line.at(0) != ' '
            // cout << "line" << con_line[pc] << endl;
            cout << "   s or n or m" << endl; //step or next
            cin >> str_next;
            if(str_next == "m"){ //line.at(0) != ' '
                print_symbol = true;
                // cout << "   imm" << imm << "   # " << rd << " "<< rs1 <<" " << rs2 << endl;
                
                for(int i = 8192; i <= 9488; i++){
                    if(M.at(i).f){
                        cout << "FM[" << i << "] " << M.at(i).f << endl;
                    }
                    if(M.at(i).i){
                        cout << "M[" << i << "] " << M.at(i).i << endl;
                    }
                }
                for(int i = 0; i <= 32; i++){
                    if(freg[i]){
                        cout << "f" << i << " " << freg.at(i) << endl;
                    }
                    if(reg_val[i]){
                        cout << 'x' << i << " " << reg_val[i] << endl;
                    }
                }
                // auto begin = M.begin(), end = M.end();
                // for (auto iter = begin; iter != end; iter++) {
                //     // first: key, second: value
                //     cout << "M[" << iter->first << "] " << iter->second.i << "\n";
                // }
                cout << "   s or n" << endl; //step or next
                cin >> str_next;
                // break;
            }
            if(str_next == "s") {break_symbol = true; step_symbol = true; }
            else if(str_next == "n") step_symbol = false;
            // else 
            else break;
        }
        if(step_symbol == false) break_symbol = false; 
        debug = step_symbol;
        Op op; 
        switch(op.conv_type(op_num)){
            case R: //33-46
                // opcode, a0, a1,a2
                // add rd,rs1,rs2
                rd = 0;
                rs1 = reg_val.at(opline.rs1);
                rs2 = reg_val.at(opline.rs2);
                //a1, a2
                if(!fast_mode){
                    if(op_load.at(pre_pc/4) == opline.rs1 || op_load.at(pre_pc/4) == opline.rs2){
                    // if(line.find(pre_rd) < 100 && pre_rd != a0){
                        // cout << "hazard" << op_load[pre_pc] << endl;
                        // cout << 
                        clock_count++;
                    }
                } 
                if(op_num == 33){ //add
                    rd=rs1+rs2;
                    // pc += 4; //最後に
                }else if(op_num == 34){ //"sub"){
                    rd=rs1-rs2;
                    // pc += 4;
                }else if(op_num == 35){ //code == "xor"){
                    rd=rs1 xor rs2; //xor
                    // pc += 4;
                }else if(op_num == 36){ //code == "or"){
                    rd=rs1|rs2;
                    // pc += 4;
                }else if(op_num == 37){ //code == "and"){
                    rd=rs1&rs2;
                    // pc += 4;
                }else if(op_num == 38){ //code == "sll"){
                    rd=rs1<<rs2;
                    // pc += 4;
                }else if(op_num == 39){ //"srl"){
                    rd=rs1>>rs2;
                    // pc += 4;
                }else if(op_num == 40){ //"sra"){
                    rd=rs1>>rs2;
                    // pc += 4;
                }else if(op_num == 41){ //"slt"){
                    rd = (rs1 < rs2)?1:0;
                    // pc += 4;
                }else if(op_num == 42){ //"sltu"){
                    rd = (rs1 < rs2)?1:0;
                    // pc += 4;
                //Multiply Extention
                }else if(op_num == 43){ //opcode == "mul"){
                    rd = (rs1 * rs2)%((int)pow(2,32));//[31:0]
                    // pc += 4;
                }else if(op_num == 44){ //opcode == "mulh" || opcode == "mulsu" || opcode == "mulu"){
                    rd = (rs1 * rs2)%((int)pow(2,64));//[63:32]
                    // pc += 4;
                }else if(op_num == 45){ //opcode == "div" || opcode == "divu"){
                    rd = rs1/rs2;
                    // pc += 4;
                }else if(op_num == 46){ //opcode == "rem" || opcode == "remu"){
                    rd = rs1%rs2;
                    // pc += 4;
                }
                // if((a0[0] >= '0') && (a0[0] <= '9')){} 
                reg_val.at(opline.rd) = rd; 
                // if(break_symbol == true) 
                if(debug) cout << "   R " << rd << " "<< rs1 <<" " << rs2 << endl;
                instr_count++; //?
                pre_pc = pc; 
                pc += 4;
                continue;
            case I_1:
                // なぜa0?a1では？
                // opcode,a0,a1,a2,a3
                // if(op_num == 49){ //mv
                //     if(opline.float_sign) freg.at(opline.rd) = opline.imm.f;
                //     else if(opline.label_sign) reg_val.at(opline.rd) = opline.imm.i;
                //     else if(opline.isreg_float) freg.at(opline.rd) = freg.at(opline.rs1);
                //     else reg_val.at(opline.rd) = reg_val.at(opline.rs1);
                //     pre_pc = pc; 
                //     pc += 4;
                //     instr_count++;
                //     if(debug) cout << reg_val.at(opline.rd) << " freg " << freg.at(opline.rd) << endl;
                //     continue;
                // }
                rd = 0; //0 = opline.rd;
                // cout << opline.rs1 << endl;
                rs1 = reg_val.at(opline.rs1);
                // if(!opline.float_sign)
                imm = opline.imm.i;
                if(!fast_mode){ //op_load.at(pre_pc/4)){
                    if(op_load.at(pre_pc/4) == opline.rs1){ //a0?
                    // if(line.find(pre_rd) < 100 && pre_rd != a0){
                        // cout << "hazard" << op_load[pre_pc] << endl;
                        // cout << 
                        clock_count++;
                    }
                }
                pre_pc = pc;
                if(op_num == 50){ //code == "addi"){
                    
                    rd= rs1 +imm;
                    pc += 4;
                }else if(op_num == 51){ //code == "xori"){
                    rd=rs1 xor imm;
                    pc += 4;
                }else if(op_num == 52){ //code == "ori"){
                    rd=rs1|imm;
                    pc += 4;
                }else if(op_num == 53){ //code == "andi"){
                    rd=rs1&imm;
                    pc += 4;
                }else if(op_num == 54){ //opcode == "slli"){
                    rd = rs1 << (imm & ((1<<5)-1)); //そのままでも大丈夫かも
                    pc += 4;
                }else if(op_num == 55){ //opcode == "srli"){ //logical
                    rd = rs1 >> (imm & ((1<<5)-1)); //imm; //[0:4];
                    pc += 4;
                }else if(op_num == 56){ //opcode == "srai"){ //arith
                    rd = rs1 >> (imm & ((1<<5)-1));//[0:4];
                    pc += 4;
                }else if(op_num == 57){ //opcode == "slti"){
                    rd = (rs1 < imm)?1:0;
                    pc += 4;
                }else if(op_num == 58){ //opcode == "sltiu"){
                    rd = (rs1 < imm)?1:0;
                    pc += 4;
                }else if(op_num == 59){ //opcode == "jalr"){
                    rd=pc+4;
                    pc=rs1+imm;
                    if(debug) cout << "jalr " << rd << "next_pc" << pc << endl;
                } 
                // else 
                // if((a0[0] >= '0') && (a0[0] <= '9')){} 
                reg_val.at(opline.rd) = rd; 
                // if(break_symbol == true) 
                if(debug) cout << "   #I_1 " << rd << " "<< rs1 <<" " << rs2 << endl;
                // pre_pc = pc; pc += 4;
                instr_count++; //?
                continue;
            case I_2:
                // lw rd, imm(rs1)
                if(!fast_mode){
                    if(op_load.at(pre_pc/4) == opline.rs1){
                        // if(line.find(pre_rd) < 100 && pre_rd != a0){
                        // cout << "hazard" << op_load[pre_pc] << endl;
                        // cout << 
                        clock_count++;
                    }
                }
                
                rd = 0; //= opline.rd;
                imm = opline.imm.i;
                rs1 = reg_val.at(opline.rs1);//reg_index(a2)
                // num_i = 0;
                if(!fast_mode){
                    op_load.at(pc/4) = opline.rd;

                    addr = rs1 + imm;//reg_val[rs1]+imm; //?
                    if(addr < 0) addr = ~addr + 1;
                    // 一度intに変換；bitsetに直す
                    tag = addr >> (index_dig+offset_dig);
                    
                    index_ = (addr >> offset_dig) & ((1 << (index_dig))-1);
                    offset = addr & ((1<<offset_dig) - 1);//1111;
                    // cout << "addr,tag,index_,offset " << addr << " " << tag << " " << index_ << " " << offset << endl;
                    if(index_ < 0 || index_ > L_SIZE){
                        cout << index_ << endl;
                        return -1;
                    }
                    // else if(addr > MEMORY_SIZE){
                    //     cout << "addr" << addr << endl;
                    //     return -1;
                    // }
                    // valid1,dirty1,accessed
                    hit = false;
                    for (int i = 0; i < way_num; i++) {
                        // L1_way0; 一致していてかつvalid=1&&accessed=0なら
                        if((L1_tag[i].at(index_) == tag) && (L_status[i].at(index_).valid)){//>>acc_bit) & ((1<<2)-1)) == 0b10)){ //PMT1[index_].at(0) == 1 && PMT1[index_].at(1) == 0){
                            hit_count++;
                            hit = true;
                            break;
                        }
                    }
                    if(hit == false){
                        miss_count++;
        
                        way_idx = LRU(L_status, index_);
                        // way_idxがdirtyならdirty_miss; cleanならclean_miss
                        if((L_status[way_idx].at(index_)).dirty == 1){
                            dirty_miss++; //write backする前に判定
                            (L_status[way_idx].at(index_)).dirty = 0; //write backにより一致
                        }else{
                            clean_miss++;
                        }
                        // 他にやること？
                        L1_tag[way_idx].at(index_) = tag;
                        L_status[way_idx].at(index_).valid = 1;

                    } 
                }
                // cout << rs1+imm << endl;
                // ofstreamでファイル開いてchar型で
                // ofs << (char)x[rs]; //output
                // 256未満
                // レジスタの値を出力
                
                // if(special == true) rd = q;
                
                if(rs1+imm >= 8192 && rs1+imm <= 9488){
                    // if(rd <= -SIZE || rd >= SIZE){
                    // M.at(rs1+imm).i = (int64_t)M.at(rs1+imm).f
                    rd = (int64_t)M.at(rs1+imm).f;
                    // }
                }else rd = M.at(rs1+imm).i;
                // ofs << "load" << " " << M.at(rs1+imm) << endl;
                // if(print_symbol) printf("mem[%lld] %lld\n", rs1+imm, rd);

                
                pre_pc = pc; 
                pc += 4;
                // if((a0[0] >= '0') && (a0[0] <= '9')){} 
                reg_val.at(opline.rd) = rd; 
                // if(break_symbol == true) 
                if(debug) cout << "   #I_2 " << rd << " "<< rs1 <<" " << rs2 << endl;
                // num_i = 0;
                instr_count++; //?
                continue;
            case S:
                if(!fast_mode){
                    if(op_load.at(pre_pc/4) == opline.rd){
                        clock_count++;
                    }
                }
                rs1 = reg_val.at(opline.rs1);//reg_index(a2);
                rs2 = reg_val.at(opline.rs2);
                imm = opline.imm.i;
                // bool is_out = false;
                if(opline.rs1 == 5 && op_num == 67){
                    // is_out = true;
                    ofs << (char)rs2; // << endl;
                }
                // cout << "rs1 rs2 " << rs1 << " " << rs2 << endl;
                // num_i = 0;
                if(rs1+imm > MEMORY_SIZE){
                     for(int i = 0; i < 32; i++){
                        // if(i == 0){cout << i << " " << reg_val.at(i) << endl;}
                        if(freg[i]){
                            cout << i << " " << freg.at(i) << endl;
                        }
                        if(reg_val[i]){
                            cout << i << " " << reg_val.at(i) << endl;
                        }
                    }
                    cout << rs1+imm << "メモリオーバー" << MEMORY_SIZE << endl;
                    return -1;
                }
                if(fast_mode){
                    if(op_num == 65){ //code == "sb"){
                        // PMT1[index_].substr(3+tag_dig+4*data_num, 4) 
                        // L1_data[w][index_][data_num]= rs2%128; //convert(rs2%128,32);
                        M.at(rs1+imm).i = rs2%128; //reg_val[rs1]?
                    }else if(op_num == 66){ //code == "sh"){
                        // PMT1[index_].substr(3+tag_dig,data_num) = convert(rs2%65536, 32);
                        // L1_data[w][index_][data_num]= rs2%65536;
                        M.at(rs1+imm).i  = rs2%65536;
                    }else if(op_num == 67){ //code == "sw"){
                        // cout << "sw1" << endl; //4byte
        
                        M.at(rs1+imm).i  = rs2%4294967296;
                    }
                }else{
                    addr = rs1 + imm;//reg_val[rs1]+imm; //レジスタの中身+即値
                    if (addr < 0) addr = ~addr + 1;
                    // cout << addr << endl;
                    tag = addr >> (index_dig+offset_dig);
                    index_ = (addr >> offset_dig) & ((1 << (index_dig))-1);
                    offset = addr & (1<<offset_dig)-1;
                    // cout << "addr,tag,index_,offset " << addr << " " << tag << " " << index_ << " " << offset << endl;
                    
                    // valid1,dirty1,accessed
                    // L1_way0:データを保持していなかったら；　valid = 0
                    flag = 0;
                    for(int w=0; w < way_num; w++){ //way0,way1
                        // cout << "w " << w << "index_ " << index_ << endl;
                        // cout << "status" << L_status[w][index_].valid << endl;
                        if((L1_tag.at(w).at(index_) == tag) && (L_status.at(w).at(index_).valid)){ //at(0)
                            uint64_t data_num = uint64_t(offset);
                            if(op_num == 65){ //code == "sb"){
                                // PMT1[index_].substr(3+tag_dig+4*data_num, 4) 
                                // L1_data[w][index_][data_num]= rs2%128; //convert(rs2%128,32);
                                M[rs1+imm].i = rs2%128; //reg_val[rs1]?
                            }else if(op_num == 66){ //code == "sh"){
                                // PMT1[index_].substr(3+tag_dig,data_num) = convert(rs2%65536, 32);
                                // L1_data[w][index_][data_num]= rs2%65536;
                                M[rs1+imm].i  = rs2%65536;
                            }else if(op_num == 67){ //code == "sw"){
                                // cout << "sw1" << endl;
                                M[rs1+imm].i  = rs2%4294967296;
                            }
                            // L1_status[w][index_] = 100;
                            L_status.at(w).at(index_).valid = 1;
                            // dirty;まだメモリには書いてないことに
                            L_status.at(w).at(index_).dirty = 1;
                            if(L_status.at(w).at(index_).acc < 8) L_status.at(w).at(index_).acc += 1;
                            // L1_tag.at(w).at(index_) = tag;
                            flag = 1;
                            hit_count++;
                            break;
                            // cout << L_status.at(w)[index_].acc << endl;
                        }
                        // if(print_symbol) printf("mem[%lld] %lld\n", rs1+imm, M[rs1+imm]);
                    }
                    if(flag == 0){
                        // missしたためLRUで探す
                        miss_count++;
                        // cout << "goto LRU" << endl;
                        way_idx = LRU(L_status, index_);
                        // way_idxを追い出してそこに入れる;
                        // 追い出した時の処理必要
                        flag = 1;
                        // uint64_t data_num = uint64_t(offset);
                        int w = way_idx;
                        // valid,dirty,accessed
                        // LRUのway_idxに入っていたデータをメモリに移行してからそこに書き込み
                        if(op_num == 65){ //"sb"){
                            // PMT1[index_].substr(3+tag_dig+4*data_num, 4) 
                            // L1_data.at(w)[index_][data_num]= rs2%128; //convert(rs2%128,32);
                            M[rs1+imm].i  = rs2%128; //reg_val[rs1]?
                        }else if(op_num == 66){ //code == "sh"){
                            // PMT1[index_].substr(3+tag_dig,data_num) = convert(rs2%65536, 32);
                            // L1_data[w][index_][data_num]= rs2%65536;
                            M[rs1+imm].i  = rs2%65536;
                        }else if(op_num == 67){ //code == "sw"){
                            // L1_data[w][index_][data_num]= rs2%4294967296;
                            // L1_status[w][index_] = 110;
                            // cout << "sw2" << endl;
                            M[rs1+imm].i  = rs2%4294967296;
                        }
                        (L_status[way_idx].at(index_)).valid = 1; 
                        L_status[way_idx].at(index_).dirty = 1;
                        if(L_status.at(w).at(index_).acc < 8) L_status[way_idx].at(index_).acc += 1;  
                        L1_tag.at(w).at(index_) = tag;

                        flag = 1;
                        
                    }
                }
                pre_pc = pc; 
                pc += 4;
                if(debug) cout << "   #S " << M.at(rs1+imm).i << " "<< rs1 <<" " << imm << endl;
                instr_count++; //?
                continue;
            case B:
                // cout << pre_rd << op_load[pre_pc] <<  a0 << a1 << endl;
                if(!fast_mode){
                    if(op_load.at(pre_pc/4) == opline.rs1 || op_load.at(pre_pc/4) == opline.rs2){
                        // if(line.find(pre_rd) < 100 && pre_rd != a0){
                        // cout << "hazard" << op_load[pre_pc] << endl;
                        // cout << 
                        clock_count++;
                    }
                }    
                rs1 = reg_val.at(opline.rs1);//reg_index(a2);
                rs2 = reg_val.at(opline.rs2);
                imm = opline.imm.i;
                // rs2 = rs1; rs1 = rd; 
                // if(sign_imm == 1) imm = -imm;
                // if(break_symbol == true) 
                // cout << "   # "  << rs1 <<" " << rs2 << endl;
                // 分岐不成立と予測し、成立していたら一回ストール
                pre_pc = pc;
                if(op_num == 70){ //opcode == "beq"|| opcode == "beqz"){
                    if(rs1 == rs2) {pc += imm; clock_count+= 2;}
                    else {pc += 4;}
                }else if(op_num == 71){ //opcode == "bne"|| opcode == "bnez"){
                    if(rs1 != rs2) { pc += imm; clock_count+= 2;}
                    else {pc += 4;}
                }//ここ抜け
                else if(op_num == 72){ //opcode == "blt" || opcode == "bgt"){
                    // cout << pc << " " << imm << endl;
                    if(rs1 < rs2) { pc += imm; clock_count+= 2;}
                    else {pc += 4;}
                    // cout << "pc" << pc << endl;
                }else if(op_num == 73){ //opcode == "bge"|| opcode == "ble"){
                    if(rs1 >= rs2) {
                        pc += imm; 
                        clock_count+= 2;
                    }
                    else {pc += 4;}
                }else if(op_num == 74){ //opcode == "bltu"||opcode == "bgtu"){
                    if(rs1 < rs2) { pc += imm; clock_count+= 2;}
                    else {pc += 4;}
                }else if(op_num == 75){ //opcode == "bgeu"||opcode == "bleu"){
                    if(rs1 >= rs2) {pc += imm; clock_count+= 2;}
                    else {pc += 4;}
                }
                // cout << "pc" << pc << endl;
                // jumpの処理？
                if(debug) cout << "  #B " << rs1 <<" " << rs2 <<" " << imm << endl;
                instr_count++; //?
                continue;
            case J:
                imm = opline.imm.i;
                // cout << opline.rd << endl;
                // cout << "Imm" << imm << endl;
                // sign_imm = 0;
                // if(imm < 0){
                //     imm = -imm;
                //     sign_imm = 1;
                //     // cout << "前にジャンプ" << imm << endl;
                // }
                rd = 0; //0 = opline.rd;
                if(op_num == 76){ //opcode == "jal"){
                    // if(jal_reg){
                    //     imm = reg_val.at(opline.rs1);
                    // }
                    rd=pc+4; 
                    pre_pc = pc; 
                    pc+=imm;
                    
                    // cout << "   jal pc " << pc << endl;
                }
                
                // if((a0[0] >= '0') && (a0[0] <= '9')){} 
                reg_val.at(opline.rd) = rd; 
                // if(break_symbol == true) 
                if(debug) cout << "  #J " << rd << " "<< imm << endl; //rs1 <<" " << rs2 << endl;
                // cout << "pc " << pc << "rd" << rd << endl;
                instr_count++; //?
                continue;
            // case I:
                // if(opcode == "jalr"){
                //     rd=pc+4;pc=rs1+imm;
            // }else 
            case U:
                imm = opline.imm.i;
                if(op_num == 77){ //opcode == "lui"){
                    rd = imm << 12;
                }else if(op_num == 78){ //opcode == "auipc"){
                    rd=pc+(imm<<12);
                }else if(op_num == 79){ //opcode == "addj"){
                    rd = imm;
                }
                pre_pc = pc; 
                pc += 4;
                // if((a0[0] >= '0') && (a0[0] <= '9')){} 
                reg_val.at(opline.rd) = rd; 
                // if(break_symbol == true) 
                if(debug) cout << "   #U " << rd << " "<< imm << endl;
                instr_count++; //?
                continue;
            case O:     
                if(op_num == 10){ 
                    rd = reg_val.at(opline.rd);
                    ofs << (char)rd; // << endl; // << endl; 
                    
                }else if(op_num == 11){      
                    q = que.front();
                    que.pop();
                    if(q < -SIZE || q > SIZE){
                        q = bit_to_float(q); //これはfloat
                        freg.at(opline.rd) = q;
                    } 
                    // floatレジスタと場合分け必要
                    else reg_val.at(opline.rd) = (int)q;
                    if(debug) cout << "pop_count " << pop_count << endl;
                    pop_count++;
                    if(pop_count >= 325){ //326までok
                        cout << "pop_count " << pop_count << endl;
                        step_symbol = true; debug = true;
                        string str1;
                        cin >> str1;
                    }
                }
                if(debug) cout << reg_val.at(opline.rd) << " " << opline.rd << endl;
                pre_pc = pc;
                pc += 4;
                continue;               
            case F:
                // flw	%f2, 0(%x5)
                // flw rd, imm()
                
                frd = 0; frs1 = 0; frs2 = 0; frs3 = 0; fimm = 0;
                // 事前設定？
                if(op_num == 81){ //"flw"){
                    if(!fast_mode){
                        if(op_load.at(pre_pc/4) == opline.rs1){
                            clock_count++;
                        }
                    } 
                    // frd = 0;
                    rs1 = reg_val.at(opline.rs1);//reg_index(a2);
                    if(opline.float_sign) fimm = opline.imm.f; //0や4
                    else imm = opline.imm.i;
                    if(!fast_mode){
                        op_load.at(pc/4) = opline.rd;
                        addr = (rs1 + imm);//round//reg_val[rs1]+imm; //?
                        if(addr < 0) addr = ~addr + 1;
                        // 一度intに変換；bitsetに直す
                        tag = addr >> (index_dig+offset_dig);
                        
                        index_ = (addr >> offset_dig) & ((1 << (index_dig))-1);
                        offset = addr & ((1<<offset_dig) - 1);//1111;
                        // cout << "addr,tag,index_,offset " << addr << " " << tag << " " << index_ << " " << offset << endl;
                        if(index_ < 0 || index_ > L_SIZE){
                            cout << index_ << endl;
                            return -1;
                        }
                    // valid1,dirty1,accessed
                        hit = false;
                        for (int i = 0; i < way_num; i++) {
                            // L1_way0; 一致していてかつvalid=1&&accessed=0なら
                            if((L1_tag[i].at(index_) == tag) && (L_status[i].at(index_).valid)){//>>acc_bit) & ((1<<2)-1)) == 0b10)){ //PMT1[index_].at(0) == 1 && PMT1[index_].at(1) == 0){
                                hit_count++;
                                hit = true;
                                break;
                            }
                        }
                        if(hit == false){
                            miss_count++;
        
                            way_idx = LRU(L_status, index_);
                            // way_idxがdirtyならdirty_miss; cleanならclean_miss
                            if((L_status[way_idx].at(index_)).dirty == 1){
                                dirty_miss++; //write backする前に判定
                                (L_status[way_idx].at(index_)).dirty = 0; //write backにより一致
                            }else{
                                clean_miss++;
                            }
                            // 他にやること？
                            L1_tag[way_idx].at(index_) = tag;
                            L_status[way_idx].at(index_).valid = 1;
                        } 
                    }
                    if(special == true) freg.at(opline.rd) = q;
                    else freg.at(opline.rd) = M.at(rs1+imm).f; //round(frs1+fimm)
                    // else freg.at(opline.rd) 
                    // ofs << "load" << " " << M.at(rs1+imm) << endl;
                    // if(print_symbol) printf("mem[%lld] %lld\n", rs1+imm, freg.at(opline.rd));
                    // if((a0[0] >= '0') && (a0[0] <= '9')){} 
                    freg.at(opline.rd) = freg.at(opline.rd); 
                        // freg[frd] = M.at(rs1 + imm);
                    // if(debug) cout << "   #flw " << frd << " "<< rs1 <<" " << imm << endl;
                    pre_pc = pc; 
                    pc += 4;
                    instr_count++;
                    continue;
                }else if(op_num == 82){ //opcode == "fsw"){ //怪しい？
                    if(!fast_mode){
                        if(op_load.at(pre_pc/4) == opline.rs1 || op_load.at(pre_pc/4) == opline.rs2){
                            clock_count++;
                        }
                    }
                    rs1 = reg_val.at(opline.rs1);//reg_index(a2);
                    frs2 = freg.at(opline.rs2);
                    if(opline.float_sign) fimm = opline.imm.f;
                    else imm = opline.imm.i;
                    // M.at(rs1 + imm).f = rs2;
                    if(fast_mode){
                        // M.at(rs1+imm).i = 0;
                        M.at(rs1+imm).f = frs2;
                    }else{
                        addr = rs1+imm; //round(frs1 + fimm);//reg_val[rs1]+imm; //レジスタの中身+即値
                        // cout << frs1 + fimm << " " << addr << endl;
                        if (addr < 0) addr = ~addr + 1;
                        // cout << addr << endl;
                        tag = addr >> (index_dig+offset_dig);
                        index_ = (addr >> offset_dig) & ((1 << (index_dig))-1);
                        offset = addr & (1<<offset_dig)-1;
                        // cout << "addr,tag,index_,offset " << addr << " " << tag << " " << index_ << " " << offset << endl;
                            
                        // valid1,dirty1,accessed
                        // L1_way0:データを保持していなかったら；　valid = 0
                        flag = 0;
                        for(int w=0; w < way_num; w++){ //way0,way1
                            // cout << "w " << w << "index_ " << index_ << endl;
                            // cout << "status" << L_status[w][index_].valid << endl;
                            if((L1_tag.at(w).at(index_) == tag) && (L_status.at(w).at(index_).valid)){ //at(0)
                                uint64_t data_num = uint64_t(offset);
                                M[rs1+imm].f  = frs2; //round(frs1+fimm)
                                L_status.at(w).at(index_).valid = 1;
                                // dirty;まだメモリには書いてないことに
                                L_status.at(w).at(index_).dirty = 1;
                                if(L_status.at(w).at(index_).acc < 8) L_status.at(w).at(index_).acc += 1;
                                // L1_tag.at(w).at(index_) = tag;
                                flag = 1;
                                hit_count++;
                                break;
                            }
                            
                            // cout << L_status.at(w)[index_].acc << endl;
                        }
                        if(flag == 0){
                            // missしたためLRUで探す
                            miss_count++;
                            // cout << "goto LRU" << endl;
                            way_idx = LRU(L_status, index_);
                            // way_idxを追い出してそこに入れる;
                            // 追い出した時の処理必要
                            flag = 1;
                            // uint64_t data_num = uint64_t(offset);
                            int w = way_idx;
                            M[rs1+imm].f = frs2; //round(frs1+fimm)
                            (L_status[way_idx].at(index_)).valid = 1; 
                            L_status[way_idx].at(index_).dirty = 1;
                            if(L_status.at(w).at(index_).acc < 8) L_status[way_idx].at(index_).acc += 1;  
                            L1_tag.at(w).at(index_) = tag;

                            flag = 1;
                        }
                    }
                    if(debug) cout << "   #fsw " << M.at(rs1+imm).f << " "<< rs1 <<" " << imm << endl;
                    pre_pc = pc; pc += 4;
                    instr_count++;
                    continue;
                }else if(op_num == 1){ //oopcode == "fmv"){
                    freg.at(opline.rd) = opline.imm.f; //*((int*) &frs1);
                    if(debug) cout << "   #fmv " << freg.at(opline.rd) << " "<< opline.imm.f<< endl;
                    pre_pc = pc; pc += 4;
                    instr_count++;
                    continue;
                }
                // if(op_num >= 83){
                    // float rd, rs1, rs2, rs3;
                if(!fast_mode){
                    if(op_load.at(pre_pc/4) ==  opline.rs1|| op_load.at(pre_pc/4) == opline.rs2 || op_load.at(pre_pc/4) == opline.rs3){
                        clock_count++;
                    }
                }
                // }
                // else{
                //     pc += 4;
                //     continue;
                // }
                frs1 = freg.at(opline.rs1);//reg_index(a2);
                frs2 = freg.at(opline.rs2);
                frs3 = freg.at(opline.rs3);
                Bit32 y, b_rs1, brd;
                if(op_num == 83){ //code == "fmadd.s"){
                    freg.at(opline.rd)=frs1*frs2+frs3;
                }else if(op_num == 84){ //opcode == "fmsub.s"){
                    freg.at(opline.rd)=frs1*frs2-frs3;
                }else if(op_num == 85){ //oopcode == "fnmadd.s"){
                    freg.at(opline.rd)=-frs1*frs2+frs3;
                }else if(op_num == 86){ //oopcode == "fnmsub.s"){
                    freg.at(opline.rd)=-frs1*frs2-frs3;
                }else if(op_num == 87){ //oopcode == "fadd.s"){
                    // freg.at(opline.rd)=frs1+frs2;                    
                    brd = fadd(f_to_bit(frs1), f_to_bit(frs2));
                    freg.at(opline.rd) = bit_to_float(brd);
                    // if(debug) 
                    // ofs2 << "fadd " << freg.at(opline.rd) << " ans " << frs1+frs2 << endl;
                    clock_count += 3;
                }else if(op_num == 88){ //oopcode == "fsub.s"){
                    // freg.at(opline.rd)=frs1-frs2;
                    brd = fsub(frs1, frs2); //fsub引数はfloatのままでok
                    freg.at(opline.rd) = bit_to_float(brd);
                    // if(debug) 
                    // ofs2 << "fsub " << frd << " ans " << frs1-frs2 <<  endl;
                    // ofs2 << frs1 << frs2 << endl;
                    clock_count += 3;
                }else if(op_num == 89){ //oopcode == "fmul.s"){
                    // frd=frs1*frs2;
                    brd = fmul(f_to_bit(frs1), f_to_bit(frs2));
                    freg.at(opline.rd) = bit_to_float(brd);
                    // if(debug) 
                    // ofs2 << "fmul " << freg.at(opline.rd) << " ans " << frs1*frs2 << endl;
                    clock_count += 3;
                }else if(op_num == 90){ //oopcode == "fdiv.s"){
                    // frd=frs1/frs2;
                    brd = fdiv(f_to_bit(frs1), f_to_bit(frs2));
                    freg.at(opline.rd) = bit_to_float(brd);
                    // if(debug) 
                    // ofs2 << "fdiv " << freg.at(opline.rd) << " ans " << frs1/frs2 << endl;
                    clock_count += 3;
                }else if(op_num == 91){ //oopcode == "fsqrt.s"){
                    // freg.at(opline.rd) = sqrt(frs1);
                    brd = fsqrt(f_to_bit(frs1));
                    freg.at(opline.rd) = bit_to_float(brd);
                    // if(debug) 
                    // ofs2 << "fsqrt " << freg.at(opline.rd) << " ans " << sqrt(frs1)  << endl;
                    clock_count += 3;
                }else if(op_num == 92){ //oopcode == "fsgnj.s"){
                    freg.at(opline.rd) = abs(frs1) * sign(frs2);
                }else if(op_num == 93){ //oopcode == "fsgnjn.s"){
                    freg.at(opline.rd) = abs(frs1) * -sign(frs2);
                // }else if(op_num == 94){ //oopcode == "fsgnjx.s"){
                //     freg.at(opline.rd) = frs1 * sign(frs2);
                }else if(op_num == 94){ //oopcode == "fabs"){
                    brd = fabs(f_to_bit(frs1));
                    freg.at(opline.rd) = bit_to_float(brd);
                    clock_count += 3;
                    // cout << freg.at(opline.rd) << " ans " << frs1 * sign(frs1) << endl;
                }else if(op_num == 95){ //oopcode == "fmin.s"){
                    freg.at(opline.rd) = min(frs1, frs2);
                }else if(op_num == 96){ //oopcode == "fmax.s"){
                    freg.at(opline.rd) = max(frs1, frs2);
                }else if(op_num == 97){ //oopcode == "fcvt.s.w"){
                    freg.at(opline.rd) = (float) frs1;
                    clock_count += 1;
                }else if(op_num == 98){ //oopcode == "fcvt.s.wu"){
                    freg.at(opline.rd) = (float) frs1;
                }else if(op_num == 99){ //oopcode == "fcvt.w.s"){
                    freg.at(opline.rd) = (int32_t) frs1;
                    clock_count += 1;
                }else if(op_num == 0){ //oopcode == "fcvt.wu.s"){
                    freg.at(opline.rd) = (uint32_t) frs1;
                // }else if(op_num == 1){ //oopcode == "fmv.x.w"){
                //     freg.at(opline.rd) = *((int*) &frs1);
                }else if(op_num == 2){ //oopcode == "fmv.w.x"){
                    freg.at(opline.rd) = *((float*) &frs1);
                }else if(op_num == 3){ //oopcode == "feq.s"){
                    // frd = (frs1 == frs2) ? 1 : 0;   
                    reg_val.at(opline.rd) = feq(f_to_bit(frs1), f_to_bit(frs2));
                    clock_count += 3;
                }else if(op_num == 4){ //oopcode == "flt.s"){
                    reg_val.at(opline.rd) = (frs1 < frs2) ? 1 : 0;
                    clock_count += 3;
                }else if(op_num == 5){ //oopcode == "fle.s"){
                    // frd = (frs1 <= frs2) ? 1 : 0;
                    reg_val.at(opline.rd) = fle(f_to_bit(frs1), f_to_bit(frs2));
                    // ofs2 << frd << " ans " << ((frs1 <= frs2) ? 1 : 0) << endl;
                }
                // if(op_num >= 83 || op_num <= 5){
                //     freg.at(opline.rd) = frd; 
                //     if(debug) cout << "   # " << frd << " "<< frs1 <<" " << frs2 << endl;
                // }
                else if(op_num == 6){ //oopcode == "ftoi"){
                    // ftoi	%x5, %f0
                    // reg_val.at(opline.rd) = round(frs1);
                    // cout << "ftoi " << reg_val.at(opline.rd) << " " << frs1 << endl;
                    b_rs1 = f_to_bit(frs1);
                    int64_t z = ftoi(b_rs1);
                    // cout << y << endl;
                    // uintをintに
                    reg_val.at(opline.rd) = z; //bit_to_float(y);
                    clock_count += 3;
                    // if(debug) 
                    // ofs2 << "ftoi " << reg_val.at(opline.rd) << " ans " << (int)frs1 << endl;
                    // b_rs1 = f_to_bit(frs1);
                    // y = ftoi(b_rs1);
                    // cout << y << endl;
                    // // uintをintに
                    // reg_val.at(opline.rd) = y; //bit_to_float(y);
                    // cout << "ftoi " << reg_val.at(opline.rd) << " " << frs1 << endl;
                }else if(op_num == 7){ //oopcode == "itof"){
                    // itof	%f0, %x5
                    // freg.at(opline.rd) = (float)(reg_val.at(opline.rs1));
                    // b_rs1 = f_to_bit(frs1);
                    // b_rs1 = reg_val.at(opline.rs1);
                    // y = itof(b_rs1);
                    // freg.at(opline.rd) = bit_to_float(y);  
                    // cout << "itof"<< reg_val.at(opline.rs1) << " "  << freg.at(opline.rd)  << endl;
                    b_rs1 = reg_val.at(opline.rs1); //ok
                    y = itof(b_rs1);
                    freg.at(opline.rd) = bit_to_float(y);  
                    clock_count += 3;
                    // if(debug) 
                    // ofs2 << "itof"<< freg.at(opline.rd) << " "  << (float)(reg_val.at(opline.rs1))  << endl;
                }
                // freg.at(opline.rd) = frd; 
                // else if(opcode == "fclass.s"){
                //     rd = 0..9;
                // }
                pre_pc = pc; 
                pc += 4;
                // if((a0[0] >= '0') && (a0[0] <= '9')){} 
                
                // if(break_symbol == true) 
                // cout << "[" << pre_pc << "] " << op_num << endl;
                
                instr_count++; //?
                continue;
            default:
                continue;
            
        }
        reg_val.at(0) = 0;   
        // if(break_symbol == true){ //line.at(0) != ' '
        //     cout << "   found * " << endl;
        //     cout << "   imm" << imm << "   # " << rd << " "<< rs1 <<" " << rs2 << endl;
        //     for(int i = 0; i < 32; i++){
        //         cout << i << reg_val[i] << endl;
        //     }
        //     break;
        // }
        // if(debug == true){
        // // print mem[0:10]
        // if(debug_op.find("print mem") < 100){
        //         print_mem = true;
        //     }
        // }
        // Transfer control to OS 
        // Transfer control to debugger
        // case F:
        
        // reg_index(a0)を何かでおくor ポインタ？
            
        // if((a0[0] >= '0') && (a0[0] <= '9')){} 
        // else reg_val[reg_index(a0)] = rd; 
        // cout << "# " << rd << " "<< rs1 <<" " << rs2 << endl;
        // if((a1[0] >= 48) && (a1[0] <= 57)) {}//imm = (int64_t)reg_index(a1);
        // else reg_val[reg_index(a1)] = rs1;
        // if((a2[0] >= 48) && (a2[0] <= 57)) {} //imm = (int64_t)reg_index(a2);
        // else reg_val[reg_index(a2)] = rs2; //L1でセグフォ
        
        // cout << "rs1 " << rs1 << endl;
    } 
    
    for(int i = 0; i <= 32; i++){
        // if(i == 0){cout << i << " " << reg_val.at(i) << endl;}
        if(freg.at(i)){
            cout << "f" << i << " " << freg.at(i) << endl;
        }
        if(reg_val[i]){
            cout << 'x' << i << " " << reg_val.at(i) << endl;
        }
        
    }
    cout << "hit miss " << hit_count << " " << miss_count << endl;
    if(!fast_mode) cout << hit_count/(hit_count+miss_count) << endl;
    cout << "clean dirty " << clean_miss << " " << dirty_miss << endl;
    cout << "実行命令数 " << instr_count << endl;
    clock_count = instr_count + clock_count;
    if(!fast_mode) cout << "クロック数" << clock_count << endl;
    clock_t end = clock();     // 終了時間
    std::cout << "duration = " << (double)(end - start) / CLOCKS_PER_SEC << "sec.\n";
    // cout << "fileclose" << endl;
    // file2.close();
    puts("実行時間予測");
    // 50MHz
    cout << clock_count / (50 * pow(10,6)) << "sec" << endl;
    return 0;
}

//  if((a0[0] >= '0') && (a0[0] <= '9')){
//             // cout << a0 << endl; 
//             imm = reg_index(a0);
//         } 
//         else if(reg_index(a0) < 32) rd =  reg_val[reg_index(a0)]; //, M[reg_index(a0)]); 
//         else{ 
//             q = que.front();
//             que.pop();
//         }
//         // cout << "puts" << endl; //ok
//         bool imm_a1, imm_a2, imm_a3;
//         imm_a1 = false; imm_a2 = false; imm_a3 = false;
//         if(((a1[0] >= '0') && (a1[0] <= '9')) || (a1[0] == '-')){
//             imm = reg_index(a1);
//             imm_a1 = true;
//             rs1 = reg_index(a2);
//             rs2 = reg_index(a3); //L1でセグフォ
//         }else if(((a2[0] >= '0') && (a2[0] <= '9')) || (a2[0] == '-')) {
//             imm = reg_index(a2);
//             imm_a2 = true;
//             rs1 = reg_index(a1);
//             rs2 = reg_index(a3); //L1でセグフォ
//         }else if(((a3[0] >= '0') && (a3[0] <= '9')) || (a3[0] == '-')){
//             imm = (int64_t)reg_index(a3);
//             imm_a3 = true;
//             rs1 = reg_index(a1);//reg_val.at(
//             rs2 = reg_index(a2); //L1でセグフォ
//         }else{
//             rs1 = reg_index(a1);
//             rs2 = reg_index(a2); //L1でセグフォ
//         }
//         // if(!imm_a1) rs1 = reg_val[reg_index(a1)];
//         // if(!imm_a2) rs2 = reg_val[reg_index(a2)]; //L1でセグフォ
//         if((!imm_a3) && !(a3.empty())) rs3 = reg_index(a3);
//         // cout << "rs1,…" << endl;
        
//         // else {}
//         // cout << "l241" << rd << rs1 << rs2 <<endl;
//         // bitset<100> imm(imm_int);
        
//         // int pc;
//         // int num_i;
//         // constexpr size_t 
