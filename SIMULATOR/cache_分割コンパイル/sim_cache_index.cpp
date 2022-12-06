#include <bits/stdc++.h>
using namespace std;
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
#include "sim_cache_index.hpp"
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
}