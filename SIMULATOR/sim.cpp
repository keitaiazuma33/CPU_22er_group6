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
#include <unistd.h>
// #include "sim_cache_index.hpp"
// #include "op_type.hpp"
// #include "sub_func.hpp"
// #include "reg.hpp"
// #include "IO/reader.py"
// #include "const.hpp"
using namespace std;
#define SIZE 1024
#define ull uint64_t
#define Bit32 unsigned int
#define Bit64 unsigned long long

bool debug = false;
bool print_mem = false; //false
string debug_op;
// int break_line;
string break_label;
string debugmode(int argc, char* argv[]){
    
    
    int i, opt;

    opterr = 0; //getopt()のエラーメッセージを無効にする。

    while ((opt = getopt(argc, argv, "fgdh:")) != -1) {
        //コマンドライン引数のオプションがなくなるまで繰り返す
        switch (opt) {
            case 'f':
                printf("-fがオプションとして渡されました\n");
                break;

            case 'g':
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
bool special;
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
        else if(op == "gp") num = 3; //ヒープポインタ？
        else if(op == "tp") num = 24; //一時レジスタ
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
        // else if(op == "s8") num = 24;
        else if(op == "s9") num = 25;
        else if(op == "s10") num = 26;
        else if(op == "s11") num = 27;
        else if(op == "t3") num = 28;
        else if(op == "t4") num = 29;
        else if(op == "t5") num = 30;
        else if(op == "t6") num = 31;
        else if(a0 == ""){}
        else{
            // 特別なアドレス
            special = 1;
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
// ppmファイル
template<typename T>
T read_binary_as(std::istream& is)
{
    T val;
    is.read(reinterpret_cast<char*>(std::addressof(val)),
            sizeof(T));
    return val;
}

// const auto i = read_binary_as<std::int32_t>(ifs);
queue<int32_t> que; //<auto>?
string s = "/Users/maimai/my-3A/cpu-simu/sim_result.txt";
ofstream ofs(s);
void sld_to_ppm(){
    string filename ("contest.dat"); //asm_3
    vector<string> lines;
    string line;
    string s1 = "/Users/maimai/my-3A/cpu-simu/sim_contest.ppm";
    ofstream ofs1(s1);
    ifstream file(filename, ios::binary);
    // ifstream file;
    // file = ifstream(filename, ios::binary);
    // std::int32_t i;
    if (!file.is_open()) {
        cerr << "Could not open the file - '"
             << filename << "'" << endl;
        // return EXIT_FAILURE;
    }
    // 第二引数で示された文字数だけ読み込み、第一引数で示された位置へその内容を書き込む
    // 4byteだけ読み込み、アドレスiへ書き込み
    // int i = 0;
    // while(addressof(i)){
    //     file.read(reinterpret_cast<char*>(std::addressof(i)),
    //      sizeof(std::int32_t)/* or simply 4 */);
        
    //     i += sizeof(std::int32_t);
    // }
    while(!file.eof()){
        // const auto 
        int32_t i = read_binary_as<std::int32_t>(file);
        ofs1 << i << endl;
        que.push(i);

    }
}
#define SIZE 1024
// #include <sim_cathe.hpp>
vector<int64_t> reg_val(SIZE);
// vector<int64_t> M(SIZE);
map<int64_t, int64_t> M;
vector<vector<int64_t> > L1(SIZE/10);
// vector<vector<int> > L2(SIZE/10);
struct Status{
    int valid;
    int dirty;
    int acc; //accesessed
};
vector<vector <Status> > L_status(2, vector<Status>(SIZE));
vector<vector <uint64_t> > L1_tag(2, vector<uint64_t>(SIZE));
int64_t rd, rs1, rs2, rs3;
int64_t imm;
Bit32 addr = 0;
uint64_t tag, index_, offset;
int offset_dig, index_dig, tag_dig;
int hit_count, miss_count;
int dirty_miss, clean_miss;
map<int, string> op_load;
int way_num = 2;
int way_idx;
int acc_bit = 3;//acceseed3bit

// #include "const.hpp"
// string s = "/Users/maimai/my-3A/cpu-simu/sim_result.txt";
// ofstream ofs(s);
int LRU(vector<vector <Status> > L_status, uint64_t index_){
    // 一番accessedが低いものを選ぶ
    int min_way = 0;
    int acc_min = 0;
    int  acc_max;
    // ofs << "LRU ";
    for (int i = 0; i < way_num; i++) {
        // L1_way0; 一致していてかつvalid=1&&accessed=0なら
        // ofs << "acc" << L_status[i][index_].acc << endl;
        if(L_status[i][index_].acc <= acc_min){
            min_way = i;
            acc_min = L_status[i][index_].acc;
        }else if(L_status[i][index_].acc >= acc_max){
            acc_max = L_status[i][index_].acc;
        }
    }
    // L_status[min_way][index_].dirty = 0;
    if(acc_max < 7){
        L_status[min_way][index_].acc = acc_max;    
    } 
    else{
        for (int i = 0; i < way_num; i++) {
            L_status[i][index_].acc = 0;
        }
    }
    // ofs << "min_way " << min_way << endl;
    return min_way;
    // way_idxを返す
}


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
    string filename ("ack_ans2.s"); //asm_3
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
    while(getline(file, line)){
        // ラベルを見つけたらmap配列に格納
        //  map<string, int> score; 
        // １回読み込んでvectorに変換しておく
        cout << "PC " << pc << endl;
        if(line.find(':') < 100){ 
            line.erase(line.find(':')); //?
            if(line.find("min_caml_start") != std::string::npos){
                pc_start = pc;
            }
            label[line] = pc; 
            con_label[pc] = line;
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
    pc = pc_start;
    
    int instr_count = 0;
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
        if(con_label.count(pc)){
            // cout << '[' << con_label[pc] << "] (" << pc << ')' <<endl;
            // if((con_label[pc]).find(break_label) != std::string::npos){
            //     // cout << "yes" << endl;
            //     break;
            // }
        }
        special = false;
        
        // instr_count++; //?
        line = con_line[pc];
        // if(break_symbol == true) 
        // cout << "line" << line << endl;
        line += '\n';
        // cout << "   pc " << pc << endl;
        vector<string> words; //[0];
        words.clear();
        string word = "";
        int32_t q;
        string str_next;
        reg_val[0] = 0;
        // cout << "l434" << endl;
        if(break_symbol == true){ //line.at(0) != ' '
                cout << "   s or n or m" << endl; //step or next
                cin >> str_next;
                if(str_next == "m"){ //line.at(0) != ' '
                    print_symbol = true;
                    // cout << "   imm" << imm << "   # " << rd << " "<< rs1 <<" " << rs2 << endl;
                    for(int i = 0; i < 32; i++){
                        if(i == 0){cout << i << " " << reg_val[i] << endl;}
                        else if(reg_val[i]){
                            cout << i << " " << reg_val[i] << endl;
                        }
                    }
                    cout << "   s or n" << endl; //step or next
                    cin >> str_next;
                    // break;
                }
                if(str_next == "s") {break_symbol = true; step_symbol = true;}
                else if(str_next == "n") step_symbol = false;
                // else 
                else break;
        }
        if(step_symbol == false) break_symbol = false;
        if(line.find('*') != std::string::npos){ //line.at(0) != ' '
            cout << "   found * " << endl;
            line.erase(line.find('*'),1);
            // cout << "line" << line << endl;
            break_symbol = true;
        }
        // cout << "break_label " << break_label << endl;
        
        // if(line.find(':') != std::string::npos){ //line.at(0) != ' '
        //     cout << "label" << line << endl;
        //     // cout << "break_label " << break_label << endl;   
        // }
        
        // if(line.find("lw") < 100){ 
        //     ofs << "lw" << endl;
        //     // ofs << que.front() << endl;
        //     q = que.front();
        //     que.pop();
        // }
        // cout << "l476" << endl;
        for(int i = 0; i < line.size(); i++){
            if(line.at(i) == '#'|| line.at(i) == '!'|| line.at(i) == '\n' || line.at(i) == ')'){
                // cout << "# found break" << endl;
                break;
            }
            if(line.at(i) == '%' ||line.at(i) == '*' || line.at(i) == '(' || line.at(i) == ' ' ||(line.at(i) == '\t') || (line.at(i) == ',')){
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
        // cout << "   " << words[0] << " " << words[1] << " " << words[2] << " " << words[3] << endl;
        int words_i = 0;
        while(words_i < words.size()){
            // cout << words[words_i] << " ";
            words_i++;
        }
        // cout << "l512" << endl;
        string opcode, a0, a1, a2, a3;
        
        int sign_imm = 0;
        // a3 = words[4];
        for(int i = 1; i < words.size() ; i++){ //<=3
            // label(map)にwods[i]が合ったら
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
                if(words[i].at(0) == '-'){
                    sign_imm = 1;
                    words[i] = words[i].substr(1, words[i].length() - 1);
                    // cout << "-の処理 " << words[i] << endl;
                
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
        else if(opcode == "mv"){opcode = "addi", a2 = "0";}
        else if(opcode == "bgt") {opcode = "blt"; swap(a0,a1);}
        else if(opcode == "ble") {opcode = "bge"; swap(a0,a1);}
        else if(opcode == "bgtu") {opcode = "bltu"; swap(a0,a1);}
        else if(opcode == "bleu") {opcode = "bgeu"; swap(a0,a1);}
        else if(opcode == "beqz") {opcode = "beq"; a2 = a1; a1 = "zero";}
        else if(opcode == "bnez") {opcode = "bne"; a2 = a1; a1 = "zero";}
        // retだけ処理
        else if(opcode == "ret"){
            // jalr x0, x1, 0
            opcode = "jalr"; a0 = "x0"; a1 = "x1"; a2 = "0";
        }else if(opcode == "nop"){ //addi x0, x0, 0
            opcode = "addi"; a0 = "x0"; a1 = "x0"; a2 = "0";
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
        string pre_rd = "";
        if(op_load[pc-4] != ""){
            // cout << "hazard pc " << pc << op_load[pc-4] << endl;
            // cout << pc-4 << op_load[pc-4] << endl;
            pre_rd = op_load[pc-4];
        }
        // if(op_load[pc-4] == a1 || op_load[pc-4] == a2 || op_load[pc-4] == a3){
        // // if(line.find(pre_rd) < 100 && pre_rd != a0){
        //     cout << "hazard" << pre_rd << endl;
        //     // cout << 
        //     instr_count++;
        // }
        // bitset
        // 0になるまで割って；配列に入れて
        // vector<int> M(SIZE);
        // cout << "l603 " << opcode << " "<< a0 << " " << a1 << " "<< a2 << endl;
        if((a0[0] >= '0') && (a0[0] <= '9')){
            // cout << a0 << endl; 
            imm = reg_index(a0);
        } 
        else if(reg_index(a0) < 32) rd =  reg_val[reg_index(a0)]; //, M[reg_index(a0)]); 
        else{ 
            q = que.front();
            que.pop();
        }
        // cout << "puts" << endl; //ok
        bool imm_a1, imm_a2, imm_a3;
        imm_a1 = false; imm_a2 = false; imm_a3 = false;
        if(((a1[0] >= '0') && (a1[0] <= '9')) || (a1[0] == '-')){
            imm = reg_index(a1);
            imm_a1 = true;
            rs1 = reg_val.at(reg_index(a2));
            rs2 = reg_val.at(reg_index(a3)); //L1でセグフォ
        }else if(((a2[0] >= '0') && (a2[0] <= '9')) || (a2[0] == '-')) {
            imm = reg_index(a2);
            imm_a2 = true;
            rs1 = reg_val.at(reg_index(a1));
            rs2 = reg_val.at(reg_index(a3)); //L1でセグフォ
        }else if(((a3[0] >= '0') && (a3[0] <= '9')) || (a3[0] == '-')){
            imm = (int64_t)reg_index(a3);
            imm_a3 = true;
            rs1 = reg_val.at(reg_index(a1));
            rs2 = reg_val.at(reg_index(a2)); //L1でセグフォ
        }else{
            rs1 = reg_val.at(reg_index(a1));
            rs2 = reg_val.at(reg_index(a2)); //L1でセグフォ
        }
        // if(!imm_a1) rs1 = reg_val[reg_index(a1)];
        // if(!imm_a2) rs2 = reg_val[reg_index(a2)]; //L1でセグフォ
        if((!imm_a3) && !(a3.empty())) rs3 = reg_val.at(reg_index(a3));
        // cout << "rs1,…" << endl;
        
        // else {}
        // cout << "l241" << rd << rs1 << rs2 <<endl;
        // bitset<100> imm(imm_int);
        
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
        bool hit; bool flag;
        Op op; 
        switch(op.conv_type(opcode)){
            case R:
                // opcode, a0, a1,a2
                if(op_load[pc-4] == a1 || op_load[pc-4] == a2){
                // if(line.find(pre_rd) < 100 && pre_rd != a0){
                    // cout << "hazard" << op_load[pc-4] << endl;
                    // cout << 
                    instr_count++;
                }
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
                else reg_val.at(reg_index(a0)) = rd; 
                // if(break_symbol == true) 
                // cout << "   # " << rd << " "<< rs1 <<" " << rs2 << endl;
                instr_count++; //?
                continue;
            case I_1:
                // なぜa0?a1では？
                // opcode,a0,a1,a2,a3
                if(op_load[pc-4] == a1){ //a0?
                // if(line.find(pre_rd) < 100 && pre_rd != a0){
                    // cout << "hazard" << op_load[pc-4] << endl;
                    // cout << 
                    instr_count++;
                }
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
                }else if(opcode == "srli"){ //logical
                    rd = rs1 >> (imm & ((1<<5)-1)); //imm; //[0:4];
                    pc += 4;
                }else if(opcode == "srai"){ //arith
                    rd = rs1 >> (imm & ((1<<5)-1));//[0:4];
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
                else reg_val.at(reg_index(a0)) = rd; 
                // if(break_symbol == true) 
                // cout << "   # " << rd << " "<< rs1 <<" " << rs2 << endl;
                instr_count++; //?
                continue;
            case I_2:
                if(op_load[pc-4] == a2){
                // if(line.find(pre_rd) < 100 && pre_rd != a0){
                    // cout << "hazard" << op_load[pc-4] << endl;
                    // cout << 
                    instr_count++;
                }
                rs1 = reg_val.at(reg_index(a2));//reg_index(a2)
                num_i = 0;
                op_load[pc] = a0;
                // cache_load(pc, q);
            // void cache_load(int pc, int32_t q){ //qはsldファイル入力
                // op_hazard = rd;
                
                // cout << pc << op_load[pc] << endl; //ここで入っていない
                addr = rs1 + imm;//reg_val[rs1]+imm; //?
                if(addr < 0) addr = ~addr + 1;
                // 一度intに変換；bitsetに直す
                tag = addr >> (index_dig+offset_dig);
                
                index_ = (addr >> offset_dig) & ((1 << (index_dig))-1);
                offset = addr & ((1<<offset_dig) - 1);//1111;
                // cout << "addr,tag,index_,offset " << addr << " " << tag << " " << index_ << " " << offset << endl;
                if(index_ < 0 || index_ > SIZE){
                    cout << index_ << endl;
                    return -1;
                }
                // valid1,dirty1,accessed
                hit = false;
                for (int i = 0; i < way_num; i++) {
                    // L1_way0; 一致していてかつvalid=1&&accessed=0なら
                    if((L1_tag[i].at(index_) == tag) && (L_status[i].at(index_)).valid == 1){//>>acc_bit) & ((1<<2)-1)) == 0b10)){ //PMT1[index_].at(0) == 1 && PMT1[index_].at(1) == 0){
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
                } 
                if(special == true) rd = q;
                else rd = M.at(rs1+imm);
                // ofs << "load" << " " << M.at(rs1+imm) << endl;
                if(print_symbol) printf("mem[%lld] %lld\n", rs1+imm, rd);
            // }

                // if(opcode == "lb"){
                //     // index = (reg_val[rs1]+imm)/4
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
                else reg_val.at(reg_index(a0)) = rd; 
                // if(break_symbol == true) 
                // cout << "   # " << rd << " "<< rs1 <<" " << rs2 << endl;
                num_i = 0;
                instr_count++; //?
                continue;
            case S:
                if(op_load[pc-4] == a0){
                // if(line.find(pre_rd) < 100 && pre_rd != a0){
                    // cout << "hazard" << op_load[pc-4] << endl;
                    // cout << 
                    instr_count++;
                }
                rs1 = reg_val.at(reg_index(a2));//reg_index(a2);
                rs2 = reg_val.at(reg_index(a0));
                // cout << "rs1 rs2 " << rs1 << " " << rs2 << endl;
                num_i = 0;
                // cout << "rs1+imm " << rs1+imm << endl;
                // cache_store(opcode);
                // void cache_store(string opcode){
                
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
                    if(L_status.at(w).at(index_).valid == 0){ //at(0)
                        uint64_t data_num = uint64_t(offset);
                        if(opcode == "sb"){
                            // PMT1[index_].substr(3+tag_dig+4*data_num, 4) 
                            // L1_data[w][index_][data_num]= rs2%128; //convert(rs2%128,32);
                            M[rs1+imm] = rs2%128; //reg_val[rs1]?
                        }else if(opcode == "sh"){
                            // PMT1[index_].substr(3+tag_dig,data_num) = convert(rs2%65536, 32);
                            // L1_data[w][index_][data_num]= rs2%65536;
                            M[rs1+imm] = rs2%65536;
                        }else if(opcode == "sw"){
                            // cout << "sw1" << endl;
                            M[rs1+imm] = rs2%4294967296;
                        }
                        // L1_status[w][index_] = 100;
                        L_status.at(w).at(index_).valid = 1;
                        // dirty;まだメモリには書いてないことに
                        L_status.at(w).at(index_).dirty = 1;
                        if(L_status.at(w).at(index_).acc < 8) L_status.at(w).at(index_).acc += 1;
                        L1_tag.at(w).at(index_) = tag;
                        flag = 1;
                        // cout << L_status.at(w)[index_].acc << endl;
                    }
                    if(print_symbol) printf("mem[%lld] %lld\n", rs1+imm, M[rs1+imm]);
                }
                if(flag == 0){
                    // missしたためLRUで探す
                    miss_count++;
                    // cout << "goto LRU" << endl;
                    way_idx = LRU(L_status, index_);
                    // way_idxを追い出してそこに入れる;
                    // 追い出した時の処理必要
                    flag = 1;
                    uint64_t data_num = uint64_t(offset);
                    int w = way_idx;
                    // valid,dirty,accessed
                    // LRUのway_idxに入っていたデータをメモリに移行してからそこに書き込み
                    if(opcode == "sb"){
                        // PMT1[index_].substr(3+tag_dig+4*data_num, 4) 
                        // L1_data.at(w)[index_][data_num]= rs2%128; //convert(rs2%128,32);
                        M[rs1+imm] = rs2%128; //reg_val[rs1]?
                    }else if(opcode == "sh"){
                        // PMT1[index_].substr(3+tag_dig,data_num) = convert(rs2%65536, 32);
                        // L1_data[w][index_][data_num]= rs2%65536;
                        M[rs1+imm] = rs2%65536;
                    }else if(opcode == "sw"){
                        // L1_data[w][index_][data_num]= rs2%4294967296;
                        // L1_status[w][index_] = 110;
                        // cout << "sw2" << endl;
                        M[rs1+imm] = rs2%4294967296;
                    }
                    (L_status[way_idx].at(index_)).valid = 1; 
                    L_status[way_idx].at(index_).dirty = 1;
                    if(L_status.at(w).at(index_).acc < 8) L_status[way_idx].at(index_).acc += 1;  
                    L1_tag.at(w).at(index_) = tag;

                    flag = 1;
                    
                }
                // cout << flag? "Ok":"Ng" << endl;
                // cout << "flag " << flag << endl;
                // ofs << "store" << " " << M.at(rs1+imm) << endl;
            // }
                pc += 4;
                // if((a0[0.] >= '0') && (a0[0] <= '9')){} 
                // else reg_val[reg_index(a0)] = rd; 
                // if(break_symbol == true) 
                // cout << "  # " << rd << " "<< rs1 <<" " << rs2 << endl;
                // ofs << "rd " << rd << endl;
                // num_i = 0;
                // while(M[num_i]){
                //     reg_val[num_i] = M[num_i];
                //     num_i++;
                // }
                instr_count++; //?
                continue;
            case B:
                // cout << pre_rd << op_load[pc-4] <<  a0 << a1 << endl;
                if(op_load[pc-4] == a0 || op_load[pc-4] == a1){
                // if(line.find(pre_rd) < 100 && pre_rd != a0){
                    // cout << "hazard" << op_load[pc-4] << endl;
                    // cout << 
                    instr_count++;
                }
                
                rs2 = rs1; rs1 = rd; 
                if(sign_imm == 1) imm = -imm;
                // if(break_symbol == true) 
                // cout << "   # "  << rs1 <<" " << rs2 << endl;
                // 分岐不成立と予測し、成立していたら一回ストール
                if(opcode == "beq"|| opcode == "beqz"){
                    if(rs1 == rs2) {pc += imm; instr_count+= 2;}
                    else pc += 4;
                }else if(opcode == "bne"|| opcode == "bnez"){
                    if(rs1 != rs2) {pc += imm; instr_count+= 2;}
                    else pc += 4;
                }//ここ抜け
                else if(opcode == "blt" || opcode == "bgt"){
                    // cout << pc << " " << imm << endl;
                    if(rs1 < rs2) {pc += imm; instr_count+= 2;}
                    else pc += 4;
                    // cout << "pc" << pc << endl;
                }else if(opcode == "bge"|| opcode == "ble"){
                    if(rs1 >= rs2) {pc += imm; instr_count+= 2;}
                    else pc += 4;
                }else if(opcode == "bltu"||opcode == "bgtu"){
                    if(rs1 < rs2) {pc += imm; instr_count+= 2;}
                    else pc += 4;
                }else if(opcode == "bgeu"||opcode == "bleu"){
                    if(rs1 >= rs2) {pc += imm; instr_count+= 2;}
                    else pc += 4;
                }
                // cout << "pc" << pc << endl;
                // jumpの処理？
                instr_count++; //?
                continue;
            case J:
                if(sign_imm == 1){
                    imm = -imm;
                    // cout << "前にジャンプ" << imm << endl;
                }
                if(opcode == "jal"){
                    rd=pc+4;pc+=imm;
                    // cout << "   jal pc " << pc << endl;
                }
                if((a0[0] >= '0') && (a0[0] <= '9')){} 
                else reg_val.at(reg_index(a0)) = rd; 
                // if(break_symbol == true) 
                // cout << "  # " << rd << " "<< rs1 <<" " << rs2 << endl;
                // cout << "pc " << pc << "rd" << rd << endl;
                instr_count++; //?
                continue;
            // case I:
                // if(opcode == "jalr"){
                //     rd=pc+4;pc=rs1+imm;
            // }else 
            case U:
                if(opcode == "lui"){
                    rd = imm << 12;
                }else if(opcode == "auipc"){
                    rd=pc+(imm<<12);
                }
                pc += 4;
                if((a0[0] >= '0') && (a0[0] <= '9')){} 
                else reg_val.at(reg_index(a0)) = rd; 
                // if(break_symbol == true) 
                // cout << "   # " << rd << " "<< imm << endl;
                instr_count++; //?
                continue;
            case F:
                if(op_load[pc-4] == a1 || op_load[pc-4] == a2 || op_load[pc-4] == a3){
                // if(line.find(pre_rd) < 100 && pre_rd != a0){
                    // cout << "hazard" << op_load[pc-4] << endl;
                    // cout << 
                    instr_count++;
                }
                // 事前設定？
                if(opcode == "flw"){
                    rd = M.at(rs1 + imm);
                }else if(opcode == "fsw"){ //怪しい？
                    M.at(rs1 + imm) = rs2;
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
                else reg_val.at(reg_index(a0)) = rd; 
                // if(break_symbol == true) 
                // cout << "   # " << rd << " "<< rs1 <<" " << rs2 << endl;
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
    for(int i = 0; i < 32; i++){
        if(i == 0){cout << i << " " << reg_val.at(i) << endl;}
        else if(reg_val[i]){
            cout << i << " " << reg_val.at(i) << endl;
        }
    }
    cout << "hit miss " << hit_count << " " << miss_count << endl;
    cout << "clean dirty " << clean_miss << " " << dirty_miss << endl;
    cout << "実行命令数 " << instr_count << endl;
    clock_t end = clock();     // 終了時間
    std::cout << "duration = " << (double)(end - start) / CLOCKS_PER_SEC << "sec.\n";
    // cout << "fileclose" << endl;
    // file2.close();
    return 0;
}
