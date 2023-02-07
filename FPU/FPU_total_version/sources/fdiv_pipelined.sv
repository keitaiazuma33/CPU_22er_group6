`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/01/29 18:34:28
// Design Name: 
// Module Name: fdiv
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


module fdiv(
    input logic sys_clk,
    input logic mem_clk,
    input logic rst,
    input logic stage1_valid,
    input  logic [31:0] x1,
    input  logic [31:0] x2,
    output logic [0:0] ovf,
    output logic [0:0] unf,
    output logic [31:0] y,
    output logic [0:0] out_valid
);
    logic [0:0] stage2_valid;
    logic [0:0] stage3_valid;
    logic [0:0] stage4_valid;
    reg [0:0] stage12_valid;
    reg [0:0] stage23_valid;
    reg [0:0] stage34_valid;
    
    logic [31:0] stage2_x1;
    logic [31:0] stage3_x1;
    logic [31:0] stage4_x1;
    reg [31:0] stage12_x1;
    reg [31:0] stage23_x1;
    reg [31:0] stage34_x1;
    
    logic [31:0] stage2_x2;
    logic [31:0] stage3_x2;
    reg [31:0] stage12_x2;
    reg [31:0] stage23_x2;
    
    //ここからfinv
    //STAGE 1 第2引数の逆数をとる
    logic        ena;
    logic [0:0]  wea;
    logic [9:0] addra;
    logic [7:0]  dina;
    logic [35:0]  douta;
    logic [35:0] data_from_a;

    blk_mem_finv blk_mem_finv_i ( // メモリモジュールのインスタンスを作成
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
    assign addra = x2[22:13];
    
    //STAGE 2 delta_yの掛け算を行う
    logic [24:0] gradient;      //*2^-25して考えて
    logic [23:0] delta_x;         //*2^0して考えて
    logic [23:0] stage2_y_intersect;   //*2^0して考えて
    logic [23:0] stage3_y_intersect;   //*2^0して考えて
    reg   [23:0] stage23_y_intersect;   //*2^0して考えて
    //傾きは-0.25～-1にstrictに収まる
    assign gradient  = (data_from_a[35:35] == 1'b0) ? {1'b1, data_from_a[34:23], 12'b0} : {2'b01, data_from_a[34:23], 11'b0};
    //差分は 1 <= delta < 2 に収まる
    assign delta_x     = {1'b1, stage2_x2[22:0]};
    //切片は1～2にstrictに収まる
    assign stage2_y_intersect = {1'b1, data_from_a[22:0]};
    
    logic [48:0] stage2_delta_y_l;
    logic [48:0] stage2_delta_y_h;
    logic [48:0] stage3_delta_y_l;
    logic [48:0] stage3_delta_y_h;
    reg   [48:0] stage23_delta_y_l;
    reg   [48:0] stage23_delta_y_h;
    assign stage2_delta_y_l = (gradient[17:11] * delta_x) << 11;
    assign stage2_delta_y_h = (gradient[24:18] * delta_x) << 18;
    
    //STAGE 3
    //logic flag;
    logic [48:0] stage3_delta_y;
    assign stage3_delta_y = stage3_delta_y_h + stage3_delta_y_l;
    //assign flag = |stage3_delta_y[23:0];
    logic [48:0] finv_ans;
    assign finv_ans = $unsigned({stage3_y_intersect, 25'b0}) -  $unsigned({stage3_delta_y[48:25], stage3_delta_y[24:0]});
    logic [0:0]  finv_float_s;
    logic [7:0]  finv_float_e;
    logic [22:0]  finv_float_m;
    assign finv_float_s = stage3_x2[31:31];
    assign finv_float_e = (stage3_x2[22:0] == 23'b0) ? $unsigned(8'd253)  - $unsigned(stage3_x2[30:23]) : $unsigned(8'd253) - $unsigned(stage3_x2[30:23]);
    assign finv_float_m = (finv_ans[48:48] == 1'b1) ? 23'b1:
                          (finv_ans[47:47] == 1'b1) ? finv_ans[46:24]:
                                                      23'b0 ;
    
    logic [31:0] stage3_finv_float;
    logic [31:0] stage4_finv_float;
    reg   [31:0] stage34_finv_float;
    assign stage3_finv_float = {finv_float_s, finv_float_e, finv_float_m};
    
    //STAGE 4
    fmul fmul_instance(
        .sys_clk(sys_clk),
        .rst(rst),
        .stage1_valid(stage4_valid),
        .x1(stage4_x1),
        .x2(stage4_finv_float),
        .ovf(ovf),
        .unf(unf),
        .y(y),
        .out_valid(out_valid)
    );
    
    //pipeline
    assign stage2_valid = stage12_valid;
    assign stage2_x1 = stage12_x1;
    assign stage2_x2 = stage12_x2;
    
    assign stage3_valid = stage23_valid;
    assign stage3_x1 = stage23_x1;
    assign stage3_x2 = stage23_x2;
    assign stage3_delta_y_l = stage23_delta_y_l;
    assign stage3_delta_y_h = stage23_delta_y_h;
    assign stage3_y_intersect = stage23_y_intersect;
    
    assign stage4_valid = stage34_valid;
    assign stage4_x1 = stage34_x1;
    assign stage4_finv_float = stage34_finv_float;
    
    always_ff @ (posedge sys_clk) begin
      stage12_x1 <= x1;
      stage12_x2 <= x2;
      stage12_valid <= stage1_valid;

      stage23_x1 <= stage2_x1;
      stage23_x2 <= stage2_x2;
      stage23_delta_y_l <= stage2_delta_y_l;
      stage23_delta_y_h <= stage2_delta_y_h;
      stage23_y_intersect <= stage2_y_intersect;
      stage23_valid <= stage2_valid;
      
      stage34_x1 <= stage3_x1;
      stage34_finv_float <= stage3_finv_float;
      stage34_valid <= stage3_valid;
   end

endmodule