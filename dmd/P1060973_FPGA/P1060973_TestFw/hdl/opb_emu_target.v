`timescale 1ns/100ps

module opb_emu_target(
    /* System clock and reset */
    input               SYS_CLK,
    input               SYS_RST,
    input               PULSE_2KHZ,

    /* Interface to module msg_interface */
    // RX FIFO 
    output              RX_FIFO_RD,
    input       [7:0]   RX_FIFO_DATA,
    input               RX_FIFO_EMPTY,
    // TX FIFO
    output              TX_FIFO_WR,
    output      [7:0]   TX_FIFO_DATA,
    input               TX_FIFO_FULL,

    /* OPB Interface */
    output              OPB_CLK,
    output              OPB_RST,
    input       [31:0]  OPB_DI,
    output      [31:0]  OPB_DO,
    output      [31:0]  OPB_ADDR,
    output              OPB_RE,
    output              OPB_WE,

    // error flag
    output              error_flag

);

    wire    error_flag_msg_read;
    wire    error_flag_msg_write;
    
    assign error_flag = error_flag_msg_read | error_flag_msg_write;

    /* OPB clock and reset */
    assign OPB_CLK = SYS_CLK;
    assign OPB_RST = SYS_RST;

    /* read message and issue OPB operation */
    msg_read msg_read_inst(
        .OPB_CLK(SYS_CLK),
        .OPB_RST(SYS_RST),
        .PULSE_2KHZ(PULSE_2KHZ),
        .RX_FIFO_RD(RX_FIFO_RD),
        .RX_FIFO_DATA(RX_FIFO_DATA),
        .RX_FIFO_EMPTY(RX_FIFO_EMPTY),
        .OPB_DO(OPB_DO),
        .OPB_ADDR(OPB_ADDR),
        .OPB_RE(OPB_RE),
        .OPB_WE(OPB_WE),
        .error_flag(error_flag_msg_read)
    );

    /* read OPB response and write message */
    msg_write msg_write_inst(
        .OPB_CLK(SYS_CLK),
        .OPB_RST(SYS_RST),
        .PULSE_2KHZ(PULSE_2KHZ),
        .TX_FIFO_WR(TX_FIFO_WR),
        .TX_FIFO_DATA(TX_FIFO_DATA),
        .TX_FIFO_FULL(TX_FIFO_FULL),
        .OPB_DI(OPB_DI),
        .OPB_DO(OPB_DO),
        .OPB_ADDR(OPB_ADDR),
        .OPB_RE(OPB_RE),
        .OPB_WE(OPB_WE),
        .error_flag(error_flag_msg_write)
    );

endmodule