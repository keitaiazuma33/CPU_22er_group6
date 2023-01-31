module controlunit
  (
    input wire [6:0] opcode_id,
    output wire [7:0] controlunit_out
  );
  assign controlunit_out = 
  (opcode_id == 7'b0000000) ? 8'b00000000 : 
  (opcode_id == 7'b0010011) ? 8'b10100010 :
  (opcode_id == 7'b0110011) ? 8'b00100010 :
  (opcode_id == 7'b0000011) ? 8'b11110000 :
  (opcode_id == 7'b0100011) ? 8'b10001000 :
  (opcode_id == 7'b1100011) ? 8'b00000101 : 
  (opcode_id == 7'b1010011) ? 8'b00100011 : 8'b0;
  


endmodule

module controldecoder
  (
    input wire [7:0] control_signal,
    output wire branch_id,
    output wire memread_id,
    output wire memtoreg_id,
    output wire [1:0] alu_op_id,
    output wire memwrite_id,
    output wire alusrc_id,
    output wire regwrite_id
  );
  assign alusrc_id = control_signal[7];
  assign memtoreg_id = control_signal[6];
  assign regwrite_id = control_signal[5];
  assign memread_id = control_signal[4];
  assign memwrite_id = control_signal[3];
  assign branch_id = control_signal[2];
  assign alu_op_id = control_signal[1:0];

endmodule