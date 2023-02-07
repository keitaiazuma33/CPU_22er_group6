`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/01/29 18:53:36
// Design Name: 
// Module Name: fsqrt
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


module fsqrt(
    input logic sys_clk,
    input logic mem_clk,
    input logic rst,
    input logic stage1_valid,
    input  logic [31:0] x,
    output logic [31:0] y,
    output logic [0:0]  out_valid
);

    logic [0:0] stage2_valid;
    logic [0:0] stage3_valid;
    reg [0:0] stage12_valid;
    reg [0:0] stage23_valid;
    reg [0:0] stage34_valid;
    
    logic [31:0] stage2_x;
    logic [31:0] stage3_x;
    reg [31:0] stage12_x;
    reg [31:0] stage23_x;
    
    logic [31:0] stage3_y;
    reg [31:0] stage34_y;

    logic        ena;
    logic [0:0]  wea;
    logic [9:0]  addra;
    logic [7:0]  dina;
    logic [35:0] douta;
    logic [35:0] data_from_a;

    blk_mem_fsqrt blk_mem_fsqrt_i ( // メモリモジュールのインスタンスを作成
        .clka(mem_clk), // ポートA(一つ目のポート)への接続
        .ena(ena),
        .wea(wea),
        .addra(addra),
        .dina(dina),
        .douta(douta)
    );

    // ポートAで所望のデータ（傾き13bit + y切片23bit）を読みだす
    assign ena  = 1'b1;
    assign wea  = 1'b0; // read-only
    assign dina = 8'h0;
    assign data_from_a = douta;
    assign addra = (x[23:23] == 1'b0) ? {1'b1, x[22:14]} : {1'b0, x[22:14]};
    
    //STAGE 2
    logic [23:0] gradient; //0.25～0.5の２進数表現を表現（単精度部分）  *2^-25して考えて
    logic [25:0] delta_x;  //1～2の２進数表現を表現（単精度部分）       *2^-23して考えて
    logic [23:0] stage2_y_intersect;
    logic [23:0] stage3_y_intersect;
    reg  [23:0] stage23_y_intersect;

    //傾きは 0.25～0.5 にstrictに収まる→指数部まで固定
    assign gradient  = {1'b1, data_from_a[35:23], 10'b0};
    //指数部のLSBが1のものが前半、0のものが後半になる（例：1 = 0 01111111 000000000000000000000000, 2 = 0 10000000 000000000000000000000000）
    assign delta_x     = (stage2_x[23:23] == 1'b0) ? {1'b1, stage2_x[22:0], 1'b0} : {2'b01, stage2_x[22:0]};
    //切片は 0.5～1.0 にstrictに収まる→指数部まで固定　
    assign stage2_y_intersect = {1'b1, data_from_a[22:0]};
    
    logic [48:0]  stage2_delta_y; //                                  *2^-48して考えて
    logic [48:0]  stage3_delta_y; //                                  *2^-48して考えて
    reg  [48:0]  stage23_delta_y;
    assign stage2_delta_y = gradient * delta_x;   //context-determined expression
    
    //STAGE 3
    logic [25:0] fsqrt_ans;
    assign fsqrt_ans = {2'b00, stage3_y_intersect} + {1'b0, stage3_delta_y[48:24]};
    logic [31:0]  fsqrt_float;
    assign fsqrt_float = (fsqrt_ans[25:25] == 1'b1) ? {1'b0, 8'b01111111, 23'b1} :
                         (fsqrt_ans[24:24] == 1'b1) ? {1'b0, 8'b01111111, fsqrt_ans[23:1]} :
                                                      {1'b0, 8'b01111111, 23'b0} ;
    
    logic [7:0] return_e;
    logic [22:0] return_m;
    assign return_e = (stage3_x[23:23] == 1'b0) ? ((stage3_x[30:23])>>1) - 8'd64 + 8'd127/*fsqrt_float[30:23]*/ :  ((stage3_x[30:23]+1)>>1) - 8'd64 + 8'd127/*fsqrt_float[30:23]*/;  //x[30:23] / 2 + 63 + (fadd_ans[30:23] - 127)のつもり
    assign return_m = fsqrt_float[22:0];
    
    //負の数が入ってきたら無限を返す
    assign stage3_y = (stage3_x[31:31] == 1'b1) ? {32'b01111111111111111111111111111111} : {1'b0, return_e, return_m};
    
    //pipeline
    assign stage2_valid = stage12_valid;
    assign stage2_x = stage12_x;
    
    assign stage3_valid = stage23_valid;
    assign stage3_x = stage23_x;
    assign stage3_delta_y = stage23_delta_y;
    assign stage3_y_intersect = stage23_y_intersect;
    
    assign y = stage34_y;
    assign out_valid = stage34_valid;
    
    always_ff @ (posedge sys_clk) begin
      stage12_x <= x;
      stage12_valid <= stage1_valid;

      stage23_x <= stage2_x;
      stage23_delta_y <= stage2_delta_y;
      stage23_y_intersect <= stage2_y_intersect;
      stage23_valid <= stage2_valid;
      
      stage34_y <= stage3_y;
      stage34_valid <= stage3_valid;
   end
endmodule
