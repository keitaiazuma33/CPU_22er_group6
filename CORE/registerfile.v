module registerfile
  (
    input wire [4:0] rs1_id,
    input wire [4:0] rs2_id,
    input wire [4:0] rd_wb,
    input wire [31:0] write_data_register_wb,
    input wire [1:0] regwrite_wb,
    input wire rs1_fpu_id,
    input wire rs2_fpu_id,
    input wire data_ready_mem,
    input wire alu_ready,
    input wire clk,
    input wire rstn,
    output wire [31:0] read_data1_id,
    output wire [31:0] read_data2_id,
    output wire [31:0] output_register
  );
  reg [31:0] registers [31:0];
  reg [31:0] fpu_registers [31:0];

  assign read_data1_id = 
    (rs1_fpu_id== 1'b0) ? 
      ((rs1_id == rd_wb && regwrite_wb == 2'b01) ? write_data_register_wb : registers[rs1_id]) : 
      ((rs1_id == rd_wb && regwrite_wb == 2'b10) ? write_data_register_wb : fpu_registers[rs1_id]);
  assign read_data2_id = 
    (rs2_fpu_id == 1'b0) ? 
      ((rs2_id == rd_wb && regwrite_wb == 2'b01) ? write_data_register_wb : registers[rs2_id]) : 
      ((rs2_id == rd_wb && regwrite_wb == 2'b10) ? write_data_register_wb : fpu_registers[rs2_id]);
                                           
  assign output_register = registers[6];
  
  integer i;
  always @(posedge clk) begin 
    if (~rstn) begin
      for (i = 0; i < 32; i=i+1) begin
        registers[i] <= 32'b0;
        fpu_registers[i] <= 32'b0;
      end
    end else begin
      if (regwrite_wb == 2'b01) begin
        registers[rd_wb] <= write_data_register_wb;
      end else if (regwrite_wb == 2'b10) begin
        fpu_registers[rd_wb] <= write_data_register_wb;
      end
    end
  end
endmodule