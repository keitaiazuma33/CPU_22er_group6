module core_wrapper
  (
    input wire cpu_clk,
    input wire cpu_resetn,
    input wire uart_txd_in,
    output wire uart_rxd_out,
    output wire [15:0] led
    /*dram*************************************************,
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
    output wire [0:0] ddr2_odt
    /******************************************************/
  );

  wire [26:0] addr_dram;
  wire [31:0] din_dram;
  wire rw_dram;
  wire valid_dram;
  wire led_memory;
  wire ready_dram;
  wire [31:0] dout_dram;

  //core
  wire txd;
  wire rxd;
  wire [31:0] outputs;
  wire clk;
  wire rstn;

  //top(memory)
  wire sys_clk;
  wire mem_clk;
  
  //clk_wizard
  wire clk_in1;
  wire clk_out1;
  wire clk_out2;
  wire resetn;
  wire locked;

  //proc_sys_reset
  wire slowest_sync_clk;
  wire ext_reset_in;
  wire aux_reset_in;
  wire mb_debug_sys_rst;
  wire dcm_locked;
  wire mb_reset;
  wire bus_struct_reset;
  wire peripheral_reset;
  wire interconnect_aresetn;
  wire peripheral_aresetn;

  //core
  assign uart_rxd_out = txd;
  assign rxd = uart_txd_in;
  assign led = outputs[15:0];
  assign rstn = peripheral_aresetn;
  assign clk = clk_out2;

  //top(memory)
  assign sys_clk = clk_out2;
  assign mem_clk = clk_out1;

  //clk_wizard
  assign resetn = cpu_resetn;
  assign clk_in1 = cpu_clk;

  //proc_sys_reset
  assign mb_debug_sys_rst = 1'b0;
  assign aux_reset_in = 1'b1;
  assign ext_reset_in = cpu_resetn;
  assign slowest_sync_clk = clk_out2;
  assign dcm_locked = locked;


  clk_wiz_core_wrapper clk_wiz_core_wrapper
    (
      // Clock out ports
      .clk_out1(clk_out1),     // output clk_out1
      .clk_out2(clk_out2),     // output clk_out2
      // Status and control signals
      .resetn(resetn), // input resetn
      .locked(locked),       // output locked
      // Clock in ports
      .clk_in1(clk_in1)
    );      // input clk_in1
  

  proc_sys_reset_0 proc_sys_reset_core_wrapper 
    (
      .slowest_sync_clk(slowest_sync_clk),          // input wire slowest_sync_clk
      .ext_reset_in(ext_reset_in),                  // input wire ext_reset_in
      .aux_reset_in(aux_reset_in),                  // input wire aux_reset_in
      .mb_debug_sys_rst(mb_debug_sys_rst),          // input wire mb_debug_sys_rst
      .dcm_locked(dcm_locked),                      // input wire dcm_locked
      .mb_reset(mb_reset),                          // output wire mb_reset
      .bus_struct_reset(bus_struct_reset),          // output wire [0 : 0] bus_struct_reset
      .peripheral_reset(peripheral_reset),          // output wire [0 : 0] peripheral_reset
      .interconnect_aresetn(interconnect_aresetn),  // output wire [0 : 0] interconnect_aresetn
      .peripheral_aresetn(peripheral_aresetn)       // output wire [0 : 0] peripheral_aresetn
    );
    

  core _core
    (
      .rxd(rxd),
      .clk(clk),
      .mem_clk(mem_clk),
      .rstn(rstn),
      .dout_dram(dout_dram),
      .ready_dram(ready_dram),
      .txd(txd),
      .outputs(outputs),
      .addr_dram(addr_dram),
      .din_dram(din_dram),
      .rw_dram(rw_dram),
      .valid_dram(valid_dram)
    );

/*************************************************************
  top _top 
    (
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
      .sys_clk(sys_clk),
      .mig_clk(mem_clk),
      .rstn(rstn),
      .cpu_req_addr(addr_dram),
      .cpu_req_data(din_dram),
      .cpu_req_rw(rw_dram),
      .cpu_req_valid(valid_dram),
      .cpu_res_data(dout_dram),
      .cpu_res_ready(ready_dram)
    );
    /******************************************************/

endmodule



