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


module fpu_top
(
    input  bit           sys_clk,
    input  bit           rstn,
    input  logic [9:0]   opcode,
    input  logic [31:0]  x1,
    input  logic [31:0]  x2,
    output logic [31:0]  y,
    output logic         ovf,
    output logic         unf,
    output logic [0:0]   out_valid
);

    //各モジュールからの返り値を受けとるwireを宣言
    wire [31:0]  fadd_y;
    wire [31:0]  fsub_y;
    wire [31:0]  fmul_y;
    wire [31:0]  fdiv_y;
    wire [31:0]  fsqrt_y;
    wire [31:0]  ftoi_y;
    wire [31:0]  itof_y;
    wire [31:0]  fabs_y;
    wire [31:0]  feq_y;
    wire [31:0]  fle_y;
    wire [0:0]   fadd_valid;
    wire [0:0]   fsub_valid;
    wire [0:0]   fmul_valid;
    wire [0:0]   fdiv_valid;
    wire [0:0]   fsqrt_valid;
    wire [0:0]   ftoi_valid;
    wire [0:0]   itof_valid;
    wire [0:0]   fabs_valid;
    wire [0:0]   feq_valid;
    wire [0:0]   fle_valid;
    
    wire [0:0]   fmul_ovf;
    wire [0:0]   fmul_unf;
    wire [0:0]   fdiv_ovf;
    wire [0:0]   fdiv_unf;
    
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
    
    feq feq_instance // feqモジュールのインスタンスを作成
    (
        .sys_clk(sys_clk),
        .rstn(rstn),
        .stage1_valid(opcode[8:8]),
        .x1(x1),
        .x2(x2),
        .y(feq_y),
        .out_valid(feq_valid)
    );
    
    fle fle_instance // feqモジュールのインスタンスを作成
    (
        .sys_clk(sys_clk),
        .rstn(rstn),
        .stage1_valid(opcode[9:9]),
        .x1(x1),
        .x2(x2),
        .y(fle_y),
        .out_valid(fle_valid)
    );


    
    reg [3:0] state2;
    wire [3:0] state;
    
    always_ff@ (posedge sys_clk) begin
      if (~rstn) begin
        state2 <= 4'd0;
      end else begin
        if      (opcode[0]) begin state2 <= 4'd1;    end
        else if (opcode[1]) begin state2 <= 4'd2;    end
        else if (opcode[2]) begin state2 <= 4'd3;    end
        else if (opcode[3]) begin state2 <= 4'd4;    end
        else if (opcode[4]) begin state2 <= 4'd5;    end
        else if (opcode[5]) begin state2 <= 4'd6;    end
        else if (opcode[6]) begin state2 <= 4'd7;    end
        else if (opcode[7]) begin state2 <= 4'd8;    end
        else if (opcode[8]) begin state2 <= 4'd9;    end
        else if (opcode[9]) begin state2 <= 4'd10;   end
        else                begin state2 <= state2;  end
      end
    end

    assign state = 
      (opcode[0]) ? 4'd1  : 
      (opcode[1]) ? 4'd2  :
      (opcode[2]) ? 4'd3  :
      (opcode[3]) ? 4'd4  :
      (opcode[4]) ? 4'd5  :
      (opcode[5]) ? 4'd6  :
      (opcode[6]) ? 4'd7  :
      (opcode[7]) ? 4'd8  :
      (opcode[8]) ? 4'd9  :
      (opcode[9]) ? 4'd10 : state2;



    assign ovf = 1'b0;
    assign unf = 1'b0;


    reg [31:0] y_reg;
    wire [31:0] something_y;

    assign something_y =
      (state == 4'd1)  ? fadd_y  :
      (state == 4'd2)  ? fsub_y  :
      (state == 4'd3)  ? fmul_y  :
      (state == 4'd4)  ? fdiv_y  :
      (state == 4'd5)  ? fsqrt_y :
      (state == 4'd6)  ? ftoi_y  :
      (state == 4'd7)  ? itof_y  :
      (state == 4'd8)  ? fabs_y  :
      (state == 4'd9)  ? feq_y   :
      (state == 4'd10) ? fle_y   : 32'b0;

    assign out_valid =
      (state == 4'd1)  ? fadd_valid  :
      (state == 4'd2)  ? fsub_valid  :
      (state == 4'd3)  ? fmul_valid  :
      (state == 4'd4)  ? fdiv_valid  :
      (state == 4'd5)  ? fsqrt_valid :
      (state == 4'd6)  ? ftoi_valid  :
      (state == 4'd7)  ? itof_valid  :
      (state == 4'd8)  ? fabs_valid  :
      (state == 4'd9)  ? feq_valid   :
      (state == 4'd10) ? fle_valid   : 1'b0;
    
    
    always_ff@ (posedge sys_clk) begin
      if (~rstn) begin
        y_reg <= 32'b0;
      end else begin
        if (out_valid) begin
          y_reg <= something_y;
        end
      end
    end

    assign y = (out_valid) ? something_y : y_reg;
   
endmodule