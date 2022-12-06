#include <bits/stdc++.h>
using namespace std;
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
//intのnを01にして指定桁数0埋め
// uint64_t convert(int64_t n, int dig_num){ 
//     // string to 01
//     // t0-t7

//     // string r = "";
//     uint64_t r;
//     // if((op[0] >= '0') && (op[0] <= '9')){ //imm;数字だったら
//     int j = 0;
//     // ２進数に
//     while(n){
//         r *= 10;
//         if(n %2 == 1) r += 1;
//         // else r += 0 ;
//         n = n / 2;
//         j++;

//     }
    
//     // ０埋め　
//     bury_zero(r, dig_num)
// }
// get digits
// https://daeudaeu.com/c-get-digits/

// void store0(string opcode){
//     string addr = bury_zero((int64_t)rs1+imm, 32);
//     reverse(addr.begin(), addr.end());
//     string tag = addr.substr(21,11);//[21:31]
//     string index = addr.substr(11,10);//[11:20]
//     string offset = addr.substr(0,11); //[0:10]
//     string data;
//     // valid1,dirty1,accessed
//     // データを保持していなかったら
//     if(PMT1[index].at(0) != 1){
//         PMT1[index] = bury_zero(0,85); //0>> 85;
//         int data_num = stoi(offset);
//         if(opcode == "sb"){
//             PMT1[index].substr(14,data_num) = convert(rs2%128, 32);
//         }else if(opcode == "sh"){
//             PMT1[index].substr(14,data_num) = rs2%65536;
//         }else if(opcode == "sw"){
//             PMT1[index].substr(14,data_num) = rs2%4294967296;
//         }
//         PMT1[index].substr(0,13) = "100"+ tag; //dataとは？
//     }else{
//     }
// }