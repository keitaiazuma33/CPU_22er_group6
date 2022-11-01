`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/20 18:59:49
// Design Name: 
// Module Name: fsqrt_tb
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


module fsqrt_tb ();

logic CLKA, CLKB, RST;
logic [31:0] test_x;
logic [31:0] test_y;

initial begin
    #100
    test_x <= 32'h48928260;  // 2001.0531 = 44fa21b3  2002.0303 = 44fa40f8  1/16 = 3c80000
end

fsqrt fsqrt_instance (
    .CLKA(CLKA),
    .CLKB(CLKB),
    .RST(RST),
    //.A(A),  ‚±‚ê‚ÍFinv‚Ì’†‚ÅŒvŽZ‚·‚é
    .x(test_x),
    .y(test_y)
);

always begin
    CLKA <= 1'b1; #10;
    CLKA <= 1'b0; #10;
end

always begin
    CLKB <= 1'b1; #15;
    CLKB <= 1'b0; #15;
end

initial begin
    RST <= 1'b1; #30;
    RST <= 1'b0;
end

/*
initial begin
    #75;
    A <= 14'd1;
    #30;
    A <= 14'd2;
    #30;
    A <= 14'd3;
    #30;
    A <= 14'd4;
    #30;
    A <= 14'd5;
    #10000;
    $finish;
end
*/

endmodule // finv_tb
