//キャッシュ本体（コード）

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/12/06 17:20:54
// Design Name: 
// Module Name: L1_cache
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

// data structures for cache tag & data
parameter int TAGMSB    = 26; //tag msb
parameter int TAGLSB    = 15; //tag lsb

parameter int INDEXMSB  = 14; //index msb
parameter int INDEXLSB  = 3 ; //index lsb

parameter int OFFSETMSB =  2; //offset msb
parameter int OFFSETLSB =  0; //offset lsb

parameter        PMT_depth    = 12;       // PMT depth
parameter        PMT_width    = 18 ;      // PMT width
parameter        CACHE_depth  = 12;       // CACHE depth
parameter        CACHE_width  = 128 ;     // CACHE depth

//data structure for cache tag
typedef struct packed {
    bit [17-(TAGMSB-TAGLSB+1)-1-1:0]           accessed;  //accessed bit
    bit [0:0]                                  valid;     //valid bit
    bit [0:0]                                  dirty;     //dirty bit
    bit [TAGMSB:TAGLSB] tag; //tag bits
}cache_tag_type;

//data structure for cache memory request
typedef struct {
    bit [INDEXMSB:INDEXLSB] index; //10-bit index
    bit [0:0]               we; //write enable
}cache_req_type;

//128-bit cache line data
typedef bit [CACHE_width - 1:0] cache_data_type;

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

//----------------------------------------------------------------------
// data structures for cache controller<->memory interface
// memory request (cache controller->memory)
typedef struct {
    bit [26:0]           addr; //request byte addr
    bit [CACHE_width-1:0]  data; //128-bit request data (used when write)
    bit [0:0]            rw; //request type : 0 = read, 1 = write
    bit [0:0]            valid; //request is valid
}L2_req_type;

// memory controller response (memory -> cache controller)
typedef struct {
    cache_data_type data; //128-bit read back data
    bit [0:0]       ready; //data is ready
}mem_data_type;

// CACHE SYSTEM
module L1_cache(
    input  bit sys_clk,                        //キャッシュシステム
    input  bit rstn,
    input  cpu_req_type cpu_to_cache_request,   //addr[26:0],data[31:0],rw[0:0],valid[0:0]
    input  mem_data_type mem_data,              //memory response (memory->cache) data[CACHE_width:0], ready[0:0]
    output L2_req_type mem_req,                 //memory request (cache->memory) addr[26:0],data[CACHE_width:0],rw[0:0],valid[0:0]
    output cpu_result_type cpu_res,              //cache result (cache->CPU) data[31:0], ready[0:0]
    output logic [2:0] state);
    
    //tag, index, offset（取り出したもの）
    logic [TAGMSB   :TAGLSB   ]  tag;
    logic [INDEXMSB :INDEXLSB ]  index;
    logic [OFFSETMSB:OFFSETLSB]  offset;
    
    assign tag    = cpu_to_cache_request.addr[TAGMSB   :TAGLSB   ];
    assign index  = cpu_to_cache_request.addr[INDEXMSB :INDEXLSB ];
    assign offset = cpu_to_cache_request.addr[OFFSETMSB:OFFSETLSB];
    
    logic         ena;
    assign ena = 1'b1;   //メモリはすべてアクティブに設定する
    
    //PMTに書き込む場合のインデックスを格納する
    cache_req_type pmt_req_L1_way0;
    cache_req_type pmt_req_L1_way1;
    cache_req_type pmt_req_L1_way2;
    cache_req_type pmt_req_L1_way3;
    //PMTに書き込む場合のTag, Accessed, Validビットを格納する
    cache_tag_type pmt_L1_way0_dout;
    cache_tag_type pmt_L1_way1_dout;
    cache_tag_type pmt_L1_way2_dout;
    cache_tag_type pmt_L1_way3_dout;
    cache_tag_type pmt_L1_way0_din;
    cache_tag_type pmt_L1_way1_din;
    cache_tag_type pmt_L1_way2_din;
    cache_tag_type pmt_L1_way3_din;
    
    // Cacheに書き込む場合のインデックスを格納する
    cache_req_type data_req_L1_way0;
    cache_req_type data_req_L1_way1;
    cache_req_type data_req_L1_way2;
    cache_req_type data_req_L1_way3;
    // Cacheに書き込む場合のデータを格納する
    cache_data_type cache_L1_way0_dout;
    cache_data_type cache_L1_way1_dout;
    cache_data_type cache_L1_way2_dout;
    cache_data_type cache_L1_way3_dout;
    cache_data_type cache_L1_way0_din;
    cache_data_type cache_L1_way1_din;
    cache_data_type cache_L1_way2_din;
    cache_data_type cache_L1_way3_din;
    
    //それぞれのL1キャッシュwayから出てきたデータを格納する
    cpu_result_type cpu_res_L1_way0;
    cpu_result_type cpu_res_L1_way1;
    cpu_result_type cpu_res_L1_way2;
    cpu_result_type cpu_res_L1_way3;
    // L1として返す最終的なデータ
    cpu_result_type cpu_res_L1; 
    /*temporary variable for memory controller request*/
    L2_req_type mem_req_L1_to_L2;
    
    logic L1_way0_hit;
    logic L1_way1_hit;
    logic L1_way2_hit;
    logic L1_way3_hit;
    /*cache hit (tag match and cache entry is valid)*/
    assign L1_way0_hit = (cpu_to_cache_request.addr[TAGMSB:TAGLSB] == pmt_L1_way0_dout.tag) ? pmt_L1_way0_dout.valid : 1'b0;
    assign L1_way1_hit = (cpu_to_cache_request.addr[TAGMSB:TAGLSB] == pmt_L1_way1_dout.tag) ? pmt_L1_way1_dout.valid : 1'b0;
    assign L1_way2_hit = (cpu_to_cache_request.addr[TAGMSB:TAGLSB] == pmt_L1_way2_dout.tag) ? pmt_L1_way2_dout.valid : 1'b0;
    assign L1_way3_hit = (cpu_to_cache_request.addr[TAGMSB:TAGLSB] == pmt_L1_way3_dout.tag) ? pmt_L1_way3_dout.valid : 1'b0;

    reg [1:0] LRU;
    logic [1:0] LRU_logic;
    assign LRU_logic = LRU;
    
    reg [17-(TAGMSB-TAGLSB+1)-1-1:0] accessed_save_way0;
    reg [17-(TAGMSB-TAGLSB+1)-1-1:0] accessed_save_way1;
    reg [17-(TAGMSB-TAGLSB+1)-1-1:0] accessed_save_way2;
    reg [17-(TAGMSB-TAGLSB+1)-1-1:0] accessed_save_way3;
    logic [17-(TAGMSB-TAGLSB+1)-1-1:0] accessed_save_way0_logic;
    logic [17-(TAGMSB-TAGLSB+1)-1-1:0] accessed_save_way1_logic;
    logic [17-(TAGMSB-TAGLSB+1)-1-1:0] accessed_save_way2_logic;
    logic [17-(TAGMSB-TAGLSB+1)-1-1:0] accessed_save_way3_logic;
    assign accessed_save_way0_logic = accessed_save_way0;
    assign accessed_save_way1_logic = accessed_save_way1;
    assign accessed_save_way2_logic = accessed_save_way2;
    assign accessed_save_way3_logic = accessed_save_way3;
    
    (* ram_style = "BLOCK" *) reg [CACHE_width - 1:0] CACHE_L1_way0 [2**CACHE_depth - 1:0];
    (* ram_style = "BLOCK" *) reg [CACHE_width - 1:0] CACHE_L1_way1 [2**CACHE_depth - 1:0];
    (* ram_style = "BLOCK" *) reg [CACHE_width - 1:0] CACHE_L1_way2 [2**CACHE_depth - 1:0];
    (* ram_style = "BLOCK" *) reg [CACHE_width - 1:0] CACHE_L1_way3 [2**CACHE_depth - 1:0];
    (* ram_style = "BLOCK" *) reg [PMT_width - 1:0] PMT_L1_way0 [2**PMT_depth - 1:0];
    (* ram_style = "BLOCK" *) reg [PMT_width - 1:0] PMT_L1_way1 [2**PMT_depth - 1:0];
    (* ram_style = "BLOCK" *) reg [PMT_width - 1:0] PMT_L1_way2 [2**PMT_depth - 1:0];
    (* ram_style = "BLOCK" *) reg [PMT_width - 1:0] PMT_L1_way3 [2**PMT_depth - 1:0];
    
    integer i;

    initial begin
        for (i = 0; i < 2**CACHE_depth; i = i+1) begin
            CACHE_L1_way0[i] = 0;
            CACHE_L1_way1[i] = 0;
            CACHE_L1_way2[i] = 0;
            CACHE_L1_way3[i] = 0;
            PMT_L1_way0[i] = 0;
            PMT_L1_way1[i] = 0;
            PMT_L1_way2[i] = 0;
            PMT_L1_way3[i] = 0;
        end
    end

    always_ff @(posedge sys_clk) begin
        if (data_req_L1_way0.we) begin
            CACHE_L1_way0[data_req_L1_way0.index] <= cache_L1_way0_din;
        end
        if (data_req_L1_way1.we) begin
            CACHE_L1_way1[data_req_L1_way1.index] <= cache_L1_way1_din;
        end
        if (data_req_L1_way2.we) begin
            CACHE_L1_way2[data_req_L1_way2.index] <= cache_L1_way2_din;
        end
        if (data_req_L1_way3.we) begin
            CACHE_L1_way3[data_req_L1_way3.index] <= cache_L1_way3_din;
        end
        if (pmt_req_L1_way0.we) begin
            PMT_L1_way0[pmt_req_L1_way0.index] <= pmt_L1_way0_din;
        end
        if (pmt_req_L1_way1.we) begin
            PMT_L1_way1[pmt_req_L1_way1.index] <= pmt_L1_way1_din;
        end
        if (pmt_req_L1_way2.we) begin
            PMT_L1_way2[pmt_req_L1_way2.index] <= pmt_L1_way2_din;
        end
        if (pmt_req_L1_way3.we) begin
            PMT_L1_way3[pmt_req_L1_way3.index] <= pmt_L1_way3_din;
        end
        cache_L1_way0_dout <= CACHE_L1_way0[data_req_L1_way0.index];
        cache_L1_way1_dout <= CACHE_L1_way1[data_req_L1_way1.index];
        cache_L1_way2_dout <= CACHE_L1_way2[data_req_L1_way2.index];
        cache_L1_way3_dout <= CACHE_L1_way3[data_req_L1_way3.index];
        pmt_L1_way0_dout <= PMT_L1_way0[pmt_req_L1_way0.index];
        pmt_L1_way1_dout <= PMT_L1_way1[pmt_req_L1_way1.index];
        pmt_L1_way2_dout <= PMT_L1_way2[pmt_req_L1_way2.index];
        pmt_L1_way3_dout <= PMT_L1_way3[pmt_req_L1_way3.index];
    end
    
    /*write clock*/
    typedef enum {idle, compare_tag, allocate, allocate_wait, write_back} cache_state_type;   //オートマトンの状態：左から順に0,1,2,3
    // 有限状態の現在の状態と次の状態を保持する
    cache_state_type  vstate, rstate;
    
    assign mem_req = mem_req_L1_to_L2; //connect to output ports
    assign cpu_res = cpu_res_L1;
    
    logic [1:0] most_accessed;
    logic [1:0] least_accessed;
    logic [0:0] accessed_overflow;

    logic [0:0] way0_vs_way1;
    logic [0:0] way2_vs_way3;
    logic [0:0] way0_vs_way2;
    logic [0:0] way0_vs_way3;
    logic [0:0] way1_vs_way2;
    logic [0:0] way1_vs_way3;
    assign way0_vs_way1 = (accessed_save_way0_logic >= accessed_save_way1_logic);
    assign way2_vs_way3 = (accessed_save_way2_logic >= accessed_save_way3_logic);
    assign way0_vs_way2 = (accessed_save_way0_logic >= accessed_save_way2_logic);
    assign way0_vs_way3 = (accessed_save_way0_logic >= accessed_save_way3_logic);
    assign way1_vs_way2 = (accessed_save_way1_logic >= accessed_save_way2_logic);
    assign way1_vs_way3 = (accessed_save_way1_logic >= accessed_save_way3_logic);
    assign most_accessed = (way0_vs_way1 && way2_vs_way3) ? (way0_vs_way2 ? 2'b00 : 2'b10) :
                           (way0_vs_way1 &&~way2_vs_way3) ? (way0_vs_way3 ? 2'b00 : 2'b11) :
                           (~way0_vs_way1&& way2_vs_way3) ? (way1_vs_way2 ? 2'b01 : 2'b10) :
                                                            (way1_vs_way3 ? 2'b01 : 2'b11) ;
    assign least_accessed = (way0_vs_way1 && way2_vs_way3) ? (~way1_vs_way3 ? 2'b01 : 2'b11) :
                            (way0_vs_way1 &&~way2_vs_way3) ? (~way1_vs_way2 ? 2'b01 : 2'b10) :
                            (~way0_vs_way1&& way2_vs_way3) ? (~way0_vs_way3 ? 2'b00 : 2'b11) :
                                                             (~way0_vs_way2 ? 2'b00 : 2'b10) ;
    assign accessed_overflow = ((accessed_save_way0_logic == 4'b1111) || (accessed_save_way1_logic == 4'b1111)) || ((accessed_save_way2_logic == 4'b1111) || (accessed_save_way3_logic == 4'b1111));
    
    logic [2:0] non_valid_way;
    assign non_valid_way = ~pmt_L1_way0_dout.valid ? 3'b100 :
                           ~pmt_L1_way1_dout.valid ? 3'b101 :
                           ~pmt_L1_way2_dout.valid ? 3'b110 :
                           ~pmt_L1_way3_dout.valid ? 3'b111 :
                           3'b000;
    logic [1:0] LRU_input;
    assign LRU_input = non_valid_way[2:2] ? non_valid_way[1:0] : least_accessed;
    
    always_comb begin
    
    /*-------------------------default values for all signals------------*/
    /*no state change by default*/
    vstate = rstate; 

    cpu_res_L1 = '{0, 0};
    
    pmt_L1_way0_din = '{0, 0, 0, 0};
    pmt_L1_way1_din = '{0, 0, 0, 0};
    pmt_L1_way2_din = '{0, 0, 0, 0};
    pmt_L1_way3_din = '{0, 0, 0, 0};
    
    //基本的にPMTには書き込まない
    pmt_req_L1_way0.we = 1'b0;
    pmt_req_L1_way1.we = 1'b0;
    pmt_req_L1_way2.we = 1'b0;
    pmt_req_L1_way3.we = 1'b0;
    /*direct map index for tag*/
    pmt_req_L1_way0.index = cpu_to_cache_request.addr[INDEXMSB:INDEXLSB];
    pmt_req_L1_way1.index = cpu_to_cache_request.addr[INDEXMSB:INDEXLSB];
    pmt_req_L1_way2.index = cpu_to_cache_request.addr[INDEXMSB:INDEXLSB];
    pmt_req_L1_way3.index = cpu_to_cache_request.addr[INDEXMSB:INDEXLSB];
    
    // 基本的にキャッシュには書き込まない
    data_req_L1_way0.we = 1'b0;
    data_req_L1_way1.we = 1'b0;
    data_req_L1_way2.we = 1'b0;
    data_req_L1_way3.we = 1'b0;
    //L1?ｿｽL?ｿｽ?ｿｽ?ｿｽb?ｿｽV?ｿｽ?ｿｽ?ｿｽﾍデ?ｿｽt?ｿｽH?ｿｽ?ｿｽ?ｿｽg?ｿｽﾅは指?ｿｽ閧ｳ?ｿｽ黷ｽindex?ｿｽﾌデ?ｿｽ[?ｿｽ^?ｿｽ?ｿｽﾇみ出?ｿｽ?ｿｽ?ｿｽ謔､?ｿｽﾉ指?ｿｽ閧ｵ?ｿｽﾄゑｿｽ?ｿｽ?ｿｽ
    data_req_L1_way0.index = cpu_to_cache_request.addr[INDEXMSB:INDEXLSB];
    data_req_L1_way1.index = cpu_to_cache_request.addr[INDEXMSB:INDEXLSB];
    data_req_L1_way2.index = cpu_to_cache_request.addr[INDEXMSB:INDEXLSB];
    data_req_L1_way3.index = cpu_to_cache_request.addr[INDEXMSB:INDEXLSB];
    
    //キャッシュに書き込むデータは出てきたデータにつなげておく（？）
    cache_L1_way0_din = cache_L1_way0_dout;
    cache_L1_way1_din = cache_L1_way1_dout;
    cache_L1_way2_din = cache_L1_way2_dout;
    cache_L1_way3_din = cache_L1_way3_dout;
    
    // 書き込みたいデータが入るべき場所にデータを格納しておく
    case(cpu_to_cache_request.addr[OFFSETMSB:OFFSETLSB])
        3'b000: begin
            cache_L1_way0_din[31:0]     = cpu_to_cache_request.data;
            cache_L1_way1_din[31:0]     = cpu_to_cache_request.data;
            cache_L1_way2_din[31:0]     = cpu_to_cache_request.data;
            cache_L1_way3_din[31:0]     = cpu_to_cache_request.data;
        end
        3'b010: begin
            cache_L1_way0_din[63:32]    = cpu_to_cache_request.data;
            cache_L1_way1_din[63:32]    = cpu_to_cache_request.data;
            cache_L1_way2_din[63:32]    = cpu_to_cache_request.data;
            cache_L1_way3_din[63:32]    = cpu_to_cache_request.data;
        end
        3'b100: begin
            cache_L1_way0_din[95:64]   = cpu_to_cache_request.data;
            cache_L1_way1_din[95:64]   = cpu_to_cache_request.data;
            cache_L1_way2_din[95:64]   = cpu_to_cache_request.data;
            cache_L1_way3_din[95:64]   = cpu_to_cache_request.data;
        end
        3'b110: begin
            cache_L1_way0_din[127:96]  = cpu_to_cache_request.data;
            cache_L1_way1_din[127:96]  = cpu_to_cache_request.data;
            cache_L1_way2_din[127:96]  = cpu_to_cache_request.data;
            cache_L1_way3_din[127:96]  = cpu_to_cache_request.data;
        end
    endcase
    
    // 出てきたデータのうち所望の箇所だけ切り取ってCPUに返す
    case(cpu_to_cache_request.addr[OFFSETMSB:OFFSETLSB])
        3'b000: begin
            cpu_res_L1_way0.data = cache_L1_way0_dout[31:0];
            cpu_res_L1_way1.data = cache_L1_way1_dout[31:0];
            cpu_res_L1_way2.data = cache_L1_way2_dout[31:0];
            cpu_res_L1_way3.data = cache_L1_way3_dout[31:0];
        end
        3'b010: begin
            cpu_res_L1_way0.data = cache_L1_way0_dout[63:32];
            cpu_res_L1_way1.data = cache_L1_way1_dout[63:32];
            cpu_res_L1_way2.data = cache_L1_way2_dout[63:32];
            cpu_res_L1_way3.data = cache_L1_way3_dout[63:32];
        end
        3'b100: begin
            cpu_res_L1_way0.data = cache_L1_way0_dout[95:64];
            cpu_res_L1_way1.data = cache_L1_way1_dout[95:64];
            cpu_res_L1_way2.data = cache_L1_way2_dout[95:64];
            cpu_res_L1_way3.data = cache_L1_way3_dout[95:64];
        end
        3'b110: begin
            cpu_res_L1_way0.data = cache_L1_way0_dout[127:96];
            cpu_res_L1_way1.data = cache_L1_way1_dout[127:96];
            cpu_res_L1_way2.data = cache_L1_way2_dout[127:96];
            cpu_res_L1_way3.data = cache_L1_way3_dout[127:96];
        end
    endcase
    
    // L1で見つからない場合は同じアドレスで下位メモリに尋ねる
    mem_req_L1_to_L2.addr = {cpu_to_cache_request.addr[26:3], 3'b0}; 
    //書き戻す場合はLRUで選んで、いらない方のデータを下位キャッシュに書き戻す
    mem_req_L1_to_L2.data = 128'b0;
    //ただし、デフォルトでは書き戻さない
    mem_req_L1_to_L2.rw = 1'b0;
    mem_req_L1_to_L2.valid = 1'b0;
    
//------------------------------------Cache FSM-------------------------
case(rstate)
    /*idle state*/
    idle : begin
        /*If there is a CPU request, then compare cache tag*/
        if (cpu_to_cache_request.valid)
        begin
        vstate = compare_tag;
        end
    end
    
    /*compare_tag state*/ 
    compare_tag :
    begin
        LRU <= LRU_input;
        accessed_save_way0 <= pmt_L1_way0_dout.accessed;
        accessed_save_way1 <= pmt_L1_way1_dout.accessed;
        accessed_save_way2 <= pmt_L1_way2_dout.accessed;
        accessed_save_way3 <= pmt_L1_way3_dout.accessed;
        
        //L1_way0のタグ部がhitした
        if ( L1_way0_hit )
        begin
            cpu_res_L1.ready = 1'b1;
            cpu_res_L1.data = cpu_res_L1_way0.data;
            /*write hit*/
            if (cpu_to_cache_request.rw)   //writeするなら
            begin 
                /*read/modify cache line*/
                pmt_req_L1_way0.we = 1'b1;
                data_req_L1_way0.we = 1'b1;
                //キャッシュに書き込んだら、そのことをPMTの方に反映させておく（validとdirtyを立てるということ）
                pmt_L1_way0_din.accessed = (most_accessed == 2'b00) ? ((accessed_save_way0_logic == 4'b1111) ? 4'b1111 : accessed_save_way0_logic + 1) :
                                           (most_accessed == 2'b01) ? ((accessed_save_way1_logic == 4'b1111) ? 4'b1111 : accessed_save_way1_logic + 1) :
                                           (most_accessed == 2'b10) ? ((accessed_save_way2_logic == 4'b1111) ? 4'b1111 : accessed_save_way2_logic + 1) :
                                                                      ((accessed_save_way3_logic == 4'b1111) ? 4'b1111 : accessed_save_way3_logic + 1) ;
                pmt_L1_way0_din.tag = pmt_L1_way0_dout.tag;
                pmt_L1_way0_din.valid = 1'b1;
                //書き込んだからdirtyになっている
                pmt_L1_way0_din.dirty = 1'b1;
            end
            else
            begin 
                /*read/modify cache line*/
                pmt_req_L1_way0.we = '1;
                data_req_L1_way0.we = 1'b0;
                //キャッシュに書き込んだら、そのことをPMTの方に反映させておく（validとdirtyを立てるということ）
                pmt_L1_way0_din.accessed = (most_accessed == 2'b00) ? ((accessed_save_way0_logic == 4'b1111) ? 4'b1111 : accessed_save_way0_logic + 1) :
                                           (most_accessed == 2'b01) ? ((accessed_save_way1_logic == 4'b1111) ? 4'b1111 : accessed_save_way1_logic + 1) :
                                           (most_accessed == 2'b10) ? ((accessed_save_way2_logic == 4'b1111) ? 4'b1111 : accessed_save_way2_logic + 1) :
                                                                      ((accessed_save_way3_logic == 4'b1111) ? 4'b1111 : accessed_save_way3_logic + 1) ;
                pmt_L1_way0_din.tag = pmt_L1_way0_dout.tag;
                pmt_L1_way0_din.valid = 1'b1;
                //書き込んだからdirtyになっている
                pmt_L1_way0_din.dirty = pmt_L1_way0_dout.dirty;
            end
            
            //もとに戻る
            vstate = idle;
        end
        
        //L1_way1のタグ部がhitした
        else
        if ( L1_way1_hit )
        begin
            cpu_res_L1.ready = 1'b1;
            cpu_res_L1.data = cpu_res_L1_way1.data;
            /*write hit*/
            if (cpu_to_cache_request.rw)   //writeするなら
            begin 
                /*read/modify cache line*/
                pmt_req_L1_way1.we = 1'b1;
                data_req_L1_way1.we = 1'b1;
                //キャッシュに書き込んだら、そのことをPMTの方に反映させておく（validとdirtyを立てるということ）
                pmt_L1_way1_din.accessed = (most_accessed == 2'b00) ? ((accessed_save_way0_logic == 4'b1111) ? 4'b1111 : accessed_save_way0_logic + 1) :
                                           (most_accessed == 2'b01) ? ((accessed_save_way1_logic == 4'b1111) ? 4'b1111 : accessed_save_way1_logic + 1) :
                                           (most_accessed == 2'b10) ? ((accessed_save_way2_logic == 4'b1111) ? 4'b1111 : accessed_save_way2_logic + 1) :
                                                                      ((accessed_save_way3_logic == 4'b1111) ? 4'b1111 : accessed_save_way3_logic + 1) ;
                pmt_L1_way1_din.tag = pmt_L1_way1_dout.tag; 
                pmt_L1_way1_din.valid = 1'b1;
                //書き込んだからdirtyになっている
                pmt_L1_way1_din.dirty = 1'b1;
            end
            else
            begin 
                /*read/modify cache line*/
                pmt_req_L1_way1.we = 1'b1;
                data_req_L1_way1.we = 1'b0;
                //キャッシュに書き込んだら、そのことをPMTの方に反映させておく（validとdirtyを立てるということ）
                pmt_L1_way1_din.accessed = (most_accessed == 2'b00) ? ((accessed_save_way0_logic == 4'b1111) ? 4'b1111 : accessed_save_way0_logic + 1) :
                                           (most_accessed == 2'b01) ? ((accessed_save_way1_logic == 4'b1111) ? 4'b1111 : accessed_save_way1_logic + 1) :
                                           (most_accessed == 2'b10) ? ((accessed_save_way2_logic == 4'b1111) ? 4'b1111 : accessed_save_way2_logic + 1) :
                                                                      ((accessed_save_way3_logic == 4'b1111) ? 4'b1111 : accessed_save_way3_logic + 1) ;
                pmt_L1_way1_din.tag = pmt_L1_way1_dout.tag;
                pmt_L1_way1_din.valid = 1'b1;
                //書き込んだからdirtyになっている
                pmt_L1_way1_din.dirty = pmt_L1_way1_dout.dirty;
            end
            
            //もとに戻る
            vstate = idle;
        end

        //L1_way2のタグ部がhitした
        else
        if ( L1_way2_hit )
        begin
            cpu_res_L1.ready = 1'b1;
            cpu_res_L1.data = cpu_res_L1_way2.data;
            /*write hit*/
            if (cpu_to_cache_request.rw)   //writeするなら
            begin 
                /*read/modify cache line*/
                pmt_req_L1_way2.we = 1'b1;
                data_req_L1_way2.we = 1'b1;
                //キャッシュに書き込んだら、そのことをPMTの方に反映させておく（validとdirtyを立てるということ）
                pmt_L1_way2_din.accessed = (most_accessed == 2'b00) ? ((accessed_save_way0_logic == 4'b1111) ? 4'b1111 : accessed_save_way0_logic + 1) :
                                           (most_accessed == 2'b01) ? ((accessed_save_way1_logic == 4'b1111) ? 4'b1111 : accessed_save_way1_logic + 1) :
                                           (most_accessed == 2'b10) ? ((accessed_save_way2_logic == 4'b1111) ? 4'b1111 : accessed_save_way2_logic + 1) :
                                                                      ((accessed_save_way3_logic == 4'b1111) ? 4'b1111 : accessed_save_way3_logic + 1) ;
                pmt_L1_way2_din.tag = pmt_L1_way2_dout.tag; 
                pmt_L1_way2_din.valid = 1'b1;
                //書き込んだからdirtyになっている
                pmt_L1_way2_din.dirty = 1'b1;
            end
            else
            begin 
                /*read/modify cache line*/
                pmt_req_L1_way2.we = 1'b1;
                data_req_L1_way2.we = 1'b0;
                //キャッシュに書き込んだら、そのことをPMTの方に反映させておく（validとdirtyを立てるということ）
                pmt_L1_way2_din.accessed = (most_accessed == 2'b00) ? ((accessed_save_way0_logic == 4'b1111) ? 4'b1111 : accessed_save_way0_logic + 1) :
                                           (most_accessed == 2'b01) ? ((accessed_save_way1_logic == 4'b1111) ? 4'b1111 : accessed_save_way1_logic + 1) :
                                           (most_accessed == 2'b10) ? ((accessed_save_way2_logic == 4'b1111) ? 4'b1111 : accessed_save_way2_logic + 1) :
                                                                      ((accessed_save_way3_logic == 4'b1111) ? 4'b1111 : accessed_save_way3_logic + 1) ;
                pmt_L1_way2_din.tag = pmt_L1_way2_dout.tag;
                pmt_L1_way2_din.valid = 1'b1;
                //書き込んだからdirtyになっている
                pmt_L1_way2_din.dirty = pmt_L1_way2_dout.dirty;
            end
            
            //もとに戻る
            vstate = idle;
        end

        //L1_way3のタグ部がhitした
        else
        if ( L1_way3_hit )
        begin
            cpu_res_L1.ready = 1'b1;
            cpu_res_L1.data = cpu_res_L1_way3.data;
            /*write hit*/
            if (cpu_to_cache_request.rw)   //writeするなら
            begin 
                /*read/modify cache line*/
                pmt_req_L1_way3.we = 1'b1;
                data_req_L1_way3.we = 1'b1;
                //キャッシュに書き込んだら、そのことをPMTの方に反映させておく（validとdirtyを立てるということ）
                pmt_L1_way3_din.accessed = (most_accessed == 2'b00) ? ((accessed_save_way0_logic == 4'b1111) ? 4'b1111 : accessed_save_way0_logic + 1) :
                                           (most_accessed == 2'b01) ? ((accessed_save_way1_logic == 4'b1111) ? 4'b1111 : accessed_save_way1_logic + 1) :
                                           (most_accessed == 2'b10) ? ((accessed_save_way2_logic == 4'b1111) ? 4'b1111 : accessed_save_way2_logic + 1) :
                                                                      ((accessed_save_way3_logic == 4'b1111) ? 4'b1111 : accessed_save_way3_logic + 1) ;
                pmt_L1_way3_din.tag = pmt_L1_way3_dout.tag; 
                pmt_L1_way3_din.valid = 1'b1;
                //書き込んだからdirtyになっている
                pmt_L1_way3_din.dirty = 1'b1;
            end
            else
            begin 
                /*read/modify cache line*/
                pmt_req_L1_way1.we = 1'b1;
                data_req_L1_way1.we = 1'b0;
                //キャッシュに書き込んだら、そのことをPMTの方に反映させておく（validとdirtyを立てるということ）
                pmt_L1_way1_din.accessed = (most_accessed == 2'b00) ? ((accessed_save_way0_logic == 4'b1111) ? 4'b1111 : accessed_save_way0_logic + 1) :
                                           (most_accessed == 2'b01) ? ((accessed_save_way1_logic == 4'b1111) ? 4'b1111 : accessed_save_way1_logic + 1) :
                                           (most_accessed == 2'b10) ? ((accessed_save_way2_logic == 4'b1111) ? 4'b1111 : accessed_save_way2_logic + 1) :
                                                                      ((accessed_save_way3_logic == 4'b1111) ? 4'b1111 : accessed_save_way3_logic + 1) ;
                pmt_L1_way1_din.tag = pmt_L1_way1_dout.tag;
                pmt_L1_way1_din.valid = 1'b1;
                //書き込んだからdirtyになっている
                pmt_L1_way1_din.dirty = pmt_L1_way1_dout.dirty;
            end
            
            //もとに戻る
            vstate = idle;
        end
        
        //どのwayもhitしなかった場合
        else
        if (LRU_logic == 2'b00)   //LRUでどれを追い出すか決めて、
        begin
            //PMTだけ更新しておく（データが来る前にアクセスされることはないから大丈夫）
            /*generate new tag*/
            pmt_req_L1_way0.we = 1'b1;
            pmt_L1_way0_din.valid = 1'b1;
            /*new tag*/
            pmt_L1_way0_din.tag = cpu_to_cache_request.addr[TAGMSB:TAGLSB];
            //書き込む場合のみdirtyにしておく
            pmt_L1_way0_din.dirty = cpu_to_cache_request.rw;
            //今持ってきたからaccessedは0にしておく
            pmt_L1_way0_din.accessed = accessed_overflow ? 4'b0000 :
                                       (
                                        most_accessed == 2'b00 ? accessed_save_way0_logic:
                                        most_accessed == 2'b01 ? accessed_save_way1_logic:
                                        most_accessed == 2'b10 ? accessed_save_way2_logic:
                                                                 accessed_save_way3_logic
                                       );
            
            //更新しないほうもLRU(Accessed)がmaxに達していたらリセットする(Accessed以外は変えない)
            pmt_req_L1_way1.we = 1'b1;
            pmt_L1_way1_din.valid = pmt_L1_way1_dout.valid;
            pmt_L1_way1_din.tag = pmt_L1_way1_dout.tag;
            pmt_L1_way1_din.dirty = pmt_L1_way1_dout.dirty;
            pmt_L1_way1_din.accessed = accessed_overflow ? 4'b0000 : pmt_L1_way1_dout.accessed;

            pmt_req_L1_way2.we = 1'b1;
            pmt_L1_way2_din.valid = pmt_L1_way2_dout.valid;
            pmt_L1_way2_din.tag = pmt_L1_way2_dout.tag;
            pmt_L1_way2_din.dirty = pmt_L1_way2_dout.dirty;
            pmt_L1_way2_din.accessed = accessed_overflow ? 4'b0000 : pmt_L1_way2_dout.accessed;

            pmt_req_L1_way3.we = 1'b1;
            pmt_L1_way3_din.valid = pmt_L1_way3_dout.valid;
            pmt_L1_way3_din.tag = pmt_L1_way3_dout.tag;
            pmt_L1_way3_din.dirty = pmt_L1_way3_dout.dirty;
            pmt_L1_way3_din.accessed = accessed_overflow ? 4'b0000 : pmt_L1_way3_dout.accessed;
            
            //下位キャッシュへ向けてデータをくれという必要がある。
            mem_req_L1_to_L2.valid = 1'b1;
            /*compulsory miss or miss with clean block*/
            if (pmt_L1_way0_dout.valid == 1'b0 || pmt_L1_way0_dout.dirty == 1'b0)
            begin
                /*wait till a new block is allocated*/
                vstate = allocate;
            end
            else begin
                /*miss with dirty line*/
                /*write back address*/
                mem_req_L1_to_L2.addr = {pmt_L1_way0_dout.tag, cpu_to_cache_request.addr[TAGLSB-1:3], 3'b0};
                mem_req_L1_to_L2.rw = 1'b1;
                mem_req_L1_to_L2.data = cache_L1_way0_dout;
                /*wait till write is completed*/
                vstate = write_back;
            end
        end
        else
        if (LRU_logic == 2'b01)   //LRUでどれを追い出すか決めて、
        begin
            //PMTだけ更新しておく（データが来る前にアクセスされることはないから大丈夫）
            /*generate new tag*/
            pmt_req_L1_way1.we = 1'b1;
            pmt_L1_way1_din.valid = 1'b1;
            /*new tag*/
            pmt_L1_way1_din.tag = cpu_to_cache_request.addr[TAGMSB:TAGLSB];
            //書き込む場合のみdirtyにしておく
            pmt_L1_way1_din.dirty = cpu_to_cache_request.rw;
            //今持ってきたからaccessedは0にしておく
            pmt_L1_way1_din.accessed = accessed_overflow ? 4'b0000 :
                                       (
                                        most_accessed == 2'b00 ? accessed_save_way0_logic:
                                        most_accessed == 2'b01 ? accessed_save_way1_logic:
                                        most_accessed == 2'b10 ? accessed_save_way2_logic:
                                                                 accessed_save_way3_logic
                                       );
            
            //更新しないほうもLRU(Accessed)がmaxに達していたらリセットする(Accessed以外は変えない)
            pmt_req_L1_way0.we = 1'b1;
            pmt_L1_way0_din.valid = pmt_L1_way0_dout.valid;
            pmt_L1_way0_din.tag = pmt_L1_way0_dout.tag;
            pmt_L1_way0_din.dirty = pmt_L1_way0_dout.dirty;
            pmt_L1_way0_din.accessed = accessed_overflow ? 4'b0000 : pmt_L1_way0_dout.accessed;

            pmt_req_L1_way2.we = 1'b1;
            pmt_L1_way2_din.valid = pmt_L1_way2_dout.valid;
            pmt_L1_way2_din.tag = pmt_L1_way2_dout.tag;
            pmt_L1_way2_din.dirty = pmt_L1_way2_dout.dirty;
            pmt_L1_way2_din.accessed = accessed_overflow ? 4'b0000 : pmt_L1_way2_dout.accessed;

            pmt_req_L1_way3.we = 1'b1;
            pmt_L1_way3_din.valid = pmt_L1_way3_dout.valid;
            pmt_L1_way3_din.tag = pmt_L1_way3_dout.tag;
            pmt_L1_way3_din.dirty = pmt_L1_way3_dout.dirty;
            pmt_L1_way3_din.accessed = accessed_overflow ? 4'b0000 : pmt_L1_way3_dout.accessed;
            
            //下位キャッシュへ向けてデータをくれという必要がある。
            mem_req_L1_to_L2.valid = 1'b1;
            /*compulsory miss or miss with clean block*/
            if (pmt_L1_way1_dout.valid == 1'b0 || pmt_L1_way1_dout.dirty == 1'b0)
            begin
                /*wait till a new block is allocated*/
                vstate = allocate;
            end
            else begin
                /*miss with dirty line*/
                /*write back address*/
                mem_req_L1_to_L2.addr = {pmt_L1_way1_dout.tag, cpu_to_cache_request.addr[TAGLSB-1:3], 3'b0};
                mem_req_L1_to_L2.rw = 1'b1;
                mem_req_L1_to_L2.data = cache_L1_way1_dout;
                /*wait till write is completed*/
                vstate = write_back;
            end
        end
        else
        if (LRU_logic == 2'b10)   //LRUでどれを追い出すか決めて、
        begin
            //PMTだけ更新しておく（データが来る前にアクセスされることはないから大丈夫）
            /*generate new tag*/
            pmt_req_L1_way2.we = 1'b1;
            pmt_L1_way2_din.valid = 1'b1;
            /*new tag*/
            pmt_L1_way2_din.tag = cpu_to_cache_request.addr[TAGMSB:TAGLSB];
            //書き込む場合のみdirtyにしておく
            pmt_L1_way2_din.dirty = cpu_to_cache_request.rw;
            //今持ってきたからaccessedは0にしておく
            pmt_L1_way2_din.accessed = accessed_overflow ? 4'b0000 :
                                       (
                                        most_accessed == 2'b00 ? accessed_save_way0_logic:
                                        most_accessed == 2'b01 ? accessed_save_way1_logic:
                                        most_accessed == 2'b10 ? accessed_save_way2_logic:
                                                                 accessed_save_way3_logic
                                       );
            
            //更新しないほうもLRU(Accessed)がmaxに達していたらリセットする(Accessed以外は変えない)
            pmt_req_L1_way1.we = 1'b1;
            pmt_L1_way1_din.valid = pmt_L1_way1_dout.valid;
            pmt_L1_way1_din.tag = pmt_L1_way1_dout.tag;
            pmt_L1_way1_din.dirty = pmt_L1_way1_dout.dirty;
            pmt_L1_way1_din.accessed = accessed_overflow ? 4'b0000 : pmt_L1_way1_dout.accessed;

            pmt_req_L1_way0.we = 1'b1;
            pmt_L1_way0_din.valid = pmt_L1_way0_dout.valid;
            pmt_L1_way0_din.tag = pmt_L1_way0_dout.tag;
            pmt_L1_way0_din.dirty = pmt_L1_way0_dout.dirty;
            pmt_L1_way0_din.accessed = accessed_overflow ? 4'b0000 : pmt_L1_way0_dout.accessed;

            pmt_req_L1_way3.we = 1'b1;
            pmt_L1_way3_din.valid = pmt_L1_way3_dout.valid;
            pmt_L1_way3_din.tag = pmt_L1_way3_dout.tag;
            pmt_L1_way3_din.dirty = pmt_L1_way3_dout.dirty;
            pmt_L1_way3_din.accessed = accessed_overflow ? 4'b0000 : pmt_L1_way3_dout.accessed;
            
            //下位キャッシュへ向けてデータをくれという必要がある。
            mem_req_L1_to_L2.valid = 1'b1;
            /*compulsory miss or miss with clean block*/
            if (pmt_L1_way2_dout.valid == 1'b0 || pmt_L1_way2_dout.dirty == 1'b0)
            begin
                /*wait till a new block is allocated*/
                vstate = allocate;
            end
            else begin
                /*miss with dirty line*/
                /*write back address*/
                mem_req_L1_to_L2.addr = {pmt_L1_way2_dout.tag, cpu_to_cache_request.addr[TAGLSB-1:3], 3'b0};
                mem_req_L1_to_L2.rw = 1'b1;
                mem_req_L1_to_L2.data = cache_L1_way2_dout;
                /*wait till write is completed*/
                vstate = write_back;
            end
        end
        else
        if (LRU_logic == 2'b11)   //LRUでどれを追い出すか決めて、
        begin
            //PMTだけ更新しておく（データが来る前にアクセスされることはないから大丈夫）
            /*generate new tag*/
            pmt_req_L1_way3.we = 1'b1;
            pmt_L1_way3_din.valid = 1'b1;
            /*new tag*/
            pmt_L1_way3_din.tag = cpu_to_cache_request.addr[TAGMSB:TAGLSB];
            //書き込む場合のみdirtyにしておく
            pmt_L1_way3_din.dirty = cpu_to_cache_request.rw;
            //今持ってきたからaccessedは0にしておく
            pmt_L1_way3_din.accessed = accessed_overflow ? 4'b0000 :
                                       (
                                        most_accessed == 2'b00 ? accessed_save_way0_logic:
                                        most_accessed == 2'b01 ? accessed_save_way1_logic:
                                        most_accessed == 2'b10 ? accessed_save_way2_logic:
                                                                 accessed_save_way3_logic
                                       );
            
            //更新しないほうもLRU(Accessed)がmaxに達していたらリセットする(Accessed以外は変えない)
            pmt_req_L1_way1.we = 1'b1;
            pmt_L1_way1_din.valid = pmt_L1_way1_dout.valid;
            pmt_L1_way1_din.tag = pmt_L1_way1_dout.tag;
            pmt_L1_way1_din.dirty = pmt_L1_way1_dout.dirty;
            pmt_L1_way1_din.accessed = accessed_overflow ? 4'b0000 : pmt_L1_way1_dout.accessed;

            pmt_req_L1_way2.we = 1'b1;
            pmt_L1_way2_din.valid = pmt_L1_way2_dout.valid;
            pmt_L1_way2_din.tag = pmt_L1_way2_dout.tag;
            pmt_L1_way2_din.dirty = pmt_L1_way2_dout.dirty;
            pmt_L1_way2_din.accessed = accessed_overflow ? 4'b0000 : pmt_L1_way2_dout.accessed;

            pmt_req_L1_way0.we = 1'b1;
            pmt_L1_way0_din.valid = pmt_L1_way0_dout.valid;
            pmt_L1_way0_din.tag = pmt_L1_way0_dout.tag;
            pmt_L1_way0_din.dirty = pmt_L1_way0_dout.dirty;
            pmt_L1_way0_din.accessed = accessed_overflow ? 4'b0000 : pmt_L1_way0_dout.accessed;
            
            //下位キャッシュへ向けてデータをくれという必要がある。
            mem_req_L1_to_L2.valid = 1'b1;
            /*compulsory miss or miss with clean block*/
            if (pmt_L1_way3_dout.valid == 1'b0 || pmt_L1_way3_dout.dirty == 1'b0)
            begin
                /*wait till a new block is allocated*/
                vstate = allocate;
            end
            else begin
                /*miss with dirty line*/
                /*write back address*/
                mem_req_L1_to_L2.addr = {pmt_L1_way3_dout.tag, cpu_to_cache_request.addr[TAGLSB-1:3], 3'b0};
                mem_req_L1_to_L2.rw = 1'b1;
                mem_req_L1_to_L2.data = cache_L1_way3_dout;
                /*wait till write is completed*/
                vstate = write_back;
            end
        end
    end
    
    /*wait for allocating a new cache line*/
    allocate:
    begin 
        /*memory controller has responded*/
        if (mem_data.ready)
        begin
            if (LRU_logic == 2'b00)
            begin
                //追い出すのがway0ならL1の書き込むべきインデックス行目にデータを格納する
                /*update cache line data*/
                data_req_L1_way0.we = 1'b1;
                cache_L1_way0_din = mem_data.data;
            end
            else
            if (LRU_logic == 2'b01)
            begin
                //追い出すのがway1ならL1の書き込むべきインデックス行目にデータを格納する
                /*update cache line data*/
                data_req_L1_way1.we = 1'b1;
                cache_L1_way1_din = mem_data.data;
            end
            if (LRU_logic == 2'b10)
            begin
                //追い出すのがway1ならL1の書き込むべきインデックス行目にデータを格納する
                /*update cache line data*/
                data_req_L1_way2.we = 1'b1;
                cache_L1_way2_din = mem_data.data;
            end
            if (LRU_logic == 2'b11)
            begin
                //追い出すのがway1ならL1の書き込むべきインデックス行目にデータを格納する
                /*update cache line data*/
                data_req_L1_way3.we = 1'b1;
                cache_L1_way3_din = mem_data.data;
            end
            /*re-compare tag for write miss (need modify correct word)*/
            vstate = allocate_wait;  //さらに上書きするならcompare_tagでやってくれ
        end 
    end
    
    //cacheにデータが書き込まれるまで待つ
    allocate_wait:
    begin
        vstate = compare_tag;
    end
    
    /*wait for writing back dirty cache line*/
    write_back :
    begin 
        /*write back is completed*/
        /*issue new memory request (allocating a new line)*/
        mem_req_L1_to_L2.valid = 1'b1;
        mem_req_L1_to_L2.data = 128'b0;
        mem_req_L1_to_L2.rw = 1'b0;
        vstate = allocate;
    end
endcase
end

always_ff @(posedge(sys_clk))
begin
    if (~rstn)
    rstate <= idle; //reset to idle state
    else 
    rstate <= vstate; 
end

assign state = rstate;

endmodule