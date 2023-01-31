//コアが触る想定で書き換えを行いました（cpu_req / cpu_res など）

// data structures for CPU<->Cache controller interface
// CPU request (CPU->cache controller)
typedef struct {
    bit [26:0] addr; //32-bit request addr
    bit [31:0] data; //32-bit request data (used when write)
    bit [0:0]  rw;   //request type : 0 = read, 1 = write
    bit [0:0]  valid; //request is valid
}cpu_req_type;

// Cache result (cache controller->cpu)
typedef struct {
    bit [31:0] data; //32-bit data
    bit [0:0]  ready; //result is ready
}cpu_result_type;


module dram_test (
    master_fifo.master fifo,
    input logic sys_clk,
    input logic mem_clk,
    input cpu_req_type cpu_to_cache_request,
    output cpu_result_type cpu_res,
    output logic led
);
    //fifoへの標準的な信号の接続
    assign fifo.clk = sys_clk;
    assign fifo.rsp_rdy = 1'b1;
    
    //キャッシュシステムにつなぐ配線
    //詳細な構造体の記述は下位モジュール：L1_cache参照
    mem_data_type mem_data;
    L2_req_type mem_req;
    logic rst;
    logic [2:0] state;
    
    initial begin
        rst <= 1'b1; #30;
        rst <= 1'b0;
    end
    
    L1_cache cache_system_instance
    (
        //input
        .sys_clk(sys_clk),                        //キャッシュシステム
        .mem_clk(mem_clk),
        .RST(rst),
        .cpu_to_cache_request(cpu_to_cache_request),   //addr[26:0],data[31:0],rw[0:0],valid[0:0]
        .mem_data(mem_data),              //memory response (memory->cache) data[CACHE_width:0], ready[0:0]
        //output
        .mem_req(mem_req),                //memory request (cache->memory) addr[26:0],data[CACHE_width:0],rw[0:0],valid[0:0]
        .cpu_res(cpu_res),                //cache result (cache->CPU) data[31:0], ready[0:0]
        .state(state)
    );
    
    //キャッシュシステム -> master FIFO へリクエストをつなげる
    assign fifo.req.cmd  = ~mem_req.rw;
    assign fifo.req.addr =  mem_req.addr;
    assign fifo.req.data =  mem_req.data;
    assign fifo.req_en   =  mem_req.valid;
    //master FIFOにDRAMから来たデータをキャッシュシステムに渡す
    assign mem_data.data  = fifo.rsp.data;
    assign mem_data.ready = fifo.rsp_en;
    
    //テスト用
    logic first_data_identity = 1'b0;
    logic second_data_identity = 1'b0;
    assign led = first_data_identity && second_data_identity;

    logic [1:0] rsp_state = '0;
    always_ff @ (posedge sys_clk) begin
        case (rsp_state)
            2'b00: begin
                if (cpu_res.ready) begin
                    first_data_identity  <= (cpu_res.data == 32'b00110011001100110011001100110011);
                    rsp_state <= 2'b01;
                end
            end
            2'b01: begin
                if (cpu_res.ready) begin
                    second_data_identity <= (cpu_res.data == 32'b00011100011100011100011100011100);
                    rsp_state <= 2'b10;
                end
            end
            2'b10: begin
                if (cpu_res.ready) begin
                    second_data_identity <= (cpu_res.data == 32'b00001111000011110000111100001111);
                    rsp_state <= 2'b11;
                end
            end
        endcase
    end
endmodule
