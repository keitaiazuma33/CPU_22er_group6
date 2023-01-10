`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/01/10 18:07:14
// Design Name: 
// Module Name: ftoi_tb
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


module ftoi_tb ();
    logic [0:0]  stage1_valid;
    logic [31:0] x;
    logic [31:0] y;
    logic valid;
    logic CLK;
    
    always begin
        CLK <= 1;
        #10;
        CLK <= 0;
        #10;
    end

    ftoi ftoi_i (
        .stage1_valid(stage1_valid),
        .clk(CLK),
        .x(x),
        .y(y),
        .valid(valid)
    );
    
    initial begin
    #101;
        stage1_valid <= 1'b1;
        x <= 32'h44fa21b3;
        #20;
        stage1_valid <= 1'b1;
        x <= 32'h43fa3146;
        #20;
        stage1_valid <= 1'b0;
        x <= 32'h44fa2352;
        #20;
        stage1_valid <= 1'b1;
        x <= 32'h45ef6235;
        #20;
        stage1_valid <= 1'b0;
        x <= 32'h44688535;
        #20;
        stage1_valid <= 1'b1;
        x <= 32'h3fd61587;
        #20;
        stage1_valid <= 1'b1;
        x <= 32'h412828f6;
        #100;
        $finish;
    end;

endmodule
