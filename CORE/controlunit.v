module controlunit
  (
    input wire [6:0] opcode_id,
    input wire [6:0] funct7_id,
    output wire [10:0] controlunit_out
  );
  assign controlunit_out = 
  (opcode_id == 7'b0000000) ? 11'b00000000000 :             //nop
  (opcode_id == 7'b0010011) ? 11'b10010001000 :             //addi
  (opcode_id == 7'b0110011) ? 11'b00010001000 :             //add, sub
  (opcode_id == 7'b0000011) ? 11'b11011000000 :             //lw
  (opcode_id == 7'b0100011) ? 11'b10000100000 :             //sw
  (opcode_id == 7'b1100011) ? 11'b00000011000 :             //beq
  (opcode_id == 7'b0000111) ? 11'b11101000000 :             //flw
  (opcode_id == 7'b0100111) ? 11'b10000100001 :             //fsw
  (opcode_id == 7'b1100111) ? 11'b00010011000 :             //j
  (opcode_id == 7'b1101111) ? 11'b00010011000 :             //j
  (opcode_id == 7'b0110111) ? 11'b10010001000 :             //lui
  (opcode_id == 7'b0111111) ? 11'b10010001000 :             //lli
  (opcode_id == 7'b1010011) ? (
    (funct7_id == 7'b0011000) ? 11'b00010001110 :
    (funct7_id == 7'b0011100) ? 11'b00100001100 : 11'b00100001111) :             //fpu
  11'b0;
  


endmodule

module controldecoder
  (
    input wire [10:0] control_signal,
    output wire branch_id,
    output wire memread_id,
    output wire memtoreg_id,
    output wire [1:0] alu_op_id,
    output wire memwrite_id,
    output wire alusrc_id,
    output wire [1:0]regwrite_id,
    output wire rs1_fpu_id,
    output wire rs2_fpu_id
  );
  assign alusrc_id = control_signal[10];
  assign memtoreg_id = control_signal[9];
  assign regwrite_id = control_signal[8:7];
  assign memread_id = control_signal[6];
  assign memwrite_id = control_signal[5];
  assign branch_id = control_signal[4];
  assign alu_op_id = control_signal[3:2];
  assign rs1_fpu_id = control_signal[1];
  assign rs2_fpu_id = control_signal[0];

endmodule