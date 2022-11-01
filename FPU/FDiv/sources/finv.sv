`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/10/24 19:33:45
// Design Name: 
// Module Name: finv
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


module finv(
    input logic CLKA,
    input logic CLKB,
    input logic RST,
    input  logic [31:0] x,
    output logic [31:0] y
);

    logic        ena, enb;
    logic [0:0]  wea, web;
    logic [9:0] addra, addrb;
    logic [7:0]  dina, dinb;
    logic [35:0]  douta, doutb;
    logic [9:0]  bram_addr;
    logic [35:0] data_from_a;
    logic [35:0] data_from_b;

    blk_mem_gen_0 blk_mem_gen_0_i ( // ���������W���[���̃C���X�^���X���쐬
        .clka(CLKA), // �|�[�gA(��ڂ̃|�[�g)�ւ̐ڑ�
        .ena(ena),
        .wea(wea),
        .addra(addra),
        .dina(dina),
        .douta(douta),
        
        .clkb(CLKB), // �|�[�gB(��ڂ̃|�[�g)�ւ̐ڑ�
        .enb(enb),
        .web(web),
        .addrb(addrb),
        .dinb(dinb),
        .doutb(doutb)
    );
 
    // �|�[�gA�ŏ��]�̃f�[�^�i�X��13bit + y�ؕ�23bit�j��ǂ݂���
    assign ena  = 1'b1;
    assign wea  = 1'b0; // read-only
    assign dina = 8'h0;
    assign data_from_a = douta;
    assign bram_addr = x[22:13];
    always_ff @(posedge CLKA) begin
        if(RST == 1) begin
            //�������Ȃ�
        end
        else begin
            addra <= bram_addr; // �ǂ̃A�h���X����ǂ݂�����
        end
    end

    // �|�[�gB�ŏ��]�̃f�[�^�i�X��13bit + y�ؕ�23bit�j��ǂ݂����@����
    assign enb  = 1'b1;
    assign web  = 1'b0; // read-only
    assign dinb = 8'h0;
    assign data_from_b = doutb;
    assign bram_addr = x[22:13];
    always_ff @(posedge CLKA) begin
        if(RST == 1) begin
            //�������Ȃ�
        end
        else begin
            addrb <= bram_addr; // �ǂ̃A�h���X����ǂ݂�����
        end
    end

    logic [31:0] gradient;
    logic [31:0] delta;
    logic [31:0] y_intersect;

    assign gradient  = (data_from_a[35:35] == 1'b0) ? {9'b101111110, data_from_a[34:23], 11'b0} : {9'b101111101, data_from_a[34:23], 11'b0};
    assign delta     = {9'b001111111, x[22:0]};
    assign y_intersect = {9'b001111111, data_from_a[22:0]};

    logic [31:0] fmul_ans;
    fmul fmul_instance ( // fmul���W���[���̃C���X�^���X���쐬
        .x1(gradient),
        .x2(delta),
        .y(fmul_ans)
    );
    
    logic [31:0] fadd_ans;
    fadd fadd_instance ( // fsub���W���[���̃C���X�^���X���쐬
        .x1(y_intersect),
        .x2(fmul_ans),
        .y(fadd_ans)
    );
    
    logic return_s;
    logic [7:0] return_e;
    logic [22:0] return_m;
    assign return_s = x[31:31];
    assign return_e = (x[22:0] == 23'b0) ? 8'd254 - x[30:23] : 8'd253 - x[30:23];
    assign return_m = fadd_ans[22:0];
    
    assign y = {return_s, return_e, return_m};

endmodule