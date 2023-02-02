`timescale 100ps/1ps
`default_nettype none

module test_all #(CLK_PER_HALF_BIT = 100) ();
  reg clk;
  reg rstn1;
  reg rstn2;
  wire core_to_comp;
  wire comp_to_core;
  wire [15:0] led;

  io_computer_side _io_computer_side(core_to_comp,comp_to_core,clk,rstn1);
  core_wrapper _core_wrapper(clk,rstn2,comp_to_core,core_to_comp,led);

  initial begin
    clk = 1'b0;
    rstn1 = 1'b0;
    rstn2 = 1'b0;
    # 25
      rstn1 = 1'b1;
    # 30
      rstn2 = 1'b1;
    # 10000000
      $finish;
  end


  always begin
    # 5
      clk <= ~clk;
  end
endmodule

