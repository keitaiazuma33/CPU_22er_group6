`default_nettype none

module uart #(CLK_PER_HALF_BIT = 5208) (
		     input wire  rxd,
		     output wire txd,
		     input wire  clk,
		     input wire  rstn_uart);

   reg [7:0] 			 data;
   reg 				 data_valid;
   wire [7:0] 			 rdata;
   reg 				 tx_start;
   wire 			 rx_ready;
   wire 			 tx_busy;
   wire 			 ferr;
   reg              rstn;
   wire [31:0] output_register;
   wire [1023:0] i_memory_input;
  wire [31:0]  i_memory_input1;
  wire [31:0]  i_memory_input2;
  wire [31:0]  i_memory_input3;
  wire [31:0]  i_memory_input4;
  wire [31:0]  i_memory_input5;
  wire [31:0]  i_memory_input6;
  wire [31:0]  i_memory_input7;
  wire [31:0]  i_memory_input8;
  wire [31:0]  i_memory_input9;
  wire [31:0]  i_memory_input10;
  wire [31:0]  i_memory_input11;
  wire [31:0]  i_memory_input12;
  wire [31:0]  i_memory_input13;
  wire [31:0]  i_memory_input14;
  wire [31:0]  i_memory_input15;
  wire [31:0]  i_memory_input16;
  wire [31:0]  i_memory_input17;
  wire [31:0]  i_memory_input18;
  wire [31:0]  i_memory_input19;                  
  wire [31:0]  i_memory_input20;
  wire [31:0]  i_memory_input21;
  wire [31:0]  i_memory_input22;
  wire [31:0]  i_memory_input23;
  wire [31:0]  i_memory_input24;
  wire [31:0]  i_memory_input25;
  wire [31:0]  i_memory_input26;
  wire [31:0]  i_memory_input27;
  wire [31:0]  i_memory_input28;
  wire [31:0]  i_memory_input29;
  wire [31:0]  i_memory_input30;
  wire [31:0]  i_memory_input31;
  wire [31:0]  i_memory_input32;
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
   assign i_memory_input1 =  32'b0000000_00001_00000_000_00001_0010011;  //  00100093     addi x1,   zero, 1
   assign i_memory_input2 =  32'b0000000_00001_00000_000_00010_0010011;  //  00100113     addi x2,   zero, 1
   assign i_memory_input3 =  32'b0000000_00010_00000_000_00100_0010011;  //  00200223     addi x4,   zero, 2
   assign i_memory_input4 =  32'b0000000_01010_00000_000_00101_0010011;  //  00a00293     addi x5,   zero, 10
   assign i_memory_input5 =  32'b0000000_00000_00000_000_00111_0010011;  //  00000393     addi x7,   zero, 0
   assign i_memory_input6 =  32'b0000000_00001_00111_010_00000_0100011;  //  0070a023     sw   x1,   0(x7)
   assign i_memory_input7 =  32'b0000000_00100_00111_000_00111_0010011;  //  00438393     addi x7,   x7,   4
   assign i_memory_input8 =  32'b0000000_00010_00111_010_00000_0100011;  //  00712023     sw   x2,   0(x7)
   assign i_memory_input9 =  32'b0000000_00100_00111_000_00111_0010011;  //  00438393     addi x7,   x7,   4                LABEL2
   assign i_memory_input10 = 32'b0000000_00010_00001_000_00011_0110011;  //  002081b3     add  x3,   x1,   x2
   assign i_memory_input11 = 32'b0000000_00011_00111_010_00000_0100011;  //  0071a023     sw   x3,   0(x7)
   assign i_memory_input12 = 32'b0000000_00000_00010_000_00001_0010011;  //  00010093     addi x1,   x2,   0
   assign i_memory_input13 = 32'b0000000_00000_00011_000_00010_0010011;  //  00030213     addi x2,   x3,   0
   assign i_memory_input14 = 32'b0000000_00001_00100_000_00100_0010011;  //  00120213     addi x4,   x4,   1
   assign i_memory_input15 = 32'b0000000_00101_00100_000_01000_1100011;  //  00520263     beq  x4,   x5,   LABEL1 (= 64 (+ 8))
   assign i_memory_input16 = 32'b1111111_00000_00000_000_00101_1100011;  //  fe0002e3     beq  zero, zero, LABEL2 (= 32 (- 28))
   assign i_memory_input17 = 32'b0000000_00000_00111_010_00110_0000011;  //  0003a303     lw   x6,   0(x7)                  LABEL1
   assign i_memory_input18 = 32'b0000000_00001_00100_000_00100_0010011;  //  00120213     addi x4,   x4,   1                LABEL3
   assign i_memory_input19 = 32'b1111111_00000_00000_000_11101_1100011;  //  fe000ee3     beq  zero, zero, LABEL3 (= 68 (- 4))                    
   assign i_memory_input20 = 32'b0000000_00000_00000_000_00000_0000000;
   assign i_memory_input21 = 32'b0000000_00000_00000_000_00000_0000000;
   assign i_memory_input22 = 32'b0000000_00000_00000_000_00000_0000000;
   assign i_memory_input23 = 32'b0000000_00000_00000_000_00000_0000000;
   assign i_memory_input24 = 32'b0000000_00000_00000_000_00000_0000000;
   assign i_memory_input25 = 32'b0000000_00000_00000_000_00000_0000000;
   assign i_memory_input26 = 32'b0000000_00000_00000_000_00000_0000000;
   assign i_memory_input27 = 32'b0000000_00000_00000_000_00000_0000000;
   assign i_memory_input28 = 32'b0000000_00000_00000_000_00000_0000000;
   assign i_memory_input29 = 32'b0000000_00000_00000_000_00000_0000000;
   assign i_memory_input30 = 32'b0000000_00000_00000_000_00000_0000000;
   assign i_memory_input31 = 32'b0000000_00000_00000_000_00000_0000000;
   assign i_memory_input32 = 32'b0000000_00000_00000_000_00000_0000000;
   

   uart_tx #(CLK_PER_HALF_BIT) u1(data, tx_start, tx_busy, txd, clk, rstn_uart);
   uart_rx #(CLK_PER_HALF_BIT) u2(rdata, rx_ready, ferr, rxd, clk, rstn_uart);
   core co(i_memory_input,clk,rstn,output_register);

   always @(posedge clk) begin
     if (~rstn_uart) begin
     rstn <= 1'b0;
	 data <= 8'b0;
	 data_valid <= 1'b0;
	 tx_start <= 1'b0;
     end else begin
	   if (rx_ready) begin
	      rstn <= 1'b1;
	   end
       if (output_register != 32'b0) begin
          data <= output_register[7:0];
          data_valid <= 1'b1;
       end
	   if (~tx_busy && data_valid) begin
	      tx_start <= 1'b1;
	   end
	   if (tx_start) begin
	      data_valid <= 1'b0;
	      tx_start <= 1'b0;
	   end
      end
   end

endmodule
`default_nettype wire