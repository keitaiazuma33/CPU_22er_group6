module dram_test (
    master_fifo.master fifo,
    input logic clk,
    output logic led
);
    assign fifo.clk = clk;
    assign fifo.rsp_rdy = 1'b1;

    logic [9:0] req_state = '0;
    logic [9:0] req_state_save;
    assign req_state_save = req_state;
    
    always_ff @ (posedge clk) begin
        case (req_state)
            10'b0000000000: begin
                fifo.req.cmd <= 1'b0;
                fifo.req.addr <= 27'h300;
                fifo.req.data <= 128'h0123456789abcdeffedcba9876543210;
                fifo.req_en <= 1'b1;
                req_state <= req_state_save + 1;
            end
            10'b0100000000: begin
                fifo.req.cmd <= 1'b0;
                fifo.req.addr <= 27'h400;
                fifo.req.data <= 128'hfedcba98765432100123456789abcdef;
                fifo.req_en <= 1'b1;
                req_state <= req_state_save + 1;
            end
            10'b1000000000: begin
                fifo.req.cmd <= 1'b1;
                fifo.req.addr <= 27'h300;
                fifo.req.data <= '0;
                fifo.req_en <= 1'b1;
                req_state <= req_state_save + 1;
            end
            10'b1100000000: begin
                fifo.req.cmd <= 1'b1;
                fifo.req.addr <= 27'h400;
                fifo.req.data <= '0;
                fifo.req_en <= 1'b1;
                req_state <= req_state_save + 1;
            end
            default: begin
                req_state <= req_state_save + 1;
            end
        endcase
    end

    logic first_data_identity = 1'b0;
    logic second_data_identity = 1'b0;
    assign led = first_data_identity && second_data_identity;

    logic [1:0]  rsp_state = 1'b0;
    always_ff @ (posedge clk) begin
        case (rsp_state)
            2'b0: begin
                if (fifo.rsp_en) begin
                    first_data_identity <= (fifo.rsp.data == 128'h0123456789abcdeffedcba9876543210);
                    rsp_state <= 2'b1;
                end
            end
            2'b1: begin
                if (fifo.rsp_en) begin
                    second_data_identity <= (fifo.rsp.data == 128'hfedcba98765432100123456789abcdef);
                    rsp_state <= 2'b0;
                end
            end
        endcase
    end
endmodule
