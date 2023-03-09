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
    logic [0:0]    rstn;
    logic [7:0]    opcode;
    logic [31:0]   x1;
    logic [31:0]   x2;
    logic [31:0]   y;
    logic          ovf;
    logic [0:0]    out_valid;
    
    //システムのクロックは100MHzに設定する
    localparam sys_clk_FREQ = 100.0;
    always begin
        sys_clk <= 1;
        #(((1/sys_clk_FREQ)/2)*1000);
        sys_clk <= 0;
        #(((1/sys_clk_FREQ)/2)*1000);
    end

    top top_i (
        .opcode(opcode),
        .rstn(rstn),
        .sys_clk(sys_clk),
        //.mem_clk(mem_clk),
        .x1(x1),
        .x2(x2),
        .y(y),
        .ovf(ovf),
        .out_valid(out_valid)
    );
    
    initial begin
        rstn <= 1'b0; #30;
        rstn <= 1'b1;
    end
    
    initial begin
    opcode <= 8'b00000000;
    #501;
        opcode <= 8'b00000001;
        x1 <= 32'h44fa21b3;
        x2 <= 32'h44fa40f8;
        #10
        opcode <= 8'b00000000;
        #60;
        opcode <= 8'b00000010;
        x1 <= 32'h43fa3146;
        x2 <= 32'h45fa4345;
        #10
        opcode <= 8'b00000000;
        #60;
        opcode <= 8'b00000100;
        x1 <= 32'h44fa2352;
        x2 <= 32'h43fa4734;
        #10
        opcode <= 8'b00000000;
        #60;
        opcode <= 8'b00001000;
        x1 <= 32'h45ef6235;
        x2 <= 32'h44264455;
        #10
        opcode <= 8'b00000000;
        #60;
        opcode <= 8'b00010000;
        x1 <= 32'h44688535;
        x2 <= 32'h46abd424;
        #10
        opcode <= 8'b00000000;
        #60;
        opcode <= 8'b00100000;
        x1 <= 32'h3fd61587;
        x2 <= 32'hbf561e83;
        #10
        opcode <= 8'b00000000;
        #60;
        opcode <= 8'b01000000;
        x1 <= 32'h3fd61587;
        x2 <= 32'hbf561e83;
        #10
        opcode <= 8'b00000000;
        #60;
        opcode <= 8'b00000000;
        x1 <= 32'h3fd61587;
        x2 <= 32'hbf561e83;
        #10
        opcode <= 8'b00000000;
        #60;
        opcode <= 8'b10000000;
        x1 <= 32'h3f800000;
        x2 <= 32'h3f800000;
        #10
        opcode <= 8'b00000000;
        #60;
        opcode <= 8'b10000000;
        x1 <= 32'h3f800000;
        x2 <= 32'h40000000;
        #10
        opcode <= 8'b00000000;
        #60;
        opcode <= 8'b10000000;
        x1 <= 32'h3f800000;
        x2 <= 32'h40400000;
        #10
        opcode <= 8'b00000000;
        #60;
        opcode <= 8'b10000000;
        x1 <= 32'h3f800000;
        x2 <= 32'h40800000;
        #10
        opcode <= 8'b00000000;
        #100;
        $finish;
    end;

endmodule