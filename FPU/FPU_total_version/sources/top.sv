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
    input  bit           rstn,
    input  logic [7:0]   opcode,
    input  logic [31:0]  x1,
    input  logic [31:0]  x2,
    output logic [31:0]  y,
    output logic         ovf,
    output logic         unf,
    output logic [0:0]   out_valid
);
    
    logic [0:0] fpu_rst;

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
        .rstn(rstn),
        .stage1_valid(opcode[0:0]),
        .x1(x1),
        .x2(x2),
        .y(fadd_y),
        .out_valid(fadd_valid)
    );
    
    fsub fsub_instance // fmulモジュールのインスタンスを作成
    (
        .sys_clk(sys_clk),
        .rstn(rstn),
        .stage1_valid(opcode[1:1]),
        .x1(x1),
        .x2(x2),
        .y(fsub_y),
        .out_valid(fsub_valid)
    );
    
    fmul fmul_instance // fmulモジュールのインスタンスを作成
    (
        .sys_clk(sys_clk),
        .rstn(rstn),
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
        .rstn(rstn),
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
        .rstn(rstn),
        .stage1_valid(opcode[4:4]),
        .x(x1),
        .y(fsqrt_y),
        .out_valid(fsqrt_valid)
    );
    
    //完成してます
    ftoi ftoi_i
    (
        .sys_clk(sys_clk),
        .rstn(rstn),
        .stage1_valid(opcode[5:5]),
        .x(x1),
        .y(ftoi_y),
        .out_valid(ftoi_valid)
    );
    
    //完成してます
    itof itof_i
    (
        .sys_clk(sys_clk),
        .rstn(rstn),
        .stage1_valid(opcode[6:6]),
        .x(x1),
        .y(itof_y),
        .out_valid(itof_valid)
    );
    
    //完成してます
    fabs fabs_i
    (
        .sys_clk(sys_clk),
        .rstn(rstn),
        .stage1_valid(opcode[7:7]),
        .x(x1),
        .y(fabs_y),
        .out_valid(fabs_valid)
    );
    
    logic [3:0] state;
    typedef enum {idle, fadd, fsub, fmul, fdiv, fsqrt, ftoi, itof, fabs} FPU_state_type;   //オートマトンの状態：左から順に0,1,2,3
    // 有限状態の現在の状態と次の状態を保持する
    FPU_state_type  current_state, next_state;
    assign state = current_state;
    
    always_comb begin
        case(current_state)
            idle : begin
                if (opcode[0:0])
                begin
                    next_state = fadd;
                end
                if (opcode[1:1])
                begin
                    next_state = fsub;
                end
                if (opcode[2:2])
                begin
                    next_state = fmul;
                end
                if (opcode[3:3])
                begin
                    next_state = fdiv;
                end
                if (opcode[4:4])
                begin
                    next_state = fsqrt;
                end
                if (opcode[5:5])
                begin
                    next_state = ftoi;
                end
                if (opcode[6:6])
                begin
                    next_state = itof;
                end
                if (opcode[7:7])
                begin
                    next_state = fabs;
                end
            end
            fadd : begin
                if (fadd_valid)
                begin
                    next_state = idle;
                end
            end
            fsub : begin
                if (fsub_valid)
                begin
                    next_state = idle;
                end
            end
            fmul : begin
                if (fmul_valid)
                begin
                    next_state = idle;
                end
            end
            fdiv : begin
                if (fdiv_valid)
                begin
                    next_state = idle;
                end
            end
            fsqrt : begin
                if (fsqrt_valid)
                begin
                    next_state = idle;
                end
            end
            ftoi : begin
                if (ftoi_valid)
                begin
                    next_state = idle;
                end
            end
            itof : begin
                if (itof_valid)
                begin
                    next_state = idle;
                end
            end
            fabs : begin
                if (fabs_valid)
                begin
                    next_state = idle;
                end
            end
        endcase
    end
    
    assign {y, out_valid, ovf, unf} = (state == fadd)   ? {fadd_y, fadd_valid, 1'b0, 1'b0}:
                                      (state == fsub)   ? {fsub_y, fsub_valid, 1'b0, 1'b0}:
                                      (state == fmul)   ? {fmul_y, fmul_valid, fmul_ovf, fmul_unf}:
                                      (state == fdiv)   ? {fdiv_y, fdiv_valid, fdiv_ovf, fdiv_unf}:
                                      (state == fsqrt)  ? {fsqrt_y, fsqrt_valid, 1'b0, 1'b0}:
                                      (state == ftoi)  ? {ftoi_y, ftoi_valid, 1'b0, 1'b0}:
                                      (state == itof)  ? {itof_y, itof_valid, 1'b0, 1'b0}:
                                      (state == fabs)  ? {fabs_y, fabs_valid, 1'b0, 1'b0}:
                                                         {32'b0 , 1'b0, 1'b0, 1'b0};
    
    always_ff @(posedge(sys_clk))
    begin
        if (~rstn) 
        current_state <= idle; //reset to idle state
        else 
        current_state <= next_state;
    end
endmodule