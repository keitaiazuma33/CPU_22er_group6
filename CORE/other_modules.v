module programcounter
  (
    input wire clk,
    input wire rstn,
    input wire [31:0] immediate,
    input wire branch,
    input wire zero,
    output wire [31:0] programcounter_output
  );
  reg [31:0] pc;
  
  wire [31:0] next_pc;
  assign next_pc = (branch & zero) ? $signed(pc) + $signed(immediate << 1) : pc + 32'd4;
  assign programcounter_output = pc;
  always @(posedge clk) begin
    if (~rstn) begin
      pc <= 32'b0;
    end else begin
      pc <= next_pc;
    end
  end

endmodule

module immediate_generator
  (
    input wire [31:0] instruction,
    output wire [31:0] immediate
  );
  wire [6:0] opcode;
  wire [11:0] imm_short;
  
  assign opcode = instruction[6:0];
  assign imm_short = (opcode == 7'b1100011) ? {instruction[31],instruction[7],instruction[30:25],instruction[11:8]} :
                     (opcode == 7'b0100011) ? {instruction[31:25],instruction[11:7]} :
                     (opcode == 7'b0000011 || opcode == 7'b0010011) ? {instruction[31:20]} : 12'b0;
  assign immediate = (imm_short[11] == 1'b1) ? {20'hfffff, imm_short} : {20'b0, imm_short};
  
endmodule