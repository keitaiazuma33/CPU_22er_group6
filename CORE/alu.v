
module alu
  (
    input wire clk,
    input wire rstn,
    input wire [31:0] src_a,
    input wire [31:0] src_b,
    input wire [4:0] alu_control,
    output wire branch_alu,
    output wire [31:0] alu_result_ex
  );
  wire [31:0] fpu_result;
  wire fpu_ready;
  
  wire alu_ready;

  assign alu_ready = fpu_ready;
  assign branch_alu = (alu_result_ex == 32'b0) ? 1'b1 : 1'b0;
  assign alu_result_ex = 
    //(alu_control == 5'b00000) ? src_a & src_b :
    //(alu_control == 5'b00001) ? src_a | src_b :
    (alu_control == 5'b00010) ? $signed(src_a) + $signed(src_b) :
    (alu_control == 5'b00110) ? $signed(src_a) - $signed(src_b) : 
    (alu_control[4])          ? fpu_result : 
    32'b0;

  fpu _fpu
    (
      .clk(clk),
      .rstn(rstn),
      .alu_control(alu_control),
      .src_a(src_a),
      .src_b(src_b),
      .fpu_result(fpu_result),
      .fpu_ready(fpu_ready)
    );
                   
endmodule


module fpu
  (
    input wire clk,
    input wire rstn,
    input wire [4:0] alu_control,
    input wire [31:0] src_a,
    input wire [31:0] src_b,
    output wire [31:0] fpu_result,
    output wire fpu_ready
  );

  reg fpu_ready_reg;
  reg [3:0] remaining_cycles;

  always @(posedge clk) begin
    if (~rstn) begin
      fpu_ready_reg <= 1'b1;
    end else if (alu_control[4] == 1'b0) begin
      fpu_ready_reg <= 1'b1;
    end
  end

endmodule


module alu_controller
  (
    input wire [2:0] funct3_ex,
    input wire [6:0] funct7_ex,
    input wire [1:0] alu_op_ex,
    input wire [6:0] opcode_ex,
    output wire [4:0] alu_control
  );
  
  assign alu_control = 
    (alu_op_ex == 2'd0) ? 5'd2 :
    (alu_op_ex == 2'd1) ? 5'd6 :
    (alu_op_ex == 2'd3) ? funct7_ex[6:2] + 5'b10000 :
    (
     (funct3_ex == 3'd7) ? 5'd0 :
     (funct3_ex == 3'd6) ? 5'd1 :
     (
       (funct7_ex == 7'b0100000) ? 5'd6 : 5'd2
     )
    );
  
endmodule
