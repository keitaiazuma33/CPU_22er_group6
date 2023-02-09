`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/01/29 18:47:08
// Design Name: 
// Module Name: fmul
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

module fmul
(
   input bit sys_clk,
   input logic rst,
   input logic [0:0]  stage1_valid,
   input wire [31:0]  x1,
   input wire [31:0]  x2,
   output wire [31:0] y,
   output wire        ovf,
   output wire        unf,
   output logic [0:0] out_valid
);
   logic [0:0] stage2_valid;
   logic [0:0] stage3_valid;
   reg [0:0] stage12_valid;
   reg [0:0] stage23_valid;
   reg [0:0] stage34_valid;
             
   wire [11:0] mh1_before_extension;   //仮数ビット
   wire [12:0] mh1_extended;           //仮数ビット
   wire [10:0] ml1;   //仮数ビット
   wire [7:0]  e1;    //指数ビット
   wire        s1;    //符号ビット
   
   wire [11:0] mh2_before_extension;   //仮数ビット
   wire [12:0] mh2_extended;           //仮数ビット
   wire [10:0] ml2;   //仮数ビット
   wire [7:0]  e2;    //指数ビット
   wire        s2;    //符号ビット

   wire [31:0] stage2_x1;
   wire [31:0] stage3_x1;
   wire [31:0] stage2_x2;
   wire [31:0] stage3_x2;
   reg [31:0] stage12_x1;
   reg [31:0] stage23_x1;
   reg [31:0] stage12_x2;
   reg [31:0] stage23_x2;

  //Procedure 1
   assign mh1_before_extension = x1[22:11];
   assign ml1 = x1[10:0];
   assign e1 = x1[30:23];
   assign s1 = x1[31];
   
   assign mh2_before_extension = x2[22:11];
   assign ml2 = x2[10:0];
   assign e2 = x2[30:23];
   assign s2 = x2[31];
   
   //Procedure 2
   assign mh1_extended = ( (e1 == 0) ? {1'b0, mh1_before_extension} : {1'b1, mh1_before_extension});
   assign mh2_extended = ( (e2 == 0) ? {1'b0, mh2_before_extension} : {1'b1, mh2_before_extension});

   //ここに全部まとめます

   //ステージ１
   //掛け算の本体
   wire [25:0] stage1_hh;
   wire [23:0] stage1_hl;
   wire [23:0] stage1_lh;
   wire [25:0] stage2_hh;
   wire [23:0] stage2_hl;
   wire [23:0] stage2_lh;
   reg  [25:0] stage12_hh;
   reg  [23:0] stage12_hl;
   reg  [23:0] stage12_lh;

   assign stage1_hh = mh1_extended * mh2_extended;
   assign stage1_hl = mh1_extended * ml2;
   assign stage1_lh = ml1 * mh2_extended;

   //指数部の計算
   wire [8:0] stage1_ans_e_pre;
   wire [8:0] stage2_ans_e_pre;
   wire [8:0] stage3_ans_e_pre;
   reg  [8:0] stage12_ans_e_pre;
   reg  [8:0] stage23_ans_e_pre;

   assign stage1_ans_e_pre = {1'b0, e1} + {1'b0, e2} + 9'd129;

   //符号部の計算
   wire stage1_ans_s;
   wire stage2_ans_s;
   wire stage3_ans_s;
   reg [0:0] stage12_ans_s;
   reg [0:0] stage23_ans_s;

   assign stage1_ans_s = s1 ^ s2;

   //ステージ２
   //指数部の計算
   //丸め処理
   wire [25:0] stage2_ans_m_long;
   wire [25:0] stage3_ans_m_long;
   reg  [25:0] stage23_ans_m_long;

   wire [8:0] stage2_ans_e_pre_plus_one;
   wire [8:0] stage3_ans_e_pre_plus_one;
   reg  [8:0] stage23_ans_e_pre_plus_one;

   wire stage2_eplus;
   wire stage3_eplus;
   reg [0:0] stage23_eplus;

   wire stage2_unf;
   wire stage3_unf;
   reg [0:0] stage23_unf;
   reg [0:0] stage34_unf;

   wire stage2_ovf;
   wire stage3_ovf;
   reg [0:0] stage23_ovf;
   reg [0:0] stage34_ovf;

   assign stage2_ans_m_long = stage2_hh + (stage2_hl >> 11) + (stage2_lh >> 11) + 26'd2;
   assign stage2_ans_e_pre_plus_one = stage2_ans_e_pre + 9'b1;
   assign stage2_eplus = ((stage2_ans_m_long[25] == 1'b1) ? 1'b1 : 1'b0);
   assign stage2_unf = (stage2_ans_e_pre[8:7] == 2'b01 ? 1'b1 : 1'b0);
   assign stage2_ovf = (stage2_ans_e_pre[8:7] == 2'b00 ? 1'b1 : 1'b0);

   //ステージ３
   //仮数部を正規化
   wire [22:0] ans_m;
   assign ans_m = ( (stage3_ans_m_long[25] == 1'b1) ? stage3_ans_m_long[24:2] : stage3_ans_m_long[23:1]);
   
   //指数部を選ぶ
   wire [7:0] ans_e;
   assign ans_e = ((stage3_unf == 1'b1) ? 8'b0 : ( (stage3_ovf == 1'b1) ? 8'd255 : ((stage3_eplus == 1'b1) ? stage3_ans_e_pre_plus_one[7:0] : stage3_ans_e_pre[7:0])));

   //まとめて返す
   wire [31:0] stage3_y;
   reg  [31:0] stage34_y;
   assign stage3_y = (stage3_x1 == 32'b0 || stage3_x2 == 32'b0) ? 32'b0 : {stage3_ans_s, ans_e, ans_m};
   
   //パイプライン化の設定
   assign stage2_hh = stage12_hh;
   assign stage2_hl = stage12_hl;
   assign stage2_lh = stage12_lh;
   assign stage2_ans_e_pre = stage12_ans_e_pre;
   assign stage2_ans_s = stage12_ans_s;
   assign stage2_x1 = stage12_x1;
   assign stage2_x2 = stage12_x2;
   assign stage2_valid = stage12_valid;

   assign stage3_ans_e_pre = stage23_ans_e_pre;
   assign stage3_ans_s = stage23_ans_s;
   assign stage3_ans_m_long = stage23_ans_m_long;
   assign stage3_ans_e_pre_plus_one = stage23_ans_e_pre_plus_one;
   assign stage3_eplus = stage23_eplus;
   assign stage3_unf = stage23_unf;
   assign stage3_ovf = stage23_ovf;
   assign stage3_x1 = stage23_x1;
   assign stage3_x2 = stage23_x2;
   assign stage3_valid = stage23_valid;
   
   assign y = stage34_y;
   assign unf = stage34_unf;
   assign ovf = stage34_ovf;
   assign out_valid = stage34_valid;
   
   always_ff @ (posedge sys_clk) begin
      stage12_hh <= stage1_hh;
      stage12_hl <= stage1_hl;
      stage12_lh <= stage1_lh;
      stage12_ans_e_pre <= stage1_ans_e_pre;
      stage12_ans_s <= stage1_ans_s;
      stage12_x1 <= x1;
      stage12_x2 <= x2;
      stage12_valid <= stage1_valid;

      stage23_ans_e_pre <= stage2_ans_e_pre;
      stage23_ans_s <= stage2_ans_s;
      stage23_ans_m_long <= stage2_ans_m_long;
      stage23_ans_e_pre_plus_one <= stage2_ans_e_pre_plus_one;
      stage23_eplus <= stage2_eplus;
      stage23_unf <= stage2_unf;
      stage23_ovf <= stage2_ovf;
      stage23_x1 <= stage2_x1;
      stage23_x2 <= stage2_x2;
      stage23_valid <= stage2_valid;
      
      stage34_y <= stage3_y;
      stage34_ovf <= stage3_ovf;
      stage34_unf <= stage3_unf;
      stage34_valid <= stage3_valid;
   end
endmodule

`default_nettype wire