module instruction_memory
  (
    input wire [1023:0] i_memory_input,
    input wire clk,
    input wire rstn,
    input wire [31:0] read_address,
    output wire [31:0] instruction
  );
  reg [1023:0] i_memory;
  assign instruction = i_memory[(read_address << 3) +: 32];
  always @(posedge clk) begin
    i_memory <= i_memory_input;
  end
endmodule

module data_memory
  (
    input wire clk,
    input wire rstn,
    input wire [31:0] address,
    input wire [31:0] write_data,
    input wire memwrite,
    input wire memread,
    output wire [31:0] read_data
  );
  reg [1023:0] d_memory;

  assign read_data = d_memory[(address << 3) +: 32];

  always @(posedge clk) begin
    if (~rstn) begin
      d_memory <= 1024'b0;
    end else if (memwrite) begin
      d_memory[(address << 3) +: 32] <= write_data;
    end
  end

endmodule