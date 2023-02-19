
module alu
  (
    input wire clk,
    input wire mem_clk,
    input wire rstn,
    input wire [31:0] pc_ex,
    input wire [31:0] src_a,
    input wire [31:0] src_b,
    input wire [4:0] alu_control,
    input wire data_ready_mem,
    output wire branch_alu,
    output wire [31:0] alu_result_ex,
    output wire alu_ready
  );
  wire [31:0] fpu_result;
  wire fpu_ready;

  assign alu_ready = fpu_ready;
  assign branch_alu = 
    (alu_control == 5'b01000) ?
      ((src_a == src_b) ? 1'b1 : 1'b0) :
    (alu_control == 5'b01001) ?
      ((src_a < src_b) ? 1'b0 : 1'b1) :
    (alu_control == 5'b00111) ? 1'b1 : 1'b0;
  assign alu_result_ex = 
    (alu_control == 5'b00000) ? src_a << src_b :
    (alu_control == 5'b00001) ? src_a >> src_b :
    (alu_control == 5'b00010) ? $signed(src_a) + $signed(src_b) :
    (alu_control == 5'b00110) ? $signed(src_a) - $signed(src_b) : 
    (alu_control == 5'b00111) ? pc_ex + 32'd4 :
    (alu_control[4])          ? fpu_result : 
    32'b0;

  fpu _fpu
    (
      .clk(clk),
      .mem_clk(mem_clk),
      .rstn(rstn),
      .alu_control(alu_control),
      .data_ready_mem(data_ready_mem),
      .src_a(src_a),
      .src_b(src_b),
      .fpu_result(fpu_result),
      .fpu_ready(fpu_ready)
    );
                   
endmodule


module fpu
  (
    input wire clk,
    input wire mem_clk,
    input wire rstn,
    input wire [4:0] alu_control,
    input wire data_ready_mem,
    input wire [31:0] src_a,
    input wire [31:0] src_b,
    output wire [31:0] fpu_result,
    output wire fpu_ready
  );

  wire [9:0] opcode_wire;
  wire out_valid;
  wire [31:0] x1_wire;
  wire [31:0] x2_wire;
  assign x1_wire = src_a;
  assign x2_wire = src_b;
  wire ovf;
  wire unf;
  wire [31:0] y;

  reg [9:0] opcode;
  reg [31:0] x1;
  reg [31:0] x2;
  
  wire [2:0] status1;
  reg  [1:0] status2;
  
  assign fpu_result = y;
  assign fpu_ready = (status1 == 3'd0 || status1 == 3'd3 || status1 == 3'd4);
  assign status1 = 
    (~alu_control[4]) ? 3'b000 :
    (out_valid) ? 3'b011 :
    (status2 == 2'b10) ? 3'b100 :
    (status2 == 2'b01) ? 3'b010 : 3'b001;

  assign opcode_wire = 
    (status1 != 3'd1) ? 10'b0 :
    (alu_control == 5'b10000) ? 10'b0000000001 :
    (alu_control == 5'b10001) ? 10'b0000000010 :
    (alu_control == 5'b10010) ? 10'b0000000100 :
    (alu_control == 5'b10011) ? 10'b0000001000 :
    (alu_control == 5'b11011) ? 10'b0000010000 :
    (alu_control == 5'b10110) ? 10'b0000100000 :
    (alu_control == 5'b10111) ? 10'b0001000000 : 
    (alu_control == 5'b10101) ? 10'b0010000000 :
    (alu_control == 5'b11001) ? 10'b0100000000 :
    (alu_control == 5'b11000) ? 10'b1000000000 :
    10'b0;

  fpu_top _fpu_top
    (
      .sys_clk(clk),
      .rstn(rstn),
      .opcode(opcode),
      .x1(x1),
      .x2(x2),
      .y(y),
      .ovf(ovf),
      .unf(unf),
      .out_valid(out_valid)
    );

  always @(posedge clk) begin
    if (~rstn) begin
      status2 <= 2'b0;
    end else begin
      if (status2 == 2'b00 && alu_control[4]) begin
        status2 <= 2'b01;
      end else if (status2 == 2'b01 && out_valid && ~data_ready_mem) begin
        status2 <= 2'b10;
      end else if (status2 == 2'b01 && out_valid && data_ready_mem) begin
        status2 <= 2'b00;
      end else if (status2 == 2'b10 && data_ready_mem) begin
        status2 <= 2'b00;
      end
    end
  end

  always @(posedge clk) begin
    if (~rstn) begin
      opcode <= 7'b0;
      x1 <= 32'b0;
      x2 <= 32'b0;
    end else begin
      opcode <= opcode_wire;
      x1 <= x1_wire;
      x2 <= x2_wire;
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
      (opcode_ex == 7'b0110011) ?
       ((funct3_ex == 3'b000) ?
          ((funct7_ex == 7'b0000000) ? 5'd2 : 5'd6) :
        (funct3_ex == 3'b001) ? 5'd0 :
        (funct3_ex == 3'b101) ? 5'd1 : 5'd3) :
      (opcode_ex == 7'b0010011) ?
       ((funct3_ex == 3'b000) ? 5'd2 :
        (funct3_ex == 3'b001) ? 5'd0 :
        (funct3_ex == 3'b101) ? 5'd1 : 5'd3) :
      (opcode_ex == 7'b1100011) ?
       ((funct3_ex == 3'b000) ? 5'd8 :
        (funct3_ex == 3'b101) ? 5'd9 : 5'd3) :
      (opcode_ex == 7'b1100111) ? 5'd7 :
      (opcode_ex == 7'b1101111) ? 5'd7 : 5'd3
    );
  
endmodule
