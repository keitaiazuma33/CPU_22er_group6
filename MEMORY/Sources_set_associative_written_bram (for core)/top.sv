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
    input logic sys_clk,
    input logic mig_clk,
    input logic rstn,
    input logic [26:0] cpu_req_addr,
    input logic [31:0] cpu_req_data,
    input logic [ 0:0] cpu_req_rw,
    input logic [ 0:0] cpu_req_valid,
    output logic [31:0] cpu_res_data,
    output logic [ 0:0] cpu_res_ready
);

    // interfaces
    master_fifo master_fifo ();
    slave_fifo slave_fifo ();
    
    cpu_req_type cpu_to_cache_request;
    cpu_result_type cpu_res;
    
    assign cpu_to_cache_request.addr = cpu_req_addr;
    assign cpu_to_cache_request.data = cpu_req_data;
    assign cpu_to_cache_request.rw = cpu_req_rw;
    assign cpu_to_cache_request.valid = cpu_req_valid;
    
    assign cpu_res_data = cpu_res.data;
    assign cpu_res_ready = cpu_res.ready;

    // master（CPU側のFIFO）
    dram_test dram_test (
        .fifo(master_fifo),
        .sys_clk(sys_clk),
        .rstn(rstn),
        .cpu_to_cache_request(cpu_to_cache_request),
        .cpu_res(cpu_res)
    );

    // fifoを生成する
    dram_buf dram_buf (
        .master(master_fifo),
        .slave(slave_fifo)
    );

    // slave（DRAM側のFIFO）
    dram_controller dram_controller (
        // DDR2
        .ddr2_addr(ddr2_addr),
        .ddr2_ba(ddr2_ba),
        .ddr2_cas_n(ddr2_cas_n),
        .ddr2_ck_n(ddr2_ck_n),
        .ddr2_ck_p(ddr2_ck_p),
        .ddr2_cke(ddr2_cke),
        .ddr2_ras_n(ddr2_ras_n),
        .ddr2_we_n(ddr2_we_n),
        .ddr2_dq(ddr2_dq),
        .ddr2_dqs_n(ddr2_dqs_n),
        .ddr2_dqs_p(ddr2_dqs_p),
        .ddr2_cs_n(ddr2_cs_n),
        .ddr2_dm(ddr2_dm),
        .ddr2_odt(ddr2_odt),
        // others
        .sys_clk(mig_clk),
        .fifo(slave_fifo)
    );
endmodule
