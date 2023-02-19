`timescale 100ps/1ps
`default_nettype none

module test_all ();
  reg clk;
  reg rstn1;
  reg rstn2;
  wire core_to_comp;
  wire comp_to_core;
  wire [15:0] led;
  /************dram*************
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
  /******************************/

  io_computer_side _io_computer_side(core_to_comp,comp_to_core,clk,rstn1);
  core_wrapper _core_wrapper
    (
      clk,rstn2,comp_to_core,core_to_comp,led/**,
      ddr2_addr,ddr2_ba,ddr2_cas_n,ddr2_ck_n,ddr2_ck_p,ddr2_cke,ddr2_ras_n,ddr2_we_n,ddr2_dq,ddr2_dqs_n,ddr2_dqs_p,ddr2_cs_n,ddr2_dm,ddr2_odt/**/
    );
/***************************************************
  ddr2 _ddr2 (
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
/****************************************************/
  initial begin
    clk = 1'b0;
    rstn1 = 1'b0;
    rstn2 = 1'b0;
    # 250
      rstn1 = 1'b1;
    # 300
      rstn2 = 1'b1;
    # 100000000
      $finish;
  end

  always begin
    # 50
      clk <= ~clk;
  end
endmodule


module test_top ();
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
  reg  sys_clk;
  reg  mem_clk;
  reg  rst;
  wire  [26:0] addr_dram;
  wire  [31:0] din_dram;
  wire  rw_dram;
  wire  valid_dram;
  wire [31:0] dout_dram;
  wire ready_dram;

  top _top(
    ddr2_addr,
    ddr2_ba,
    ddr2_cas_n,
    ddr2_ck_n,
    ddr2_ck_p,
    ddr2_cke,
    ddr2_ras_n,
    ddr2_we_n,
    ddr2_dq,
    ddr2_dqs_n,
    ddr2_dqs_p,
    ddr2_cs_n,
    ddr2_dm,
    ddr2_odt,
    sys_clk,
    mem_clk,
    rst,
    addr_dram,
    din_dram,
    rw_dram,
    valid_dram,
    dout_dram,
    ready_dram
  );


  ddr2 _ddr2 (
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

  reg [3:0] state;

  assign addr_dram =
    (state == 4'd0) ? 27'b0 :
    (state == 4'd1) ? 27'b0 :
    (state == 4'd2) ? 27'b0 :
    (state == 4'd3) ? 27'd4 :
    (state == 4'd4) ? 27'd4 : 27'd0;

  assign din_dram = 
    (state == 4'd0) ? 32'b0        :
    (state == 4'd1) ? 32'h0f0f0f0f :
    (state == 4'd2) ? 32'h0        :
    (state == 4'd3) ? 32'h1e1e1e1e :
    (state == 4'd4) ? 32'h0        : 32'd0;

  assign valid_dram =
    (ready_dram) ? 1'b0 :
    (state == 4'd0) ? 1'b0 :
    (state == 4'd1) ? 1'b1 :
    (state == 4'd2) ? 1'b1 :
    (state == 4'd3) ? 1'b1 :
    (state == 4'd4) ? 1'b1 : 1'b0;

  assign rw_dram =
    (state == 4'd0) ? 1'b0 :
    (state == 4'd1) ? 1'b1 :
    (state == 4'd2) ? 1'b0 :
    (state == 4'd3) ? 1'b1 :
    (state == 4'd4) ? 1'b0 : 1'b0;

  initial begin
    sys_clk = 1'b1;
    mem_clk = 1'b1;
    rst = 1'b0;
    state = 4'd0;
    # 100
    rst = 1'b1;
    # 2000
    state = 4'd1;
    # 10000000
      $finish;
  end

  always begin
    # 25
      mem_clk <= ~mem_clk;
  end

  always begin
    # 50
      sys_clk <= ~sys_clk;
  end

  always @(posedge sys_clk) begin
    if (ready_dram) begin
      state <= state + 4'd1;
    end
  end

endmodule

