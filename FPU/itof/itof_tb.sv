`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/01/10 19:44:01
// Design Name: 
// Module Name: itof_tb
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


module itof_tb ();
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

    itof itof_i (
        .stage1_valid(stage1_valid),
        .clk(CLK),
        .x(x),
        .y(y),
        .valid(valid)
    );
    
    initial begin
    #101;
        stage1_valid <= 1'b1;
        x <= 32'd1000;
        #20;
        stage1_valid <= 1'b1;
        x <= 32'd20010531;
        #20;
        stage1_valid <= 1'b0;
        x <= 32'd20020303;
        #20;
        stage1_valid <= 1'b1;
        x <= 32'd20010503;
        #20;
        stage1_valid <= 1'b0;
        x <= 32'd0;
        #20;
        stage1_valid <= 1'b1;
        x <= 32'd1;
        #20;
        stage1_valid <= 1'b1;
        x <= 32'hffffffff;
        #100;
        $finish;
    end;

endmodule

