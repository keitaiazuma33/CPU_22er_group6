module core
  (
    input wire rxd,
    input wire clk,
    input wire mem_clk,
    input wire rstn,
    input wire [31:0] dout_dram,
    input wire ready_dram,
    output wire txd,
    output wire [31:0] outputs,
    output wire [26:0] addr_dram,
    output wire [31:0] din_dram,
    output wire rw_dram,
    output wire valid_dram
  );


wire alusrc_id;
wire alusrc_ex;
wire alu_ready;
wire branch_alu;
wire branch_id;
wire branch_ex;
wire branchtrue;
wire core_end;
wire core_start;
wire data_ready_mem;
wire data_ready_io;
wire if_flush;
wire ifidwrite;
wire memread_id;
wire memread_ex;
wire memread_mem;
wire memread_io;
wire memtoreg_id;
wire memtoreg_ex;
wire memtoreg_mem;
wire memtoreg_wb;
wire memwrite_id;
wire memwrite_ex;
wire memwrite_mem;
wire memwrite_io;
wire nop_insert;
wire pcwrite;
wire port_en_1_instr;
wire rs1_fpu_id;
wire rs2_fpu_id;
wire rs1_fpu_ex;
wire rs2_fpu_ex;
wire wr_en_instr;

wire [1:0] alu_op_id;
wire [1:0] alu_op_ex;
wire [1:0] forward_a;
wire [1:0] forward_b;
wire [1:0] regwrite_id;
wire [1:0] regwrite_ex;
wire [1:0] regwrite_mem;
wire [1:0] regwrite_wb;

wire [2:0] funct3_id;
wire [2:0] funct3_ex;

wire [4:0] alu_control;
wire [4:0] rd_id;
wire [4:0] rd_ex;
wire [4:0] rd_mem;
wire [4:0] rd_wb;
wire [4:0] rs1_id;
wire [4:0] rs1_ex;
wire [4:0] rs2_id;
wire [4:0] rs2_ex;

wire [6:0] funct7_id;
wire [6:0] funct7_ex;
wire [6:0] opcode_id;
wire [6:0] opcode_ex;

wire [10:0] controlunit_out;
wire [10:0] control_signal;

wire [31:0] addr_io;
wire [31:0] addr_in_instr;
wire [31:0] alu_result_ex;
wire [31:0] alu_result_mem;
wire [31:0] alu_result_wb;
wire [31:0] data_from_memory_mem;
wire [31:0] data_from_memory_wb;
wire [31:0] data_from_memory_io;
wire [31:0] data_in_instr;
wire [31:0] imm_id;
wire [31:0] imm_ex;
wire [31:0] instruction_if;
wire [31:0] instruction_id;
wire [31:0] output_register;
wire [31:0] output_instruction_ram;
wire [31:0] output_io;
wire [31:0] pc_if;
wire [31:0] pc_id;
wire [31:0] pc_ex;
wire [31:0] read_data1_id;
wire [31:0] read_data1_ex;
wire [31:0] read_data2_id;
wire [31:0] read_data2_ex;
wire [31:0] src_a;
wire [31:0] src_b;
wire [31:0] write_data_io;
wire [31:0] write_data_memory_ex;
wire [31:0] write_data_memory_mem;
wire [31:0] write_data_register_wb;

assign outputs = {16'b0,core_start,core_end,pc_ex[13:2],alu_ready,data_ready_mem};
assign port_en_1_instr = 1'b1;

// multiplexers etc. out of module
assign write_data_register_wb = (memtoreg_wb == 1'b1) ? data_from_memory_wb : alu_result_wb;
assign branchtrue = branch_ex & branch_alu;
assign src_b = (alusrc_ex == 1'b1) ? imm_ex : write_data_memory_ex;
assign write_data_memory_ex = (forward_b == 2'b00) ? read_data2_ex :
                              (forward_b == 2'b10) ? alu_result_mem : write_data_register_wb;
assign src_a = (forward_a == 2'b00) ? read_data1_ex :
               (forward_a == 2'b10) ? alu_result_mem : write_data_register_wb;
assign control_signal = (nop_insert == 1'b1) ? 11'b0 : controlunit_out;

io _io
  (
    .rxd(rxd),
    .txd(txd),
    .clk(clk),
    .rstn(rstn),
    .data_ready_io(data_ready_io),
    .data_from_memory_io(data_from_memory_io),
    .core_end(core_end),
    .wr_en_instr(wr_en_instr),
    .data_in_instr(data_in_instr),
    .addr_in_instr(addr_in_instr),
    .addr_io(addr_io),
    .write_data_io(write_data_io),
    .memread_io(memread_io),
    .memwrite_io(memwrite_io),
    .core_start(core_start),
    .output_io(output_io)
  );

alu _alu
  (
    .clk(clk),
    .mem_clk(mem_clk),
    .rstn(rstn),
    .pc_ex(pc_ex),
    .src_a(src_a),
    .src_b(src_b),
    .alu_control(alu_control),
    .data_ready_mem(data_ready_mem),
    .branch_alu(branch_alu),
    .alu_result_ex(alu_result_ex),
    .alu_ready(alu_ready)
  );

alu_controller _alu_controller
  (
    .funct3_ex(funct3_ex),
    .funct7_ex(funct7_ex),
    .alu_op_ex(alu_op_ex),
    .opcode_ex(opcode_ex),
    .alu_control(alu_control)
  );

controlunit _controlunit
  (
    .opcode_id(opcode_id),
    .funct7_id(funct7_id),
    .controlunit_out(controlunit_out)
  );

controldecoder _controldecoder
  (
    .control_signal(control_signal),
    .branch_id(branch_id),
    .memread_id(memread_id),
    .memtoreg_id(memtoreg_id),
    .alu_op_id(alu_op_id),
    .memwrite_id(memwrite_id),
    .alusrc_id(alusrc_id),
    .regwrite_id(regwrite_id),
    .rs1_fpu_id(rs1_fpu_id),
    .rs2_fpu_id(rs2_fpu_id)
 );

decoder _decoder
  (
    .clk(clk),
    .rstn(rstn),
    .instruction_id(instruction_id),
    .opcode_id(opcode_id),
    .rs1_id(rs1_id),
    .rs2_id(rs2_id),
    .rd_id(rd_id),
    .funct3_id(funct3_id),
    .funct7_id(funct7_id),
    .core_end(core_end)
  );

instruction_ram  _instruction_ram
  (
    .clk(clk),
    .rstn(rstn),
    .wr_en_instr(wr_en_instr),
    .data_in_instr(data_in_instr),
    .addr_in_instr(addr_in_instr),
    .pc_if(pc_if),
    .port_en_1_instr(port_en_1_instr),
    .instruction_if(instruction_if),
    .output_instruction_ram(output_instruction_ram)
  );

data_ram _data_ram
  (
    .clk(clk),
    .rstn(rstn),
    .alu_ready(alu_ready),
    .memwrite_mem(memwrite_mem),
    .memwrite_io(memwrite_io),
    .write_data_memory_mem(write_data_memory_mem),
    .write_data_io(write_data_io),
    .alu_result_mem(alu_result_mem),
    .addr_io(addr_io),
    .memread_mem(memread_mem),
    .memread_io(memread_io),
    .core_start(core_start),
    .core_end(core_end),
    .dout_dram(dout_dram),
    .ready_dram(ready_dram),
    .data_from_memory_mem(data_from_memory_mem),
    .data_from_memory_io(data_from_memory_io),
    .data_ready_mem(data_ready_mem),
    .data_ready_io(data_ready_io),
    .addr_dram(addr_dram),
    .din_dram(din_dram),
    .rw_dram(rw_dram),
    .valid_dram(valid_dram)
  );

programcounter _programcounter
  (
    .clk(clk),
    .rstn(rstn),
    .opcode_ex(opcode_ex),
    .src_a(src_a),
    .imm_ex(imm_ex),
    .branchtrue(branchtrue),
    .pc_ex(pc_ex),
    .pcwrite(pcwrite),
    .core_start(core_start),
    .data_ready_mem(data_ready_mem),
    .alu_ready(alu_ready),
    .core_end(core_end),
    .pc_if(pc_if)
  );

immediate_generator _immediate_generator
  (
    .instruction_id(instruction_id),
    .imm_id(imm_id)
  );

ifid _ifid
  (
    .clk(clk),
    .rstn(rstn),
    .pc_if(pc_if),
    .instruction_if(instruction_if),
    .if_flush(if_flush),
    .ifidwrite(ifidwrite),
    .data_ready_mem(data_ready_mem),
    .alu_ready(alu_ready),
    .pc_id(pc_id),
    .instruction_id(instruction_id)
  );

idex _idex
  (
    .clk(clk),
    .rstn(rstn),
    .branch_id(branch_id),
    .memread_id(memread_id),
    .memtoreg_id(memtoreg_id),
    .alu_op_id(alu_op_id),
    .memwrite_id(memwrite_id),
    .alusrc_id(alusrc_id),
    .regwrite_id(regwrite_id),
    .pc_id(pc_id),
    .read_data1_id(read_data1_id),
    .read_data2_id(read_data2_id),
    .imm_id(imm_id),
    .rs1_id(rs1_id),
    .rs2_id(rs2_id),
    .funct3_id(funct3_id),
    .funct7_id(funct7_id),
    .rd_id(rd_id),
    .data_ready_mem(data_ready_mem),
    .alu_ready(alu_ready),
    .opcode_id(opcode_id),
    .rs1_fpu_id(rs1_fpu_id),
    .rs2_fpu_id(rs2_fpu_id),
    .rs1_fpu_ex(rs1_fpu_ex),
    .rs2_fpu_ex(rs2_fpu_ex),
    .opcode_ex(opcode_ex),
    .branch_ex(branch_ex),
    .memread_ex(memread_ex),
    .memtoreg_ex(memtoreg_ex),
    .alu_op_ex(alu_op_ex),
    .memwrite_ex(memwrite_ex),
    .alusrc_ex(alusrc_ex),
    .regwrite_ex(regwrite_ex),
    .pc_ex(pc_ex),
    .read_data1_ex(read_data1_ex),
    .read_data2_ex(read_data2_ex),
    .imm_ex(imm_ex),
    .rs1_ex(rs1_ex),
    .rs2_ex(rs2_ex),
    .funct3_ex(funct3_ex),
    .funct7_ex(funct7_ex),
    .rd_ex(rd_ex)
  );

exmem _exmem
  (
    .clk(clk),
    .rstn(rstn),
    .regwrite_ex(regwrite_ex),
    .memtoreg_ex(memtoreg_ex),
    .memwrite_ex(memwrite_ex),
    .memread_ex(memread_ex),
    .alu_result_ex(alu_result_ex),
    .write_data_memory_ex(write_data_memory_ex),
    .rd_ex(rd_ex),
    .data_ready_mem(data_ready_mem),
    .alu_ready(alu_ready),
    .regwrite_mem(regwrite_mem),
    .memtoreg_mem(memtoreg_mem),
    .memwrite_mem(memwrite_mem),
    .memread_mem(memread_mem),
    .alu_result_mem(alu_result_mem),
    .write_data_memory_mem(write_data_memory_mem),
    .rd_mem(rd_mem)
  );

memwb _memwb
  (
    .clk(clk),
    .rstn(rstn),
    .regwrite_mem(regwrite_mem),
    .memtoreg_mem(memtoreg_mem),
    .data_from_memory_mem(data_from_memory_mem),
    .alu_result_mem(alu_result_mem),
    .rd_mem(rd_mem),
    .data_ready_mem(data_ready_mem),
    .alu_ready(alu_ready),
    .regwrite_wb(regwrite_wb),
    .memtoreg_wb(memtoreg_wb),
    .data_from_memory_wb(data_from_memory_wb),
    .alu_result_wb(alu_result_wb),
    .rd_wb(rd_wb)
  );

forwarding_unit _forwarding_unit
  (
    .rd_wb(rd_wb),
    .rd_mem(rd_mem),
    .rs1_ex(rs1_ex),
    .rs2_ex(rs2_ex),
    .regwrite_wb(regwrite_wb),
    .regwrite_mem(regwrite_mem),
    .rs1_fpu_ex(rs1_fpu_ex),
    .rs2_fpu_ex(rs2_fpu_ex),
    .forward_a(forward_a),
    .forward_b(forward_b)
  );

hazard_detection_unit _hazard_detection_unit 
  (
    .rd_ex(rd_ex),
    .rs1_id(rs1_id),
    .rs2_id(rs2_id),
    .branchtrue(branchtrue),
    .memread_ex(memread_ex),
    .pcwrite(pcwrite),
    .if_flush(if_flush),
    .ifidwrite(ifidwrite),
    .nop_insert(nop_insert)
  );

registerfile _registerfile
  (
    .rs1_id(rs1_id),
    .rs2_id(rs2_id),
    .rd_wb(rd_wb),
    .write_data_register_wb(write_data_register_wb),
    .regwrite_wb(regwrite_wb),
    .rs1_fpu_id(rs1_fpu_id),
    .rs2_fpu_id(rs2_fpu_id),
    .data_ready_mem(data_ready_mem),
    .alu_ready(alu_ready),
    .clk(clk),
    .rstn(rstn),
    .read_data1_id(read_data1_id),
    .read_data2_id(read_data2_id),
    .output_register(output_register)
  );


endmodule

