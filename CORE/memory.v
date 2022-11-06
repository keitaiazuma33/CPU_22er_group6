module instruction_memory
  (
    input wire [1023:0] i_memory_input,
    input wire clk,
    input wire rstn,
    input wire [31:0] pc_if,
    output wire [31:0] instruction_if
  );
  reg [1023:0] i_memory;
  assign instruction_if = i_memory[(pc_if << 3) +: 32];
  always @(posedge clk) begin
    i_memory <= i_memory_input;
  end
endmodule

module data_memory
  (
    input wire clk,
    input wire rstn,
    input wire [31:0] alu_result_mem,
    input wire [31:0] write_data_memory_mem,
    input wire memwrite_mem,
    input wire memread_mem,
    output wire [31:0] data_from_memory_mem
  );
  reg [1023:0] d_memory;

  assign data_from_memory_mem = d_memory[(alu_result_mem << 3) +: 32];

  always @(posedge clk) begin
    if (~rstn) begin
      d_memory <= 1024'b0;
    end else if (memwrite_mem) begin
      d_memory[(alu_result_mem << 3) +: 32] <= write_data_memory_mem;
    end
  end

endmodule