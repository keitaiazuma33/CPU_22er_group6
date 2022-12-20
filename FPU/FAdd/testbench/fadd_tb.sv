`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/21 15:07:38
// Design Name: 
// Module Name: fadd_tb
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


module fadd_tb ();
    
    logic [31:0] x1;
    logic [31:0] x2;
    logic [31:0] y;
    logic ovf;
    
    logic CLK;
    
    always begin
        CLK <= 1;
        #10;
        CLK <= 0;
        #10;
    end

    fadd fadd_i (
        .clk(CLK),
        .x1(x1),
        .x2(x2),
        .y(y),
        .ovf(ovf)
    );
    
    initial begin
        #100;
        x1 <= 32'h44fa21b3;  //= 2001.0531005859375
        x2 <= 32'h44fa40f8;  //= 2002.0302734375
        #20;
        x1 <= 32'h43fa3146;  //= 500.38494873046875
        x2 <= 32'h45fa4345;  //= 8008.40869140625
        #20;
        x1 <= 32'h44fa2352;  //= 2001.103759765625
        x2 <= 32'h43fa4734;  //= 500.5562744140625
        #20;
        x1 <= 32'h45ef6235;  //= 7660.27587890625
        x2 <= 32'h44264455;  //= 665.0676879882812
        #20;
        x1 <= 32'h44688535;  //= 930.0813598632812
        x2 <= 32'h46abd424;  //= 21994.0703125
        #100;
        $finish;
    end;

endmodule
