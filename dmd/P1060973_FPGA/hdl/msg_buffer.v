`timescale 1ns/100ps

module msg_buffer
(
    // system clock and reset
    input           OPB_CLK,
    input           OPB_RST,

    // interface to module cmn_uart
    input   [7:0]   DATA_STREAM_OUT,
    input           DATA_STREAM_OUT_STB,
    output  reg     DATA_STREAM_OUT_ACK,
    
    output  [7:0]   DATA_STREAM_IN,
    output          DATA_STREAM_IN_STB,
    input           DATA_STREAM_IN_ACK,

    // interface to module opb_emu_target
    // RX FIFO 
    input           RX_FIFO_RD,
    output  [7:0]   RX_FIFO_DATA,
    output          RX_FIFO_EMPTY,

    // TX FIFO
    input           TX_FIFO_WR,
    input   [7:0]   TX_FIFO_DATA,
    output          TX_FIFO_FULL
);

    wire            rx_fifo_wr;
    wire            rx_fifo_full;
    wire            tx_fifo_empty;
    wire            tx_fifo_rd;

    // RX FIFO
    afifo #(
        .DSIZE(8),
        .ASIZE(4)
    )rx_fifo_inst(
        .i_wclk(OPB_CLK),
        .i_wrst_n(~OPB_RST),
        .i_wr(rx_fifo_wr),
        .i_wdata(DATA_STREAM_OUT),
        .o_wfull(rx_fifo_full),
		.i_rclk(OPB_CLK),
        .i_rrst_n(~OPB_RST),
        .i_rd(RX_FIFO_RD),
        .o_rdata(RX_FIFO_DATA),
        .o_rempty(RX_FIFO_EMPTY)
    );

    // rx_fifo_wr
    assign rx_fifo_wr = DATA_STREAM_OUT_STB && DATA_STREAM_OUT_ACK;

    // DATA_STREAM_OUT_ACK
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            DATA_STREAM_OUT_ACK <= 1'b0;
        end else if (DATA_STREAM_OUT_STB && (~rx_fifo_full)) begin
            DATA_STREAM_OUT_ACK <= 1'b1;
        end else begin
            DATA_STREAM_OUT_ACK <= 1'b0;
        end
    end

    // TX FIFO
    afifo #(
        .DSIZE(8),
        .ASIZE(4)
    )tx_fifo_inst(
        .i_wclk(OPB_CLK),
        .i_wrst_n(~OPB_RST),
        .i_wr(TX_FIFO_WR),
        .i_wdata(TX_FIFO_DATA),
        .o_wfull(TX_FIFO_FULL),
		.i_rclk(OPB_CLK),
        .i_rrst_n(~OPB_RST),
        .i_rd(tx_fifo_rd),
        .o_rdata(DATA_STREAM_IN),
        .o_rempty(tx_fifo_empty)
    );

    // DATA_STREAM_IN_STB
    assign DATA_STREAM_IN_STB = ~tx_fifo_empty; 

    // tx_fifo_rd
    assign tx_fifo_rd = DATA_STREAM_IN_ACK && (~tx_fifo_empty);

endmodule