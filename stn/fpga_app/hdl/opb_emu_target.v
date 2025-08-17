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

    // Send Ping message every 1s to OPB master before the OPB master send a write/read request
    // Ping message is [5A AA BB CC DD 11 22 33 44 A5]
    parameter PING_LENGTH = 10;

    // state machine
    // IDLE: enter IDLE after reset
    // PING: send ping message every 1s before any OPB Write/Rread
    // OPB: handle OPB Write/Read
    parameter IDLE = 2'h0;
    parameter PING = 2'h1;
    parameter OPB = 2'h2;
    reg     [1:0] state;

    reg     ping_mode;
    reg     [3:0] ping_counter;
    wire    trigger_per1s; // trigger Ping every 1s in ping mode
    wire    PULSE_1HZ;
    reg     pulse_1hz_r;

    wire    TX_FIFO_WR_FROM_OPB;
    wire    [7:0] TX_FIFO_DATA_FROM_OPB;
    
    reg     OPB_RE_d1; // 1 clk delay of OPB_RE

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
        .TX_FIFO_WR(TX_FIFO_WR_FROM_OPB),
        .TX_FIFO_DATA(TX_FIFO_DATA_FROM_OPB),
        .TX_FIFO_FULL(TX_FIFO_FULL),
        .OPB_DI(OPB_DI),
        .OPB_DO(OPB_DO),
        .OPB_ADDR(OPB_ADDR),
        .OPB_RE(OPB_RE_d1),
        .OPB_WE(OPB_WE),
        .error_flag(error_flag_msg_write)
    );

    always @(posedge SYS_CLK or posedge SYS_RST) begin
        if(SYS_RST) begin
            OPB_RE_d1 <= 1'b0;
        end else begin
            OPB_RE_d1 <= OPB_RE;
        end
    end
    // ping_mode
    always @(posedge SYS_CLK or posedge SYS_RST) begin
        if(SYS_RST) begin
            ping_mode <= 1'b1;
        end else if(OPB_WE || OPB_RE) begin
            ping_mode <= 1'b0;
        end
    end

    // PULSE_1HZ
	CLOCK_DIV clkgen_1hz(
		.CLK_DIV(16'd250),
		.CLK_IN(PULSE_2KHZ),
        .RST(SYS_RST),
		.CLK_OUT(PULSE_1HZ)
	);

    // pulse_1hz_r
    always @(posedge SYS_CLK) begin
        pulse_1hz_r <= PULSE_1HZ;
    end

    // trigger_per1s
    assign trigger_per1s = PULSE_1HZ && ~pulse_1hz_r;

    // state machine
    always @(posedge SYS_CLK or posedge SYS_RST) begin
        if(SYS_RST) begin
            state <= IDLE;
        end else begin
            case(state)
                IDLE: begin
                    if(ping_mode) begin
                        if(trigger_per1s) begin
                            state <= PING;
                        end else begin
                            state <= IDLE;
                        end
                    end else begin
                        state <= OPB;
                    end
                end
                PING: begin // Send Ping then go back IDLE state
                    if(ping_counter < PING_LENGTH+1) begin
                        state <= PING;
                    end else begin
                        state <= IDLE;
                    end
                end
                OPB: begin
                    state <= OPB;
                end
            endcase
        end
    end

    // ping_counter
    always @(posedge SYS_CLK or posedge SYS_RST) begin
        if (SYS_RST) begin
            ping_counter <= 0;
        end else if(state == PING) begin
            if (ping_counter < PING_LENGTH+1) begin
                ping_counter <= ping_counter + 1;
            end else begin
                ping_counter <= 0;
            end
        end
    end

    assign TX_FIFO_WR   =   (ping_counter > 0 && ping_counter < 11) ? 1: TX_FIFO_WR_FROM_OPB;
    assign TX_FIFO_DATA =   (ping_counter == 1) ? 8'h5A :
                            (ping_counter == 2) ? 8'hAA :
                            (ping_counter == 3) ? 8'hBB :
                            (ping_counter == 4) ? 8'hCC :
                            (ping_counter == 5) ? 8'hDD :
                            (ping_counter == 6) ? 8'h11 :
                            (ping_counter == 7) ? 8'h22 :
                            (ping_counter == 8) ? 8'h33 :
                            (ping_counter == 9) ? 8'h44 :
                            (ping_counter == 10) ? 8'hA5 : TX_FIFO_DATA_FROM_OPB;

endmodule