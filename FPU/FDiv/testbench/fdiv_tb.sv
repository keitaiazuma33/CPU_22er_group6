`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/24 19:35:46
// Design Name: 
// Module Name: fdiv_tb
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


module fdiv_tb ();
    
logic [31:0] x1;
logic [31:0] x2;
logic [31:0] y;
logic CLKA, CLKB, RST;

initial begin
    #100;
    x1<=32'h44fa21b3;
    x2<=32'h44fa40f8;
end

fdiv fdiv_instance ( // ���������W���[���̃C���X�^���X���쐬
    .CLKA(CLKA),
    .CLKB(CLKB),
    .RST(RST),
    .x1(x1), // �|�[�gA(��ڂ̃|�[�g)�ւ̐ڑ�
    .x2(x2),
    .y(y)
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

endmodule
