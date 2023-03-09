module dram_test (
    master_fifo.master fifo,
    input logic sys_clk,
    input logic rstn,
    input cpu_req_type cpu_to_cache_request,
    output cpu_result_type cpu_res
);
    //fifoへの標準的な信号の接続
    assign fifo.clk = sys_clk;
    assign fifo.rsp_rdy = 1'b1;
    
    //キャッシュシステムにつなぐ配線
    //詳細な構造体の記述は下位モジュール：L1_cache参照
    mem_data_type mem_data;     //cache DRAM間で必要（外部に見せる必要なし）
    L2_req_type mem_req;        //cache DRAM間で必要（外部に見せる必要なし）
    logic [2:0] state;
    
    L1_cache cache_system_instance
    (
        //input
        .sys_clk(sys_clk),                        //キャッシュシステム
        .rstn(rstn),
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
endmodule
