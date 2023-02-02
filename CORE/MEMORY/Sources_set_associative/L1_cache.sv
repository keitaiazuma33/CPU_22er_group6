//ã­ã£ã?ã·ã¥æ¬ä½ï¼ã³ã¼ãï¼?

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
parameter int TAGLSB    = 14; //tag lsb

parameter int INDEXMSB  = 13; //index msb
parameter int INDEXLSB  = 2 ; //index lsb

parameter int OFFSETMSB =  1; //offset msb
parameter int OFFSETLSB =  0; //offset lsb

parameter        PMT_depth    = 12;       // PMT depth
parameter        PMT_width    = 18 ;      // PMT width
parameter        CACHE_depth  = 12;       // CACHE depth
parameter        CACHE_width  = 128 ;     // CACHE depth

//data structure for cache tag
typedef struct packed {
    bit [2:0]           accessed;  //accessed bit
    bit [0:0]           valid;     //valid bit
    bit [0:0]           dirty;     //dirty bit
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
    input  bit sys_clk,                        //ã­ã£ã?ã·ã¥ã·ã¹ã?ã?
    input  bit mem_clk,
    input  bit RST,
    input  cpu_req_type cpu_to_cache_request,   //addr[26:0],data[31:0],rw[0:0],valid[0:0]
    input  mem_data_type mem_data,              //memory response (memory->cache) data[CACHE_width:0], ready[0:0]
    output L2_req_type mem_req,                 //memory request (cache->memory) addr[26:0],data[CACHE_width:0],rw[0:0],valid[0:0]
    output cpu_result_type cpu_res,              //cache result (cache->CPU) data[31:0], ready[0:0]
    output logic [2:0] state);
    
    //tag, index, offset?¼åãå?ºãããã?®?¼?
    logic [TAGMSB   :TAGLSB   ]  tag;
    logic [INDEXMSB :INDEXLSB ]  index;
    logic [OFFSETMSB:OFFSETLSB]  offset;
    
    assign tag    = cpu_to_cache_request.addr[TAGMSB   :TAGLSB   ];
    assign index  = cpu_to_cache_request.addr[INDEXMSB :INDEXLSB ];
    assign offset = cpu_to_cache_request.addr[OFFSETMSB:OFFSETLSB];
    
    logic         ena;
    assign ena = 1'b1;   //ã¡ã¢ãªã¯ãã¹ã¦ã¢ã¯ã?ã£ãã«è¨­å®ãã?
    
    //PMTã«æ¸ãè¾¼ã?å ´åã?®ã¤ã³ã?ã?ã¯ã¹ãæ?¼ç´ãã?
    cache_req_type pmt_req_L1_way0; //tag request
    cache_req_type pmt_req_L1_way1; //tag request
    //PMTã«æ¸ãè¾¼ã?å ´åã?®Tag, Accessed, Validããããæ ¼ç´ãã?
    cache_tag_type pmt_L1_way0_dout; //tag read result
    cache_tag_type pmt_L1_way1_dout; //tag read result
    cache_tag_type pmt_L1_way0_din; //tag write data
    cache_tag_type pmt_L1_way1_din; //tag write data
    
    // Cacheã«æ¸ãè¾¼ã?å ´åã?®ã¤ã³ã?ã?ã¯ã¹ãæ?¼ç´ãã?
    cache_req_type data_req_L1_way0; //data req
    cache_req_type data_req_L1_way1; //data req
    // Cacheã«æ¸ãè¾¼ã?å ´åã?®ã?ã¼ã¿ãæ?¼ç´ãã?
    cache_data_type cache_L1_way0_dout; //cache line read data
    cache_data_type cache_L1_way1_dout; //cache line read data
    cache_data_type cache_L1_way0_din;  //cache line write data
    cache_data_type cache_L1_way1_din;  //cache line write data
    
    //ããããã®L1ã­ã£ã?ã·ã¥wayããåºã¦ããã?ã¼ã¿ãæ?¼ç´ãã?
    cpu_result_type cpu_res_L1_way0;
    cpu_result_type cpu_res_L1_way1;
    // L1ã¨ãã¦è¿ãæ?çµçãªã?ã¼ã¿
    cpu_result_type cpu_res_L1; 
    /*temporary variable for memory controller request*/
    L2_req_type mem_req_L1_to_L2;
    
    logic L1_way0_hit;
    logic L1_way1_hit;
    reg [0:0] LRU;
    logic [0:0] LRU_logic;
    assign LRU_logic = LRU;
    
    reg [17-(TAGMSB-TAGLSB+1)-1-1:0] accessed_save_way0;
    reg [17-(TAGMSB-TAGLSB+1)-1-1:0] accessed_save_way1;
    logic [17-(TAGMSB-TAGLSB+1)-1-1:0] accessed_save_way0_logic;
    logic [17-(TAGMSB-TAGLSB+1)-1-1:0] accessed_save_way1_logic;
    assign accessed_save_way0_logic = accessed_save_way0;
    assign accessed_save_way1_logic = accessed_save_way1;
    
    // L1 Cache (WAY0)
    CACHE_L1_way0 CACHE_L1_way0 (
        .clka(mem_clk),
        .ena(ena),     //å¸¸ã«ã¢ã¯ã?ã£ã?
        .wea(data_req_L1_way0.we),
        .addra(data_req_L1_way0.index),
        .dina(cache_L1_way0_din),
        .douta(cache_L1_way0_dout)
    );
    // L1 Cache (WAY1)
    CACHE_L1_way1 CACHE_L1_way1 (
        .clka(mem_clk),
        .ena(ena),
        .wea(data_req_L1_way1.we),
        .addra(data_req_L1_way1.index),
        .dina(cache_L1_way1_din),
        .douta(cache_L1_way1_dout)
    );
    
    // L1 PMT (WAY0)
    PMT_L1_way0 PMT_L1_way0 (
        .clka(mem_clk),
        .ena(ena),
        .wea(pmt_req_L1_way0.we),
        .addra(pmt_req_L1_way0.index),
        .dina(pmt_L1_way0_din),
        .douta(pmt_L1_way0_dout)
    );
    // L1 PMT (WAY1)
    PMT_L1_way1 PMT_L1_way1 (
        .clka(mem_clk),
        .ena(ena),
        .wea(pmt_req_L1_way1.we),
        .addra(pmt_req_L1_way1.index),
        .dina(pmt_L1_way1_din),
        .douta(pmt_L1_way1_dout)
    );
    
   
    /*write clock*/
    typedef enum {idle, compare_tag, allocate, allocate_wait, wait_before_write_back, write_back} cache_state_type;   //ãªã¼ãã?ãã³ã®ç¶æï¼å·¦ããé ?ã«0,1,2,3
    // æéç¶æã?®ç¾å¨ã®ç¶æã¨æ¬¡ã®ç¶æãä¿æãã
    cache_state_type  vstate, rstate;
    
    assign mem_req = mem_req_L1_to_L2; //connect to output ports
    assign cpu_res = cpu_res_L1;
    
    logic [1:0] LRU_input;
    
    logic [1:0] more_accessed_max;
    assign more_accessed_max = (accessed_save_way0_logic >= accessed_save_way1_logic) ? ((accessed_save_way0_logic == 3'b111) ? 2'b01 : 2'b00) : ((accessed_save_way1_logic == 3'b111) ? 2'b11 : 2'b10);
    
    always_comb begin
    
    /*-------------------------default values for all signals------------*/
    /*no state change by default*/
    vstate = rstate; 
    cpu_res_L1 = '{0, 0};
    pmt_L1_way0_din = '{0, 0, 0, 0};
    pmt_L1_way1_din = '{0, 0, 0, 0};
    //åºæ¬ç?ã«PMTã«ã¯æ¸ãè¾¼ã¾ãªã?
    pmt_req_L1_way0.we = 1'b0;
    pmt_req_L1_way1.we = 1'b0;
    /*direct map index for tag*/
    pmt_req_L1_way0.index = cpu_to_cache_request.addr[INDEXMSB:INDEXLSB];
    pmt_req_L1_way1.index = cpu_to_cache_request.addr[INDEXMSB:INDEXLSB];
    
    // åºæ¬ç?ã«ã­ã£ã?ã·ã¥ã«ã¯æ¸ãè¾¼ã¾ãªã?
    data_req_L1_way0.we = 1'b0;
    data_req_L1_way1.we = 1'b0;
    //L1??½¿?½½L??½¿?½½??½¿?½½??½¿?½½b??½¿?½½V??½¿?½½??½¿?½½??½¿?½½?¾ã??½¿?½½t??½¿?½½H??½¿?½½??½¿?½½??½¿?½½g??½¿?½½?¾?ã¯æ???½¿?½½é§?½³??½¿?½½é»·?½½index??½¿?½½?¾ã??½¿?½½[??½¿?½½^??½¿?½½??½¿?½½?¾?ã¿åº??½¿?½½??½¿?½½??½¿?½½è¬ï½¤??½¿?½½?¾æ??½¿?½½é§?½µ??½¿?½½?¾?ãï½¿?½½??½¿?½½??½¿?½½
    data_req_L1_way0.index = cpu_to_cache_request.addr[INDEXMSB:INDEXLSB];
    data_req_L1_way1.index = cpu_to_cache_request.addr[INDEXMSB:INDEXLSB];
    
    //ã­ã£ã?ã·ã¥ã«æ¸ãè¾¼ã?ã?ã¼ã¿ã¯åºã¦ããã?ã¼ã¿ã«ã¤ãªãã¦ãã?¼ï¼ï¼?
    cache_L1_way0_din = cache_L1_way0_dout;
    cache_L1_way1_din = cache_L1_way1_dout;
    
    // æ¸ãè¾¼ã¿ããã?ã¼ã¿ãå?¥ãã¹ãå?´æ?ã«ã?ã¼ã¿ãæ?¼ç´ãã¦ãã
    case({2'b0, cpu_to_cache_request.addr[OFFSETMSB:OFFSETLSB]})
        4'b0000: begin
            cache_L1_way0_din[31:0]     = cpu_to_cache_request.data;
            cache_L1_way1_din[31:0]     = cpu_to_cache_request.data;
        end
        4'b0001: begin
            cache_L1_way0_din[63:32]    = cpu_to_cache_request.data;
            cache_L1_way1_din[63:32]    = cpu_to_cache_request.data;
        end
        4'b0010: begin
            cache_L1_way0_din[95:64]   = cpu_to_cache_request.data;
            cache_L1_way1_din[95:64]   = cpu_to_cache_request.data;
        end
        4'b0011: begin
            cache_L1_way0_din[127:96]  = cpu_to_cache_request.data;
            cache_L1_way1_din[127:96]  = cpu_to_cache_request.data;
        end
        /*
        4'b0100: begin
            cache_L1_way0_din[159:128]  = cpu_to_cache_request.data;
            cache_L1_way1_din[159:128]  = cpu_to_cache_request.data;
        end
        4'b0101: begin
            cache_L1_way0_din[191:160]  = cpu_to_cache_request.data;
            cache_L1_way1_din[191:160]  = cpu_to_cache_request.data;
        end
        4'b0110: begin
            cache_L1_way0_din[223:192]  = cpu_to_cache_request.data;
            cache_L1_way1_din[223:192]  = cpu_to_cache_request.data;
        end
        4'b0111: begin
            cache_L1_way0_din[255:224]  = cpu_to_cache_request.data;
            cache_L1_way1_din[255:224]  = cpu_to_cache_request.data;
        end
        4'b1000: begin
            cache_L1_way0_din[287:256]  = cpu_to_cache_request.data;
            cache_L1_way1_din[287:256]  = cpu_to_cache_request.data;
        end
        4'b1001: begin
            cache_L1_way0_din[319:288]  = cpu_to_cache_request.data;
            cache_L1_way1_din[319:288]  = cpu_to_cache_request.data;
        end
        4'b1010: begin
            cache_L1_way0_din[351:320]  = cpu_to_cache_request.data;
            cache_L1_way1_din[351:320]  = cpu_to_cache_request.data;
        end
        4'b1011: begin
            cache_L1_way0_din[383:352]  = cpu_to_cache_request.data;
            cache_L1_way1_din[383:352]  = cpu_to_cache_request.data;
        end
        4'b1100: begin
            cache_L1_way0_din[415:384]  = cpu_to_cache_request.data;
            cache_L1_way1_din[415:384]  = cpu_to_cache_request.data;
        end
        4'b1101: begin
            cache_L1_way0_din[447:416]  = cpu_to_cache_request.data;
            cache_L1_way1_din[447:416]  = cpu_to_cache_request.data;
        end
        4'b1110: begin
            cache_L1_way0_din[479:448]  = cpu_to_cache_request.data;
            cache_L1_way1_din[479:448]  = cpu_to_cache_request.data;
        end
        4'b1111: begin
            cache_L1_way0_din[511:480]  = cpu_to_cache_request.data;
            cache_L1_way1_din[511:480]  = cpu_to_cache_request.data;
        end
        */
    endcase
    
    // åºã¦ããã?ã¼ã¿ã®ã?ã¡æ?æã?®ç®?æ?ã?ãå??ãåã£ã¦CPUã«è¿ã
    case({2'b0, cpu_to_cache_request.addr[OFFSETMSB:OFFSETLSB]})
        4'b0000: begin
            cpu_res_L1_way0.data = cache_L1_way0_dout[31:0];
            cpu_res_L1_way1.data = cache_L1_way1_dout[31:0];
        end
        4'b0001: begin
            cpu_res_L1_way0.data = cache_L1_way0_dout[63:32];
            cpu_res_L1_way1.data = cache_L1_way1_dout[63:32];
        end
        4'b0010: begin
            cpu_res_L1_way0.data = cache_L1_way0_dout[95:64];
            cpu_res_L1_way1.data = cache_L1_way1_dout[95:64];
        end
        4'b0011: begin
            cpu_res_L1_way0.data = cache_L1_way0_dout[127:96];
            cpu_res_L1_way1.data = cache_L1_way1_dout[127:96];
        end
        /*
        4'b0100: begin
            cpu_res_L1_way0.data = cache_L1_way0_dout[159:128];
            cpu_res_L1_way1.data = cache_L1_way1_dout[159:128];
        end
        4'b0101: begin
            cpu_res_L1_way0.data = cache_L1_way0_dout[191:160];
            cpu_res_L1_way1.data = cache_L1_way1_dout[191:160];
        end
        4'b0110: begin
            cpu_res_L1_way0.data = cache_L1_way0_dout[223:192];
            cpu_res_L1_way1.data = cache_L1_way1_dout[223:192];
        end
        4'b0111: begin
            cpu_res_L1_way0.data = cache_L1_way0_dout[255:224];
            cpu_res_L1_way1.data = cache_L1_way1_dout[255:224];
        end
        4'b1000: begin
            cpu_res_L1_way0.data = cache_L1_way0_dout[287:256];
            cpu_res_L1_way1.data = cache_L1_way1_dout[287:256];
        end
        4'b1001: begin
            cpu_res_L1_way0.data = cache_L1_way0_dout[319:288];
            cpu_res_L1_way1.data = cache_L1_way1_dout[319:288];
        end
        4'b1010: begin
            cpu_res_L1_way0.data = cache_L1_way0_dout[351:320];
            cpu_res_L1_way1.data = cache_L1_way1_dout[351:320];
        end
        4'b1011: begin
            cpu_res_L1_way0.data = cache_L1_way0_dout[383:352];
            cpu_res_L1_way1.data = cache_L1_way1_dout[383:352];
        end
        4'b1100: begin
            cpu_res_L1_way0.data = cache_L1_way0_dout[415:384];
            cpu_res_L1_way1.data = cache_L1_way1_dout[415:384];
        end
        4'b1101: begin
            cpu_res_L1_way0.data = cache_L1_way0_dout[447:416];
            cpu_res_L1_way1.data = cache_L1_way1_dout[447:416];
        end
        4'b1110: begin
            cpu_res_L1_way0.data = cache_L1_way0_dout[479:448];
            cpu_res_L1_way1.data = cache_L1_way1_dout[479:448];
        end
        4'b1111: begin
            cpu_res_L1_way0.data = cache_L1_way0_dout[511:480];
            cpu_res_L1_way1.data = cache_L1_way1_dout[511:480];
        end
        */
    endcase
    
    // L1ã§è¦ã¤ãããªã?å ´åã?¯åãã¢ãã¬ã¹ã§ä¸ä½ã¡ã¢ãªã«å°ã?­ã?
    mem_req_L1_to_L2.addr = {cpu_to_cache_request.addr[26:3], 3'b0}; 
    //æ¸ãæ»ãå?´åã?¯LRUã§é¸ãã§ããããªã?æ¹ã®ã?ã¼ã¿ãä¸ä½ã­ã£ã?ã·ã¥ã«æ¸ãæ»ã?
    mem_req_L1_to_L2.data = 128'b0; //LRU ? cache_L1_way1_dout : cache_L1_way0_dout;
    //ãã ãã?ããã©ã«ãã§ã¯æ¸ãæ»ããªã?
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
        /*cache hit (tag match and cache entry is valid)*/
        assign L1_way0_hit = (cpu_to_cache_request.addr[TAGMSB:TAGLSB] == pmt_L1_way0_dout.tag && pmt_L1_way0_dout.valid);
        assign L1_way1_hit = (cpu_to_cache_request.addr[TAGMSB:TAGLSB] == pmt_L1_way1_dout.tag && pmt_L1_way1_dout.valid);
        
        assign LRU_input = (~(L1_way0_hit || L1_way1_hit)) ? ((more_accessed_max[1:1] == 1'b1) ? (pmt_L1_way1_dout.valid ? 1'b0 : 1'b1) : (pmt_L1_way0_dout.valid ? 1'b1 : 1'b0)) : ( (~L1_way0_hit) ? 1'b0 : ((~L1_way1_hit) ? 1'b1 : ((more_accessed_max[1:1] == 1'b1) ? 1'b0 : 1'b1)));
        LRU <= LRU_input;
        accessed_save_way0 <= pmt_L1_way0_dout.accessed;
        accessed_save_way1 <= pmt_L1_way1_dout.accessed;
        
        //L1_way0ã®ã¿ã°é¨ãhitãã
        if ( L1_way0_hit )
        begin
            cpu_res_L1.ready = 1'b1;
            cpu_res_L1.data = cpu_res_L1_way0.data;
            /*write hit*/
            if (cpu_to_cache_request.rw)   //writeãããªã?
            begin 
                /*read/modify cache line*/
                pmt_req_L1_way0.we = '1;
                data_req_L1_way0.we = 1'b1;
                //ã­ã£ã?ã·ã¥ã«æ¸ãè¾¼ãã ãã?ãã®ãã¨ãPMTã®æ¹ã«åæ ããã¦ãã?¼?validã¨dirtyãç«ã¦ãã¨ã?ã?ãã¨?¼?
                pmt_L1_way0_din.accessed = (more_accessed_max[1:1] == 1'b0) ? accessed_save_way0_logic + 1 : accessed_save_way1_logic + 1;
                pmt_L1_way0_din.tag = pmt_L1_way0_dout.tag;
                pmt_L1_way0_din.valid = 1'b1;
                //æ¸ãè¾¼ãã ããdirtyã«ãªã£ã¦ã?ã?
                pmt_L1_way0_din.dirty = 1'b1;
            end
            
            //ãã¨ã«æ»ã?
            vstate = idle;
        end
        
        //L1_way1ã®ã¿ã°é¨ãhitãã
        else
        if ( L1_way1_hit )
        begin
            cpu_res_L1.ready = 1'b1;
            cpu_res_L1.data = cpu_res_L1_way1.data;
            /*write hit*/
            if (cpu_to_cache_request.rw)   //writeãããªã?
            begin 
                /*read/modify cache line*/
                pmt_req_L1_way1.we = '1;
                data_req_L1_way1.we = 1'b1;
                //ã­ã£ã?ã·ã¥ã«æ¸ãè¾¼ãã ãã?ãã®ãã¨ãPMTã®æ¹ã«åæ ããã¦ãã?¼?validã¨dirtyãç«ã¦ãã¨ã?ã?ãã¨?¼?
                pmt_L1_way1_din.accessed = (more_accessed_max[1:1] == 1'b0) ? accessed_save_way0_logic + 1 : accessed_save_way1_logic + 1;
                pmt_L1_way1_din.tag = pmt_L1_way1_dout.tag; 
                pmt_L1_way1_din.valid = 1'b1;
                //æ¸ãè¾¼ãã ããdirtyã«ãªã£ã¦ã?ã?
                pmt_L1_way1_din.dirty = 1'b1;
            end
            
            //ãã¨ã«æ»ã?
            vstate = idle;
        end
        
        //L1_way0 L1_way1 ã©ã¡ããhitããªãã£ãå?´å?
        else
        if (LRU_logic == 1'b0)   //LRUã§ã©ã¡ããè¿½ã?åºããæ±ºãã¦ã?
        begin
            //PMTã?ãæ´æ°ãã¦ãã?¼ãã¼ã¿ãæ¥ãåã«ã¢ã¯ã»ã¹ããããã¨ã¯ãªã?ããå¤§ä¸å¤«?¼?
            /*generate new tag*/
            pmt_req_L1_way0.we = 1'b1;
            pmt_L1_way0_din.valid = 1'b1;
            /*new tag*/
            pmt_L1_way0_din.tag = cpu_to_cache_request.addr[TAGMSB:TAGLSB];
            //æ¸ãè¾¼ã?å ´åã?®ã¿dirtyã«ãã¦ãã
            pmt_L1_way0_din.dirty = cpu_to_cache_request.rw;
            //ä»æã£ã¦ããããaccessedã¯0ã«ãã¦ãã
            pmt_L1_way0_din.accessed = 
                (more_accessed_max == 2'b00) ? accessed_save_way0_logic :
                (more_accessed_max == 2'b01) ? 3'b000                   :
                (more_accessed_max == 2'b10) ? accessed_save_way1_logic :
                                               3'b000                   ;
            
            //æ´æ°ããªã?ã»ã?ã?LRU(Accessed)ãmaxã«éãã¦ã?ãããªã»ã?ããã?(Accessedä»¥å¤ã?¯å¤ããªã?)
            pmt_req_L1_way1.we = 1'b1;
            pmt_L1_way1_din.valid = pmt_L1_way1_dout.valid;
            pmt_L1_way1_din.tag = pmt_L1_way1_dout.tag;
            pmt_L1_way1_din.dirty = pmt_L1_way1_dout.dirty;
            pmt_L1_way1_din.accessed = (more_accessed_max[0:0] == 1'b1) ? 3'b000 : pmt_L1_way1_dout.accessed;
            
            //ä¸ä½ã­ã£ã?ã·ã¥ã¸åãã¦ã?ã¼ã¿ãããã¨ã?ã?å¿?è¦ãããã?
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
                mem_req_L1_to_L2.addr = {pmt_L1_way0_dout.tag, cpu_to_cache_request.addr[TAGLSB-1:0]};
                mem_req_L1_to_L2.rw = 1'b1;
                mem_req_L1_to_L2.data = cache_L1_way0_dout;
                /*wait till write is completed*/
                vstate = write_back;
            end
        end
        else
        if (LRU_logic == 1'b1)   //LRUã§ã©ã¡ããè¿½ã?åºããæ±ºãã¦ã?
        begin
            //PMTã?ãæ´æ°ãã¦ãã?¼ãã¼ã¿ãæ¥ãåã«ã¢ã¯ã»ã¹ããããã¨ã¯ãªã?ããå¤§ä¸å¤«?¼?
            /*generate new tag*/
            pmt_req_L1_way1.we = 1'b1;
            pmt_L1_way1_din.valid = 1'b1;
            /*new tag*/
            pmt_L1_way1_din.tag = cpu_to_cache_request.addr[TAGMSB:TAGLSB];
            //æ¸ãè¾¼ã?å ´åã?®ã¿dirtyã«ãã¦ãã
            pmt_L1_way1_din.dirty = cpu_to_cache_request.rw;
            //ä»æã£ã¦ããããaccessedã¯0ã«ãã¦ãã
            pmt_L1_way1_din.accessed = 
                (more_accessed_max == 2'b00) ? accessed_save_way0_logic :
                (more_accessed_max == 2'b01) ? 3'b000                   :
                (more_accessed_max == 2'b10) ? accessed_save_way1_logic :
                                               3'b000                   ;
            //æ´æ°ããªã?ã»ã?ã?LRU(Accessed)ãmaxã«éãã¦ã?ãããªã»ã?ããã?(Accessedä»¥å¤ã?¯å¤ããªã?)
            pmt_req_L1_way0.we = 1'b1;
            pmt_L1_way0_din.valid = pmt_L1_way0_dout.valid;
            pmt_L1_way0_din.tag = pmt_L1_way0_dout.tag;
            pmt_L1_way0_din.dirty = pmt_L1_way0_dout.dirty;
            pmt_L1_way0_din.accessed = (more_accessed_max[0:0] == 1'b1) ? 3'b000 : pmt_L1_way0_dout.accessed;
        
            //ä¸ä½ã­ã£ã?ã·ã¥ã¸åãã¦ã?ã¼ã¿ãããã¨ã?ã?å¿?è¦ãããã?
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
                vstate = wait_before_write_back;
            end
        end
        
    end
    
    /*wait for allocating a new cache line*/
    allocate:
    begin 
        /*memory controller has responded*/
        if (mem_data.ready)
        begin
            if (LRU_logic == 1'b0)
            begin
                //è¿½ã?åºãã?®ãway0ãªãL0ã®æ¸ãè¾¼ã?ã¹ãã¤ã³ã?ã?ã¯ã¹è¡ç®ã«ã?ã¼ã¿ãæ?¼ç´ãã?
                /*update cache line data*/
                data_req_L1_way0.we = 1'b1;
                cache_L1_way0_din = mem_data.data;
            end
            else
            if (LRU_logic == 1'b1)
            begin
                //è¿½ã?åºãã?®ãway0ãªãL0ã®æ¸ãè¾¼ã?ã¹ãã¤ã³ã?ã?ã¯ã¹è¡ç®ã«ã?ã¼ã¿ãæ?¼ç´ãã?
                /*update cache line data*/
                data_req_L1_way1.we = 1'b1;
                cache_L1_way1_din = mem_data.data;
            end
            /*re-compare tag for write miss (need modify correct word)*/
            vstate = allocate_wait;  //ããã«ä¸æ¸ããããªãcompare_tagã§ã?ã£ã¦ãã
        end 
    end
    
    allocate_wait:
    begin
        vstate = compare_tag;
    end
    
    wait_before_write_back:
    begin
        vstate = write_back;
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
    if (RST) 
    rstate <= idle; //reset to idle state
    else 
    rstate <= vstate;
end

assign state = rstate;

endmodule