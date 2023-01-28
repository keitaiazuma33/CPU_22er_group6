// #include <bits/stdc++.h>
#include <map>
#include <iostream>
#include <string.h>
#include <fstream>
#include <sstream>
#include <iomanip>
#include <vector>
#include <time.h>
#ifdef EXTENDED // EXTENDED: 1stシミュレータ拡張版(sim+)用のコード
#include <transmission.hpp>
#include <thread>
#include <stdio.h>
#endif
using namespace std;
// struct operation {

// #define R 0
// #define I 1
// #define S 2
// #define B 3
// #define U 4
// #define J 5
enum Type {
        R, I, S, B, U, J, F
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


#define MAX_BIT 32

string complement(string x_) {

    unsigned int x; /* １０進数格納用 */
    x = stoul(x_);
    unsigned int bin[MAX_BIT]; /* ２進数格納用 */
    unsigned int n;
    unsigned int i;

    /* １０進数を格納 */
    // x = 123456789; //-123456789;

    /* 第0桁から値を算出していく */
    n = 0;
    while (n < MAX_BIT) {
        /* 剰余算で２進数の第n桁を算出 */
        bin[n] = x % 2;
        x = x / 2;

        n++;
    }
    int j = 0;
    string r = "";

    while(j < MAX_BIT){
        if(bin[j] == 1) r += '1';
        else r += '0';
        // n = n / 2;
        j++;

    }
    reverse(r.begin(), r.end());

    return r;
}
string bury_zero(string imm, int dig_num){
    string s0;
    if(imm.size() > dig_num){
        s0 = imm.substr(imm.size()-dig_num, dig_num);//imm.size()-dig_num
        // cout << "s0" << s0 << endl;
    } 
    else{
        // string imm = "1010";
        // cout<<"#"<<imm<<endl;
        // Bit64 i = std::stoull(s, nullptr, 2);
        int64_t value = stoi(imm); //ull(imm); //stoi
        // std::ios::fmtflags curret_flag = std::cout.flags();
        std::ostringstream ss;
        // dig_nim+1: imm[12]とか
        ss << setw(dig_num) << setfill('0') << value; // << "\n";
        std::string s(ss.str());
        // std::cout << s << endl;
        s0 = s;
    } 
    return s0;
}
string convert(string op){ //変数opから01文字列5桁？へ
    // string to 01
    // t0-t7
    string r = "";
    // cout << "op" << op << endl;
    // "-"の処理
    if((op[0] >= '0') && (op[0] <= '9')){ //imm;数字だったら
        // cout << "before" <<endl;
        if(op == "0"){
            r = "0";
            return r;
        }
        int64_t n = 0;
        char c_0 = op[0];
        // if(op[1]) n = atoi(op.c_str()); //intに
        // else n = atoi((const char *)op[0]);
        // if((op[1] >= '0') && (op[1] <= '9')) 
        n = stoi(op);
        // cout << "n" << n << endl;
        // else n = c_0 - '0';
        int j = 0;
        // ２進数に
        while(n){
            if(n %2 == 1) r += '1';
            else r += '0';
            n = n / 2;
            j++;

        }
        // "-"の処理；後ほど
        reverse(r.begin(), r.end());
    }
    if(op[0] == 'x'){
        op.erase(0, 1);
        // 0うめ
        // r = "0000";
        r = complement(op);
        // bury_zero(r,5);
        // cout << r.size()
        // if(r.size() > 5){
        r = r.substr(MAX_BIT-5, 5);
        
        // cout << r << endl;    
        // int64_t num = atoi(a0.c_str());
        // return num;
    }
    if(op[0] == '-'){
        r = complement(op);
        cout << "minus? " <<r << endl;
    }
    if(op == "zero"){
        r = "00000";
    }else if(op == "ra"){
        r = "00001";
    }else if(op == "sp"){
        r = "00010";
    }else if(op == "gp"){
        r = "00011";
    }else if(op == "tp"){
        r = "00100";
    }else if(op == "t0"){
        r = "00101";
    }else if(op == "t1"){
        r = "00110";
    }else if(op == "t2"){
        r = "00111";
    }else if(op == "s0" || op == "fp"){
        r = "01000";
    }else if(op == "s1"){
        r = "01001";
    // ここから怪しい
    }else if(op == "a0"){
        r = "01010";
    }else if(op == "a1"){
        r = "01011";
    }else if(op == "a2"){
        r = "01100";
    }else if(op == "a3"){
        r = "01101";
    }else if(op == "a4"){
        r = "01110";
    }else if(op == "a5"){
        r = "01111";
    }else if(op == "a6"){
        r = "10000";
    }else if(op == "a7"){
        r = "10001";
    }else if(op == "s2") r = "10010";
    else if(op == "s3") r = "10011";
    else if(op == "s4") r = "10100";
    else if(op == "s5") r = "10101";
    else if(op == "s6") r = "10110";
    else if(op == "s7") r = "10111";
    else if(op == "s8") r = "11000";
    else if(op == "s9") r = "11001";
    else if(op == "s10") r = "11010";
    else if(op == "s11") r = "11011";
    else if(op == "t3") r = "11100";
    else if(op == "t4") r = "11101";
    else if(op == "t5") r = "11110";
    else if(op == "t6") r = "11111";
    return r;
}

string downto(string& imm, int from, int to) { // imm[from:to]
    return imm.substr(32 - from, from - to + 1);
}

string sub_reverse(string imm, int n, int m){
    string imm_s = imm.substr(n,m);
    reverse(imm_s.begin(), imm_s.end());
    // cout << "m " << m << " " << imm_s << endl;
    return imm_s;
    

}
int main(){
    // ファイルから読み込む   
    string filename ("fib.s");
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
    map<int, string> con_line;
    while(getline(file, line)){
        // ラベルを見つけたらmap配列に格納
        //  map<string, int> score; 
        
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
    // int line_num = 0;
    // ifstream file2(filename);
    // if (!file2.is_open()) {
    //     cerr << "Could not open the file - '"
    //          << filename << "'" << endl;
    //     return EXIT_FAILURE;
    // }
    pc = 0;
    // while(getline(file2, line)){
    string s;
    s = "/Users/maimai/my-3A/cpu-simu/asm_result.txt";
    ofstream ofs(s);
    while(pc < pc_size) {
        // sの部分は”ファイルパス\\ファイル名.txt”のようにベタ打ちでも可
        // ofs <<"testmessage\n" << endl;
        line = con_line[pc];
        line += '\n';
        ofs << "pc " << pc << endl;
        vector<string> words; // = {""}; //[0];
        // words.push_back("");
        // cout << words[2] << endl;
        // for(int i = 0; i <= 3; i++){
        //     words[i] = "";
        // }
        words.clear();
        string word = "";
        // ラベルの処理:label[line] = pc; より
        if(line.find(':') < 100){ //line.at(0) != ' '
            // 
            continue;
        }
        for(int i = 0; i < line.size(); i++){
            if(line.at(i) == '#'||line.at(i) == '!'|| line.at(i) == '\n' || line.at(i) == ')'){
                // cout << "# found break" << endl;
                break;
            }
            if(line.at(i) == '%' || line.at(i) == '*' || line.at(i) == '(' || line.at(i) == ' ' ||(line.at(i) == '\t') || (line.at(i) == ',')){
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
        
        
        // cout << "words[3]" << words.at(3) << endl;
        // その行がなかったらcontinue
        // if(words[0] == "") continue;
        
        // cout << words[0] << "words[1] " << words[1] << "2 " << words[2] << endl;
        // "3 " << words[3] << endl;
        // printf("%c\n", words[3].at(0));
        for(int i = 1; i < words.size(); i++){
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
                // cout << words[i] << endl; //ここまでok
            }
        }
        // int sign_imm = 0;
        // for(int i = 0; i < words.size();i++){
        //     if(words[i].at(0) == '-'){
        //         sign_imm = 1;
        //         words[i] = words[i].substr(1, words[i].length() - 1);
        //         cout << "-の処理 " << words[i] << endl;
            
        //     }
        // }
        // if(words[2] == "\n" || words[2] == "\t"){
        //     words[2] = "";
        // }
        string opcode, op1, op2, op3;
        opcode = ""; op1 = "";
        op2 = ""; 
        op3 = "";
        opcode = words.at(0); //ここまでok
        if(words.size() > 1) op1 = words.at(1);  
        if(words.size() > 2) op2= words.at(2); 
        if(words.size() > 3) op3 = words.at(3);
        // string S;
        // cin >> S; "add a0, a1, a2"
        // li, j, mvの処理
        // li t3, 10 –> addi x28, x0, 10
        // j label3 –> jal x0, label3
        // mv t6, t4 –> addi x31, x29, 0
        // cout << opcode << " " << op1 << " " <<op2 << " " << op3 << endl;
        if(opcode == "li") {op3 = op2; op2 = "zero"; opcode = "addi";}
        else if(opcode == "j") {opcode = "jal"; op3 = ""; op2 = op1; op1 = "zero";}//L3?; ' '
        // else if(opcode == "mv"){opcode = "addi"; op3 = "0";}
        // if(opcode == "li") {op3 = op2; op2 = "zero"; opcode = "addi";}
        // else if(opcode == "j") {opcode = "jal"; op2 = op1; op1 = "zero";}//L3?; ' '
        else if(opcode == "jal" && op2 == "") {op2 = op1; op1 = "ra";}//L3?; ' '
        else if(opcode == "mv"){opcode = "addi", op3 = "0";}
        else if(opcode == "bgt") {opcode = "blt"; swap(op1,op2);}
        else if(opcode == "ble") {opcode = "bge"; swap(op1,op2);}
        else if(opcode == "bgtu") {opcode = "bltu"; swap(op1,op2);}
        else if(opcode == "bleu") {opcode = "bgeu"; swap(op1,op2);}
        else if(opcode == "beqz") {opcode = "beq"; op3 = op2; op2 = "zero";}
        else if(opcode == "bnez") {opcode = "bne"; op3 = op2; op2 = "zero";}
        // retだけ処理
        else if(opcode == "ret"){
            opcode = "jalr"; op1 = "zero"; op2 = "ra"; op3 = "0";
        }else if(opcode == "nop"){ //addi x0, x0, 0
            opcode = "addi"; op1 = "x0"; op2 = "x0"; op3 = "0";
        }
        ofs << opcode << " " << op1 << " " <<op2 << " " << op3 << endl;
        // cout << op3[0] << endl;
        // cout << op3 << endl;
        string imm;
        // bitset<100> imm(imm_int);
        string rd, rs1, rs2; 
        
        if(((op1[0] >= '0') && (op1[0] <= '9')) || (op1[0] == '-')) imm = convert(op1);
        else rd = convert(op1); //zeroなどから01列に
        if(((op2[0] >= '0') && (op2[0] <= '9')) || (op2[0] == '-')) imm = convert(op2);
        else rs1 = convert(op2);
        if(((op3[0] >= '0') && (op3[0] <= '9')) || (op3[0] == '-')) imm = convert(op3); // cout << "imm?" << endl;}
        else rs2 = convert(op3); //ここまでも関数化？
        // cout << "imm" << imm << endl;
        // ofs << "$" << rd << rs1 << rs2 << endl;
        // immを埋める；32bit?
        // imm = bury_zero(imm, 32);
        string offset = imm;
        Op op;
        string ans;
        // ofs << line << endl;
        // cout << op.conv_type(opcode) << endl;;
        switch (op.conv_type(opcode)){
            case R:
                if(opcode == "add"){
                    // rd = change(op1); 
                    ofs << "0000000"+rs2+rs1+"000"+rd +"0110011" << endl;
                    pc += 4;           
                }else if(opcode == "sub"){
                    ofs << "0100000"+rs2+rs1+"000"+rd +"0110011" << endl;  
                    pc += 4;              
                }else if(opcode == "xor"){ //ここからchange
                    // rd = change(op1); 
                    ofs << "0000000"+rs2+rs1+"100"+rd +"0110011" << endl;   
                    pc += 4;     
                // ここから数字change!
                }else if(opcode == "or"){
                    ofs << "0000000"+rs2+rs1+"110"+rd +"0110011" << endl; 
                    pc += 4;              
                }else if(opcode == "and"){
                    ofs << "0000000"+rs2+rs1+"111"+rd +"0110011" << endl;  
                    pc += 4;             
                }else if(opcode == "sll"){
                    ofs << "0000000"+rs2+rs1+"001"+rd +"0110011" << endl; 
                    pc += 4;              
                }else if(opcode == "srl"){
                    ofs << "0000000"+rs2+rs1+"101"+rd +"0110011" << endl;  
                    pc += 4;             
                }else if(opcode == "sra"){
                    ofs << "0100000"+rs2+rs1+"101"+rd +"0110011" << endl; 
                    pc += 4;              
                }else if(opcode == "slt"){
                    ofs << "0000000"+rs2+rs1+"010"+rd +"0110011" << endl;
                    pc += 4;               
                }else if(opcode == "sltu"){
                    ofs << "0000000"+rs2+rs1+"011"+rd +"0110011" << endl;  
                    pc += 4;   
                }
                // simから移した
                //Multiply Extention
                else if(opcode == "mul"){
                    ofs << "0000001"+rs2+rs1+"000"+rd +"0110011" << endl;  
                    pc += 4;
                }else if(opcode == "div"){
                    ofs << "0000001"+rs2+rs1+"100"+rd +"0110011" << endl; 
                    pc += 4;
                }
                continue;
            // ここまでok
            // フィボナッチ用のみ
            case I:
                // addi rd,rs1,imm
                // if(imm == "") imm = rs2; //op[3];
                imm = bury_zero(imm, 12);
                // cout << imm << endl;
                if(opcode == "addi"){
                    // ofs << "imm" << imm << endl;
                    ofs << imm.substr(0, 12)+rs1+"000"+rd+"0010011"<<endl;
                    pc += 4;    
                }else if(opcode == "xori"){
                    ofs << imm.substr(0, 12)+rs1+"100"+rd+"0010011"<<endl;
                    pc += 4;
                }else if(opcode == "ori"){
                    ofs << imm.substr(0, 12)+rs1+"110"+rd+"0010011"<<endl;
                    pc += 4;
                }else if(opcode == "andi"){
                    ofs << imm.substr(0, 12)+rs1+"111"+rd+"0010011"<<endl;
                    pc += 4;
                }else if(opcode == "slli"){
                    // shamt = rs2
                    ofs << "000000X"+rs2+rs1+"001"+rd+"0010011"<<endl;
                    pc += 4;
                }else if(opcode == "srli"){
                    ofs << "000000X"+rs2+rs1+"101"+rd+"0010011"<<endl;
                    pc += 4;
                }else if(opcode == "srai"){
                    ofs << "0100000X"+rs2+rs1+"101"+rd+"0010011"<<endl;
                    pc += 4;
                }else if(opcode == "slti"){
                    ofs << imm.substr(0,12)+rs1+"010"+rd+"0010011"<<endl;
                    pc += 4;
                }else if(opcode == "sltiu"){
                    ofs << imm.substr(0,12)+rs1+"011"+rd+"0010011"<<endl;
                    pc += 4;
                }else if(opcode == "lb"){
                    rs1 = rs2;
                    ofs << imm.substr(0,12)+rs1+"000"+rd+"0000011"<<endl;
                    pc += 4;   
                }else if(opcode == "lh"){
                    rs1 = rs2;
                    ofs << imm.substr(0,12)+rs1+"001"+rd+"0000011"<<endl;
                    pc += 4;
                }else if(opcode == "lw"){
                    rs1 = rs2;
                    ofs << imm.substr(0,12)+rs1+"010"+rd+"0000011"<<endl;
                    pc += 4;
                }else if(opcode == "lbu"){
                    rs1 = rs2;
                    ofs << imm.substr(0,12)+rs1+"100"+rd+"0000011"<<endl;
                    pc += 4;
                }else if(opcode == "lhu"){
                    rs1 = rs2;
                    ofs << imm.substr(0,12)+rs1+"101"+rd+"0000011"<<endl;
                    pc += 4;
                }else if(opcode == "jalr"){
                    ofs << imm.substr(0,12)+rs1+"000"+rd+"1100111"<<endl;
                    pc += 4;
                } 
                continue;
            case S:
                imm = bury_zero(imm, 12);
                rs1 = rs2; rs2 = rd;
                if(opcode == "sb"){
                    ofs << imm.substr(5,7)+rs2+rs1+"000"+imm.substr(0,5)+"0100011"<<endl;
                    pc+=4;
                    // offset[11:5]+rs2+rs1+000+offset[4:0]+0100011
                }else if(opcode == "sh"){
                    ofs << imm.substr(5,7)+rs2+rs1+"001"+imm.substr(0,5)+"0100011"<<endl;
                    pc+=4;
                }else if(opcode == "sw"){
                    // cout << "sw" << imm << rs1 << rs2 << endl;
                    ofs << imm.substr(5,7)+rs2+rs1+"010"+imm.substr(0,5)+"0100011"<<endl;
                    pc+=4;
                }
                continue;
            case J: 
                offset = bury_zero(imm, 21);
                // cout << offset << endl;
                reverse(offset.begin(), offset.end());
                // if(sign_imm){ offset[20] = '1';}
                if(opcode == "jal"){ // || opcode == "jal"){
                    // offset = rs1;
                    ofs << offset[20] + sub_reverse(offset,1,10) + offset[11] + sub_reverse(offset,12,8)+rd+"1101111"<<endl;
                    // offset[20|10:1|11] + offset[19:12]
                    // pcの処理上でok?
                }
                pc += 4;
                continue;
            case B:
                imm = bury_zero(imm, 13);
                // rd,rs1をrs1,rs2に
                rs2 = rs1; rs1 = rd;
                // cout << imm << " " << rs2 << " " << rs1 << endl;
                reverse(imm.begin(), imm.end());
                cout << imm << endl;
                // rs2 = rs1; rs1 = rd; 
                // if(sign_imm == 1) imm = -imm;
                // cout << "# "  << rs1 <<" " << rs2 << endl;
                if(opcode == "beq"){
                    // ofs << imm[12]+imm.substr(5,6)+rs2+rs1+"000"+reverse(imm.substr(1,4))+imm[11]+"1100011"<<endl;
                    ofs << imm[12]+sub_reverse(imm,5,6)+rs2+rs1+"000"+sub_reverse(imm, 1,4)+imm[11]+"1100011"<<endl;
                    // offset[12|10:5]rs2rs1+000+offset[4:1|11]+1100011
                }else if(opcode == "bne"){
                    ofs << imm[12]+sub_reverse(imm,5,6)+rs2+rs1+"001"+sub_reverse(imm,1,4)+imm[11]+"1100011"<<endl;
                }else if(opcode == "blt"){
                    ofs << imm[12]+sub_reverse(imm,5,6)+rs2+rs1+"100"+sub_reverse(imm,1,4)+imm[11]+"1100011"<<endl;
                }else if(opcode == "bge"){
                    ofs << imm[12]+sub_reverse(imm,5,6)<<"_"<<rs2<<"_"<<rs1<<"_"<<"101"<<"_"<<sub_reverse(imm,1,4)+imm[11]<<"_"<<"1100011"<<endl;
                    ofs << imm[12]+sub_reverse(imm,5,6)+rs2+rs1+"101"+sub_reverse(imm,1,4)+imm[11]+"1100011"<<endl;
                }else if(opcode == "bltu"){
                    ofs << imm[12]+sub_reverse(imm,5,6)+rs2+rs1+"110"+sub_reverse(imm,1,4)+imm[11]+"1100011"<<endl;
                }else if(opcode == "bgeu"){
                    ofs << imm[12]+sub_reverse(imm,5,6)+rs2+rs1+"111"+sub_reverse(imm,1,4)+imm[11]+"1100011"<<endl;
                }
                pc += 4;
                // jumpの処理？
                continue;
                // continue;
            case U:
                // imm = op[1];
                imm = bury_zero(imm, 32);
                if(opcode == "lui"){
                    
                    ofs << imm.substr(12,20) + rd + "0110111"; //imm[31:12]
                }else if(opcode == "auipc"){
                    // imm = op[1];
                    ofs << imm.substr(12,20) + rd + "0010111";
                }
                pc += 4;
                continue;
            // case F:
            //     if(opcode == "fadd"){
            //         ofs << "0000000"+rs2+rs1+rm+rd+"1010011";
            //     }
            // add
            // switch  
            default:
                continue;
        }
        // line_num++;
    }
    // fclose(file);
    cout << "fileclose" << endl;
    // file2.close();
    return 0;
    
}
