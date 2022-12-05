`timescale 100ps/1ps
`default_nettype none

module test_io #(CLK_PER_HALF_BIT = 2604) ();
  reg clk;
  reg rstn_uart;
  reg rxd;
  wire txd;
  wire [7:0] debug;

  io_test _io_test(rxd, txd, debug, clk, rstn_uart);
  initial begin
    clk = 1'b0;
    rstn_uart = 1'b0;
    rxd <= 1'b1;
    # 20
      rstn_uart = 1'b1;
    # 100000000
      $finish;
  end


  always begin
    # 5
      clk <= ~clk;
  end
endmodule

module test_core();
  reg [31:0]  i_memory_input1;
  reg [31:0]  i_memory_input2;
  reg [31:0]  i_memory_input3;
  reg [31:0]  i_memory_input4;
  reg [31:0]  i_memory_input5;
  reg [31:0]  i_memory_input6;
  reg [31:0]  i_memory_input7;
  reg [31:0]  i_memory_input8;
  reg [31:0]  i_memory_input9;
  reg [31:0]  i_memory_input10;
  reg [31:0]  i_memory_input11;
  reg [31:0]  i_memory_input12;
  reg [31:0]  i_memory_input13;
  reg [31:0]  i_memory_input14;
  reg [31:0]  i_memory_input15;
  reg [31:0]  i_memory_input16;
  reg [31:0]  i_memory_input17;
  reg [31:0]  i_memory_input18;
  reg [31:0]  i_memory_input19;                  
  reg [31:0]  i_memory_input20;
  reg [31:0]  i_memory_input21;
  reg [31:0]  i_memory_input22;
  reg [31:0]  i_memory_input23;
  reg [31:0]  i_memory_input24;
  reg [31:0]  i_memory_input25;
  reg [31:0]  i_memory_input26;
  reg [31:0]  i_memory_input27;
  reg [31:0]  i_memory_input28;
  reg [31:0]  i_memory_input29;
  reg [31:0]  i_memory_input30;
  reg [31:0]  i_memory_input31;
  reg [31:0]  i_memory_input32;
  wire [1023:0] i_memory_input;
  assign i_memory_input = 
  {i_memory_input32,
   i_memory_input31,
   i_memory_input30,
   i_memory_input29,
   i_memory_input28,
   i_memory_input27,
   i_memory_input26,
   i_memory_input25,
   i_memory_input24,
   i_memory_input23,
   i_memory_input22,
   i_memory_input21,
   i_memory_input20,
   i_memory_input19,
   i_memory_input18,
   i_memory_input17,
   i_memory_input16,
   i_memory_input15,
   i_memory_input14,
   i_memory_input13,
   i_memory_input12,
   i_memory_input11,
   i_memory_input10,
   i_memory_input9,
   i_memory_input8,
   i_memory_input7,
   i_memory_input6,
   i_memory_input5,
   i_memory_input4,
   i_memory_input3,
   i_memory_input2,
   i_memory_input1};
  reg clk;
  reg rstn;
  wire [31:0] output_register;

  core _core(i_memory_input,clk,rstn,output_register);
  initial begin
    clk = 1'b0;
    rstn = 1'b0;
    i_memory_input1 =  32'b0000000_00001_00000_000_00001_0010011;  //  00100093     addi x1,   zero, 1
    i_memory_input2 =  32'b0000000_00001_00000_000_00010_0010011;  //  00100113     addi x2,   zero, 1
    i_memory_input3 =  32'b0000000_00010_00000_000_00100_0010011;  //  00200223     addi x4,   zero, 2
    i_memory_input4 =  32'b0000000_01010_00000_000_00101_0010011;  //  00a00293     addi x5,   zero, 10
    i_memory_input5 =  32'b0000000_00000_00000_000_00111_0010011;  //  00000393     addi x7,   zero, 0
    i_memory_input6 =  32'b0000000_00001_00111_010_00000_0100011;  //  0070a023     sw   x1,   0(x7)
    i_memory_input7 =  32'b0000000_00100_00111_000_00111_0010011;  //  00438393     addi x7,   x7,   4
    i_memory_input8 =  32'b0000000_00010_00111_010_00000_0100011;  //  00712023     sw   x2,   0(x7)
    i_memory_input9 =  32'b0000000_00100_00111_000_00111_0010011;  //  00438393     addi x7,   x7,   4                LABEL2
    i_memory_input10 = 32'b0000000_00010_00001_000_00011_0110011;  //  002081b3     add  x3,   x1,   x2
    i_memory_input11 = 32'b0000000_00011_00111_010_00000_0100011;  //  0071a023     sw   x3,   0(x7)
    i_memory_input12 = 32'b0000000_00000_00010_000_00001_0010011;  //  00010093     addi x1,   x2,   0
    i_memory_input13 = 32'b0000000_00000_00011_000_00010_0010011;  //  00030213     addi x2,   x3,   0
    i_memory_input14 = 32'b0000000_00001_00100_000_00100_0010011;  //  00120213     addi x4,   x4,   1
    i_memory_input15 = 32'b0000000_00101_00100_000_01000_1100011;  //  00520263     beq  x4,   x5,   LABEL1 (= 64 (+ 8))
    i_memory_input16 = 32'b1111111_00000_00000_000_00101_1100011;  //  fe0002e3     beq  zero, zero, LABEL2 (= 32 (- 28))
    i_memory_input17 = 32'b0000000_00000_00111_010_00110_0000011;  //  0003a303     lw   x6,   0(x7)                  LABEL1
    i_memory_input18 = 32'b0000000_00001_00100_000_00100_0010011;  //  00120213     addi x4,   x4,   1                LABEL3
    i_memory_input19 = 32'b1111111_00000_00000_000_11101_1100011;  //  fe000ee3     beq  zero, zero, LABEL3 (= 68 (- 4))                    
    i_memory_input20 = 32'b0000000_00000_00000_000_00000_0000000;
    i_memory_input21 = 32'b0000000_00000_00000_000_00000_0000000;
    i_memory_input22 = 32'b0000000_00000_00000_000_00000_0000000;
    i_memory_input23 = 32'b0000000_00000_00000_000_00000_0000000;
    i_memory_input24 = 32'b0000000_00000_00000_000_00000_0000000;
    i_memory_input25 = 32'b0000000_00000_00000_000_00000_0000000;
    i_memory_input26 = 32'b0000000_00000_00000_000_00000_0000000;
    i_memory_input27 = 32'b0000000_00000_00000_000_00000_0000000;
    i_memory_input28 = 32'b0000000_00000_00000_000_00000_0000000;
    i_memory_input29 = 32'b0000000_00000_00000_000_00000_0000000;
    i_memory_input30 = 32'b0000000_00000_00000_000_00000_0000000;
    i_memory_input31 = 32'b0000000_00000_00000_000_00000_0000000;
    i_memory_input32 = 32'b0000000_00000_00000_000_00000_0000000;
    # 20
      rstn = 1'b1;
    # 100000
      $finish;
  end

  always begin
    # 5
      clk <= ~clk;
  end
  
endmodule

