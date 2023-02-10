`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/01/29 18:14:01
// Design Name: 
// Module Name: fadd
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fsub
(
   input bit sys_clk,
   input logic rstn,
   input logic [0:0]  stage1_valid,
   input wire [31:0]  x1,
   input wire [31:0]  x2,
   output wire [31:0] y,
   output logic [0:0] out_valid
);
   logic [0:0] stage2_valid;
   logic [0:0] stage3_valid;
   reg [0:0] stage12_valid;
   reg [0:0] stage23_valid;
   reg [0:0] stage34_valid;
             
   wire [22:0] stage1_m1;   //仮数ビット
   wire [22:0] stage2_m1;   //仮数ビット
   wire [22:0] stage3_m1;   //仮数ビット
   reg  [22:0] stage12_m1;
   reg  [22:0] stage23_m1;

   wire [7:0]  stage1_e1;   //指数ビット
   wire [7:0]  stage2_e1;   //指数ビット
   wire [7:0]  stage3_e1;   //指数ビット
   reg  [7:0]  stage12_e1;
   reg  [7:0]  stage23_e1;
   
   wire        stage1_s1;   //符号ビット
   wire        stage2_s1;   //符号ビット
   wire        stage3_s1;   //符号ビット
   reg  [0:0]  stage12_s1;
   reg  [0:0]  stage23_s1;
   
   wire [24:0] m1a;  //仮数ビット（拡張後）
   
   wire [7:0]  stage1_e1a;  //指数ビット（例外訂正後）
   wire [7:0]  stage2_e1a;  //指数ビット（例外訂正後）
   wire [7:0]  stage3_e1a;  //指数ビット（例外訂正後）
   reg  [7:0]  stage12_e1a;
   reg  [7:0]  stage23_e1a;
   
   wire [22:0] stage1_m2;   //仮数ビット
   wire [22:0] stage2_m2;   //仮数ビット
   wire [22:0] stage3_m2;   //仮数ビット
   reg  [22:0] stage12_m2;
   reg  [22:0] stage23_m2;
   
   wire [7:0]  stage1_e2;   //指数ビット
   wire [7:0]  stage2_e2;   //指数ビット
   wire [7:0]  stage3_e2;   //指数ビット
   reg  [7:0]  stage12_e2;
   reg  [7:0]  stage23_e2;
   
   wire        stage1_s2;   //符号ビット
   wire        stage2_s2;   //符号ビット
   wire        stage3_s2;   //符号ビット
   reg  [0:0]  stage12_s2;
   reg  [0:0]  stage23_s2;
   
   wire [24:0] m2a;  //仮数ビット（拡張後）
   
   wire [7:0]  stage1_e2a;  //指数ビット（例外訂正後）
   wire [7:0]  stage2_e2a;  //指数ビット（例外訂正後）
   wire [7:0]  stage3_e2a;  //指数ビット（例外訂正後）
   reg  [7:0]  stage12_e2a;
   reg  [7:0]  stage23_e2a;
   
   wire [7:0]  e2ai; //e2aのビット反転
   
   wire [8:0]  te;
   
   wire        ce;
   
   wire [7:0]  tde;
   
   wire [8:0]  tde_long;
   
   wire [4:0]  de;
   
   wire        sel;     //x1とx2の絶対値の大小比較
   
   wire [24:0] stage1_ms;      //絶対値大きい方の仮数部
   wire [24:0] stage2_ms;      //絶対値大きい方の仮数部
   reg  [24:0] stage12_ms;
   
   wire [24:0] mi;      //絶対値小さい方の仮数部
   
   wire [7:0]  stage1_es;      //絶対値大きい方の指数部
   wire [7:0]  stage2_es;      //絶対値大きい方の指数部
   reg  [7:0]  stage12_es;      //絶対値大きい方の指数部
   
   wire [7:0]  ei;      //絶対値小さい方の指数部
   
   wire        stage1_ss;
   wire        stage2_ss;
   wire        stage3_ss;
   reg  [0:0]  stage12_ss;
   reg  [0:0]  stage23_ss;
   
   wire [55:0] mie;
   
   wire [55:0] stage1_mia;
   wire [55:0] stage2_mia;
   reg  [55:0] stage12_mia;
   
   wire        stage1_tstck;
   wire        stage2_tstck;
   reg  [0:0]  stage12_tstck;
   
   wire [26:0] stage1_mye;
   wire [26:0] stage2_mye;
   reg  [26:0] stage12_mye;
   
   wire [7:0]  esi;
   
   wire [7:0]  eyd;
   
   wire [26:0] myd;
   
   wire        stage2_stck;
   wire        stage3_stck;
   reg  [0:0]  stage23_stck;
   
   wire [4:0]  stage2_se;
   wire [4:0]  stage3_se;
   reg  [4:0]  stage23_se;
   
   wire [8:0]  stage2_eyf;
   wire [8:0]  stage3_eyf;
   reg  [8:0]  stage23_eyf;
   
   wire [7:0]  eyr;

   wire [26:0] stage2_myf;
   wire [26:0] stage3_myf;
   reg  [26:0] stage23_myf;
   
   wire [24:0] myr;
   
   wire [7:0]  eyri;
   
   wire [7:0]  ey;

   wire [22:0] my;
   
   wire        sy;
   
   wire [31:0]  stage3_y;
   reg  [31:0]  stage34_y;
   wire [0:0]   stage3_ovf;
   reg  [0:0]   stage34_ovf;
   
   //STAGE1
   //Procedure 1
   assign stage1_m1 = x1[22:0];
   assign stage1_e1 = x1[30:23];
   assign stage1_s1 = x1[31];
   
   assign stage1_m2 = x2[22:0];
   assign stage1_e2 = x2[30:23];
   assign stage1_s2 = ~x2[31];         //符号部を反転させて足す
   
   //Procedure 2 非正規化数の仮数部復元なので簡略化
   assign m1a = {2'b01, stage1_m1};
   assign m2a = {2'b01, stage1_m2};
   
   //Procedure 3 非正規化数の指数部復元なので簡略化
   assign stage1_e1a = stage1_e1;
   assign stage1_e2a = stage1_e2;
   
   //Procedure 4
   assign e2ai = ~stage1_e2a;
   
   //Procedure 5
   assign te = {1'b0,stage1_e1a} + {1'b0,e2ai};            //e1aからe2aを引いてどちらが大きいかを比較している
   
   //Procedure 6
   assign ce = ((te[8] == 1) ? 0 : 1);               //どちらの指数部が大きかったか
   assign tde_long = ((te[8] == 1) ? te + 1 : ~te);  //シフト量
   assign tde = tde_long[7:0];                       //シフト量抽出
   
   //Procedure 7
   assign de =  (|(tde[7:5]) ? 31 : tde[4:0]);       //実際のシフト量抽出
   
   //Procedure 8
   assign sel = (de == 0) ? ((m1a > m2a) ? 0 : 1) : ce;   //Procedure 5~8で大きい方がどちらかをselで決定させている
   
   //Procedure 9    ここから足し算本番
   assign stage1_ms = (sel == 0) ? m1a        : m2a;         //大きい方の仮数部
   assign mi        = (sel == 0) ? m2a        : m1a;         //小さい方の仮数部
   assign stage1_es = (sel == 0) ? stage1_e1a : stage1_e2a;  //大きい方の指数部
   assign ei        = (sel == 0) ? stage1_e2a : stage1_e1a;  //小さい方の指数部
   assign stage1_ss = (sel == 0) ? stage1_s1  : stage1_s2 ;  //大きい方の符号部
   
   //Procedure 10
   assign mie = {mi, 31'b0};                //仮数部のシフトの前処理
   
   //Procedure 11
   assign stage1_mia = mie >> de;           //小さい方をシフト
   
   //Procedure 12
   assign stage1_tstck = |(stage1_mia[28:0]);      //丸めの処理に必要
   
   //Procedure 13
   assign stage1_mye = (stage1_s1 == stage1_s2) ? {stage1_ms,2'b00} + stage1_mia[55:29] :  {stage1_ms,2'b00} - stage1_mia[55:29];
   
   //STAGE2
   //Procedure 14
   assign esi = stage2_es + 1;
   
   //Procedure 15
   assign eyd  = (stage2_mye[26] == 1) ? esi : stage2_es;                     //仮数部の足し算で桁上りが生じたら指数部を調整
   assign myd  = (stage2_mye[26] == 1) ? stage2_mye >> 1 : stage2_mye ;       //仮数部の足し算で桁上りが生じたら仮数部を調整
   assign stage2_stck = (stage2_mye[26] == 1) ? (esi == 8'd255 ? 1'b0          :  stage2_tstck || stage2_mye[0]    )  : stage2_tstck ;
   
   //Procedure 16
   assign stage2_se =  (myd[25] == 1) ? 5'b00000 :
                (myd[24] == 1) ? 5'b00001:
                (myd[23] == 1) ? 5'b00010:
                (myd[22] == 1) ? 5'b00011:
                (myd[21] == 1) ? 5'b00100:
                (myd[20] == 1) ? 5'b00101:
                (myd[19] == 1) ? 5'b00110:
                (myd[18] == 1) ? 5'b00111:
                (myd[17] == 1) ? 5'b01000:
                (myd[16] == 1) ? 5'b01001:
                (myd[15] == 1) ? 5'b01010:
                (myd[14] == 1) ? 5'b01011:
                (myd[13] == 1) ? 5'b01100:
                (myd[12] == 1) ? 5'b01101:
                (myd[11] == 1) ? 5'b01110:
                (myd[10] == 1) ? 5'b01111:
                (myd[ 9] == 1) ? 5'b10000:
                (myd[ 8] == 1) ? 5'b10001:
                (myd[ 7] == 1) ? 5'b10010:
                (myd[ 6] == 1) ? 5'b10011:
                (myd[ 5] == 1) ? 5'b10100:
                (myd[ 4] == 1) ? 5'b10101:
                (myd[ 3] == 1) ? 5'b10110:
                (myd[ 2] == 1) ? 5'b10111:
                (myd[ 1] == 1) ? 5'b11000:
                (myd[ 0] == 1) ? 5'b11001: 5'b11010;
   
   //Procedure 17
   assign stage2_eyf = {1'b0, eyd} - {4'b0,stage2_se};
   
   //Procedure 18-1
   assign stage2_myf = ( $signed(stage2_eyf) > 0 ) ? myd << stage2_se : myd << (eyd[4:0] - 1);
   
   //Stage3
   //Procedure 18-2
   assign eyr = ( $signed(stage3_eyf) > 0 ) ? stage3_eyf[7:0] : 8'b0                  ; 
   
   //Procudure 19
   assign myr = ( ( stage3_myf[1] && ~stage3_myf[0] && ~stage3_stck && stage3_myf[2] ) || ( stage3_myf[1] && ~stage3_myf[0] && (stage3_s1 == stage3_s2) && stage3_stck ) || ( stage3_myf[1] && stage3_myf[0]) ) ? stage3_myf[26:2] + 25'b1 : stage3_myf[26:2];
   
   assign eyri = eyr + 8'b1;
   
   //Procedure 21
   assign ey = (myr[24] == 1) ? eyri  : ( myr[23:0] == 0 ? 0 : eyr);
   assign my = (myr[24] == 1) ? 23'b0 : ( myr[23:0] == 0 ? 23'b0 : myr[22:0]);
   
   //Procedure 22
   assign sy = (ey == 0 && my == 0) ? (stage3_s1 & stage3_s2) : stage3_ss;
   
   //Procedure 23
   assign stage3_y = {sy,ey,my};

   //regの設定
   assign stage2_m1 = stage12_m1;
   assign stage2_e1 = stage12_e1;
   assign stage2_s1 = stage12_s1;
   assign stage2_e1a = stage12_e1a;
   assign stage2_m2 = stage12_m2;
   assign stage2_e2 = stage12_e2;
   assign stage2_s2 = stage12_s2;
   assign stage2_e2a = stage12_e2a;
   assign stage2_ms = stage12_ms;
   assign stage2_es = stage12_es;
   assign stage2_ss = stage12_ss;
   assign stage2_mia = stage12_mia;
   assign stage2_tstck = stage12_tstck;
   assign stage2_mye = stage12_mye;
   assign stage2_valid = stage12_valid;

   assign stage3_m1 = stage23_m1;
   assign stage3_e1 = stage23_e1;
   assign stage3_s1 = stage23_s1;
   assign stage3_e1a = stage23_e1a;
   assign stage3_m2= stage23_m2;
   assign stage3_e2 = stage23_e2;
   assign stage3_s2 = stage23_s2;
   assign stage3_e2a = stage23_e2a;
   assign stage3_ss = stage23_ss;
   assign stage3_eyf = stage23_eyf;
   assign stage3_myf = stage23_myf;
   assign stage3_stck = stage23_stck;
   assign stage3_se = stage23_se;
   assign stage3_valid = stage23_valid;
   
   assign y = stage34_y;
   assign out_valid = stage34_valid;
   
   always_ff @ (posedge sys_clk) begin
      if (~rstn) begin
          stage12_valid <= 1'b0; //reset to idle state
          stage23_valid <= 1'b0; //reset to idle state
          stage34_valid <= 1'b0; //reset to idle state
      end
      else begin
          stage12_m1 <= stage1_m1;
          stage12_e1 <= stage1_e1;
          stage12_s1 <= stage1_s1;
          stage12_e1a <= stage1_e1a;
          stage12_m2 <= stage1_m2;
          stage12_e2 <= stage1_e2;
          stage12_s2 <= stage1_s2;
          stage12_e2a <= stage1_e2a;
          stage12_ms <= stage1_ms;
          stage12_es <= stage1_es;
          stage12_ss <= stage1_ss;
          stage12_mia <= stage1_mia;
          stage12_tstck <= stage1_tstck;
          stage12_mye <= stage1_mye;
          stage12_valid <= stage1_valid;
    
          stage23_m1 <= stage2_m1;
          stage23_e1 <= stage2_e1;
          stage23_s1 <= stage2_s1;
          stage23_e1a <= stage2_e1a;
          stage23_m2 <= stage2_m2;
          stage23_e2 <= stage2_e2;
          stage23_s2 <= stage2_s2;
          stage23_e2a <= stage2_e2a;
          stage23_ss <= stage2_ss;
          stage23_eyf <= stage2_eyf;
          stage23_myf <= stage2_myf;
          stage23_stck <= stage2_stck;
          stage23_se <= stage2_se;
          stage23_valid <= stage2_valid;
          
          stage34_y <= stage3_y;
          stage34_valid <= stage3_valid;
      end
   end
endmodule

`default_nettype wire
