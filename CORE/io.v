`default_nettype none



module io #(CLK_PER_HALF_BIT = 100) 
  (
    input wire rxd,
    output wire txd,
    input wire clk,
    input wire rstn,
    input wire data_ready_io,
    input wire [31:0] data_from_memory_io,  
    input wire core_end,                    
    output wire wr_en_instr,                
    output wire [31:0] data_in_instr,       
    output wire [31:0] addr_in_instr,       
    output wire [31:0] addr_io,             
    output wire [31:0] write_data_io,       
    output wire memread_io,                 
    output wire memwrite_io,                
    output wire core_start,                 
    output wire [31:0] output_io
  );

  //UART
  reg [7:0] sdata;
  wire [7:0] rdata;
  reg tx_start;
  wire rx_ready;
  wire tx_busy;
  wire ferr;

  //registers for output
  reg memread_io_reg;
  reg wr_en_instr_reg;
  reg core_start_reg;
  assign wr_en_instr = wr_en_instr_reg;
  assign core_start = core_start_reg;
  assign memread_io = memread_io_reg;


  reg [15:0] status;         //status of finite state machine
  reg [31:0] counter;

  
  wire [31:0] program_words; //= program_bytes/4
  reg [31:0] program_bytes;  //first four words of input
  reg [31:0] input_program;  //buffer for input program

  //ASCII
  wire [7:0] large_p;       assign large_p = 8'h50;
  wire [7:0] number_0;      assign number_0 = 8'h30;
  wire [7:0] space;         assign space = 8'h20;
  wire [7:0] newline;       assign newline = 8'h0a;
  
  wire [31:0] base_address;  //indicates where the output is on the memory: should be changed to a register when implementing io of sld file
  reg [31:0] rgb_pixel;           //may be changed to r_pixel, g_pixel, b_pixel
  reg [7:0] red;
  reg [7:0] red_100;
  reg [7:0] red_10;
  reg [7:0] red_1;
  reg [7:0] green;
  reg [7:0] green_100;
  reg [7:0] green_10;
  reg [7:0] green_1;
  reg [7:0] blue;
  reg [7:0] blue_100;
  reg [7:0] blue_10;
  reg [7:0] blue_1;
  wire [7:0]  pixel_100;                                       //pixel width/100
  wire [7:0]  pixel_10;                                        //pixel width%100/10
  wire [7:0]  pixel_1;                                         //pixel width%10
  wire [31:0] pixels;        //how many pixels
  assign base_address = 32'b0;                                             
  assign pixel_100 = 8'd1;                                                 
  assign pixel_10  = 8'd2;                                                 
  assign pixel_1   = 8'd8;                                                 
  assign pixels    = 32'd16384; 
  
  reg [31:0] output_io_reg;
  assign output_io = input_program;

  assign program_words = {2'b00,program_bytes[31:2]};                      //How many words there are in the program
  assign addr_in_instr = {counter[29:0] - 30'd1,2'b00};                    //address of instruction memory
  assign data_in_instr = input_program;                                    //data sent to the instruction memory
  assign addr_io = base_address + {counter[29:0],2'b00};                   //address of data memory
  assign memwrite_io = 1'b0;
  assign write_data_io = 32'b0;
  

  uart_tx #(CLK_PER_HALF_BIT) u1(sdata, tx_start, tx_busy, txd, clk, rstn);
  uart_rx #(CLK_PER_HALF_BIT) u2(rdata, rx_ready, ferr, rxd, clk, rstn);

  

  


  always @(posedge clk) begin
    if (~rstn) begin
      sdata <= 8'h00;
      tx_start <= 1'b0;
      status <= 16'd0;
      counter <= 32'b0;
      program_bytes <= 32'b0;
      input_program <= 32'b0;
      wr_en_instr_reg <= 1'b0;
      core_start_reg <= 1'b0;
      output_io_reg <= 32'b0;
      rgb_pixel <= 32'b0;
      memread_io_reg <= 1'b0;
      red <= 8'b0; 
      red_100 <= 8'b0; 
      red_10 <= 8'b0; 
      red_1 <= 8'b0;
      green <= 8'b0;
      green_100 <= 8'b0;
      green_10 <= 8'b0;
      green_1 <= 8'b0;
      blue <= 8'b0;
      blue_100 <= 8'b0;
      blue_10 <= 8'b0;
      blue_1 <= 8'b0;
    end else begin
      if (status == 16'd0) begin  //send "99"                                                                                 
        sdata <= 8'h99; status <= status + 16'd1;
      end else if (status[3:0] == 4'd1) begin  //start sending data
        tx_start <= 1'b1;
        status <= status + 16'd1;
      end else if (status[3:0] == 4'd2) begin  //check tx_busy
        if (tx_busy) begin
          status <= status + 16'd1;
          tx_start <= 1'b0;
        end
      end else if (status[3:0] == 4'd3) begin  //check that sending has completed
        if (~tx_busy) begin
          status <= status + 16'd13;
        end
      end else if (status[3:0] == 4'd4) begin  //check that recieving has completed
        if (~rx_ready) begin
          status <= status + 16'd12;
        end

      //recieve program
      end else if (status == 16'd16)  begin if (rx_ready) begin program_bytes[7:0]                 <= rdata; status <= status + 16'd4; end 
      end else if (status == 16'd32)  begin if (rx_ready) begin program_bytes[15:8]                <= rdata; status <= status + 16'd4; end 
      end else if (status == 16'd48)  begin if (rx_ready) begin program_bytes[23:16]               <= rdata; status <= status + 16'd4; end 
      end else if (status == 16'd64)  begin if (rx_ready) begin program_bytes[31:24]               <= rdata; status <= status + 16'd4; end 
      end else if (status == 16'd80)  begin if (rx_ready) begin input_program[7:0]                 <= rdata; status <= status + 16'd4; wr_en_instr_reg <= 1'b0;  end 
      end else if (status == 16'd96)  begin if (rx_ready) begin input_program[15:8]                <= rdata; status <= status + 16'd4; end 
      end else if (status == 16'd112) begin if (rx_ready) begin input_program[23:16]               <= rdata; status <= status + 16'd4; end 
      end else if (status == 16'd128) begin if (rx_ready) begin input_program[31:24]               <= rdata; status <= status + 16'd4; end 
      end else if (status == 16'd144) begin 
        if (counter != program_words - 32'd1) begin
          counter <= counter + 32'd1;
          status <= status - 32'd64;
        end else begin  //end of recieving program: start core
          counter <= counter + 32'd1;
          status <= 16'd2000;
          core_start_reg <= 1'b1;
        end
        wr_en_instr_reg <= 1'b1;
      end else if (status == 16'd2000) begin sdata <= 8'haa;                status <= status + 16'd1;  wr_en_instr_reg <= 1'b0;  //send "aa"
      //recieve sld data
      //
      //
      //
      end else if (status == 16'd2016) begin 
        counter <= 32'b0;
        if (core_end) begin  //check that the program has completed
          status <= status + 16'd2000;
        end
      //send data
      end else if (status == 16'd4016) begin sdata <= large_p;              status <= status + 16'd1; //send "P3"
      end else if (status == 16'd4032) begin sdata <= number_0 + 8'd3;      status <= status + 16'd1;
      end else if (status == 16'd4048) begin sdata <= newline;              status <= status + 16'd1;
      end else if (status == 16'd4064) begin sdata <= number_0 + pixel_100; status <= status + 16'd1; //send pixel width
      end else if (status == 16'd4080) begin sdata <= number_0 + pixel_10;  status <= status + 16'd1;
      end else if (status == 16'd4096) begin sdata <= number_0 + pixel_1;   status <= status + 16'd1;
      end else if (status == 16'd4112) begin sdata <= space;                status <= status + 16'd1;
      end else if (status == 16'd4128) begin sdata <= number_0 + pixel_100; status <= status + 16'd1; //send pixel length
      end else if (status == 16'd4144) begin sdata <= number_0 + pixel_10;  status <= status + 16'd1;
      end else if (status == 16'd4160) begin sdata <= number_0 + pixel_1;   status <= status + 16'd1;
      end else if (status == 16'd4176) begin sdata <= space;                status <= status + 16'd1;
      end else if (status == 16'd4192) begin sdata <= number_0 + 8'd2;      status <= status + 16'd1; //send color range
      end else if (status == 16'd4208) begin sdata <= number_0 + 8'd5;      status <= status + 16'd1;
      end else if (status == 16'd4224) begin sdata <= number_0 + 8'd5;      status <= status + 16'd1;
      end else if (status == 16'd4240) begin sdata <= newline;              status <= status + 16'd1;  
      end else if (status == 16'd4256) begin 
        memread_io_reg <= 1'b1;  //start reading from memory
        status <= status + 16'd14;
      end else if (status == 16'd4270) begin
        memread_io_reg <= 1'b0;
        status <= status + 16'b1;
      end else if (status == 16'd4271) begin
        if (data_ready_io) begin
          rgb_pixel <= data_from_memory_io;
          red <= data_from_memory_io[7:0];
          green <= data_from_memory_io[15:8];
          blue <= data_from_memory_io[23:16];
          status <= status + 16'd1;
        end 
      end else if (status == 16'd4272) begin //calculate color data1
        if (red < 8'd100) begin red_100 <= 8'd0;
        end else if (red < 8'd200) begin red_100 <= 8'd1; red <= red - 8'd100;
        end else begin red_100 <= 8'd2; red <= red - 8'd200;
        end 
        if (green < 8'd100) begin green_100 <= 8'd0;
        end else if (green < 8'd200) begin green_100 <= 8'd1; green <= green - 8'd100;
        end else begin green_100 <= 8'd2; green <= green - 8'd200;
        end 
        if (blue < 8'd100) begin blue_100 <= 8'd0;
        end else if (blue < 8'd200) begin blue_100 <= 8'd1; blue <= blue - 8'd100;
        end else begin blue_100 <= 8'd2; blue <= blue - 8'd200;
        end
        status <= status + 16'd16; 
      end else if (status == 16'd4288) begin //calculate color data2
        if (red < 8'd10) begin red_10 <= 8'd0;
        end else if (red < 8'd20) begin red_10 <= 8'd1; red <= red - 8'd10;
        end else if (red < 8'd30) begin red_10 <= 8'd2; red <= red - 8'd20;
        end else if (red < 8'd40) begin red_10 <= 8'd3; red <= red - 8'd30;
        end else if (red < 8'd50) begin red_10 <= 8'd4; red <= red - 8'd40;
        end else if (red < 8'd60) begin red_10 <= 8'd5; red <= red - 8'd50;
        end else if (red < 8'd70) begin red_10 <= 8'd6; red <= red - 8'd60;
        end else if (red < 8'd80) begin red_10 <= 8'd7; red <= red - 8'd70;
        end else if (red < 8'd90) begin red_10 <= 8'd8; red <= red - 8'd80;
        end else begin red_10 <= 8'd9; red <= red - 8'd90;
        end
        if (green < 8'd10) begin green_10 <= 8'd0;
        end else if (green < 8'd20) begin green_10 <= 8'd1; green <= green - 8'd10;
        end else if (green < 8'd30) begin green_10 <= 8'd2; green <= green - 8'd20;
        end else if (green < 8'd40) begin green_10 <= 8'd3; green <= green - 8'd30;
        end else if (green < 8'd50) begin green_10 <= 8'd4; green <= green - 8'd40;
        end else if (green < 8'd60) begin green_10 <= 8'd5; green <= green - 8'd50;
        end else if (green < 8'd70) begin green_10 <= 8'd6; green <= green - 8'd60;
        end else if (green < 8'd80) begin green_10 <= 8'd7; green <= green - 8'd70;
        end else if (green < 8'd90) begin green_10 <= 8'd8; green <= green - 8'd80;
        end else begin green_10 <= 8'd9; green <= green - 8'd90;
        end
        if (blue < 8'd10) begin blue_10 <= 8'd0;
        end else if (blue < 8'd20) begin blue_10 <= 8'd1; blue <= blue - 8'd10;
        end else if (blue < 8'd30) begin blue_10 <= 8'd2; blue <= blue - 8'd20;
        end else if (blue < 8'd40) begin blue_10 <= 8'd3; blue <= blue - 8'd30;
        end else if (blue < 8'd50) begin blue_10 <= 8'd4; blue <= blue - 8'd40;
        end else if (blue < 8'd60) begin blue_10 <= 8'd5; blue <= blue - 8'd50;
        end else if (blue < 8'd70) begin blue_10 <= 8'd6; blue <= blue - 8'd60;
        end else if (blue < 8'd80) begin blue_10 <= 8'd7; blue <= blue - 8'd70;
        end else if (blue < 8'd90) begin blue_10 <= 8'd8; blue <= blue - 8'd80;
        end else begin blue_10 <= 8'd9; blue <= blue - 8'd90;
        end
        status <= status + 16'd16;
      end else if (status == 16'd4304) begin  //calculate color data3
        if (red < 8'd1) begin red_1 <= 8'd0;
        end else if (red < 8'd2) begin red_1 <= 8'd1; 
        end else if (red < 8'd3) begin red_1 <= 8'd2; 
        end else if (red < 8'd4) begin red_1 <= 8'd3; 
        end else if (red < 8'd5) begin red_1 <= 8'd4; 
        end else if (red < 8'd6) begin red_1 <= 8'd5; 
        end else if (red < 8'd7) begin red_1 <= 8'd6; 
        end else if (red < 8'd8) begin red_1 <= 8'd7; 
        end else if (red < 8'd9) begin red_1 <= 8'd8; 
        end else begin red_1 <= 8'd9; 
        end
        if (green < 8'd1) begin green_1 <= 8'd0;
        end else if (green < 8'd2) begin green_1 <= 8'd1; 
        end else if (green < 8'd3) begin green_1 <= 8'd2; 
        end else if (green < 8'd4) begin green_1 <= 8'd3; 
        end else if (green < 8'd5) begin green_1 <= 8'd4; 
        end else if (green < 8'd6) begin green_1 <= 8'd5; 
        end else if (green < 8'd7) begin green_1 <= 8'd6; 
        end else if (green < 8'd8) begin green_1 <= 8'd7; 
        end else if (green < 8'd9) begin green_1 <= 8'd8; 
        end else begin green_1 <= 8'd9; 
        end
        if (blue < 8'd1) begin blue_1 <= 8'd0;
        end else if (blue < 8'd2) begin blue_1 <= 8'd1;
        end else if (blue < 8'd3) begin blue_1 <= 8'd2;
        end else if (blue < 8'd4) begin blue_1 <= 8'd3;
        end else if (blue < 8'd5) begin blue_1 <= 8'd4;
        end else if (blue < 8'd6) begin blue_1 <= 8'd5;
        end else if (blue < 8'd7) begin blue_1 <= 8'd6;
        end else if (blue < 8'd8) begin blue_1 <= 8'd7;
        end else if (blue < 8'd9) begin blue_1 <= 8'd8;
        end else begin blue_1 <= 8'd9;
        end
        status <= status + 16'd16;
      end else if (status == 16'd4320) begin sdata <= number_0 + red_100;      status <= status + 16'd1; //send color data
      end else if (status == 16'd4336) begin sdata <= number_0 + red_10;       status <= status + 16'd1;
      end else if (status == 16'd4352) begin sdata <= number_0 + red_1;        status <= status + 16'd1;
      end else if (status == 16'd4368) begin sdata <= space;                   status <= status + 16'd1;
      end else if (status == 16'd4384) begin sdata <= number_0 + green_100;    status <= status + 16'd1;
      end else if (status == 16'd4400) begin sdata <= number_0 + green_10;     status <= status + 16'd1;
      end else if (status == 16'd4416) begin sdata <= number_0 + green_1;      status <= status + 16'd1;
      end else if (status == 16'd4432) begin sdata <= space;                   status <= status + 16'd1;
      end else if (status == 16'd4448) begin sdata <= number_0 + blue_100;     status <= status + 16'd1;
      end else if (status == 16'd4464) begin sdata <= number_0 + blue_10;      status <= status + 16'd1;
      end else if (status == 16'd4480) begin sdata <= number_0 + blue_1;       status <= status + 16'd1;
      end else if (status == 16'd4496) begin sdata <= newline;                 status <= status + 16'd1;
      end else if (status == 16'd4512) begin
        if (counter != pixels - 32'b1) begin
          counter <= counter + 32'd1;
          status <= status - 16'd256;
        end
      end 
    end
  end
endmodule





//module to simulate io
module io_computer_side #(CLK_PER_HALF_BIT = 100) 
  (
    input wire rxd,
    output wire txd,
    input wire clk,
    input wire rstn
  );

  reg [7:0] sdata;
  wire [7:0] rdata;
  reg tx_start;
  wire rx_ready;
  wire tx_busy;
  wire ferr;

  parameter WIDTH = 32, LOGWIDTH = 5;
  wire [31:0] program_bytes;
  assign program_bytes = 32'd128;

  reg [31:0] ram [0:WIDTH - 1];


  reg [15:0] status;
  

  reg [31:0] counter;

  uart_tx #(CLK_PER_HALF_BIT) u1(sdata, tx_start, tx_busy, txd, clk, rstn);
  uart_rx #(CLK_PER_HALF_BIT) u2(rdata, rx_ready, ferr, rxd, clk, rstn);

  reg [7:0] first_number;
  reg [31:0] program_buffer;

  initial begin
    $readmemb("fib.mem", ram);
  end

  always @(posedge clk) begin
    if (~rstn) begin
      //ram[0] <=  32'b0000100_00000_00000_000_01010_0010011;  //  00100093   93001000   addi x1,   zero, 1
      //ram[1] <=  32'b0000000_01110_01101_010_00000_0100011;  //  00100113   13011000   addi x2,   zero, 1
      //ram[2] <=  32'b0000000_00010_01110_000_01110_0010011;  //  00200213   13022000   addi x4,   zero, 2
      //ram[3] <=  32'b0000000_00100_01101_000_01101_0010011;  //  00a00293   9302a000   addi x5,   zero, 10
      //ram[4] <=  32'b0000000_00001_01011_000_01011_0010011;  //  00000393   93030000   addi x7,   zero, 0
      //ram[5] <=  32'b0000000_01010_01011_000_01000_1100011;  //  0013a023   23a01300   sw   x1,   0(x7)
      //ram[6] <=  32'b1111111_00000_00000_000_01101_1100011;  //  00438393   93834300   addi x7,   x7,   4
      //ram[7] <=  32'b0000000_00000_00000_000_01011_0010011;  //  0023a023   23a02300   sw   x2,   0(x7)
      //ram[8] <=  32'b0000000_00001_01100_000_01100_0010011;  //  00438393   93834300   addi x7,   x7,   4                LABEL2
      //ram[9] <=  32'b0000000_01010_01100_000_01000_1100011;  //  002081b3   b3812000   add  x3,   x1,   x2
      //ram[10] <= 32'b1111110_00000_00000_000_11101_1100011;  //  0033a023   23a03300   sw   x3,   0(x7)
      //ram[11] <= 32'b0000000_00000_00000_000_00000_0000000;  //  00010093   93000100   addi x1,   x2,   0
      //ram[12] <= 32'b0000000_00000_00000_000_00000_0000000;  //  00018113   13810100   addi x2,   x3,   0
      //ram[13] <= 32'b0000000_00000_00000_000_00000_0000000;  //  00120213   13021200   addi x4,   x4,   1
      //ram[14] <= 32'b0000000_00000_00000_000_00000_0000000;  //  00520463   63045200   beq  x4,   x5,   LABEL1 (= 64 (+ 8))
      //ram[15] <= 32'b0000000_00000_00000_000_00000_0000000;  //  fe0002e3   e30200fe   beq  zero, zero, LABEL2 (= 32 (- 28))
      //ram[16] <= 32'b1111111_11111_11111_111_11110_0000000;  //  0003a303   03a30300   lw   x6,   0(x7)                  LABEL1
      //ram[17] <= 32'b0000000_00000_00000_000_00000_0000000;  //  00120213   13021200   addi x4,   x4,   1                LABEL3
      //ram[18] <= 32'b0000000_00000_00000_000_00000_0000000;  //  fe000ee3   e30e00fe   beq  zero, zero, LABEL3 (= 68 (- 4))                    
      //ram[19] <= 32'b0000000_00000_00000_000_00000_0000000;  //  00000000
      //ram[20] <= 32'b0000000_00000_00000_000_00000_0000000;  //  00000000
      //ram[21] <= 32'b0000000_00000_00000_000_00000_0000000;  //  00000000
      //ram[22] <= 32'b0000000_00000_00000_000_00000_0000000;  //  00000000
      //ram[23] <= 32'b0000000_00000_00000_000_00000_0000000;  //  00000000
      //ram[24] <= 32'b0000000_00000_00000_000_00000_0000000;  //  00000000
      //ram[25] <= 32'b0000000_00000_00000_000_00000_0000000;  //  00000000
      //ram[26] <= 32'b0000000_00000_00000_000_00000_0000000;  //  00000000
      //ram[27] <= 32'b0000000_00000_00000_000_00000_0000000;  //  00000000
      //ram[28] <= 32'b0000000_00000_00000_000_00000_0000000;  //  00000000
      //ram[29] <= 32'b0000000_00000_00000_000_00000_0000000;  //  00000000
      //ram[30] <= 32'b0000000_00000_00000_000_00000_0000000;  //  00000000
      //ram[31] <= 32'b0000000_00000_00000_000_00000_0000000;  //  00000000
      sdata <= 8'h00;
      tx_start <= 1'b0;
      status <= 16'd0;
      counter <= 32'b0;
      first_number <= 8'b0;
      program_buffer <= 32'b0;
    end else begin
      if (status == 16'd0) begin if (rx_ready) begin first_number                 <= rdata; status <= status + 16'd4; end 
      end else if (status[3:0] == 4'd1) begin
        tx_start <= 1'b1;
        status <= status + 16'd1;
      end else if (status[3:0] == 4'd2) begin
        if (tx_busy) begin
          status <= status + 16'd1;
          tx_start <= 1'b0;
        end
      end else if (status[3:0] == 4'd3) begin
        if (~tx_busy) begin
          status <= status + 16'd13;
        end
      end else if (status[3:0] == 4'd4) begin
        if (~rx_ready) begin
          status <= status + 16'd12;
        end
      end else if (status == 16'd16) begin
        if (first_number == 8'h99) begin
          status <= 16'd32;
        end else begin
          status <= 16'd2000;
        end
      end else if (status == 16'd32) begin sdata <= program_bytes[7:0];             status <= status + 16'd1;
      end else if (status == 16'd48) begin sdata <= program_bytes[15:8];            status <= status + 16'd1;
      end else if (status == 16'd64) begin sdata <= program_bytes[23:16];           status <= status + 16'd1;
      end else if (status == 16'd80) begin sdata <= program_bytes[31:24];           status <= status + 16'd1;
      end else if (status == 16'd96) begin status <= 16'd112;
      end else if (status == 16'd112) begin
        program_buffer <= ram[counter[LOGWIDTH - 1:0]];
        status <= 16'd128;
      end else if (status == 16'd128) begin sdata <= program_buffer[7:0];           status <= status + 16'd1;
      end else if (status == 16'd144) begin sdata <= program_buffer[15:8];          status <= status + 16'd1;
      end else if (status == 16'd160) begin sdata <= program_buffer[23:16];         status <= status + 16'd1;
      end else if (status == 16'd176) begin sdata <= program_buffer[31:24];         status <= status + 16'd1;
      end else if (status == 16'd192) begin
        if (counter[LOGWIDTH - 1:0] != WIDTH - 1) begin
          counter <= counter + 32'b1;
          status <= status - 16'd80;
        end else begin
          counter <= 32'b0;
          status <= 16'd4000;
        end
      end else if (status == 16'd2000) begin
        status <= 16'd4000;
      end
    end
  end
endmodule

`default_nettype wire