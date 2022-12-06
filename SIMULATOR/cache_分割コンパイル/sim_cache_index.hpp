#pragma once
#include <bits/stdc++.h>
using namespace std;
// #include "const.hpp"
#define SIZE 1024
extern vector<int> a;
extern vector<int> M;
extern vector<vector<int> > L1;
extern vector<vector<int> > L2;
extern map<uint64_t, uint64_t> PMT1; //L1に対応
    // map<int, uint64_t> 
    // vector<uint64_t> L1_status(SIZE/10);
extern vector<vector <uint64_t> > L1_status;
extern vector<vector <uint64_t> > L2_status;
extern vector<vector <uint64_t> > L1_tag;
extern vector<vector <uint64_t> > L2_tag;
extern int rd, rs1, rs2, rs3;
extern int64_t imm;
extern uint64_t addr, tag, index_, offset;
extern int offset_dig, index_dig, tag_dig;
extern int hit_count, miss_count;
    // vector<uint64_t> L2_tag(SIZE/10);
    // map<uint64_t, vector<int> > 
    // (3, vector<int>(4));
    // vector<vector<vector<uint64_t> > > L1_data (2, vector<vector<uint64_t>>(SIZE/10), vector<uint64_t> (100));
    // vector<vector<uint64_t> > L2_data(SIZE/10);
void cache_load();
void cache_store(string opcode);