`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/02/14 12:22:36
// Design Name: 
// Module Name: feq
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


module feq
(
   input bit sys_clk,
   input logic rstn,
   input logic [0:0]  stage1_valid,
   input wire [31:0]  x1,
   input wire [31:0]  x2,
   output wire [31:0] y,
   output logic [0:0] out_valid
);
   wire [31:0] stage1_y;
   reg  [31:0] stage12_y;
   
   reg  [0:0]  stage12_valid;

  //Procedure 1
  assign stage1_y = (x1 == x2) ? 32'hffffffff : 32'b0;
   
   assign y = stage12_y;
   assign out_valid = stage12_valid;
   
   always_ff @ (posedge sys_clk) begin
       if (~rstn) begin
           stage12_valid <= 1'b0; //reset to idle state
       end
       else begin 
          stage12_y <= stage1_y;
          stage12_valid <= stage1_valid;
       end
   end
endmodule
