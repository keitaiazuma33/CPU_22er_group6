`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/01/29 18:16:50
// Design Name: 
// Module Name: fpu_tb
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


module fpu_tb ();
    logic [0:0]    sys_clk;
    logic [0:0]    mem_clk;
    logic [0:0]    rst;
    logic [7:0]    opcode;
    logic [31:0]   x1;
    logic [31:0]   x2;
    logic [31:0]   y;
    logic          ovf;
    logic [0:0]    out_valid;
    
    //システムのクロックは100MHzに設定する
    localparam sys_clk_FREQ = 100.0;
    //メモリのクロックは200MHzに設定する
    localparam mem_clk_FREQ = 200.0;
    always begin
        sys_clk <= 1;
        #(((1/sys_clk_FREQ)/2)*1000);
        sys_clk <= 0;
        #(((1/sys_clk_FREQ)/2)*1000);
    end
    
    always begin
        mem_clk <= 1;
        #(((1/mem_clk_FREQ)/2)*1000);
        mem_clk <= 0;
        #(((1/mem_clk_FREQ)/2)*1000);
    end

    top top_i (
        .opcode(opcode),
        .rst(rst),
        .sys_clk(sys_clk),
        .mem_clk(mem_clk),
        .x1(x1),
        .x2(x2),
        .y(y),
        .ovf(ovf),
        .out_valid(out_valid)
    );
    
    initial begin
        rst <= 1'b1; #30;
        rst <= 1'b0;
    end
    
    initial begin
    #101;
        opcode <= 8'b00010000;
        x1 <= 32'h44fa21b3;
        x2 <= 32'h44fa40f8;
        #10;
        opcode <= 8'b00010000;
        x1 <= 32'h43fa3146;
        x2 <= 32'h45fa4345;
        #10;
        opcode <= 8'b00010000;
        x1 <= 32'h44fa2352;
        x2 <= 32'h43fa4734;
        #10;
        opcode <= 8'b00010000;
        x1 <= 32'h45ef6235;
        x2 <= 32'h44264455;
        #10;
        opcode <= 8'b00010000;
        x1 <= 32'h44688535;
        x2 <= 32'h46abd424;
        #10;
        opcode <= 8'b00010000;
        x1 <= 32'h3fd61587;
        x2 <= 32'hbf561e83;
        #10;
        opcode <= 8'b00010000;
        x1 <= 32'h3fd61587;
        x2 <= 32'hbf561e83;
        #10;
        opcode <= 8'b00010000;
        x1 <= 32'h3fd61587;
        x2 <= 32'hbf561e83;
        #100;
        $finish;
    end;

endmodule
