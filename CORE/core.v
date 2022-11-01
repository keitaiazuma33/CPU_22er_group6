module core(
    input wire [1023:0] i_memory_input,
    input wire clk,
    input wire rstn,
    output wire [31:0] output_register
);

wire alusrc;
wire branch;
wire memread;
wire memtoreg;
wire memwrite;
wire regwrite;
wire zero;
wire [1:0] alu_op;
wire [2:0] funct3;
wire [3:0] alu_control;
wire [4:0] rd;
wire [4:0] rs1;
wire [4:0] rs2;
wire [6:0] funct7;
wire [6:0] opcode;
wire [31:0] immediate;
wire [31:0] instruction;
wire [31:0] programcounter_output;
wire [31:0] read_data;
wire [31:0] read_data2;
wire [31:0] result;
wire [31:0] src_a;
wire [31:0] src_b;
wire [31:0] write_data;

assign write_data = (memtoreg == 1'b1) ? read_data : result;
assign src_b = (alusrc == 1'b1) ? immediate : read_data2;

decoder _decoder
  (
    .instruction(instruction),
    .opcode(opcode),
    .rs1(rs1),
    .rs2(rs2),
    .rd(rd),
    .funct3(funct3),
    .funct7(funct7)
  );

alu _alu
  (
    .src_a(src_a),
    .src_b(src_b),
    .alu_control(alu_control),
    .zero(zero),
    .result(result)
  );

alu_controller _alu_controller
  (
    .instruction(instruction),
    .alu_op(alu_op),
    .alu_control(alu_control)
  );

controlunit _controlunit
  (
    .instruction_opcode(opcode),
    .branch(branch),
    .memread(memread),
    .memtoreg(memtoreg),
    .alu_op(alu_op),
    .memwrite(memwrite),
    .alusrc(alusrc),
    .regwrite(regwrite)
  );

programcounter _programcounter
  (
    .clk(clk),
    .rstn(rstn),
    .immediate(immediate),
    .branch(branch),
    .zero(zero),
    .programcounter_output(programcounter_output)
  );

immediate_generator _immediate_generator
  (
    .instruction(instruction),
    .immediate(immediate)
  );

instruction_memory _instruction_memory
  (
    .i_memory_input(i_memory_input),
    .clk(clk),
    .rstn(rstn),
    .read_address(programcounter_output),
    .instruction(instruction)
  );

data_memory _data_memory
  (
    .clk(clk),
    .rstn(rstn),
    .address(result),
    .write_data(read_data2),
    .memwrite(memwrite),
    .memread(memread),
    .read_data(read_data)
  );

registerfile _registerfile
  (
    .read_reg1(rs1),
    .read_reg2(rs2),
    .write_reg(rd),
    .write_data(write_data),
    .regwrite(regwrite),
    .clk(clk),
    .rstn(rstn),
    .read_data1(src_a),
    .read_data2(read_data2),
    .output_register(output_register)
  );




endmodule