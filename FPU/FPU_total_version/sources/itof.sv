`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/01/29 18:49:16
// Design Name: 
// Module Name: itof
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

module itof
(
   input bit sys_clk,
   input logic rst,
   input logic [0:0]  stage1_valid,
   input wire [31:0]  x,
   output wire [31:0] y,
   output logic [0:0] out_valid
);
             
   wire        stage1_s;
   wire        stage2_s;
   reg  [0:0]  stage12_s;
   wire [31:0] stage1_x_abs;
   wire [31:0] stage2_x_abs;
   reg  [31:0] stage12_x_abs;
   wire [5:0]  stage1_shamt;
   wire [5:0]  stage2_shamt;
   reg  [5:0]  stage12_shamt;
   
   wire [32:0] shifted;
   wire [31:0] adjusted;
   wire [22:0] ans_m;
   wire [7:0]  ans_e;
   wire        e_plus;
   wire [31:0] stage2_y;
   reg  [31:0] stage23_y;
   
   logic [0:0]  stage2_valid;
   reg   [0:0]  stage12_valid;
   reg   [0:0]  stage23_valid;

  //Procedure 1
   assign stage1_s = x[31];
   assign stage1_x_abs = (stage1_s == 1'b0) ? x[31:0] : -x[31:0];
   
   //Procedure 2
   assign stage1_shamt =
        (stage1_x_abs[31] == 1'b1) ? 6'd1:
        (stage1_x_abs[30] == 1'b1) ? 6'd2:
        (stage1_x_abs[29] == 1'b1) ? 6'd3:
        (stage1_x_abs[28] == 1'b1) ? 6'd4:
        (stage1_x_abs[27] == 1'b1) ? 6'd5:
        (stage1_x_abs[26] == 1'b1) ? 6'd6:
        (stage1_x_abs[25] == 1'b1) ? 6'd7:
        (stage1_x_abs[24] == 1'b1) ? 6'd8:
        (stage1_x_abs[23] == 1'b1) ? 6'd9:
        (stage1_x_abs[22] == 1'b1) ? 6'd10:
        (stage1_x_abs[21] == 1'b1) ? 6'd11:
        (stage1_x_abs[20] == 1'b1) ? 6'd12:
        (stage1_x_abs[19] == 1'b1) ? 6'd13:
        (stage1_x_abs[18] == 1'b1) ? 6'd14:
        (stage1_x_abs[17] == 1'b1) ? 6'd15:
        (stage1_x_abs[16] == 1'b1) ? 6'd16:
        (stage1_x_abs[15] == 1'b1) ? 6'd17:
        (stage1_x_abs[14] == 1'b1) ? 6'd18:
        (stage1_x_abs[13] == 1'b1) ? 6'd19:
        (stage1_x_abs[12] == 1'b1) ? 6'd20:
        (stage1_x_abs[11] == 1'b1) ? 6'd21:
        (stage1_x_abs[10] == 1'b1) ? 6'd22:
        (stage1_x_abs[9] == 1'b1) ? 6'd23:
        (stage1_x_abs[8] == 1'b1) ? 6'd24:
        (stage1_x_abs[7] == 1'b1) ? 6'd25:
        (stage1_x_abs[6] == 1'b1) ? 6'd26:
        (stage1_x_abs[5] == 1'b1) ? 6'd27:
        (stage1_x_abs[4] == 1'b1) ? 6'd28:
        (stage1_x_abs[3] == 1'b1) ? 6'd29:
        (stage1_x_abs[2] == 1'b1) ? 6'd30:
        (stage1_x_abs[1] == 1'b1) ? 6'd31:
        (stage1_x_abs[0] == 1'b1) ? 6'd32:
        6'd0;
   
   
   //stage2
   assign shifted = stage2_x_abs << stage2_shamt;
   
   assign ans_m = (shifted[8:8] == 1'b0) ? shifted[31:9] : shifted[31:9] + 32'b1;
   assign e_plus = & shifted[31:8];
   
   assign ans_e = 8'd127 + 8'd32 - {2'b0, stage2_shamt} + {7'b0, e_plus};
   
   assign stage2_y = (stage2_shamt == 6'b0) ? 32'b0 : {stage2_s, ans_e, ans_m};
   
   assign stage2_s     = stage12_s;
   assign stage2_x_abs = stage12_x_abs;
   assign stage2_shamt = stage12_shamt;
   assign y = stage23_y;
   assign stage2_valid = stage12_valid;
   assign out_valid = stage23_valid;
   
   always_ff @ (posedge sys_clk) begin
        stage12_s     = stage1_s;
        stage12_x_abs = stage1_x_abs;
        stage12_shamt = stage1_shamt;
        stage23_y = stage2_y;
        stage12_valid = stage1_valid;
        stage23_valid = stage2_valid;
   end
   
endmodule

`default_nettype wire
