module tb;
    timeunit 100ps;
    timeprecision 1ps;

    // clock: 100MHz
    logic sys_clk;
    logic mem_clk;
    logic rst;
    always begin
        sys_clk = 1'b0;
        #50;
        sys_clk = 1'b1;
        #50;
    end
    always begin
        mem_clk = 1'b1;
        #25;
        mem_clk = 1'b0;
        #25;
    end
    initial begin
        rst = 1'b0;
        #300;
        rst = 1'b1;
    end

    // DDR2 wires
    wire [12:0] ddr2_addr;
    wire [2:0] ddr2_ba;
    wire ddr2_cas_n;
    wire [0:0] ddr2_ck_n;
    wire [0:0] ddr2_ck_p;
    wire [0:0] ddr2_cke;
    wire ddr2_ras_n;
    wire ddr2_we_n;
    wire [15:0] ddr2_dq;
    wire [1:0] ddr2_dqs_n;
    wire [1:0] ddr2_dqs_p;
    wire [0:0] ddr2_cs_n;
    wire [1:0] ddr2_dm;
    wire [0:0] ddr2_odt;

    // DDR2 model
    ddr2 ddr2 (
        .ck(ddr2_ck_p),
        .ck_n(ddr2_ck_n),
        .cke(ddr2_cke),
        .cs_n(ddr2_cs_n),
        .ras_n(ddr2_ras_n),
        .cas_n(ddr2_cas_n),
        .we_n(ddr2_we_n),
        .dm_rdqs(ddr2_dm),
        .ba(ddr2_ba),
        .addr(ddr2_addr),
        .dq(ddr2_dq),
        .dqs(ddr2_dqs_p),
        .dqs_n(ddr2_dqs_n),
        .rdqs_n(),
        .odt(ddr2_odt)
    );
    
    logic [26:0] cpu_req_addr;
    logic [31:0] cpu_req_data;
    logic [ 0:0] cpu_req_rw;
    logic [ 0:0] cpu_req_valid;
    logic [31:0] cpu_res_data;
    logic [ 0:0] cpu_res_ready;
    
    logic [3:0] tb_state = 4'b0000;
    
    assign cpu_req_addr =
        (tb_state == 4'b0001) ? 27'b010101010101010101010101010 :
        (tb_state == 4'b0010) ? 27'b010101010101010101010101010 : 27'b0;
    assign cpu_req_data =
        (tb_state == 4'b0001) ? 32'b00110011001100110011001100110011 :
        (tb_state == 4'b0010) ? 32'b00001111000011110000111100001111 : 32'b0;
    assign cpu_req_rw =
        (tb_state == 4'b0001) ? 1'b1 :
        (tb_state == 4'b0010) ? 1'b0 : 1'b0;
    assign cpu_req_valid =
        (tb_state == 4'b0001) ? 1'b1 :
        (tb_state == 4'b0010) ? 1'b0 : 1'b0;
    
    always_ff @ (posedge sys_clk) begin
        case (tb_state)
            4'b0000: begin
                tb_state <= 4'b0001;
            end
            4'b0001: begin
                //
                //cpu_to_cache_request.addr = 27'b010101010101010101010101010;
                //cpu_to_cache_request.data = 32'b00110011001100110011001100110011;
                //cpu_to_cache_request.rw = 1'b1;
                //cpu_to_cache_request.valid = 1'b1;
                if (cpu_res_ready) begin
                    tb_state <= 4'b0010;
                end
            end
            4'b0010: begin
                //
                //cpu_to_cache_request.addr = 27'b010101010101010101010101010;
                //cpu_to_cache_request.data = 32'b00001111000011110000111100001111;
                //cpu_to_cache_request.rw = 1'b0;
                //cpu_to_cache_request.valid = 1'b0;
                if (cpu_res_ready) begin
                    tb_state <= 4'b0010;
                end
            end
        endcase
    end
    
    // DUT
    logic led;
    top dut (
        .*,
        .sys_clk(sys_clk),
        .mem_clk(mem_clk),
        .led(led)
    );
endmodule
