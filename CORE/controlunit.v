module controlunit
  (
    input wire [6:0] instruction_opcode,
    output wire branch,
    output wire memread,
    output wire memtoreg,
    output wire [1:0] alu_op,
    output wire memwrite,
    output wire alusrc,
    output wire regwrite
  );
  wire [7:0] outputs;
  assign alusrc = outputs[7];
  assign memtoreg = outputs[6];
  assign regwrite = outputs[5];
  assign memread = outputs[4];
  assign memwrite = outputs[3];
  assign branch = outputs[2];
  assign alu_op = outputs[1:0];
  assign outputs = 
  (instruction_opcode == 7'b0010011) ? 8'b10100010 :
  (instruction_opcode == 7'b0110011) ? 8'b00100010 :
  (instruction_opcode == 7'b0000011) ? 8'b11110000 :
  (instruction_opcode == 7'b0100011) ? 8'b10001000 :
  (instruction_opcode == 7'b1100011) ? 8'b00000101 : 8'b0;
  


endmodule