`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/24 19:25:36
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
    input logic CLKA,
    input logic CLKB,
    input logic RST,
    input  logic [31:0] x1,
    input  logic [31:0] x2,
    output logic [31:0] y
);

    logic [31:0] finv_ans;
    finv finv_instance ( // fmulモジュールのインスタンスを作成
        .CLKA(CLKA),
        .CLKB(CLKB),
        .RST(RST),
        .x(x2),
        .y(finv_ans)
    );
    
    fmul fmul_instance ( // fmulモジュールのインスタンスを作成
        .x1(x1),
        .x2(finv_ans),
        .y(y)
    );

endmodule