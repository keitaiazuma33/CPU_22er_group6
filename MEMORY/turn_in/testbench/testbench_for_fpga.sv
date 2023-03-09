`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/02/12 21:17:55
// Design Name: 
// Module Name: testbench
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


module testbench(
    // DDR2
    output wire [12:0] ddr2_addr,
    output wire [2:0] ddr2_ba,
    output wire ddr2_cas_n,
    output wire [0:0] ddr2_ck_n,
    output wire [0:0] ddr2_ck_p,
    output wire [0:0] ddr2_cke,
    output wire ddr2_ras_n,
    output wire ddr2_we_n,
    inout  wire [15:0] ddr2_dq,
    inout  wire [1:0] ddr2_dqs_n,
    inout  wire [1:0] ddr2_dqs_p,
    output wire [0:0] ddr2_cs_n,
    output wire [1:0] ddr2_dm,
    output wire [0:0] ddr2_odt,
    //その他
    input bit clk,
    input bit rstn,
    output [15:0] led
    );
    
    bit sys_clk;
    bit mig_clk;
    clk_wiz_0 clk_wizard
    (
        .mig_clk(mig_clk),
        .resetn(rstn),
        .clk_in1(clk)
    );
    assign sys_clk = clk;
    
    logic [26:0] cpu_req_addr;
    logic [31:0] cpu_req_data;
    logic [ 0:0] cpu_req_rw;
    logic [ 0:0] cpu_req_valid;
    logic [31:0] cpu_res_data;
    logic [ 0:0] cpu_res_ready;
    /*
    //　最初と最後に書くテスト
    logic [8:0] tb_state;
    reg   [8:0] tb_state_reg;
    assign tb_state = tb_state_reg;
    assign {cpu_req_addr, cpu_req_rw} =~tb_state[8:8] ? ((tb_state[3:0] == 4'b0000) ? {8'b00000010, tb_state[7:4], 12'b000000000000, 3'b000, 1'b0} :
                                                         (tb_state[3:0] == 4'b0001) ? {8'b00000010, tb_state[7:4], 12'b000000000000, 3'b000, 1'b1} :
                                                         (tb_state[3:0] == 4'b0010) ? {8'b00000010, tb_state[7:4], 12'b000000000001, 3'b000, 1'b0} :
                                                         (tb_state[3:0] == 4'b0011) ? {8'b00000010, tb_state[7:4], 12'b000000000001, 3'b000, 1'b1} :
                                                         (tb_state[3:0] == 4'b0100) ? {8'b00000010, tb_state[7:4], 12'b000000000010, 3'b000, 1'b0} :
                                                         (tb_state[3:0] == 4'b0101) ? {8'b00000010, tb_state[7:4], 12'b000000000010, 3'b000, 1'b1} :
                                                         (tb_state[3:0] == 4'b0110) ? {8'b00000010, tb_state[7:4], 12'b000000000011, 3'b000, 1'b0} :
                                                         (tb_state[3:0] == 4'b0111) ? {8'b00000010, tb_state[7:4], 12'b000000000011, 3'b000, 1'b1} :
                                                         (tb_state[3:0] == 4'b1000) ? {8'b00000010, tb_state[7:4], 12'b111111111100, 3'b000, 1'b0} :
                                                         (tb_state[3:0] == 4'b1001) ? {8'b00000010, tb_state[7:4], 12'b111111111100, 3'b000, 1'b1} :
                                                         (tb_state[3:0] == 4'b1010) ? {8'b00000010, tb_state[7:4], 12'b111111111101, 3'b000, 1'b0} :
                                                         (tb_state[3:0] == 4'b1011) ? {8'b00000010, tb_state[7:4], 12'b111111111101, 3'b000, 1'b1} :
                                                         (tb_state[3:0] == 4'b1100) ? {8'b00000010, tb_state[7:4], 12'b111111111110, 3'b000, 1'b0} :
                                                         (tb_state[3:0] == 4'b1101) ? {8'b00000010, tb_state[7:4], 12'b111111111110, 3'b000, 1'b1} :
                                                         (tb_state[3:0] == 4'b1110) ? {8'b00000010, tb_state[7:4], 12'b111111111111, 3'b000, 1'b0} :
                                                                                      {8'b00000010, tb_state[7:4], 12'b111111111111, 3'b000, 1'b1}
                                                         ) :
                                                        ((tb_state[2:0] == 3'b000) ? {8'b00000010, tb_state[6:3], 12'b000000000000, 3'b000, 1'b0} :
                                                         (tb_state[2:0] == 3'b001) ? {8'b00000010, tb_state[6:3], 12'b000000000001, 3'b000, 1'b0} :
                                                         (tb_state[2:0] == 3'b010) ? {8'b00000010, tb_state[6:3], 12'b000000000010, 3'b000, 1'b0} :
                                                         (tb_state[2:0] == 3'b011) ? {8'b00000010, tb_state[6:3], 12'b000000000011, 3'b000, 1'b0} :
                                                         (tb_state[2:0] == 3'b100) ? {8'b00000010, tb_state[6:3], 12'b111111111100, 3'b000, 1'b0} :
                                                         (tb_state[2:0] == 3'b101) ? {8'b00000010, tb_state[6:3], 12'b111111111101, 3'b000, 1'b0} :
                                                         (tb_state[2:0] == 3'b110) ? {8'b00000010, tb_state[6:3], 12'b111111111110, 3'b000, 1'b0} :
                                                                                     {8'b00000010, tb_state[6:3], 12'b111111111111, 3'b000, 1'b0}
                                                         ) ;
    assign cpu_req_data = {26'b0, tb_state[7:1]};
    
    always_ff @ (posedge sys_clk) begin
        if (~(&tb_state) && cpu_res_ready && (tb_state[8:8] == 1'b0 || (cpu_res_data == {25'b0, tb_state[6:0]}))) begin
            tb_state_reg <= tb_state + 1;
        end
        if (&tb_state) begin
            tb_state_reg <= tb_state;
        end
        if (~rstn) begin
            tb_state_reg <= 9'b0;
        end
    end
    
    assign cpu_req_valid = 1'b1;
    */
    //すべてに書くテストベンチ
    logic [18:0] tb_state;
    reg   [18:0] tb_state_reg;
    assign tb_state = tb_state_reg;
    assign {cpu_req_addr, cpu_req_rw, cpu_req_valid} = ~tb_state[18:18] ? {10'b0000000000, tb_state[17:2], 1'b0, tb_state[1:1], tb_state[0:0]} : {10'b000000000, tb_state[16:1], 1'b0, 1'b0, tb_state[0:0]};
    assign cpu_req_data = {16'b0, tb_state[17:2]};
    
    always_ff @ (posedge sys_clk) begin
        if (~rstn) begin
            tb_state_reg <= 19'b0;
        end
        else if (~(&tb_state) && cpu_req_valid && cpu_res_ready && (tb_state[18:18] == 1'b0 || (cpu_res_data == {16'b0, tb_state[16:1]}))) begin
            tb_state_reg <= tb_state + 19'b000000000000000001;
        end
        else if (~cpu_req_valid) begin
            tb_state_reg <= tb_state + 19'b000000000000000001;
        end
        else if (&tb_state) begin
            tb_state_reg <= tb_state;
        end  
    end
    //すべてに書くテストベンチ　終了*/
    assign led = {2'b11, tb_state[18:13], tb_state[7:0]};
    top dut (
        .*
    );
endmodule
