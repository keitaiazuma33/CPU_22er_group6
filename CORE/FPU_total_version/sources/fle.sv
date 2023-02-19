`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/02/14 12:31:43
// Design Name: 
// Module Name: fle
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


module fle
(
   input bit sys_clk,
   input logic rstn,
   input logic [0:0]  stage1_valid,
   input logic [31:0]  x1,
   input logic [31:0]  x2,
   output wire [31:0] y,
   output logic [0:0] out_valid
);
   logic [0:0]  s1;
   logic [0:0]  s2;
   logic [7:0]  e1;
   logic [7:0]  e2;
   logic [22:0] m1;
   logic [22:0] m2;
   
   assign s1 = x1[31:31];
   assign s2 = x2[31:31];
   assign e1 = x1[30:23];
   assign e2 = x2[30:23];
   assign m1 = x1[22: 0];
   assign m2 = x2[22: 0];
   
   logic [0:0] compare_e1_e2;
   logic [0:0] compare_e2_e1;
   logic [0:0] equal_e;
   assign compare_e1_e2 = {1'b0, e1} >= {1'b0, e2};
   assign compare_e2_e1 = {1'b0, e2} >= {1'b0, e1};
   assign equal_e = (e1 == e2);
   logic [0:0] compare_m1_m2;
   logic [0:0] compare_m2_m1;
   assign compare_m1_m2 = {1'b0, m1} >= {1'b0, m2};
   assign compare_m2_m1 = {1'b0, m2} >= {1'b0, m1};
   
   logic [0:0] y_check;
   assign y_check = ({s1, s2} == 2'b00) ? ((equal_e) ? compare_m2_m1 : compare_e2_e1) :
                    ({s1, s2} == 2'b01) ? 1'b0                                        :
                    ({s1, s2} == 2'b10) ? 1'b1                                        :
                                          ((equal_e) ? compare_m1_m2 : compare_e1_e2) ;
   reg  [0:0] stage12_y_check;
   reg  [0:0]  stage12_valid;

  //STAGE2
  assign y = stage12_y_check ? 32'hffffffff : 32'h0;
  assign out_valid = stage12_valid;
   
   always_ff @ (posedge sys_clk) begin
       if (~rstn) begin
           stage12_valid <= 1'b0; //reset to idle state
       end
       else begin 
          stage12_y_check <= y_check;
          stage12_valid <= stage1_valid;
       end
   end 
endmodule