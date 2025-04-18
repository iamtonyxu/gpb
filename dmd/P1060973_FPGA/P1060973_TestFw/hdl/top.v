`timescale 1ns/100ps

module top(
    // system clock and reset
    input               SYS_CLK,
    input               SYS_RST,
    input               PULSE_2KHZ,

    /* OPB Interface */
    output              OPB_CLK,
    output              OPB_RST,
    input       [31:0]  OPB_DI,
    output      [31:0]  OPB_DO,
    output      [31:0]  OPB_ADDR,
    output              OPB_RE,
    output              OPB_WE,

    // Uart
    output              UART_TXD,
    input               UART_RXD
);

    // UART Baud rate and clock frequency
    parameter BAUD_RATE = 115200; // Baud rate
    parameter CLOCK_FREQUENCY = 100000000; // Clock frequency in Hz

    // interface to module cmn_uart
    wire       [7:0]    DATA_STREAM_OUT;
    wire                DATA_STREAM_OUT_STB;
    wire                DATA_STREAM_OUT_ACK;
    wire       [7:0]    DATA_STREAM_IN;
    wire                DATA_STREAM_IN_STB;
    wire                DATA_STREAM_IN_ACK;

    // RX FIFO 
    wire                rx_fifo_rd;
    wire        [7:0]   rx_fifo_data;
    wire                rx_fifo_empty;
    // TX FIFO
    wire                tx_fifo_wr;
    wire        [7:0]   tx_fifo_data;
    wire                tx_fifo_full;

    // Instantiate the VHDL cmn_uart module
    cmn_uart #(
        .BAUD_RATE(BAUD_RATE),
        .CLOCK_FREQUENCY(CLOCK_FREQUENCY)
    ) cmn_uart_inst (
        .CLOCK(SYS_CLK),
        .RESET(SYS_RST),
        .uart_active(1'b1),
        .DATA_STREAM_IN(DATA_STREAM_IN),
        .DATA_STREAM_IN_STB(DATA_STREAM_IN_STB),
        .DATA_STREAM_IN_ACK(DATA_STREAM_IN_ACK),
        .next_command_ready(),
        .DATA_STREAM_OUT(DATA_STREAM_OUT),
        .DATA_STREAM_OUT_STB(DATA_STREAM_OUT_STB),
        .DATA_STREAM_OUT_ACK(DATA_STREAM_OUT_ACK),
        .TX(UART_TXD),
        .RX(UART_RXD),
        .debug_uart_phy()
    );

    msg_buffer msg_buffer_inst(
        .OPB_CLK(SYS_CLK),
        .OPB_RST(SYS_RST),

        .DATA_STREAM_OUT(DATA_STREAM_OUT),
        .DATA_STREAM_OUT_STB(DATA_STREAM_OUT_STB),
        .DATA_STREAM_OUT_ACK(DATA_STREAM_OUT_ACK),
        .DATA_STREAM_IN(DATA_STREAM_IN),
        .DATA_STREAM_IN_STB(DATA_STREAM_IN_STB),
        .DATA_STREAM_IN_ACK(DATA_STREAM_IN_ACK),

        .RX_FIFO_RD(rx_fifo_rd),
        .RX_FIFO_DATA(rx_fifo_data),
        .RX_FIFO_EMPTY(rx_fifo_empty),
        .TX_FIFO_WR(tx_fifo_wr),
        .TX_FIFO_DATA(tx_fifo_data),
        .TX_FIFO_FULL(tx_fifo_full)
    );

    opb_emu_target opb_emu_target_inst(
        .SYS_CLK(SYS_CLK),
        .SYS_RST(SYS_RST),
        .PULSE_2KHZ(PULSE_2KHZ),

        .RX_FIFO_RD(rx_fifo_rd),
        .RX_FIFO_DATA(rx_fifo_data),
        .RX_FIFO_EMPTY(rx_fifo_empty),
        .TX_FIFO_WR(tx_fifo_wr),
        .TX_FIFO_DATA(tx_fifo_data),
        .TX_FIFO_FULL(tx_fifo_full),

        .OPB_CLK(OPB_CLK),
        .OPB_RST(OPB_RST),
        .OPB_DI(OPB_DI),
        .OPB_DO(OPB_DO),
        .OPB_ADDR(OPB_ADDR),
        .OPB_RE(OPB_RE),
        .OPB_WE(OPB_WE),

        .error_flag()
    );

endmodule