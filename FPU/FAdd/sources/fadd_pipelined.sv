`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/01 15:12:55
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


module fadd
(
   input bit clk,
   input wire [31:0]  x1,
   input wire [31:0]  x2,
   output wire [31:0] y,
   output wire        ovf
);

   //valid(add operand) の実装が必要
   wire [ 0:0] stage1_operand;
   wire [ 0:0] stage2_operand;
   wire [ 0:0] stage3_operand;
   reg  [ 0:0] stage12_operand;
   reg  [ 0:0] stage23_operand;
             
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
   
   wire        tstck;
   
   wire [26:0] mye;
   
   wire [7:0]  esi;
   
   wire [7:0]  stage2_eyd;
   wire [7:0]  stage3_eyd;
   reg  [7:0]  stage23_eyd;
   
   wire [26:0] stage2_myd;
   wire [26:0] stage3_myd;
   reg  [26:0] stage23_myd;
   
   wire        stage2_stck;
   wire        stage3_stck;
   reg  [0:0]  stage23_stck;
   
   wire [4:0]  stage2_se;
   wire [4:0]  stage3_se;
   reg  [4:0]  stage23_se;
   
   wire [8:0]  eyf;
   
   wire [7:0]  eyr;

   wire [26:0] myf;
   
   wire [24:0] myr;
   
   wire [7:0]  eyri;
   
   wire [7:0]  ey;

   wire [22:0] my;
   
   wire        sy;
   
   wire        nzm1;

   wire        nzm2;
   
   wire      stage2_ovf_flag1;
   wire      stage3_ovf_flag1;
   reg [0:0] stage23_ovf_flag1;
   
   wire      ovf_flag2;
   
   //STAGE1
   //Procedure 1
   assign stage1_m1 = x1[22:0];
   assign stage1_e1 = x1[30:23];
   assign stage1_s1 = x1[31];
   
   assign stage1_m2 = x2[22:0];
   assign stage1_e2 = x2[30:23];
   assign stage1_s2 = x2[31];
   
   //Procedure 2
   assign m1a = ( (stage1_e1 == 0) ? {2'b00, stage1_m1} : {2'b01, stage1_m1});
   assign m2a = ( (stage1_e2 == 0) ? {2'b00, stage1_m2} : {2'b01, stage1_m2});
   
   //Procedure 3
   assign stage1_e1a = ( (stage1_e1 == 0) ? 8'b00000001 : stage1_e1);    //指数部が全部０なら非正規化数なので、指数部を調整する（０００００００１）
   assign stage1_e2a = ( (stage1_e2 == 0) ? 8'b00000001 : stage1_e2);    //指数部が全部０なら非正規化数なので、指数部を調整する（０００００００１）
   
   //Procedure 4
   assign e2ai = ~stage1_e2a;
   
   //Procedure 5
   assign te = {1'b0,stage1_e1a} + {1'b0,e2ai};            //e1aからe2aを引いてどちらが大きいかを比較している
   
   //Procedure 6
   assign ce = ((te[8] == 1) ? 0 : 1);
   assign tde_long = ((te[8] == 1) ? te + 1 : ~te);
   assign tde = tde_long[7:0];
   
   //Procedure 7
   assign de =  (|(tde[7:5]) ? 31 : tde[4:0]);
   
   //Procedure 8
   assign sel = (de == 0) ? ((m1a > m2a) ? 0 : 1) : ce;   //Procedure 5~8で大きい方がどちらかをselで決定させている
   
   //Procedure 9    ここから足し算本番
   assign stage1_ms = (sel == 0) ? m1a        : m2a;
   assign mi        = (sel == 0) ? m2a        : m1a;
   assign stage1_es = (sel == 0) ? stage1_e1a : stage1_e2a;
   assign ei        = (sel == 0) ? stage1_e2a : stage1_e1a;
   assign stage1_ss = (sel == 0) ? stage1_s1  : stage1_s2 ;
   
   //Procedure 10
   assign mie = {mi, 31'b0};
   
   //Procedure 11
   assign stage1_mia = mie >> de;           //小さい方をシフト
   
   //STAGE2
   //Procedure 12
   assign tstck = |(stage2_mia[28:0]);      //丸めの処理に必要
   
   //Procedure 13
   assign mye = (stage2_s1 == stage2_s2) ? {stage2_ms,2'b00} + stage2_mia[55:29] :  {stage2_ms,2'b00} - stage2_mia[55:29];
   
   //Procedure 14
   assign esi = stage2_es + 1;
   
   //Procedure 15
   assign stage2_eyd  = (mye[26] == 1) ? (esi == 8'd255 ? 8'd255           :  esi             )  : stage2_es    ;
   assign stage2_myd  = (mye[26] == 1) ? (esi == 8'd255 ? {2'b01,25'b0} :  mye >> 1           )  : mye   ;
   assign stage2_stck = (mye[26] == 1) ? (esi == 8'd255 ? 1'b0          :  tstck || mye[0]    )  : tstck ;
   assign stage2_ovf_flag1 = (mye[26] == 1) ? (esi == 8'd255 ? 1'b1          :  1'b0          )  : 1'b0  ;
   
   //Procedure 16
   assign stage2_se =  (stage2_myd[25] == 1) ? 0 :
                (stage2_myd[24] == 1) ? 1:
                (stage2_myd[23] == 1) ? 2:
                (stage2_myd[22] == 1) ? 3:
                (stage2_myd[21] == 1) ? 4:
                (stage2_myd[20] == 1) ? 5:
                (stage2_myd[19] == 1) ? 6:
                (stage2_myd[18] == 1) ? 7:
                (stage2_myd[17] == 1) ? 8:
                (stage2_myd[16] == 1) ? 9:
                (stage2_myd[15] == 1) ? 10:
                (stage2_myd[14] == 1) ? 11:
                (stage2_myd[13] == 1) ? 12:
                (stage2_myd[12] == 1) ? 13:
                (stage2_myd[11] == 1) ? 14:
                (stage2_myd[10] == 1) ? 15:
                (stage2_myd[ 9] == 1) ? 16:
                (stage2_myd[ 8] == 1) ? 17:
                (stage2_myd[ 7] == 1) ? 18:
                (stage2_myd[ 6] == 1) ? 19:
                (stage2_myd[ 5] == 1) ? 20:
                (stage2_myd[ 4] == 1) ? 21:
                (stage2_myd[ 3] == 1) ? 22:
                (stage2_myd[ 2] == 1) ? 23:
                (stage2_myd[ 1] == 1) ? 24:
                (stage2_myd[ 0] == 1) ? 25: 26;
   
   //Stage3
   //Procedure 17
   assign eyf = {1'b0,stage3_eyd} - {4'b0,stage3_se};
   
   //Procedure 18
   assign myf = ( $signed(eyf) > 0 ) ? stage3_myd << stage3_se : stage3_myd << (stage3_eyd[4:0] - 1);
   assign eyr = ( $signed(eyf) > 0 ) ? eyf[7:0] : 8'b0                  ;
   
   //Procudure 19
   assign myr = ( ( myf[1] == 1 && myf[0] == 0 && stage3_stck == 0 && myf[2] == 1 ) || ( myf[1] == 1 && myf[0] == 0 && (stage3_s1 == stage3_s2) && stage3_stck == 1 ) || ( myf[1] == 1 && myf[0] == 1 ) ) ? myf[26:2] + 25'b1 : myf[26:2];
   
   assign eyri = eyr + 8'b1;
   
   //Procedure 21
   assign ey = (myr[24] == 1) ? eyri  : ( myr[23:0] == 0 ? 0 : eyr);
   assign my = (myr[24] == 1) ? 23'b0 : ( myr[23:0] == 0 ? 23'b0 : myr[22:0]);
   assign ovf_flag2 = (myr[24] == 1) ? (eyri == 8'd255 ? 1'b1          :  1'b0          )  : 1'b0  ;
   
   //Procedure 22
   assign sy = (ey == 0 && my == 0) ? (stage3_s1 & stage3_s2) : stage3_ss;
   
   //Procedure 23
   assign nzm1 = |(stage3_m1[22:0]);
   assign nzm2 = |(stage3_m2[22:0]);
   
   assign y = ( stage3_e1 == 8'd255 && stage3_e2 != 8'd255)                             ? {stage3_s1,8'd255,nzm1,stage3_m1[21:0]} :
              ( stage3_e2 == 8'd255 && stage3_e1 != 8'd255)                             ? {stage3_s2,8'd255,nzm2,stage3_m2[21:0]} :
              ( stage3_e1 == 8'd255 && stage3_e2 == 8'd255 && nzm1)                     ? {stage3_s1,8'd255,1'b1,stage3_m1[21:0]} :
              ( stage3_e1 == 8'd255 && stage3_e2 == 8'd255 && nzm2)                     ? {stage3_s2,8'd255,1'b1,stage3_m2[21:0]} :
              ( stage3_e1 == 8'd255 && stage3_e2 == 8'd255 && (stage3_s1 == stage3_s2)) ? {stage3_s1,8'd255,23'b0}                :
              ( stage3_e1 == 8'd255 && stage3_e2 == 8'd255)                             ? {1'b1,8'd255,1'b1,22'b0}                :
              {sy,ey,my};
              
   assign ovf = ((stage3_e1a != 8'd255 && stage3_e2a != 8'd255) && (stage3_ovf_flag1 == 1 || ovf_flag2 == 1) ? 1 : 0);

   //regの設定

   assign stage2_operand = stage12_operand;
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

   assign stage3_operand = stage23_operand;
   assign stage3_m1 = stage23_m1;
   assign stage3_e1 = stage23_e1;
   assign stage3_s1 = stage23_s1;
   assign stage3_e1a = stage23_e1a;
   assign stage3_m2= stage23_m2;
   assign stage3_e2 = stage23_e2;
   assign stage3_s2 = stage23_s2;
   assign stage3_e2a = stage23_e2a;
   assign stage3_ss = stage23_ss;
   assign stage3_eyd = stage23_eyd;
   assign stage3_myd = stage23_myd;
   assign stage3_stck = stage23_stck;
   assign stage3_se = stage23_se;
   assign stage3_ovf_flag1 = stage23_ovf_flag1;
   
   always_ff @ (posedge clk) begin
      stage12_operand <= stage1_operand;
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

      stage23_operand <= stage2_operand;
      stage23_m1 <= stage2_m1;
      stage23_e1 <= stage2_e1;
      stage23_s1 <= stage2_s1;
      stage23_e1a <= stage2_e1a;
      stage23_m2 <= stage2_m2;
      stage23_e2 <= stage2_e2;
      stage23_s2 <= stage2_s2;
      stage23_e2a <= stage2_e2a;
      stage23_ss <= stage2_ss;
      stage23_eyd <= stage2_eyd;
      stage23_myd <= stage2_myd;
      stage23_stck <= stage2_stck;
      stage23_se <= stage2_se;
      stage23_ovf_flag1 <= stage2_ovf_flag1;
   end
endmodule

`default_nettype wire