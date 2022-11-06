module decoder
  (
    input wire [31:0] instruction_id,
    output wire [6:0] opcode,
    output wire [4:0] rs1_id,
    output wire [4:0] rs2_id,
    output wire [4:0] rd_id,
    output wire [2:0] funct3_id,
    output wire [6:0] funct7_id
  );
  assign opcode = instruction_id[6:0];
  assign rd_id = instruction_id[11:7];
  assign funct3_id = instruction_id[14:12];
  assign rs1_id = instruction_id[19:15];
  assign rs2_id = instruction_id[24:20];
  assign funct7_id = instruction_id[31:25];

endmodule
