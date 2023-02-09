`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/01/29 18:48:33
// Design Name: 
// Module Name: ftoi
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

module ftoi
(
   input bit sys_clk,
   input logic rst,
   input logic [0:0]  stage1_valid,
   input wire [31:0]  x,
   output wire [31:0] y,
   output logic [0:0] out_valid
);
             
   wire [32:0] m;
   wire [7:0]  e;
   wire        s;
   
   wire [32:0] shifted;
   wire [31:0] adjusted;
   wire [31:0] stage1_y;
   reg  [31:0] stage12_y;
   
   reg  [0:0]  stage12_valid;

  //Procedure 1
   assign s = x[31];
   assign e = x[30:23];
   assign m = {1'b1, x[22:0], 9'b0};
   
   //Procedure 2
   wire [8:0] shamt;
   assign shamt = 9'd127 + 9'd31 - {1'b0, e};
   assign shifted = m >> $signed(shamt);
   
   assign adjusted = (shifted[0:0] == 1'b0) ? shifted[32:1] : shifted[32:1] + 32'b1;
   
   assign stage1_y = (s == 1'b0) ? adjusted : -adjusted;
   
   assign y = stage12_y;
   assign out_valid = stage12_valid;
   
   always_ff @ (posedge sys_clk) begin
        stage12_y = stage1_y;
        stage12_valid = stage1_valid;
   end
   
endmodule

`default_nettype wire