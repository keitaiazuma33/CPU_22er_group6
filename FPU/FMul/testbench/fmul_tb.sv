`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/11 21:43:17
// Design Name: 
// Module Name: fmul_tb
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


module fmul_tb ();
    
    logic [31:0] x1;
    logic [31:0] x2;
    logic [31:0] y;
    logic ovf;
    logic unf; 

    fmul fmul_i ( // ���������W���[���̃C���X�^���X���쐬
        .x1(x1), // �|�[�gA(��ڂ̃|�[�g)�ւ̐ڑ�
        .x2(x2),
        .y(y),
        .ovf(ovf),
        .unf(unf)
    );
    
    initial begin
    #100;
        x1<=32'h44fa21b3;
        x2<=32'h44fa40f8;
        #1000;
        $finish;
    end;

endmodule
