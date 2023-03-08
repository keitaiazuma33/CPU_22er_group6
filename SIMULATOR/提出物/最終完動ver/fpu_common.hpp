#pragma once
#include <bits/stdc++.h>
using namespace std;
#define Bit32 unsigned int
#define Bit64 unsigned long long
// #define ull unsigned long long
extern vector<Bit64> array0; //finv
extern vector<Bit64> array1; //fsqrt
Bit64 sub_uint (Bit64 i, int a, int b);
Bit64 at_uint (Bit64 i, int a);
unsigned int f_to_bit (float x);
float bit_to_float (unsigned int x);
int64_t bit_to_int64 (unsigned int x);
void print_bit(Bit32 x, int n);
void print_sub_bit(Bit32 y);
Bit64 bit_to_ulong(string s);
void in_data(string filename);
void in_data_sqrt();
