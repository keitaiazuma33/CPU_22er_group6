module registerfile
  (
    input wire [4:0] read_reg1,
    input wire [4:0] read_reg2,
    input wire [4:0] write_reg,
    input wire [31:0] write_data,
    input wire regwrite,
    input wire clk,
    input wire rstn,
    output wire [31:0] read_data1,
    output wire [31:0] read_data2,
    output wire [31:0] output_register
  );
  reg [31:0] registers [31:0];

  assign read_data1 = registers[read_reg1];
  assign read_data2 = registers[read_reg2];
  assign output_register = registers[6];
  
  integer i;
  always @(posedge clk) begin
    if (~rstn) begin
      for (i = 0; i < 32; i=i+1) begin
        registers[i] <= 32'b0;
      end
    end else begin
      if (regwrite) begin
        registers[write_reg] <= write_data;
      end
    end
  end
endmodule