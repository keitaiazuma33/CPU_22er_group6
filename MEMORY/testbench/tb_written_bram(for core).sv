module tb;
    timeunit 100ps;
    timeprecision 1ps;

    // clock: 100MHz
    logic sys_clk;
    logic mig_clk;
    logic rstn;
    always begin
        sys_clk = 1'b0;
        #50;
        sys_clk = 1'b1;
        #50;
    end
    always begin
        mig_clk = 1'b1;
        #25;
        mig_clk = 1'b0;
        #25;
    end
    initial begin
        rstn = 1'b0;
        #300;
        rstn = 1'b1;
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
    
    logic [4:0] tb_state = 5'b0000;
    
    logic [26:0] ADDR1 = 27'h1111111;
    logic [26:0] ADDR2 = 27'h2221111;
    logic [26:0] ADDR3 = 27'h3331111;
    logic [26:0] ADDR4 = 27'h4441111;
    
    logic [31:0] DATA1 = 31'h12345678;
    logic [31:0] DATA2 = 31'h9abcdef1;
    logic [31:0] DATA3 = 31'h33333333;
    logic [31:0] DATA4 = 31'h11111111;
    
    logic valid = 1'b1;
    logic invalid = 1'b0;
    
    logic write = 1'b1;
    logic read = 1'b0;
    
    assign {cpu_req_addr, cpu_req_data, cpu_req_rw, cpu_req_valid} =
        (tb_state == 5'b00000) ? {ADDR1    , DATA1, read , valid} :   //way0 miss  32'b0
        (tb_state == 5'b00001) ? {ADDR1    , DATA1, write, valid} :   //way0 hit   ?????
        (tb_state == 5'b00010) ? {ADDR1 - 1, DATA2, write, valid} :   //way0 hit   ?????
        (tb_state == 5'b00011) ? {ADDR1    , DATA1, read , valid} :   //way0 hit   DATA1
        (tb_state == 5'b00100) ? {ADDR2    , DATA2, write, valid} :   //way1 miss  ?????
        (tb_state == 5'b00101) ? {ADDR1 - 1, DATA1, read , valid} :   //way1 hit   DATA2
        (tb_state == 5'b00110) ? {ADDR3    , DATA3, write, valid} :   //way1 miss  ?????
        (tb_state == 5'b00111) ? {ADDR3    , DATA3, read , valid} :   //way1 hit   DATA3
        (tb_state == 5'b01000) ? {ADDR3 + 1, DATA1, write, valid} :   //way1 hit   ?????
        (tb_state == 5'b01001) ? {ADDR2    , DATA4, read , valid} :   //way0 hit   DATA2
        (tb_state == 5'b01010) ? {ADDR4    , DATA2, write, valid} :   //           ?????
        (tb_state == 5'b01011) ? {ADDR4    , DATA4, read, valid} :    //           DATA2
        (tb_state == 5'b01100) ? {ADDR1    , DATA3, read , valid} :   //           DATA1
        (tb_state == 5'b01101) ? {ADDR1    , DATA3, write, valid} :   //           ?????
        (tb_state == 5'b01110) ? {ADDR2    , DATA1, write, valid} :   //           ?????
        (tb_state == 5'b01111) ? {ADDR3    , DATA3, write, valid} :   //           ?????
        (tb_state == 5'b10000) ? {ADDR3 + 2, DATA1, read , valid} :   //way0 miss  32'b0
        (tb_state == 5'b10001) ? {ADDR1 -50, DATA1, write, valid} :   //way0 hit   ?????
        (tb_state == 5'b10010) ? {ADDR1 - 1, DATA3, write, valid} :   //way0 hit   ?????
        (tb_state == 5'b10011) ? {ADDR1    , DATA1, read , valid} :   //way0 hit   DATA3
        (tb_state == 5'b10100) ? {ADDR4    , DATA2, write, valid} :   //way1 miss  ?????
        (tb_state == 5'b10101) ? {ADDR4 - 1, DATA1, read , valid} :   //way1 hit   ?????
        (tb_state == 5'b10110) ? {ADDR2    , DATA3, read , valid} :   //way1 miss  DATA1
        (tb_state == 5'b10111) ? {ADDR1    , DATA1, read , valid} :   //way1 hit   DATA3
        (tb_state == 5'b11000) ? {ADDR2 - 1, DATA1, read , valid} :   //way1 hit   32'b0
        (tb_state == 5'b11001) ? {ADDR1 + 3, DATA3, write, valid} :   //way0 hit   ?????
        (tb_state == 5'b11010) ? {ADDR4    , DATA2, write, valid} :   //           ?????
        (tb_state == 5'b11011) ? {ADDR4    , DATA4, read , valid} :   //           DATA2
        (tb_state == 5'b11100) ? {ADDR3    , DATA3, write, valid} :   //           ?????
        (tb_state == 5'b11101) ? {ADDR1 + 3, DATA4, read , valid} :   //           DATA3
        (tb_state == 5'b11110) ? {ADDR2 -30, DATA1, read , valid} :   //           32'b0
        (tb_state == 5'b11111) ? {ADDR3    , DATA1, read , valid} :   //           DATA3
         27'b0;
    
    always_ff @ (posedge sys_clk) begin
        case (tb_state)
            5'b00000: begin
                if (cpu_res_ready && (cpu_res_data == 32'b0)) begin
                    tb_state <= 5'b00001;
                end
            end
            5'b00001: begin
                if (cpu_res_ready) begin
                    tb_state <= 5'b00010;
                end
            end
            5'b00010: begin
                if (cpu_res_ready) begin
                    tb_state <= 5'b00011;
                end
            end
            5'b00011: begin
                if (cpu_res_ready && (cpu_res_data == DATA1)) begin
                    tb_state <= 5'b00100;
                end
            end
            //
            5'b00100: begin
                if (cpu_res_ready) begin
                    tb_state <= 5'b00101;
                end
            end
            5'b00101: begin
                if (cpu_res_ready && (cpu_res_data == DATA2)) begin
                    tb_state <= 5'b00110;
                end
            end
            5'b00110: begin
                if (cpu_res_ready) begin
                    tb_state <= 5'b00111;
                end
            end
            5'b00111: begin
                if (cpu_res_ready && (cpu_res_data == DATA3)) begin
                    tb_state <= 5'b01000;
                end
            end
            5'b01000: begin
                if (cpu_res_ready) begin
                    tb_state <= 5'b01001;
                end
            end
            5'b01001: begin
                if (cpu_res_ready && (cpu_res_data == DATA2)) begin
                    tb_state <= 5'b01010;
                end
            end
            5'b01010: begin
                if (cpu_res_ready) begin
                    tb_state <= 5'b01011;
                end
            end
            5'b01011: begin
                if (cpu_res_ready && (cpu_res_data == DATA2)) begin
                    tb_state <= 5'b01100;
                end
            end
            5'b01100: begin
                if (cpu_res_ready && (cpu_res_data == DATA1)) begin
                    tb_state <= 5'b01101;
                end
            end
            5'b01101: begin
                if (cpu_res_ready) begin
                    tb_state <= 5'b01110;
                end
            end
            5'b01110: begin
                if (cpu_res_ready) begin
                    tb_state <= 5'b01111;
                end
            end
            5'b01111: begin
                if (cpu_res_ready) begin
                    tb_state <= 5'b10000;
                end
            end
            5'b10000: begin
                if (cpu_res_ready && (cpu_res_data == 32'b0)) begin
                    tb_state <= 5'b10001;
                end
            end
            5'b10001: begin
                if (cpu_res_ready) begin
                    tb_state <= 5'b10010;
                end
            end
            5'b10010: begin
                if (cpu_res_ready) begin
                    tb_state <= 5'b10011;
                end
            end
            5'b10011: begin
                if (cpu_res_ready && (cpu_res_data == DATA3)) begin
                    tb_state <= 5'b10100;
                end
            end
            5'b10100: begin
                if (cpu_res_ready) begin
                    tb_state <= 5'b10101;
                end
            end
            5'b10101: begin
                if (cpu_res_ready) begin
                    tb_state <= 5'b10110;
                end
            end
            5'b10110: begin
                if (cpu_res_ready && (cpu_res_data == DATA1)) begin
                    tb_state <= 5'b10111;
                end
            end
            5'b10111: begin
                if (cpu_res_ready && (cpu_res_data == DATA3)) begin
                    tb_state <= 5'b11000;
                end
            end
            5'b11000: begin
                if (cpu_res_ready && (cpu_res_data == 32'b0)) begin
                    tb_state <= 5'b11001;
                end
            end
            5'b11001: begin
                if (cpu_res_ready) begin
                    tb_state <= 5'b11010;
                end
            end
            5'b11010: begin
                if (cpu_res_ready) begin
                    tb_state <= 5'b11011;
                end
            end
            5'b11011: begin
                if (cpu_res_ready && (cpu_res_data == DATA2)) begin
                    tb_state <= 5'b11100;
                end
            end
            5'b11100: begin
                if (cpu_res_ready) begin
                    tb_state <= 5'b11101;
                end
            end
            5'b11101: begin
                if (cpu_res_ready && (cpu_res_data == DATA3)) begin
                    tb_state <= 5'b11110;
                end
            end
            5'b11110: begin
                if (cpu_res_ready && (cpu_res_data == 32'b0)) begin
                    tb_state <= 5'b11111;
                end
            end
            5'b11111: begin
                if (cpu_res_ready && (cpu_res_data == DATA3)) begin
                    tb_state <= 5'b00001;
                end
            end
        endcase
    end
    
    // DUT
    logic led;
    top dut (
        .*
    );
endmodule