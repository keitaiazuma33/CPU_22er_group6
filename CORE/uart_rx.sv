`default_nettype none

module uart_rx #(CLK_PER_HALF_BIT = 5208) (
               output logic [7:0] rdata,
               output logic       rdata_ready,
               output logic       ferr,
               input wire         rxd,
               input wire         clk,
               input wire         rstn);

localparam e_clk_bit = CLK_PER_HALF_BIT * 2 - 1;

localparam e_clk_stop_bit = (CLK_PER_HALF_BIT*2*9)/10 - 1;

logic [7:0]                  rxbuf;
logic [3:0]                  status;
logic [31:0]                 counter;
logic                        next;
logic                        fin_stop_bit;
logic                        rst_ctr;

localparam s_idle = 4'd0;
localparam s_start_bit = 4'd1;
localparam s_bit_0 = 4'd2;
localparam s_bit_1 = 4'd3;
localparam s_bit_2 = 4'd4;
localparam s_bit_3 = 4'd5;
localparam s_bit_4 = 4'd6;
localparam s_bit_5 = 4'd7;
localparam s_bit_6 = 4'd8;
localparam s_bit_7 = 4'd9;
localparam s_stop_bit = 4'd10;

logic [7:0]                  rxbuf_shift;
logic [6:0]                  rxbuf_shift_2;
assign rxbuf_shift = rxbuf >> 1;
assign rxbuf_shift_2 = rxbuf_shift [6:0];

always @(posedge clk) begin
      if (~rstn) begin
         counter <= 32'b0;
         next <= 1'b0;
         fin_stop_bit <= 1'b0;
      end else begin
         if (counter == e_clk_bit || rst_ctr) begin
            counter <= 32'b0;
         end else begin
            counter <= counter + 32'd1;
         end
         if (~rst_ctr && counter == e_clk_bit) begin
            next <= 1'b1;
         end else begin
            next <= 1'b0;
         end
         if (~rst_ctr && counter == e_clk_stop_bit) begin
            fin_stop_bit <= 1'b1;
         end else begin
            fin_stop_bit <= 1'b0;
         end
      end
   end


   always @(posedge clk) begin
      rdata_ready <= 1'b0;
      if (~rstn) begin
         rxbuf <= 8'b0;
         status <= s_idle;
         rst_ctr <= 1'b0;
         rdata <= 8'b0;
         rdata_ready <= 1'b0;
         ferr <= 1'b0;
      end else begin
         rst_ctr <= 1'b0;
         
         if (status == s_idle) begin
            if (rxd == 1'b0) begin
               rxbuf <= 8'b0;
               status <= s_start_bit;
               rst_ctr <= 1'b1;
               ferr <= 1'b0;
            end
         end else if (status == s_start_bit) begin
            if (counter == CLK_PER_HALF_BIT) begin
               status <= s_bit_0;
               rst_ctr <= 1'b1;
            end
         end else if (status == s_stop_bit) begin
            if (fin_stop_bit) begin
               rxbuf <= 8'b0;
               status <= s_idle;
               rst_ctr <= 1'b0;
               rdata <= rxbuf;
               rdata_ready <= 1'b1;
               ferr <= 1'b0;
            end
         end else if (next) begin
            rxbuf <= {rxd, rxbuf_shift_2};
            rst_ctr <= 1'b0;
            if (status == s_bit_7) begin
               status <= s_stop_bit;
            end else begin
               status <= status + 1'b1;
            end
         end
      end
   end
endmodule
`default_nettype wire