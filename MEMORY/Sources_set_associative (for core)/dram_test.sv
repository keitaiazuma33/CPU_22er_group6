//実質テストベンチ

module dram_test (
    master_fifo.master fifo,
    input logic sys_clk,
    input logic mem_clk,
    input logic rst,
    input cpu_req_type cpu_to_cache_request,
    output cpu_result_type cpu_res,
    output logic led
);
    //fifoへの標準的な信号の接続
    assign fifo.clk = sys_clk;
    assign fifo.rsp_rdy = 1'b1;
    
    //キャッシュシステムにつなぐ配線
    //詳細な構造体の記述は下位モジュール：L1_cache参照
    // today : cpu_req_type cpu_to_cache_request;
    mem_data_type mem_data;     //cache DRAM間で必要（外部に見せる必要なし）
    L2_req_type mem_req;        //cache DRAM間で必要（外部に見せる必要なし）
    // today : cpu_result_type cpu_res;
    // today : logic rst;
    logic [2:0] state;
    
    /* // today
    initial begin
        rst <= 1'b1; #30;
        rst <= 1'b0;
    end
    */
    
    L1_cache cache_system_instance
    (
        //input
        .sys_clk(sys_clk),                        //キャッシュシステム
        .mem_clk(mem_clk),
        .rst(rst),
        .cpu_to_cache_request(cpu_to_cache_request),   //addr[26:0],data[31:0],rw[0:0],valid[0:0]
        .mem_data(mem_data),              //memory response (memory->cache) data[CACHE_width:0], ready[0:0]
        //output
        .mem_req(mem_req),                //memory request (cache->memory) addr[26:0],data[CACHE_width:0],rw[0:0],valid[0:0]
        .cpu_res(cpu_res),                //cache result (cache->CPU) data[31:0], ready[0:0]
        .state(state)
    );
    
    /* // today
    logic [3:0] tb_state = 4'b0000;
    
    assign cpu_to_cache_request.addr =
        (tb_state == 4'b0001) ? 27'b010101010101010101010101010 :
        (tb_state == 4'b0010) ? 27'b010101010101010101010101010 : 27'b0;
    assign cpu_to_cache_request.data =
        (tb_state == 4'b0001) ? 32'b00110011001100110011001100110011 :
        (tb_state == 4'b0010) ? 32'b00001111000011110000111100001111 : 32'b0;
    assign cpu_to_cache_request.rw =
        (tb_state == 4'b0001) ? 1'b1 :
        (tb_state == 4'b0010) ? 1'b0 : 1'b0;
    assign cpu_to_cache_request.valid =
        (tb_state == 4'b0001) ? 1'b1 :
        (tb_state == 4'b0010) ? 1'b0 : 1'b0;
    always_ff @ (posedge sys_clk) begin
        case (tb_state)
            4'b0000: begin
                tb_state <= 4'b0001;
            end
            4'b0001: begin
                //
                //cpu_to_cache_request.addr = 27'b010101010101010101010101010;
                //cpu_to_cache_request.data = 32'b00110011001100110011001100110011;
                //cpu_to_cache_request.rw = 1'b1;
                //cpu_to_cache_request.valid = 1'b1;
                if (cpu_res.ready) begin
                    tb_state <= 4'b0010;
                end
            end
            4'b0010: begin
                //
                //cpu_to_cache_request.addr = 27'b010101010101010101010101010;
                //cpu_to_cache_request.data = 32'b00001111000011110000111100001111;
                //cpu_to_cache_request.rw = 1'b0;
                //cpu_to_cache_request.valid = 1'b0;
                if (cpu_res.ready) begin
                    tb_state <= 4'b0010;
                end
            end
            4'b0011: begin
                //
                cpu_to_cache_request.addr = 27'b010101010101010101010101011;
                cpu_to_cache_request.data = 32'b00011100011100011100011100011100;
                cpu_to_cache_request.rw = 1'b1;
                cpu_to_cache_request.valid = 1'b1;
                if (cpu_res.ready) begin
                    tb_state <= 4'b0100;
                end
            end
            //
            4'b0100: begin
                cpu_to_cache_request.addr = 27'b010101010101010101010101011;
                cpu_to_cache_request.data = 32'b00001111000011110000111100001111;
                cpu_to_cache_request.rw = 1'b0;
                cpu_to_cache_request.valid = 1'b1;
                if (cpu_res.ready) begin
                    tb_state <= 4'b0101;
                end
            end
            4'b0101: begin
                cpu_to_cache_request.addr = 27'b010101010101010101010101001;
                cpu_to_cache_request.data = 32'b00001111000011110000111100001111;
                cpu_to_cache_request.rw = 1'b1;
                cpu_to_cache_request.valid = 1'b1;
                if (cpu_res.ready) begin
                    tb_state <= 4'b0110;
                end
            end
            4'b0110: begin
                cpu_to_cache_request.addr = 27'b010101010101010101010101000;
                cpu_to_cache_request.data = 32'b00000111110000011111000001111100;
                cpu_to_cache_request.rw = 1'b1;
                cpu_to_cache_request.valid = 1'b1;
                if (cpu_res.ready) begin
                    tb_state <= 4'b0111;
                end
            end
            4'b0111: begin
                cpu_to_cache_request.addr = 27'b001100010101010101010101011;
                cpu_to_cache_request.data = 32'habcdef00;
                cpu_to_cache_request.rw = 1'b1;
                cpu_to_cache_request.valid = 1'b1;
                if (cpu_res.ready) begin
                    tb_state <= 4'b1000;
                end
            end
            4'b1000: begin
                cpu_to_cache_request.addr = 27'b001100010101010101010101011;
                cpu_to_cache_request.data = 32'b00011100011100011100011100011100;
                cpu_to_cache_request.rw = 1'b0;
                cpu_to_cache_request.valid = 1'b1;
                if (cpu_res.ready) begin
                    tb_state <= 4'b1001;
                end
            end
            4'b1001: begin
                cpu_to_cache_request.addr = 27'b001100010101010101010101001;
                cpu_to_cache_request.data = 32'habcdef11;
                cpu_to_cache_request.rw = 1'b1;
                cpu_to_cache_request.valid = 1'b1;
                if (cpu_res.ready) begin
                    tb_state <= 4'b1010;
                end
            end
            4'b1010: begin
                cpu_to_cache_request.addr = 27'b001100010101010101010101001;
                cpu_to_cache_request.data = 32'b00011100011100011100011100011100;
                cpu_to_cache_request.rw = 1'b0;
                cpu_to_cache_request.valid = 1'b1;
                if (cpu_res.ready) begin
                    tb_state <= 4'b1011;
                end
            end
            4'b1011: begin
                cpu_to_cache_request.addr = 27'b001100010101010101010101000;
                cpu_to_cache_request.data = 32'habcdef33;
                cpu_to_cache_request.rw = 1'b1;
                cpu_to_cache_request.valid = 1'b1;
                if (cpu_res.ready) begin
                    tb_state <= 4'b1100;
                end
            end
            4'b1100: begin
                cpu_to_cache_request.addr = 27'b001100010101010101010101000;
                cpu_to_cache_request.data = 32'b00011100011100011100011100011100;
                cpu_to_cache_request.rw = 1'b0;
                cpu_to_cache_request.valid = 1'b1;
                if (cpu_res.ready) begin
                    tb_state <= 4'b1101;
                end
            end
            4'b1101: begin
                cpu_to_cache_request.addr = 27'b111111010101010101010101010;
                cpu_to_cache_request.data = 32'haaaabbbb;
                cpu_to_cache_request.rw = 1'b1;
                cpu_to_cache_request.valid = 1'b1;
                if (cpu_res.ready) begin
                    tb_state <= 4'b1110;
                end
            end
            4'b1110: begin
                cpu_to_cache_request.addr = 27'b111111010101010101010101010;
                cpu_to_cache_request.data = 32'haaaabbcc;
                cpu_to_cache_request.rw = 1'b0;
                cpu_to_cache_request.valid = 1'b1;
                if (cpu_res.ready) begin
                    tb_state <= 4'b1111;
                end
            end
            4'b1111: begin
                cpu_to_cache_request.addr = 27'b010101010101010101010101010;
                cpu_to_cache_request.data = 32'haaaabbcc;
                cpu_to_cache_request.rw = 1'b0;
                cpu_to_cache_request.valid = 1'b1;
                if (cpu_res.ready) begin
                    tb_state <= 4'b1111;
                end
            end
        endcase
    end
    */
    
    //キャッシュシステム -> master FIFO へリクエストをつなげる
    assign fifo.req.cmd  = ~mem_req.rw;
    assign fifo.req.addr =  mem_req.addr;
    assign fifo.req.data =  mem_req.data;
    assign fifo.req_en   =  mem_req.valid;
    //master FIFOにDRAMから来たデータをキャッシュシステムに渡す
    assign mem_data.data  = fifo.rsp.data;
    assign mem_data.ready = fifo.rsp_en;
    
    /*
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
    */
endmodule
