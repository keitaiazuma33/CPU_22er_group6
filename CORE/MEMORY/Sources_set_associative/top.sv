//clock�𐶐����Ă��낢��ȕ��i�ɂȂ���(clock�ȊO��no-touch)


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
    input logic mem_clk,
    input cpu_req_type cpu_to_cache_request,
    output cpu_result_type cpu_res,
    output logic led
);
    

    // interfaces
    master_fifo master_fifo ();
    slave_fifo slave_fifo ();

    // master�iCPU����FIFO�j
    dram_test dram_test (
        .fifo(master_fifo),
        .sys_clk(sys_clk),
        .mem_clk(mem_clk),
        .cpu_to_cache_request(cpu_to_cache_request),
        .cpu_res(cpu_res),
        .led(led)
    );

    // fifo�𐶐�����
    dram_buf dram_buf (
        .master(master_fifo),
        .slave(slave_fifo)
    );

    // slave�iDRAM����FIFO�j
    dram_controller dram_controller (
        // DDR2
        .*,
        // others
        .sys_clk(mem_clk),
        .fifo(slave_fifo)
    );
endmodule
