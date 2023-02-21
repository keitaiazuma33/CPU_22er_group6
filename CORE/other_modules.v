module programcounter
  (
    input wire clk,
    input wire rstn,
    input wire [6:0] opcode_ex,
    input wire [31:0] src_a,
    input wire [31:0] imm_ex,
    input wire branchtrue,
    input wire [31:0] pc_ex,
    input wire pcwrite,
    input wire core_start,
    input wire data_ready_mem,
    input wire alu_ready,
    input wire core_end,
    output wire [31:0] pc_if
  );
  reg [31:0] pc;
  
  wire [31:0] next_pc;
  wire [31:0] pc_branch;
  assign pc_branch = 
    (opcode_ex == 7'b1100111) ? 
      ($signed(src_a) + $signed(imm_ex)) :
      ($signed(pc_ex) + $signed(imm_ex));
  assign next_pc = branchtrue ? pc_branch : pc + 32'd4;
  assign pc_if = pc;
  always @(posedge clk) begin
    if (~rstn || ~core_start || core_end) begin
      pc <= 32'b0;
    end else if (pcwrite || ~data_ready_mem || ~alu_ready) begin
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
  
  assign opcode = instruction_id[6:0];
  assign imm_id = 
    (opcode == 7'b1100011) ? 
      ((instruction_id[31]) ? 
        {19'h7ffff,instruction_id[31],instruction_id[7],instruction_id[30:25],instruction_id[11:8],1'b0} :
        {19'b0,instruction_id[31],instruction_id[7],instruction_id[30:25],instruction_id[11:8],1'b0}) :
    (opcode == 7'b0100011 || opcode == 7'b0100111) ? 
      ((instruction_id[31]) ?
        {20'hfffff,instruction_id[31:25],instruction_id[11:7]} :
        {20'b0,instruction_id[31:25],instruction_id[11:7]}) :
    (opcode == 7'b0000011 || opcode == 7'b0010011 || opcode == 7'b0000111 || opcode == 7'b1100111) ? 
      ((instruction_id[31]) ?
        {20'hfffff,instruction_id[31:20]} : 
        {20'b0,instruction_id[31:20]}) :
    (opcode == 7'b1101111) ?
      ((instruction_id[31]) ?
        {11'h7ff,instruction_id[31],instruction_id[19:12],instruction_id[20],instruction_id[30:21],1'b0} :
        {11'b0,instruction_id[31],instruction_id[19:12],instruction_id[20],instruction_id[30:21],1'b0}) : 
    (opcode == 7'b0110111) ?
      {instruction_id[31:12],12'b0} : 32'b0;
      
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
    input wire alu_ready,
    output wire [31:0] pc_id,
    output wire [31:0] instruction_id
  );
  reg [31:0] pc_1;
  reg [31:0] pc_2;
  reg [31:0] pc_3;
  reg [31:0] instruction;
  reg [1:0] record_flush;
  reg [2:0] stall_state;
  reg [31:0] next1;
  reg [31:0] next2;
  assign pc_id = pc_3;
  assign instruction_id = instruction;
  
  always @(posedge clk) begin
    if (~rstn) begin
      pc_1 <= 32'b0;
      pc_2 <= 32'b0;
      pc_3 <= 32'b0;
      instruction <= 32'b0;
      record_flush <= 2'b0;
      stall_state <= 2'b0;
      next1 <= 32'd0;
      next2 <= 32'd0;
    end else if (ifidwrite || ~data_ready_mem || ~alu_ready) begin
      if          (stall_state == 3'd0) begin stall_state <= 3'd1; next1 <= instruction_if;
      end else if (stall_state == 3'd1) begin stall_state <= 3'd3; next2 <= instruction_if;
      end else if (stall_state == 3'd2) begin stall_state <= 3'd1;
      end else if (stall_state == 3'd3) begin stall_state <= 3'd3;
      end else if (stall_state == 3'd4) begin stall_state <= 3'd3; next2 <= instruction_if;
      end 
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
      if          (stall_state == 3'd0) begin stall_state <= 3'd0; instruction <= instruction_if;
      end else if (stall_state == 3'd1) begin stall_state <= 3'd2; instruction <= next1;          next1 <= instruction_if; 
      end else if (stall_state == 3'd2) begin stall_state <= 3'd0; instruction <= next1;          next1 <= 32'd0;
      end else if (stall_state == 3'd3) begin stall_state <= 3'd4; instruction <= next1;          next1 <= next2;           next2 <= 32'd0;
      end else if (stall_state == 3'd4) begin stall_state <= 3'd0; instruction <= next1;          next1 <= 32'd0;
      end 
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
    input wire [1:0] regwrite_id,
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
    input wire alu_ready,
    input wire [6:0] opcode_id,
    input wire rs1_fpu_id,
    input wire rs2_fpu_id,
    output wire rs1_fpu_ex,
    output wire rs2_fpu_ex,
    output wire [6:0] opcode_ex,
    output wire branch_ex,
    output wire memread_ex,
    output wire memtoreg_ex,
    output wire [1:0] alu_op_ex,
    output wire memwrite_ex,
    output wire alusrc_ex,
    output wire [1:0] regwrite_ex,
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
  reg [1:0] regwrite;
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
  reg rs1_fpu;
  reg rs2_fpu;

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
  assign rs1_fpu_ex = rs1_fpu;
  assign rs2_fpu_ex = rs2_fpu;

  always @(posedge clk) begin
    if (~rstn) begin
      branch <= 1'b0;
      memread <= 1'b0;
      memtoreg <= 1'b0;
      alu_op <= 2'b0;
      memwrite <= 1'b0;
      alusrc <= 1'b0;
      regwrite <= 2'b0;
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
      rs1_fpu <= 1'b0;
      rs2_fpu <= 1'b0;
    end else if (data_ready_mem && alu_ready) begin
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
      rs1_fpu <= rs1_fpu_id;
      rs2_fpu <= rs2_fpu_id;
    end
  end

endmodule


module exmem
  (
    input wire clk,
    input wire rstn,
    input wire [1:0] regwrite_ex,
    input wire memtoreg_ex,
    input wire memwrite_ex,
    input wire memread_ex,
    input wire [31:0] alu_result_ex,
    input wire [31:0] write_data_memory_ex,
    input wire [4:0] rd_ex,
    input wire data_ready_mem,
    input wire alu_ready,
    output wire [1:0] regwrite_mem,
    output wire memtoreg_mem,
    output wire memwrite_mem,
    output wire memread_mem,
    output wire [31:0] alu_result_mem,
    output wire [31:0] write_data_memory_mem,
    output wire [4:0] rd_mem

  );
  reg [1:0] regwrite;
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
      regwrite <= 2'b0;
      memtoreg <= 1'b0;
      memwrite <= 1'b0;
      memread <= 1'b0;
      alu_result <= 32'b0;
      write_data_memory <= 32'b0;
      rd <= 5'b0;
    end else if (data_ready_mem && alu_ready) begin
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
    input wire [1:0] regwrite_mem,
    input wire memtoreg_mem,
    input wire [31:0] data_from_memory_mem,
    input wire [31:0] alu_result_mem,
    input wire [4:0] rd_mem,
    input wire data_ready_mem,
    input wire alu_ready,
    output wire [1:0] regwrite_wb,
    output wire memtoreg_wb,
    output wire [31:0] data_from_memory_wb,
    output wire [31:0] alu_result_wb,
    output wire [4:0] rd_wb
  );
  reg [1:0] regwrite;
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
      regwrite <= 2'b0;
      memtoreg <= 1'b0;
      data_from_memory <= 32'b0;
      alu_result <= 32'b0;
      rd <= 5'b0;
    end else if (data_ready_mem && alu_ready) begin
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
    input wire [1:0] regwrite_wb,
    input wire [1:0] regwrite_mem,
    input wire rs1_fpu_ex,
    input wire rs2_fpu_ex,
    output wire [1:0] forward_a,
    output wire [1:0] forward_b
  );
  assign forward_a = (((regwrite_mem == 2'b01 && rs1_fpu_ex == 1'b0 && rd_mem != 5'b0) || (regwrite_mem == 2'b10 && rs1_fpu_ex == 1'b1 && rd_mem != 5'd31))  && rs1_ex == rd_mem) ? 2'b10 :
                     (((regwrite_wb == 2'b01 && rs1_fpu_ex == 1'b0 && rd_wb != 5'b0) || (regwrite_wb == 2'b10 && rs1_fpu_ex == 1'b1 && rd_wb != 5'd31)) && rd_wb == rs1_ex) ? 2'b01 : 2'b00;
  assign forward_b = (((regwrite_mem == 2'b01 && rs2_fpu_ex == 1'b0 && rd_mem != 5'b0) || (regwrite_mem == 2'b10 && rs2_fpu_ex == 1'b1 && rd_mem != 5'd31)) && rs2_ex == rd_mem) ? 2'b10 :
                     (((regwrite_wb == 2'b01 && rs2_fpu_ex == 1'b0 && rd_wb != 5'b0) || (regwrite_wb == 2'b10 && rs2_fpu_ex == 1'b1 && rd_wb != 5'd31)) && rd_wb == rs2_ex) ? 2'b01 : 2'b00;
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