`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/01/29 23:39:23
// Design Name: 
// Module Name: fabs
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


module fabs
(
    input bit sys_clk,
    input logic rstn,
    input logic [0:0]  stage1_valid,
    input wire [31:0]  x,
    output wire [31:0] y,
    output logic [0:0] out_valid
);
    reg [0:0] stage12_valid;
    
    logic [31:0] stage1_y;
    reg [31:0] stage12_y;
    
    assign stage1_y = {1'b0, x[30:0]};
    
    //pipeline
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
