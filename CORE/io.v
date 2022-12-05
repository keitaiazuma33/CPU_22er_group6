`default_nettype none




module io_test #(CLK_PER_HALF_BIT = 217) 
  (
    input wire rxd,
    output wire txd,
    output wire [15:0] debug,
    input wire clk,
    input wire rstn_uart
  );

  reg [7:0] sdata;
  wire [7:0] rdata;
  reg tx_start;
  wire rx_ready;
  wire tx_busy;
  wire ferr;

  reg [15:0] status;
  assign debug = status;

  wire [7:0] large_p;       assign large_p = 8'h50;
  wire [7:0] number_0;      assign number_0 = 8'h30;
  wire [7:0] space;         assign space = 8'h20;
  wire [7:0] newline;       assign newline = 8'h0a;
  
  reg [31:0] counter;


  uart_tx #(CLK_PER_HALF_BIT) u1(sdata, tx_start, tx_busy, txd, clk, rstn_uart);
  uart_rx #(CLK_PER_HALF_BIT) u2(rdata, rx_ready, ferr, rxd, clk, rstn_uart);


  always @(posedge clk) begin
    if (~rstn_uart) begin
      sdata <= 8'h00;
      tx_start <= 1'b0;
      status <= 16'd0;
      counter <= 32'b0;
    end else begin
      if (status == 16'd0) begin
        sdata <= 8'haa; status <= status + 16'd1;
      end else if (status[3:0] == 4'd1) begin
        tx_start <= 1'b1;
        status <= status + 16'd1;
      end else if (status[3:0] == 4'd2) begin
        if (tx_busy) begin
          status <= status + 16'd1;
          tx_start <= 1'b0;
        end
      end else if (status[3:0] == 4'd3) begin
        if (~tx_busy) begin
          status <= status + 16'd13;
        end
      end else if (status == 16'd16)  begin sdata <= large_p;         status <= status + 16'd1;
      end else if (status == 16'd32)  begin sdata <= number_0 + 8'd3; status <= status + 16'd1;
      end else if (status == 16'd48)  begin sdata <= newline;         status <= status + 16'd1;
      end else if (status == 16'd64)  begin sdata <= number_0 + 8'd1; status <= status + 16'd1;
      end else if (status == 16'd80)  begin sdata <= number_0 + 8'd2; status <= status + 16'd1;
      end else if (status == 16'd96)  begin sdata <= number_0 + 8'd8; status <= status + 16'd1;
      end else if (status == 16'd112) begin sdata <= space;           status <= status + 16'd1;
      end else if (status == 16'd128) begin sdata <= number_0 + 8'd1; status <= status + 16'd1;
      end else if (status == 16'd144) begin sdata <= number_0 + 8'd2; status <= status + 16'd1;
      end else if (status == 16'd160) begin sdata <= number_0 + 8'd8; status <= status + 16'd1;
      end else if (status == 16'd176) begin sdata <= space;           status <= status + 16'd1;
      end else if (status == 16'd192) begin sdata <= number_0 + 8'd2; status <= status + 16'd1;
      end else if (status == 16'd208) begin sdata <= number_0 + 8'd5; status <= status + 16'd1;
      end else if (status == 16'd224) begin sdata <= number_0 + 8'd5; status <= status + 16'd1;
      end else if (status == 16'd240) begin sdata <= newline;         status <= status + 16'd1;
      end else if (status == 16'd256) begin sdata <= number_0 + 8'd1; status <= status + 16'd1;
      end else if (status == 16'd272) begin sdata <= number_0 + 8'd2; status <= status + 16'd1;
      end else if (status == 16'd288) begin sdata <= number_0 + 8'd8; status <= status + 16'd1;
      end else if (status == 16'd304) begin sdata <= space;           status <= status + 16'd1;
      end else if (status == 16'd320) begin sdata <= number_0 + 8'd1; status <= status + 16'd1;
      end else if (status == 16'd336) begin sdata <= number_0 + 8'd2; status <= status + 16'd1;
      end else if (status == 16'd352) begin sdata <= number_0 + 8'd8; status <= status + 16'd1;
      end else if (status == 16'd368) begin sdata <= space;           status <= status + 16'd1;
      end else if (status == 16'd384) begin sdata <= number_0 + 8'd2; status <= status + 16'd1;
      end else if (status == 16'd400) begin sdata <= number_0 + 8'd5; status <= status + 16'd1;
      end else if (status == 16'd416) begin sdata <= number_0 + 8'd5; status <= status + 16'd1;
      end else if (status == 16'd432) begin sdata <= newline;         status <= status + 16'd1;
      end else if (status == 16'd448) begin
        if (counter != 32'd16384) begin
          counter <= counter + 32'd1;
          status <= status - 16'd192;
        end
      end 
    end
  end

endmodule


`default_nettype wire