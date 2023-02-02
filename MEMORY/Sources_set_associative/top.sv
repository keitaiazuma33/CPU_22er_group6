//clockを生成していろいろな部品につなげる(clock以外はno-touch)

// data structures for CPU<->Cache controller interface
// CPU request (CPU->cache controller)
typedef struct {
    bit [26:0] addr; //32-bit request addr
    bit [31:0] data; //32-bit request data (used when write)
    bit [0:0]  rw;   //request type : 0 = read, 1 = write
    bit [0:0]  valid; //request is valid
}cpu_req_type;

// Cache result (cache controller->cpu)
typedef struct {
    bit [31:0] data; //32-bit data
    bit [0:0]  ready; //result is ready
}cpu_result_type;

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
    input wire [26:0] addr_dram,
    input wire [31:0] din_dram,
    input wire rw_dram,
    input wire valid_dram,
    output wire dout_dram,
    output wire ready_dram,
    output cpu_result_type cpu_res,
    output logic led_memory
);
    cpu_req_type cpu_to_cache_request;
    assign cpu_to_cache_request.addr = addr_dram;
    assign cpu_to_cache_request.data = din_dram;
    assign cpu_to_cache_request.rw = rw_dram;
    assign cpu_to_cache_request.valid = valid_dram;

    cpu_result_type cpu_res;
    assign dout_dram = cpu_res.data;
    assign ready_dram = cpu_res.ready;

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
        .led_memory(led_memory)
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
