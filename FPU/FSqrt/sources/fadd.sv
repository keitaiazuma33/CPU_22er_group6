`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/20 19:01:20
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


module fadd (input wire [31:0]  x1,
             input wire [31:0]  x2,
             output wire [31:0] y,
             output wire        ovf);
             
   wire [22:0] m1;   //仮数ビット
   wire [7:0]  e1;   //指数ビット
   wire        s1;   //符号ビット
   wire [24:0] m1a;  //仮数ビット（拡張後）
   wire [7:0]  e1a;  //指数ビット（例外訂正後）
   
   wire [22:0] m2;   //仮数ビット
   wire [7:0]  e2;   //指数ビット
   wire        s2;   //符号ビット
   wire [24:0] m2a;  //仮数ビット（拡張後）
   wire [7:0]  e2a;  //指数ビット（例外訂正後）
   wire [7:0]  e2ai; //e2aのビット反転
   
   wire [8:0]  te;
   
   wire        ce;
   wire [7:0]  tde;
   wire [8:0]  tde_long;
   
   wire [4:0]  de;
   
   wire        sel;     //x1とx2の絶対値の大小比較
   
   wire [24:0] ms;      //絶対値大きい方の仮数部
   wire [24:0] mi;      //絶対値小さい方の仮数部
   wire [7:0]  es;      //絶対値大きい方の指数部
   wire [7:0]  ei;      //絶対値小さい方の指数部
   wire        ss;
   
   wire [55:0] mie;
   wire [55:0] mia;
   
   wire        tstck;
   
   wire [26:0] mye;
   wire [7:0]  esi;
   
   wire [7:0]  eyd;
   wire [26:0] myd;
   wire        stck;
   
   wire [4:0]  se;
   
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
   
   wire   ovf_flag1;
   wire   ovf_flag2;
   
   //Procedure 1
   assign m1 = x1[22:0];
   assign e1 = x1[30:23];
   assign s1 = x1[31];
   
   assign m2 = x2[22:0];
   assign e2 = x2[30:23];
   assign s2 = x2[31];
   
   //Procedure 2
   assign m1a = ( (e1 == 0) ? {2'b00, m1} : {2'b01, m1});
   assign m2a = ( (e2 == 0) ? {2'b00, m2} : {2'b01, m2});
   
   //Procedure 3
   assign e1a = ( (e1 == 0) ? 8'b00000001 : e1);    //指数部が全部０なら非正規化数なので、指数部を調整する（０００００００１）
   assign e2a = ( (e2 == 0) ? 8'b00000001 : e2);    //指数部が全部０なら非正規化数なので、指数部を調整する（０００００００１）
   
   //Procedure 4
   assign e2ai = ~e2a;
   
   //Procedure 5
   assign te = {1'b0,e1a} + {1'b0,e2ai};
   
   //Procedure 6
   assign ce = ((te[8] == 1) ? 0 : 1);
   assign tde_long = ((te[8] == 1) ? te + 1 : ~te);
   assign tde = tde_long[7:0];
   
   //Procedure 7
   assign de =  (|(tde[7:5]) ? 31 : tde[4:0]);
   
   //Procedure 8
   assign sel = (de == 0) ? ((m1a > m2a) ? 0 : 1) : ce;
   
   //Procedure 9
   assign ms = (sel == 0) ? m1a : m2a;
   assign mi = (sel == 0) ? m2a : m1a;
   assign es = (sel == 0) ? e1a : e2a;
   assign ei = (sel == 0) ? e2a : e1a;
   assign ss = (sel == 0) ? s1  : s2 ;
   
   //Procedure 10
   assign mie = {mi, 31'b0};
   
   //Procedure 11
   assign mia = mie >> de;
   
   //Procedure 12
   assign tstck = |(mia[28:0]);      //丸めの処理に必要
   
   //Procedure 13
   assign mye = (s1 == s2) ? {ms,2'b00} + mia[55:29] :  {ms,2'b00} - mia[55:29];
   
   //Procedure 14
   assign esi = es + 1;
   
   //Procedure 15
   assign eyd  = (mye[26] == 1) ? (esi == 8'd255 ? 8'd255           :  esi             )  : es    ;
   assign myd  = (mye[26] == 1) ? (esi == 8'd255 ? {2'b01,25'b0} :  mye >> 1           )  : mye   ;
   assign stck = (mye[26] == 1) ? (esi == 8'd255 ? 1'b0          :  tstck || mye[0]    )  : tstck ;
   assign ovf_flag1 = (mye[26] == 1) ? (esi == 8'd255 ? 1'b1          :  1'b0          )  : 1'b0  ;
   
   //Procedure 16
   assign se =  (myd[25] == 1) ? 0 :
                (myd[24] == 1) ? 1:
                (myd[23] == 1) ? 2:
                (myd[22] == 1) ? 3:
                (myd[21] == 1) ? 4:
                (myd[20] == 1) ? 5:
                (myd[19] == 1) ? 6:
                (myd[18] == 1) ? 7:
                (myd[17] == 1) ? 8:
                (myd[16] == 1) ? 9:
                (myd[15] == 1) ? 10:
                (myd[14] == 1) ? 11:
                (myd[13] == 1) ? 12:
                (myd[12] == 1) ? 13:
                (myd[11] == 1) ? 14:
                (myd[10] == 1) ? 15:
                (myd[ 9] == 1) ? 16:
                (myd[ 8] == 1) ? 17:
                (myd[ 7] == 1) ? 18:
                (myd[ 6] == 1) ? 19:
                (myd[ 5] == 1) ? 20:
                (myd[ 4] == 1) ? 21:
                (myd[ 3] == 1) ? 22:
                (myd[ 2] == 1) ? 23:
                (myd[ 1] == 1) ? 24:
                (myd[ 0] == 1) ? 25: 26;
   
   //Procedure 17
   assign eyf = {1'b0,eyd} - {4'b0,se};
   
   //Procedure 18
   assign myf = ( $signed(eyf) > 0 ) ? myd << se : myd << (eyd[4:0] - 1);
   assign eyr = ( $signed(eyf) > 0 ) ? eyf[7:0] : 8'b0                  ;
   
   //Procudure 19
   assign myr = ( ( myf[1] == 1 && myf[0] == 0 && stck == 0 && myf[2] == 1 ) || ( myf[1] == 1 && myf[0] == 0 && (s1 == s2) && stck == 1 ) || ( myf[1] == 1 && myf[0] == 1 ) ) ? myf[26:2] + 25'b1 : myf[26:2];
   
   assign eyri = eyr + 8'b1;
   
   //Procedure 21
   assign ey = (myr[24] == 1) ? eyri  : ( myr[23:0] == 0 ? 0 : eyr);
   assign my = (myr[24] == 1) ? 23'b0 : ( myr[23:0] == 0 ? 23'b0 : myr[22:0]);
   assign ovf_flag2 = (myr[24] == 1) ? (eyri == 8'd255 ? 1'b1          :  1'b0          )  : 1'b0  ;
   
   //Procedure 22
   assign sy = (ey == 0 && my == 0) ? (s1 & s2) : ss;
   
   //Procedure 23
   assign nzm1 = |(m1[22:0]);
   assign nzm2 = |(m2[22:0]);
   
   assign y = ( e1 == 8'd255 && e2 != 8'd255)               ? {s1,8'd255,nzm1,m1[21:0]} :
              ( e2 == 8'd255 && e1 != 8'd255)               ? {s2,8'd255,nzm2,m2[21:0]} :
              ( e1 == 8'd255 && e2 == 8'd255 && nzm1)       ? {s1,8'd255,1'b1,m1[21:0]} :
              ( e1 == 8'd255 && e2 == 8'd255 && nzm2)       ? {s2,8'd255,1'b1,m2[21:0]} :
              ( e1 == 8'd255 && e2 == 8'd255 && (s1 == s2)) ? {s1,8'd255,23'b0}         :
              ( e1 == 8'd255 && e2 == 8'd255)               ? {1'b1,8'd255,1'b1,22'b0}  :
              {sy,ey,my};
              
   assign ovf = ((e1a != 8'd255 && e2a != 8'd255) && (ovf_flag1 == 1 || ovf_flag2 == 1) ? 1 : 0);
   
endmodule
