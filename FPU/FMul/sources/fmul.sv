`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/11 21:35:02
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


`default_nettype none

module fmul (input wire [31:0]  x1,
             input wire [31:0]  x2,
             output wire [31:0] y,
             output wire        ovf,
             output wire        unf);
             
   wire [11:0] mh1_before_extension;   //�����r�b�g
   wire [12:0] mh1_extended;           //�����r�b�g
   wire [10:0] ml1;   //�����r�b�g
   wire [7:0]  e1;    //�w���r�b�g
   wire        s1;    //�����r�b�g
   
   wire [11:0] mh2_before_extension;   //�����r�b�g
   wire [12:0] mh2_extended;           //�����r�b�g
   wire [10:0] ml2;   //�����r�b�g
   wire [7:0]  e2;    //�w���r�b�g
   wire        s2;    //�����r�b�g

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

   //�����ɑS���܂Ƃ߂܂�

   //�X�e�[�W�P
   //�|���Z�̖{��
   wire [25:0] hh;
   wire [23:0] hl;
   wire [23:0] lh;

   assign hh = mh1_extended * mh2_extended;
   assign hl = mh1_extended * ml2;
   assign lh = ml1 * mh2_extended;

   //�w�����̌v�Z
   wire [8:0] ans_e_pre;
   assign ans_e_pre = {1'b0, e1} + {1'b0, e2} + 9'd129;

   //�������̌v�Z
   wire ans_s;
   assign ans_s = s1 ^ s2;

   //�X�e�[�W�Q
   //�w�����̌v�Z
   //�ۂߏ���
   wire [25:0] ans_m_long;
   wire [8:0] ans_e_pre_plus_one;
   wire eplus;
   wire unf;

   assign ans_m_long = hh + (hl >> 11) + (lh >> 11) + 26'd2;
   assign ans_e_pre_plus_one = ans_e_pre + 9'b1;
   assign eplus = ((ans_m_long[25] == 1'b1) ? 1'b1 : 1'b0);
   assign unf = (ans_e_pre[8:7] == 2'b01 ? 1'b1 : 1'b0);
   assign ovf = (ans_e_pre[8:7] == 2'b00 ? 1'b1 : 1'b0);

   //�X�e�[�W�R
   //�������𐳋K��
   wire [22:0] ans_m;
   assign ans_m = ( (ans_m_long[25] == 1'b1) ? ans_m_long[24:2] : ans_m_long[23:1]);
   
   //�w������I��
   wire [7:0] ans_e;
   assign ans_e = ((unf == 1'b1) ? 8'b0 : ( (ovf == 1'b1) ? 8'd255 : ((eplus == 1'b1) ? ans_e_pre_plus_one[7:0] : ans_e_pre[7:0])));

   //�܂Ƃ߂ĕԂ�
   assign y = (x1 == 32'b0 || x2 == 32'b0) ? 32'b0 : {ans_s, ans_e, ans_m};
   
endmodule

`default_nettype wire
