module programcounter
  (
    input wire clk,
    input wire rstn,
    input wire [31:0] imm_ex,
    input wire branchtrue,
    input wire [31:0] pc_ex,
    input wire pcwrite,
    input wire core_start,
    input wire data_ready_mem,
    input wire core_end,
    output wire [31:0] pc_if
  );
  reg [31:0] pc;
  
  wire [31:0] next_pc;
  wire [31:0] pc_branch;
  assign pc_branch = $signed(pc_ex) + $signed(imm_ex << 1);
  assign next_pc = branchtrue ? pc_branch : pc + 32'd4;
  assign pc_if = pc;
  always @(posedge clk) begin
    if (~rstn || ~core_start || core_end) begin
      pc <= 32'b0;
    end else if (pcwrite || ~data_ready_mem) begin
      pc <= pc;
    end else begin
      pc <= next_pc;
    end
  end

endmodule

module immediate_generator
  (
    input wire [31:0] instruction_id,
    output wire [31:0] imm_id
  );
  wire [6:0] opcode;
  wire [11:0] imm_short;
  
  assign opcode = instruction_id[6:0];
  assign imm_short = (opcode == 7'b1100011) ? {instruction_id[31],instruction_id[7],instruction_id[30:25],instruction_id[11:8]} :
                     (opcode == 7'b0100011) ? {instruction_id[31:25],instruction_id[11:7]} :
                     (opcode == 7'b0000011 || opcode == 7'b0010011) ? {instruction_id[31:20]} : 12'b0;
  assign imm_id = (imm_short[11] == 1'b1) ? {20'hfffff, imm_short} : {20'b0, imm_short};
  
endmodule

module ifid
  (
    input wire clk,
    input wire rstn,
    input wire [31:0] pc_if,
    input wire [31:0] instruction_if,
    input wire if_flush,
    input wire ifidwrite,
    input wire data_ready_mem,
    output wire [31:0] pc_id,
    output wire [31:0] instruction_id
  );
  reg [31:0] pc_1;
  reg [31:0] pc_2;
  reg [31:0] pc_3;
  reg [31:0] instruction;
  reg [1:0] record_flush;
  assign pc_id = pc_3;
  assign instruction_id = instruction;
  
  always @(posedge clk) begin
    if (~rstn) begin
      pc_1 <= 32'b0;
      pc_2 <= 32'b0;
      pc_3 <= 32'b0;
      instruction <= 32'b0;
      record_flush <= 2'b0;
    end else if (ifidwrite || ~data_ready_mem) begin
      pc_1 <= pc_1;
      pc_2 <= pc_2;
      pc_3 <= pc_3;
      instruction <= instruction;
      record_flush <= record_flush;
    end else if (if_flush) begin
      pc_1 <= pc_if;
      pc_2 <= pc_1;
      pc_3 <= pc_2;
      instruction <= 32'b0;
      record_flush <= 2'b10;
    end else if (record_flush == 2'b10) begin
      pc_1 <= pc_if;
      pc_2 <= pc_1;
      pc_3 <= pc_2;
      instruction <= 32'b0;
      record_flush <= 2'b01;
    end else if (record_flush == 2'b01) begin
      pc_1 <= pc_if;
      pc_2 <= pc_1;
      pc_3 <= pc_2;
      instruction <= 32'b0;
      record_flush <= 2'b0;
    end else begin
      pc_1 <= pc_if;
      pc_2 <= pc_1;
      pc_3 <= pc_2;
      instruction <= instruction_if;
    end
  end

endmodule

module idex
  (
    input wire clk,
    input wire rstn,
    input wire branch_id,
    input wire memread_id,
    input wire memtoreg_id,
    input wire [1:0] alu_op_id,
    input wire memwrite_id,
    input wire alusrc_id,
    input wire regwrite_id,
    input wire [31:0] pc_id,
    input wire [31:0] read_data1_id,
    input wire [31:0] read_data2_id,
    input wire [31:0] imm_id,
    input wire [4:0] rs1_id,
    input wire [4:0] rs2_id,
    input wire [2:0] funct3_id,
    input wire [6:0] funct7_id,
    input wire [4:0] rd_id,
    input wire data_ready_mem,
    input wire [6:0] opcode_id;
    output wire [6:0] opcode_ex;
    output wire branch_ex,
    output wire memread_ex,
    output wire memtoreg_ex,
    output wire [1:0] alu_op_ex,
    output wire memwrite_ex,
    output wire alusrc_ex,
    output wire regwrite_ex,
    output wire [31:0] pc_ex,
    output wire [31:0] read_data1_ex,
    output wire [31:0] read_data2_ex,
    output wire [31:0] imm_ex,
    output wire [4:0] rs1_ex,
    output wire [4:0] rs2_ex,
    output wire [2:0] funct3_ex,
    output wire [6:0] funct7_ex,
    output wire [4:0] rd_ex
  );
  reg branch;
  reg memread;
  reg memtoreg;
  reg [1:0] alu_op;
  reg memwrite;
  reg alusrc;
  reg regwrite;
  reg [31:0] pc;
  reg [31:0] read_data1;
  reg [31:0] read_data2;
  reg [31:0] imm;
  reg [4:0] rs1;
  reg [4:0] rs2;
  reg [2:0] funct3;
  reg [6:0] funct7;
  reg [4:0] rd;
  reg [6:0] opcode;

  assign branch_ex = branch;
  assign memread_ex = memread;
  assign memtoreg_ex = memtoreg;
  assign alu_op_ex = alu_op;
  assign memwrite_ex = memwrite;
  assign alusrc_ex = alusrc;
  assign regwrite_ex = regwrite;
  assign pc_ex = pc;
  assign read_data1_ex = read_data1;
  assign read_data2_ex = read_data2;
  assign imm_ex = imm;
  assign rs1_ex = rs1;
  assign rs2_ex = rs2;
  assign funct3_ex = funct3;
  assign funct7_ex = funct7;
  assign rd_ex = rd;
  assign opcode_ex = opcode;

  always @(posedge clk) begin
    if (~rstn) begin
      branch <= 1'b0;
      memread <= 1'b0;
      memtoreg <= 1'b0;
      alu_op <= 2'b0;
      memwrite <= 1'b0;
      alusrc <= 1'b0;
      regwrite <= 1'b0;
      pc <= 32'b0;
      read_data1 <= 32'b0;
      read_data2 <= 32'b0;
      imm <= 32'b0;
      rs1 <= 5'b0;
      rs2 <= 5'b0;
      funct3 <= 3'b0;
      funct7 <= 7'b0;
      rd <= 5'b0;
      opcode <= 7'b0;
    end else if (data_ready_mem) begin
      branch <= branch_id;
      memread <= memread_id;
      memtoreg <= memtoreg_id;
      alu_op <= alu_op_id;
      memwrite <= memwrite_id;
      alusrc <= alusrc_id;
      regwrite <= regwrite_id;
      pc <= pc_id;
      read_data1 <= read_data1_id;
      read_data2 <= read_data2_id;
      imm <= imm_id;
      rs1 <= rs1_id;
      rs2 <= rs2_id;
      funct3 <= funct3_id;
      funct7 <= funct7_id;
      rd <= rd_id;
      opcode <= opcode_id;
    end
  end

endmodule


module exmem
  (
    input wire clk,
    input wire rstn,
    input wire regwrite_ex,
    input wire memtoreg_ex,
    input wire memwrite_ex,
    input wire memread_ex,
    input wire [31:0] alu_result_ex,
    input wire [31:0] write_data_memory_ex,
    input wire [4:0] rd_ex,
    input wire data_ready_mem,
    output wire regwrite_mem,
    output wire memtoreg_mem,
    output wire memwrite_mem,
    output wire memread_mem,
    output wire [31:0] alu_result_mem,
    output wire [31:0] write_data_memory_mem,
    output wire [4:0] rd_mem

  );
  reg regwrite;
  reg memtoreg;
  reg memwrite;
  reg memread;
  reg [31:0] alu_result;
  reg [31:0] write_data_memory;
  reg [4:0] rd;
  assign regwrite_mem = regwrite;
  assign memtoreg_mem = memtoreg;
  assign memwrite_mem = memwrite;
  assign memread_mem = memread;
  assign alu_result_mem = alu_result;
  assign write_data_memory_mem = write_data_memory;
  assign rd_mem = rd;
  
  always @(posedge clk) begin
    if (~rstn) begin
      regwrite <= 1'b0;
      memtoreg <= 1'b0;
      memwrite <= 1'b0;
      memread <= 1'b0;
      alu_result <= 32'b0;
      write_data_memory <= 32'b0;
      rd <= 5'b0;
    end else if (data_ready_mem) begin
      regwrite <= regwrite_ex;
      memtoreg <= memtoreg_ex;
      memwrite <= memwrite_ex;
      memread <= memread_ex;
      alu_result <= alu_result_ex;
      write_data_memory <= write_data_memory_ex;
      rd <= rd_ex;
    end
  end

endmodule


module memwb
  (
    input wire clk,
    input wire rstn,
    input wire regwrite_mem,
    input wire memtoreg_mem,
    input wire [31:0] data_from_memory_mem,
    input wire [31:0] alu_result_mem,
    input wire [4:0] rd_mem,
    input wire data_ready_mem,
    output wire regwrite_wb,
    output wire memtoreg_wb,
    output wire [31:0] data_from_memory_wb,
    output wire [31:0] alu_result_wb,
    output wire [4:0] rd_wb
  );
  reg regwrite;
  reg memtoreg;
  reg [31:0] data_from_memory;
  reg [31:0] alu_result;
  reg [4:0] rd;

  assign regwrite_wb = regwrite;
  assign memtoreg_wb = memtoreg;
  assign data_from_memory_wb = data_from_memory;
  assign alu_result_wb = alu_result;
  assign rd_wb = rd;

  always @(posedge clk) begin
    if (~rstn) begin
      regwrite <= 1'b0;
      memtoreg <= 1'b0;
      data_from_memory <= 32'b0;
      alu_result <= 32'b0;
      rd <= 5'b0;
    end else if (data_ready_mem) begin
      regwrite <= regwrite_mem;
      memtoreg <= memtoreg_mem;
      data_from_memory <= data_from_memory_mem;
      alu_result <= alu_result_mem;
      rd <= rd_mem;
    end
  end

endmodule


module forwarding_unit
  (
    input wire [4:0] rd_wb,
    input wire [4:0] rd_mem,
    input wire [4:0] rs1_ex,
    input wire [4:0] rs2_ex,
    input wire regwrite_wb,
    input wire regwrite_mem,
    output wire [1:0] forward_a,
    output wire [1:0] forward_b
  );
  assign forward_a = (regwrite_mem == 1'b1 && rd_mem != 5'b0 && rs1_ex == rd_mem) ? 2'b10 :
                     (regwrite_wb == 1'b1 && rd_wb != 5'b0 && rd_wb == rs1_ex) ? 2'b01 : 2'b00;
  assign forward_b = (regwrite_mem == 1'b1 && rd_mem != 5'b0 && rs2_ex == rd_mem) ? 2'b10 :
                     (regwrite_wb == 1'b1 && rd_wb != 5'b0 && rd_wb == rs2_ex) ? 2'b01 : 2'b00;
endmodule


module hazard_detection_unit 
  (
    input wire [4:0] rd_ex,
    input wire [4:0] rs1_id,
    input wire [4:0] rs2_id,
    input wire branchtrue,
    input wire memread_ex,
    output wire pcwrite,
    output wire if_flush,
    output wire ifidwrite,
    output wire nop_insert
  );
  assign nop_insert = ((memread_ex == 1'b1 && (rs1_id == rd_ex || rs2_id == rd_ex)) || branchtrue == 1'b1) ? 1'b1 : 1'b0;
  assign pcwrite = (memread_ex == 1'b1 && (rs1_id == rd_ex || rs2_id == rd_ex)) ? 1'b1 : 1'b0;
  assign ifidwrite = (memread_ex == 1'b1 && (rs1_id == rd_ex || rs2_id == rd_ex)) ? 1'b1 : 1'b0;
  assign if_flush = (branchtrue == 1'b1) ? 1'b1 : 1'b0;
endmodule