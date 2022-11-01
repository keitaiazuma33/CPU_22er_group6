`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/20 18:58:59
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
    input logic CLKA,
    input logic CLKB,
    input logic RST,
    input  logic [31:0] x,
    output logic [31:0] y
);

    logic        ena, enb;
    logic [0:0]  wea, web;
    logic [9:0] addra, addrb;
    logic [7:0]  dina, dinb;
    logic [35:0]  douta, doutb;
    logic [9:0]  bram_addr;
    logic [35:0] data_from_a;
    logic [35:0] data_from_b;

    blk_mem_gen_0 blk_mem_gen_0_i ( // メモリモジュールのインスタンスを作成
        .clka(CLKA), // ポートA(一つ目のポート)への接続
        .ena(ena),
        .wea(wea),
        .addra(addra),
        .dina(dina),
        .douta(douta),
        
        .clkb(CLKB), // ポートB(二つ目のポート)への接続
        .enb(enb),
        .web(web),
        .addrb(addrb),
        .dinb(dinb),
        .doutb(doutb)
    );

    // ポートAで所望のデータ（傾き13bit + y切片23bit）を読みだす
    assign ena  = 1'b1;
    assign wea  = 1'b0; // read-only
    assign dina = 8'h0;
    assign data_from_a = douta;
    assign bram_addr = (x[23:23] == 1'b0) ? {1'b1, x[22:14]} : {1'b0, x[22:14]};
    always_ff @(posedge CLKA) begin
        if(RST == 1) begin
            //何もしない
        end
        else begin
            addra <= bram_addr; // どのアドレスから読みだすか
        end
    end

    // ポートBで所望のデータ（傾き13bit + y切片23bit）を読みだす　同じ
    assign enb  = 1'b1;
    assign web  = 1'b0; // read-only
    assign dinb = 8'h0;
    assign data_from_b = doutb;
    assign bram_addr = (x[23:23] == 1'b0) ? {1'b1, x[22:14]} : {1'b0, x[22:14]};
    always_ff @(posedge CLKA) begin
        if(RST == 1) begin
            //何もしない
        end
        else begin
            addrb <= bram_addr; // どのアドレスから読みだすか
        end
    end

    logic [31:0] gradient;
    logic [31:0] virtual_x;
    logic [31:0] y_intersect;

    assign gradient  = {9'b001111101, data_from_a[35:23], 10'b0};
    assign virtual_x   = (x[23:23] == 1'b0) ? {9'b010000000, x[22:0]} : {9'b001111111, x[22:0]};
    assign y_intersect = {9'b001111110, data_from_a[22:0]};

    logic [31:0] fmul_ans;
    fmul fmul_instance ( // fmulモジュールのインスタンスを作成
        .x1(gradient),
        .x2(virtual_x),
        .y(fmul_ans)
    );
    
    logic [31:0] fadd_ans;
    fadd fadd_instance ( // fsubモジュールのインスタンスを作成
        .x1(y_intersect),
        .x2(fmul_ans),
        .y(fadd_ans)
    );
    
    logic return_s;
    logic [7:0] return_e;
    logic [22:0] return_m;
    assign return_s = x[31:31];
    assign return_e = (x[23:23] == 1'b0) ? ((x[30:23])>>1) + fadd_ans[30:23] - 8'd64 :  ((x[30:23]+1)>>1) + fadd_ans[30:23] - 8'd64;  //x[30:23] / 2 + 63 + (fadd_ans[30:23] - 127)のつもり
    assign return_m = fadd_ans[22:0];
    
    //負の数が入ってきたら無限を返す
    assign y = (x[31:31] == 1'b1) ? {32'b01111111111111111111111111111111} : {return_s, return_e, return_m};

endmodule
