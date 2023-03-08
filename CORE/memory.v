

module instruction_ram 
  (
    input wire clk,
    input wire rstn,
    input wire wr_en_instr,
    input wire [31:0] data_in_instr,
    input wire [31:0] addr_in_instr,
    input wire [31:0] pc_if,
    input wire port_en_1_instr,
    output wire [31:0] instruction_if,
    output wire [31:0] output_instruction_ram
  );

  wire clka;
  assign clka = clk;

  wire ena;
  assign ena = 1'b1;

  wire wea;
  assign wea = wr_en_instr;

  wire [13:0] addra;
  assign addra = (wr_en_instr == 1'b1) ? addr_in_instr[15:2] : pc_if[15:2];

  wire [31:0] dina;
  assign dina = data_in_instr;

  wire [31:0] douta;
  assign instruction_if = douta;

  blk_mem_gen_0 blk_mem_gen_instruction (
    .clka(clka),    // input wire clka
    .ena(ena),      // input wire ena
    .wea(wea),      // input wire [0 : 0] wea
    .addra(addra),  // input wire [13 : 0] addra
    .dina(dina),    // input wire [31 : 0] dina
    .douta(douta)  // output wire [31 : 0] douta
  );

  assign output_instruction_ram = douta;

endmodule


module data_ram
  (
    input wire clk,
    input wire rstn,
    input wire alu_ready,
    input wire memwrite_mem,
    input wire memwrite_io,
    input wire [31:0] write_data_memory_mem,
    input wire [31:0] write_data_io,
    input wire [31:0] alu_result_mem,
    input wire [31:0] addr_io,
    input wire memread_mem,
    input wire memread_io,
    input wire core_start,
    input wire core_end,
    input wire [31:0] dout_dram,
    input wire ready_dram,
    output wire [31:0] data_from_memory_mem,
    output wire [31:0] data_from_memory_io,
    output wire data_ready_mem,
    output wire data_ready_io,
    output wire [26:0] addr_dram,
    output wire [31:0] din_dram,
    output wire rw_dram,
    output wire valid_dram
  );

  wire memwrite;
  wire [31:0] din;
  wire [31:0] addr;
  wire memread;
  wire [31:0] dout;
  wire data_ready;
  wire valid;

  assign memwrite =                 (core_start && ~core_end) ? memwrite_mem : memwrite_io;
  assign din =                      (core_start && ~core_end) ? write_data_memory_mem : write_data_io;
  assign addr =                     (core_start && ~core_end) ? alu_result_mem : addr_io;
  assign memread =                  (core_start && ~core_end) ? memread_mem : memread_io;
  assign data_from_memory_mem =     (core_start && ~core_end) ? dout : 32'b0;
  assign data_from_memory_io =      (core_start && ~core_end) ? 32'b0 : dout;
  assign data_ready_mem =           (core_start && ~core_end) ? data_ready : 1'b1;
  assign data_ready_io =            (core_start && ~core_end) ? 1'b1 : data_ready;

  wire clka;
  wire ena;
  wire wea;
  wire [11:0] addra;
  wire [31:0] dina;
  wire [31:0] douta;
  wire [31:0] doutb;
  wire [31:0] doutbb;
  reg  [31:0] doutb_reg;
  wire [31:0] dout_dummy;
  wire valida;
  wire readya;
  wire readyb;
  wire ready_dummy;


  always @(posedge clk) begin
    if (~rstn) begin
      doutb_reg <= 32'b0;
    end else begin
      if (readyb) begin
        doutb_reg <= doutb;
      end
    end
  end

  assign doutbb = (readyb) ? doutb : doutb_reg;



  /********************************************
  assign doutb = dout_dram;
  assign readyb = ready_dram;
  /********************************************/
  assign doutb = dout_dummy;
  assign readyb = ready_dummy;
  /********************************************/

  assign clka = clk;
  assign ena = 1'b1;
  assign wea =           (addr < 32'd16384) ? memwrite : 1'b0;
  assign rw_dram =       (addr < 32'd16384) ? 1'b0 : memwrite;
  assign addra =         (addr < 32'd16384) ? addr[13:2] : 12'b0;
  assign addr_dram =     (addr < 32'd16384) ? 27'b0 : addr[27:1];
  assign dina =          (addr < 32'd16384) ? din : 32'b0;
  assign din_dram =      (addr < 32'd16384) ? 32'b0 : din;
  assign dout =          (addr < 32'd16384) ? douta : doutbb;
  assign valida =        (addr < 32'd16384) ? valid : 1'b0;
  assign valid_dram =    (addr < 32'd16384) ? 1'b0 : valid;
  assign ready =         (addr < 32'd16384) ? readya : readyb;
  
  blk_mem_gen_io_data blk_mem_gen_io_data
    (
      .clka(clka),    // input wire clka
      .ena(ena),      // input wire ena
      .wea(wea),      // input wire [0 : 0] wea
      .addra(addra),  // input wire [11 : 0] addra
      .dina(dina),    // input wire [31 : 0] dina
      .douta(douta)  // output wire [31 : 0] douta
    );

  
  wire [2:0] state1;
  reg [1:0] state2;

  always @(posedge clk) begin
    if (~rstn) begin
      state2 <= 2'd0;
    end else begin
      if (ready && alu_ready) begin
        state2 <= 2'd0;
      end else if (ready && ~alu_ready && state2 == 2'd1) begin
        state2 <= 2'd2;
      end else if (alu_ready && state2 == 2'd2) begin
        state2 <= 2'd0;
      end else if ((memread || memwrite) && state2 == 2'd0) begin
        state2 <= 2'd1;
      end
    end
  end

  assign state1 = 
    (ready) ? 3'd3 :
    (~memread && ~memwrite) ? 3'd0 :
    (state2 == 2'd2) ? 3'd4 :
    (state2 == 1'd1) ? 3'd2 : 3'd1;

  assign valid = (state1 == 3'd1 || state1 == 3'd2 || state1 == 3'd3);
  assign data_ready = (state1 == 3'd0 || state1 == 3'd3 || state1 == 3'd4);


  reg [1:0] readya_reg;
  assign readya = 
    (~memread && ~memwrite) ? 1'b0 :  
    (wea) ? 1'b1 : 
    (readya_reg == 2'b10) ? 1'b1 : 1'b0;

  always @(posedge clk) begin
    if (~rstn) begin
      readya_reg <= 2'b00;
    end else begin
      if (state1 == 3'd1) begin
        readya_reg <= 2'b01;
      end else if (readya_reg == 2'b01) begin
        readya_reg <= 2'b10;
      end else if (readya_reg == 2'b10) begin
        readya_reg <= 2'b00;
      end 
    end
  end



  /****************************************************************/

  wire clk_dummy;
  wire en_dummy;
  wire we_dummy;
  wire [16:0] addr_dummy;
  wire [31:0] din_dummy;
  wire [31:0] doutc;
  assign dout_dummy = ready_dummy ? doutc : 32'b0 ;
  
  assign clk_dummy = clk;
  assign en_dummy = 1'b1;
  assign we_dummy = rw_dram;
  assign addr_dummy = addr_dram[17:1];
  assign din_dummy = din_dram;


  reg [7:0] ready_dummy_reg;
  assign ready_dummy = 
    (~memread && ~memwrite) ? 1'b0 :  
    (ready_dummy_reg == 8'd2) ? 1'b1 : 1'b0;

  always @(posedge clk) begin
    if (~rstn) begin
      ready_dummy_reg <= 8'd0;
    end else begin
      if (state1 == 3'd0 || state1 == 3'd3 || state1 == 3'd4) begin
        ready_dummy_reg <= 8'd0;
      end else if (state1 == 3'd1) begin
        ready_dummy_reg <= 8'd1;
      end else if (ready_dummy_reg == 8'd2) begin
        ready_dummy_reg <= 8'd0;
      end else if (ready_dummy_reg != 8'd0) begin
        ready_dummy_reg <= ready_dummy_reg + 8'd1;
      end 
    end
  end


  blk_mem_gen_1 blk_mem_dummy 
    (
      .clka(clk_dummy),    // input wire clka
      .ena(en_dummy),      // input wire ena
      .wea(we_dummy),      // input wire [0 : 0] wea
      .addra(addr_dummy),  // input wire [16 : 0] addra
      .dina(din_dummy),    // input wire [31 : 0] dina
      .douta(doutc)  // output wire [31 : 0] douta
    );

  /******************************************************************/

endmodule

