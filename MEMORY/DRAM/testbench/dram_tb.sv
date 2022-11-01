`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/27 17:01:57
// Design Name: 
// Module Name: dram_tb
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


module dram_tb ();
logic CLKA, RST;

axi_master axi_master_instance ( // メモリモジュールのインスタンスを作成
    .ACLK(CLKA),
    .ARESETN(RST)
);
    
always begin
    CLKA <= 1'b1; #10;
    CLKA <= 1'b0; #10;
end

initial begin
    RST <= 1'b1; #30;
    RST <= 1'b0;
end

endmodule