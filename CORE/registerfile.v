module registerfile
  (
    input wire [4:0] rs1_id,
    input wire [4:0] rs2_id,
    input wire [4:0] rd_wb,
    input wire [31:0] write_data_register_wb,
    input wire regwrite_wb,
    input wire clk,
    input wire rstn,
    output wire [31:0] read_data1_id,
    output wire [31:0] read_data2_id,
    output wire [31:0] output_register
  );
  reg [31:0] registers [31:0];

  assign read_data1_id = (rs1_id == rd_wb && regwrite_wb == 1) ? write_data_register_wb : registers[rs1_id];
  assign read_data2_id = (rs2_id == rd_wb && regwrite_wb == 1) ? write_data_register_wb : registers[rs2_id];
  assign output_register = registers[6];
  
  integer i;
  always @(posedge clk) begin
    if (~rstn) begin
      for (i = 0; i < 32; i=i+1) begin
        registers[i] <= 32'b0;
      end
    end else begin
      if (regwrite_wb) begin
        registers[rd_wb] <= write_data_register_wb;
      end
    end
  end
endmodule