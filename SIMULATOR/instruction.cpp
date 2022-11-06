// #include <bits/stdc++.h>
#include <map>
#include <iostream>
#include <string.h>
#include <fstream>
#include <sstream>
#include <iomanip>
#include <vector>
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
        }
        // jalr以降書き忘れ
        // mul以降も；２ページ目
        return _type;
    }

};


string convert(string op){ //変数opから01文字列5桁？へ
    // string to 01
    // t0-t7
    string r;
    // cout << "op" << op << endl;
    if((op[0] >= '0') && (op[0] <= '9')){ //imm;数字だったら
        // cout << "before" <<endl;
        if(op == "0"){
            r = "0";
            return r;
        }
        long n;
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
string bury_zero(string imm, int dig_num){
    // string imm = "1010";
    // cout<<"#"<<imm<<endl;
    long value = stoi(imm);
    // std::ios::fmtflags curret_flag = std::cout.flags();
    std::ostringstream ss;
    // dig_nim+1: imm[12]とか
    ss << setw(dig_num+1) << setfill('0') << value; // << "\n";
    std::string s(ss.str());
	// std::cout << s << endl;
    return s;
}
int main(){
    // ファイルから読み込む   
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
    while(getline(file, line)){
        // ラベルを見つけたらmap配列に格納
        //  map<string, int> score; 
        
        cout << "PC " << pc << endl;
        if(line.find(':') < 100){ 
            line.erase(line.find(':')); //?
            label[line] = pc; 
        }else pc += 4;
    }
    cout << "fileclose" << endl;
    file.close();
    // int line_num = 0;
    ifstream file2(filename);
    if (!file2.is_open()) {
        cerr << "Could not open the file - '"
             << filename << "'" << endl;
        return EXIT_FAILURE;
    }
    pc = 0;
    while(getline(file2, line)){
        line += '\n';
        // cout << "whileループ pc " << pc << endl;
        vector<string> words; //[0];
        // for(int i = 0; i <= 3; i++){
        //     words[i] = "";
        // }
        string word = "";
        // ラベルの処理:label[line] = pc; より
        if(line.find(':') < 100){ //line.at(0) != ' '
            // 
            continue;
        }
        // else {}      
        for(int i = 0; i < line.size(); i++){
            if(line.at(i) == '#'|| line.at(i) == '\n'){
                // cout << "# found break" << endl;
                break;
            }
            if((line.at(i) == ' ') || (line.at(i) == '\t') || (line.at(i) == ',')){
                // if(word != ""){
                //     words.push_back(word);
                // }
                // word = "";
                // cout << "i+1" << line.at(i+1) << endl;
                continue;
            }
            else{
                word.push_back(line.at(i));
                // 次の文字が#,"\n", " ", "()"ならpush_back
                if(line.at(i+1) == '#' || line.at(i+1) == '\n' || line.at(i+1) == ' ' || line.at(i+1) == ',' || (line.at(i+1) == '\t')){ // || line.at(i+1) == ' '){
                    words.push_back(word);
                    word = "";
                    // break;
                }
                
            }
            // if(i == line.size()-1){
            //     if(word != ""){
            //         words.push_back(word);
            //     }
            // }
        } 
        // cout << "words[3]" << words.at(3) << endl;
        // その行がなかったらcontinue
        // if(words[0] == "") continue;
        
        cout << words[0] << " " << words[1] << " " << words[2] << " " << words[3] << endl;
        for(int i = 1; i <= 3; i++){
            int label_find = label.count(words[i]); //" "
            // cout << "label found" << label_find << endl;
            if(label_find > 0){
                // pc = label[i][0];
                int a_pc = label[words[i]];
                // continue;
                int diff = a_pc - pc; 
                // cout << diff << endl; //offset
                // pc += diff;
                words[i] = to_string(diff);
                // cout << words[i] << endl; //ここまでok
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
        string opcode, op1, op2, op3;
        op2 = ""; op3 = "";
        opcode = words[0]; //ここまでok
        op1 = words[1];  
        // if(0 <= words[2].at(0) &&  words[2].at(0) <= 127) 
        op2= words[2]; 
        // if(0 <= words[3].at(0) &&  words[3].at(0) <= 127) 
        op3 = words[3];
        // string S;
        // cin >> S; "add a0, a1, a2"
        // li, j, mvの処理
        // li t3, 10 –> addi x28, x0, 10
        // j label3 –> jal x0, label3
        // mv t6, t4 –> addi x31, x29, 0
        cout << opcode << " " << op1 << " " <<op2 << " " << op3 << endl;
        if(opcode == "li") {op3 = op2; op2 = "zero"; opcode = "addi";}
        else if(opcode == "j") {opcode = "jal"; op2 = op1; op1 = "zero";}//L3?; ' '
        else if(opcode == "mv"){opcode = "addi"; op3 = "0";}
        cout << opcode << " " << op1 << " " <<op2 << " " << op3 << endl;
        // cout << op3[0] << endl;
        // cout << op3 << endl;
        string imm;
        // bitset<100> imm(imm_int);
        string rd, rs1, rs2; 
        
        if((op1[0] >= '0') && (op1[0] <= '9')) imm = convert(op1);
        else rd = convert(op1); //zeroなどから01列に
        if((op2[0] >= '0') && (op2[0] <= '9')) imm = convert(op2);
        else rs1 = convert(op2);
        if((op3[0] >= '0') && (op3[0] <= '9')) imm = convert(op3); // cout << "imm?" << endl;}
        else rs2 = convert(op3); //ここまでも関数化？
        // cout << "imm" << imm << endl;
        // cout << "$" << rd << rs1 << rs2 << endl;
        // immを埋める；32bit?
        // imm = bury_zero(imm, dig);
        string offset = imm;
        Op op;
        string ans;
        // cout << op.conv_type(opcode) << endl;;
        switch (op.conv_type(opcode)){
            case R:
                if(opcode == "add"){
                    // rd = change(op1); 
                    cout << "0000000"+rs2+rs1+"000"+rd +"0110011" << endl;
                    pc += 4;           
                }else if(opcode == "sub"){
                    cout << "0100000"+rs2+rs1+"000"+rd +"0110011" << endl;  
                    pc += 4;              
                }else if(opcode == "xor"){ //ここからchange
                    // rd = change(op1); 
                    cout << "0000000"+rs2+rs1+"100"+rd +"0110011" << endl;   
                    pc += 4;     
                // ここから数字change!
                }else if(opcode == "or"){
                    cout << "0000000"+rs2+rs1+"110"+rd +"0110011" << endl; 
                    pc += 4;              
                }else if(opcode == "and"){
                    cout << "0000000"+rs2+rs1+"111"+rd +"0110011" << endl;  
                    pc += 4;             
                }else if(opcode == "sll"){
                    cout << "0000000"+rs2+rs1+"001"+rd +"0110011" << endl; 
                    pc += 4;              
                }else if(opcode == "srl"){
                    cout << "0000000"+rs2+rs1+"101"+rd +"0110011" << endl;  
                    pc += 4;             
                }else if(opcode == "sra"){
                    cout << "0100000"+rs2+rs1+"101"+rd +"0110011" << endl; 
                    pc += 4;              
                }else if(opcode == "slt"){
                    cout << "0000000"+rs2+rs1+"010"+rd +"0110011" << endl;
                    pc += 4;               
                }else if(opcode == "sltu"){
                    cout << "0000000"+rs2+rs1+"011"+rd +"0110011" << endl;  
                    pc += 4;   
                }
                continue;
            // フィボナッチ用のみ
            case I:
                // addi rd,rs1,imm
                    // imm = rs2; //op[3];
                imm = bury_zero(imm, 12);
                if(opcode == "addi"){
                    // cout << "imm" << imm << endl;
                    cout << imm.substr(0, 12)+rs1+"000"+rd+"0010011"<<endl;
                    pc += 4;    
                }
                continue;
            case J: 
                offset = bury_zero(imm, 20);
                cout << offset << endl;
                reverse(offset.begin(), offset.end());
                if(sign_imm){ offset[20] = '1';}
                if(opcode == "jal"){ // || opcode == "jal"){
                    // offset = rs1;
                    cout << offset[20] + offset.substr(1,10) + offset[11] + offset.substr(12,8)+rd+"1101111"<<endl;
                    // offset[20|10:1|11] + offset[19:12]
                    // pcの処理上でok?
                }
                pc += 4;
                continue;
            case B:
                imm = bury_zero(imm, 12);
                // rd,rs1をrs1,rs2に
                rs2 = rs1; rs1 = rd;
                // cout << imm << " " << rs2 << " " << rs1 << endl;
                reverse(imm.begin(), imm.end());
                // cout << imm << endl;
                if(opcode == "blt"){
                    cout << imm[12]+imm.substr(5,6)+rs2+rs1+"100"+imm.substr(1,4)+imm[11]+"1100011"<<endl;
                    // pcの処理上でok?
                }else if(opcode == "bge"){ //ここからchange
                    cout << imm[12]+imm.substr(5,6)+rs2+rs1+"101"+imm.substr(1,4)+imm[11]+"1100011" <<endl;//imm[11:0]
                    // pcの処理上でok?
                }
                pc += 4;
                continue;
            // case U:
            // imm = op[1];
            // if(opcode == "lui"){
                
            //     cout << imm[31:12] + rd + "0b0110111";
            // }else if(opcode == "auipc"){
            //     // imm = op[1];
            //     cout << imm[31:12] + rd + "0b0010111";
            // }
            //     break;
            
            // add
            // switch  
            default:
                continue;
        }
        // line_num++;
    }
    // fclose(file);
    cout << "fileclose" << endl;
    file2.close();
    return 0;
    
}
