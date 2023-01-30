`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/01/29 17:59:09
// Design Name: 
// Module Name: top
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


module top
(
    input  bit           sys_clk,
    input  bit           mem_clk,
    input  bit           rst,
    input  logic [7:0]   opcode,
    input  logic [31:0]  x1,
    input  logic [31:0]  x2,
    output logic [31:0]  y,
    output logic         ovf,
    output logic [0:0]   out_valid
);

    //各モジュールからの返り値を受けとるwireを宣言
    logic [31:0]  fadd_y;
    logic [31:0]  fsub_y;
    logic [31:0]  fmul_y;
    logic [31:0]  fdiv_y;
    logic [31:0]  fsqrt_y;
    logic [31:0]  ftoi_y;
    logic [31:0]  itof_y;
    logic [31:0]  fabs_y;
    logic [0:0]   fadd_valid;
    logic [0:0]   fsub_valid;
    logic [0:0]   fmul_valid;
    logic [0:0]   fdiv_valid;
    logic [0:0]   fsqrt_valid;
    logic [0:0]   ftoi_valid;
    logic [0:0]   itof_valid;
    logic [0:0]   fabs_valid;
    
    //各モジュールに接続
    fadd fadd_instance // fmulモジュールのインスタンスを作成
    (
        .sys_clk(sys_clk),
        .rst(rst),
        .stage1_valid(opcode[0:0]),
        .x1(x1),
        .x2(x2),
        .y(fadd_y),
        .out_valid(fadd_valid)
    );
    
    fsub fsub_instance // fmulモジュールのインスタンスを作成
    (
        .sys_clk(sys_clk),
        .rst(rst),
        .stage1_valid(opcode[1:1]),
        .x1(x1),
        .x2(x2),
        .y(fsub_y),
        .out_valid(fsub_valid)
    );
    
    fmul fmul_instance // fmulモジュールのインスタンスを作成
    (
        .sys_clk(sys_clk),
        .rst(rst),
        .stage1_valid(opcode[2:2]),
        .x1(x1),
        .x2(x2),
        .y(fmul_y),
        .out_valid(fmul_valid)
    );

    fdiv fdiv_instance // fmulモジュールのインスタンスを作成
    (
        .sys_clk(sys_clk),
        .mem_clk(mem_clk),
        .rst(rst),
        .stage1_valid(opcode[3:3]),
        .x1(x1),
        .x2(x2),
        .y(fdiv_y),
        .out_valid(fdiv_valid)
    );
    
    //完成してます
    fsqrt fsqrt_instance
    (
        .sys_clk(sys_clk),
        .mem_clk(mem_clk),
        .rst(rst),
        .stage1_valid(opcode[4:4]),
        .x(x1),
        .y(fsqrt_y),
        .out_valid(fsqrt_valid)
    );
    
    //完成してます
    ftoi ftoi_i
    (
        .sys_clk(sys_clk),
        .rst(rst),
        .stage1_valid(opcode[5:5]),
        .x(x1),
        .y(ftoi_y),
        .out_valid(ftoi_valid)
    );
    
    //完成してます
    itof itof_i
    (
        .sys_clk(sys_clk),
        .rst(rst),
        .stage1_valid(opcode[6:6]),
        .x(x1),
        .y(itof_y),
        .out_valid(itof_valid)
    );
    
    //完成してます
    fabs fabs_i
    (
        .sys_clk(sys_clk),
        .rst(rst),
        .stage1_valid(opcode[7:7]),
        .x(x1),
        .y(fabs_y),
        .out_valid(fabs_valid)
    );
    
    assign y = fsqrt_y;
    assign ovf = 1'b0;
    assign out_valid = fsqrt_valid;
    
endmodule
