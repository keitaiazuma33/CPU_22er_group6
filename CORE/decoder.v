module decoder
  (
    input wire clk,
    input wire rstn,
    input wire [31:0] instruction_id,
    output wire [6:0] opcode_id,
    output wire [4:0] rs1_id,
    output wire [4:0] rs2_id,
    output wire [4:0] rd_id,
    output wire [2:0] funct3_id,
    output wire [6:0] funct7_id,
    output wire core_end
  );
  reg core_end_reg;

  assign opcode_id = instruction_id[6:0];
  assign rd_id = instruction_id[11:7];
  assign funct3_id = instruction_id[14:12];
  assign rs1_id = instruction_id[19:15];
  assign rs2_id = instruction_id[24:20];
  assign funct7_id = instruction_id[31:25];
  assign core_end = core_end_reg;

  always @(posedge clk) begin
    if (~rstn) begin
      core_end_reg <= 1'b0;
    end else if (instruction_id == 32'hffffff00) begin
      core_end_reg <= 1'b1;
    end
  end

endmodule
