//clockを生成していろいろな部品につなげる(clock以外はno-touch)

module top (
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
    // others
    input logic clk,
    input cpu_req_type cpu_to_cache_request,
    output cpu_result_type cpu_res,
    output logic led
);
    // clock
    logic sys_clk;
    logic mem_clk;
    clk_wiz_0 clk_gen (
        .clk_in1(clk),
        .clk_out1(mem_clk),
        .clk_out2(sys_clk)
    );

    // interfaces
    master_fifo master_fifo ();
    slave_fifo slave_fifo ();

    // master（CPU側のFIFO）
    dram_test dram_test (
        .fifo(master_fifo),
        .sys_clk(sys_clk),
        .mem_clk(mem_clk),
        .cpu_to_cache_request(cpu_to_cache_request),
        .cpu_res(cpu_res),
        .led(led)
    );

    // fifoを生成する
    dram_buf dram_buf (
        .master(master_fifo),
        .slave(slave_fifo)
    );

    // slave（DRAM側のFIFO）
    dram_controller dram_controller (
        // DDR2
        .*,
        // others
        .sys_clk(mem_clk),
        .fifo(slave_fifo)
    );
endmodule
