

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
    output wire [31:0] data_from_memory_mem,
    output wire [31:0] data_from_memory_io,
    output wire data_ready_mem,
    output wire data_ready_io
  );

  wire clka;
  wire ena;
  wire wea;
  wire [13:0] addra;
  wire [31:0] dina;
  wire [31:0] douta;
  
  assign clka = clk;
  assign ena = 1'b1;
  assign wea = memwrite_mem || memwrite_io;
  assign addra = (core_start && ~core_end) ? alu_result_mem[15:2] : addr_io[15:2];
  assign dina = (memwrite_mem) ? write_data_memory_mem : ((memwrite_io) ? write_data_io : 32'b0);
  assign data_from_memory_mem = douta;
  assign data_from_memory_io = douta;

  wire valid;
  assign valid = memwrite_mem || memwrite_io || memread_mem || memread_io;

  reg data_requesting_from_mem;
  reg data_requesting_from_io;

  assign data_ready_mem = ~data_requesting_from_mem;
  assign data_ready_io = ~data_requesting_from_io;

  wire ready;
  reg [1:0] ready_reg;
  assign ready = (ready_reg == 2'b11) ? 1'b1 : 1'b0;


  blk_mem_gen_1 blk_mem_gen_data (
    .clka(clka),    // input wire clka
    .ena(ena),      // input wire ena
    .wea(wea),      // input wire [0 : 0] wea
    .addra(addra),  // input wire [13 : 0] addra
    .dina(dina),    // input wire [31 : 0] dina
    .douta(douta)  // output wire [31 : 0] douta
  );

  always @(posedge clk) begin
    if (~rstn) begin
      data_requesting_from_io <= 1'b0;
      data_requesting_from_mem <= 1'b0;
    end else begin
      if (memread_mem) begin
        data_requesting_from_mem <= 1'b1;
      end else if (memread_io) begin
        data_requesting_from_io <= 1'b1;
      end else if (ready) begin
        data_requesting_from_mem <= 1'b0;
        data_requesting_from_io <= 1'b0;
      end
    end
  end

  always @(posedge clk) begin
    if (~rstn) begin
      ready_reg <= 2'b11;
    end else begin
      if (memread_mem || memread_io) begin
        ready_reg <= 2'b00;
      end else if (ready_reg != 2'b11) begin
        ready_reg <= ready_reg + 2'b01;
      end
    end
  end

endmodule

