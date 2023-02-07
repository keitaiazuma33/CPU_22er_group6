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
    input  bit           clk,
    //input  bit           mem_clk,
    input  bit           rstn,
    input  logic [7:0]   opcode,
    input  logic [31:0]  x1,
    input  logic [31:0]  x2,
    output logic [31:0]  y,
    output logic         ovf,
    output logic         unf,
    output logic [0:0]   out_valid
);
    bit sys_clk;
    bit mem_clk;
    clk_wiz_0 clk_gen (
        .clk_in1(clk),
        .clk_out1(mem_clk),
        .clk_out2(sys_clk)
    );
    
    //mem_clkを基準としてsys_clk(2)を生成
    bit sys_clk2;
    reg [0:0] sys_clk2_reg;
    assign sys_clk2 = sys_clk2_reg;
    
    logic [0:0] zero;
    assign zero = 1'b1;
    always_ff @ (posedge mem_clk) begin
        if (~rstn) begin
            sys_clk2_reg <= zero;
        end
        else begin
            sys_clk2_reg <= ~sys_clk2_reg;
        end
    end

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
    
    logic [0:0]   fmul_ovf;
    logic [0:0]   fmul_unf;
    logic [0:0]   fdiv_ovf;
    logic [0:0]   fdiv_unf;
    
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
        .ovf(fmul_ovf),
        .unf(fmul_unf),
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
        .ovf(fdiv_ovf),
        .unf(fdiv_unf),
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
    
    logic [7:0] opcode_ref1;
    logic [7:0] opcode_ref2;
    logic [7:0] opcode_ref3;
    logic [7:0] opcode_ref4;
    logic [7:0] opcode_ref5;
    logic [7:0] opcode_ref6;
    reg [7:0] opcode_01;
    reg [7:0] opcode_12;
    reg [7:0] opcode_23;
    reg [7:0] opcode_34;
    reg [7:0] opcode_45;
    reg [7:0] opcode_56;
    
    assign y = (opcode_ref3[0:0] == 1'b1) ? fadd_y:
               (opcode_ref3[1:1] == 1'b1) ? fsub_y:
               (opcode_ref3[2:2] == 1'b1) ? fmul_y:
               (opcode_ref6[3:3] == 1'b1) ? fdiv_y:
               (opcode_ref3[4:4] == 1'b1) ? fsqrt_y:
               (opcode_ref1[5:5] == 1'b1) ? ftoi_y:
               (opcode_ref2[6:6] == 1'b1) ? itof_y:
               (opcode_ref1[6:6] == 1'b1) ? fabs_y:
                                       32'b0 ;
    assign ovf = |{(opcode[2:2] && fmul_ovf), (opcode[3:3] && fdiv_ovf)};
    assign unf = |{(opcode[2:2] && fmul_unf), (opcode[3:3] && fdiv_unf)};
    assign out_valid = (opcode_ref3[0:0] == 1'b1) ? fadd_valid:
                       (opcode_ref3[1:1] == 1'b1) ? fsub_valid:
                       (opcode_ref3[2:2] == 1'b1) ? fmul_valid:
                       (opcode_ref6[3:3] == 1'b1) ? fdiv_valid:
                       (opcode_ref3[4:4] == 1'b1) ? fsqrt_valid:
                       (opcode_ref1[5:5] == 1'b1) ? ftoi_valid:
                       (opcode_ref2[6:6] == 1'b1) ? itof_valid:
                       (opcode_ref1[6:6] == 1'b1) ? fabs_valid:
                                               32'b0 ;
                                               
    assign opcode_ref1 = opcode_01;
    assign opcode_ref2 = opcode_12;
    assign opcode_ref3 = opcode_23;
    assign opcode_ref4 = opcode_34;
    assign opcode_ref5 = opcode_45;
    assign opcode_ref6 = opcode_56;
    always_ff @ (posedge sys_clk) begin
      opcode_01 <= opcode;
      opcode_12 <= opcode_ref1;
      opcode_23 <= opcode_ref2;
      opcode_34 <= opcode_ref3;
      opcode_45 <= opcode_ref4;
      opcode_56 <= opcode_ref5;
   end
endmodule
