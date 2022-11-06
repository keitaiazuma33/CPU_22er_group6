
module alu
  (
    input wire [31:0] src_a,
    input wire [31:0] src_b,
    input wire [3:0] alu_control,
    output wire zero,
    output wire [31:0] alu_result_ex
  );
  assign zero = (alu_result_ex == 31'b0) ? 1'b1 : 1'b0;
  assign alu_result_ex = (alu_control == 4'd2) ? $signed(src_a) + $signed(src_b) :
                  (alu_control == 4'd6) ? $signed(src_a) - $signed(src_b) :
                  (alu_control == 4'd0) ? src_a & src_b : 
                  src_a | src_b;
endmodule

module alu_controller
  (
    input wire [2:0] funct3_ex,
    input wire [6:0] funct7_ex,
    input wire [1:0] alu_op_ex,
    output wire [3:0] alu_control
  );
  
  assign alu_control = (alu_op_ex == 2'd0) ? 4'd2 :
                       (alu_op_ex == 2'd1) ? 4'd6 :
                       (
                        (funct3_ex == 3'd7) ? 4'd0 :
                        (funct3_ex == 3'd6) ? 4'd1 :
                        (
                          (funct7_ex == 7'b0100000) ? 4'd6 : 4'd2
                        )
                       );
  
endmodule
