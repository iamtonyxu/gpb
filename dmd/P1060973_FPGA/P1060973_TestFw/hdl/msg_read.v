`timescale 1ns/1ps

/*-----------------------------------------------------------------------------------------------------------
--
-- Module name: msg_read
--
-- Description: This module is to parse the message from module msg_buffer and generate a valid OPB read/write signal.
-- A message frame has 10 bytes, which includes a header, a payload, and a tail, see dtetails as below:
--  
--  | Byte-1 | Byte-2 | Byte-3 | Byte-4 | Byte-5 | Byte-6 | Byte-7 | Byte-8 | Byte-9 | Byte-10 |
--  | Header |               OPB_ADDR            |               OPB_DATA            |   Tail  |
--
-- OPB Write: Header = 0x5A, Tail = 0xA5, OPB_ADDR = 4 bytes, OPB_DATA = 4 bytes.
-- OPB Read:  header = 0x5B, Tail = 0xA4, OPB_ADDR = 4 bytes, OPB_DATA = 4 bytes (ignored).
--
-- Author: Yalong Xu
-- Data: 2025-04-16
-- 00.00.00.01  XYL  Initial version number
-----------------------------------------------------------------------------------------------------------*/

module msg_read(
    /* OPB clock and reset */
    input               OPB_CLK,
    input               OPB_RST,
    input               PULSE_2KHZ,

    /* interface to RX FIFO */
    output              RX_FIFO_RD,
    input       [7:0]   RX_FIFO_DATA,
    input               RX_FIFO_EMPTY,

    /* interface to OPB interface */
    output  reg [31:0]  OPB_DO,
    output  reg [31:0]  OPB_ADDR,
    output  reg         OPB_RE,
    output  reg         OPB_WE,

    /* debug signal */
    output              error_flag
);

    /* state machine */
    parameter IDLE = 8'h00; // idle state
    parameter HEAD = 8'h01; // header state, 1 byte, 0x5A or 0x5B
    parameter ADDR = 8'h02; // address state, 4 bytes
    parameter DATA = 8'h03; // data state, 4 bytes
    parameter TAIL = 8'h04; // tail state, 1 byte, 0xA5 or 0xA4
    parameter DONE = 8'h05; // done state, then return to idle state
    parameter ERROR = 8'h06; // error state, assert error_flag

    reg [7:0]   state; // current state
    reg [7:0]   next_state; // next state

    reg [3:0]   byte_cnt; // byte counter, 0-9, 10 bytes in total

    // timeout counter
    reg [15:0]   timeout_cnt; // 16-bit counter for timeout
    /* TIMEOUT_LIMIT Calculation
     * a frame of message is 10 bytes, each byte has 8 bits data, 1 start bit and 1 stop bit.
     * 10 bytes * 10 bits / 115200 baud rate = 0.868 ms
     * OPB clock is 100 MHz
     * a message takes 0.69*100e3 = 868 clock cycles */
    parameter TIMEOUT_LIMIT = 16'd200; //assume 2KHz clock and 100ms timeout

    /* define three types of error_flag */
    parameter ERROR_NONE = 8'h00; // no error
    parameter ERROR_TAIL = 8'h01; // tail error, not 0xA5 or 0xA4
    parameter ERROR_TIMEOUT = 8'h02; // timeout error, no message received in TIMEOUT_LIMIT clock cycles

    reg [7:0] byte_header; // header byte, 0x5A or 0x5B
    reg [7:0] byte_tail; // tail byte, 0xA5 or 0xA4

    // state
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            state <= IDLE;
        end else begin
            state <= next_state;
        end
    end

    // next state logic
    always @(*) begin
        case(state)
            IDLE: begin
                if (byte_cnt > 0) begin
                    next_state = HEAD; // go to header state
                end else begin
                    next_state = IDLE; // stay in idle state
                end
            end

            HEAD: begin
                if( timeout_cnt < TIMEOUT_LIMIT) begin
                    if (byte_header == 8'h5A || byte_header == 8'h5B) begin
                        next_state = ADDR; // go to address state
                    end else begin
                        next_state = HEAD; // stay in header state
                    end
                end else begin
                    next_state = ERROR; // go to error state, timeout error
                end
            end

            ADDR: begin
                if (timeout_cnt < TIMEOUT_LIMIT) begin
                    if(byte_cnt == 4'd5) begin
                        next_state = DATA; // go to data state
                    end else begin
                        next_state = ADDR; // stay in address state
                    end
                end else begin
                    next_state = ERROR; // go to error state, timeout error
                end
            end

            DATA: begin
                if (timeout_cnt < TIMEOUT_LIMIT) begin
                    if(byte_cnt == 4'd9) begin
                        next_state = TAIL; // go to tail state
                    end else begin
                        next_state = DATA; // stay in data state
                    end
                end else begin
                    next_state = ERROR; // go to error state, timeout error
                end
            end

            TAIL: begin
                if(timeout_cnt < TIMEOUT_LIMIT) begin
                    if (byte_cnt == 4'd10)begin
                        if(byte_tail == ~byte_header)begin
                            next_state = DONE; // go to done state, valid message received
                        end else begin
                            next_state = ERROR; // stay in tail state
                        end
                    end else begin
                        next_state = TAIL; // stay in tail state
                    end
                end else begin
                    next_state = ERROR; // go to error state, timeout error
                end
            end

            DONE: begin 
                next_state = IDLE; // go back to idle state after a message is received.
            end

            ERROR: begin 
                next_state = IDLE; // go back to idle state after an error is detected.
            end

            default: begin 
                next_state = IDLE; // default case, go back to idle state.
            end 
        endcase 
    end

    //RX_FIFO_RD
    assign RX_FIFO_RD = (state == IDLE || state == HEAD || state == ADDR || state == DATA || state == TAIL) ? (!RX_FIFO_EMPTY) : 1'b0; // assert RX_FIFO_RD

    // byte counter
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            byte_cnt <= 4'b0000; // reset byte counter to 0
        end else if(RX_FIFO_RD) begin
            byte_cnt <= byte_cnt + 1; // increment byte counter
        end else if(state == DONE || state == ERROR) begin
            byte_cnt <= 4'b0000; // reset byte counter to 0 in IDLE or ERROR
        end 
    end

    // timeout counter
    always @(posedge PULSE_2KHZ or posedge OPB_RST) begin
        if (OPB_RST) begin
            timeout_cnt <= 16'd0; // reset timeout counter to 0
        end else if (state == IDLE) begin
            timeout_cnt <= 16'd0; // reset timeout counter to 0 in idle state
        end else if (state == ADDR || state == DATA || state == TAIL) begin
            if (timeout_cnt < TIMEOUT_LIMIT) begin
                timeout_cnt <= timeout_cnt + 1; // increment timeout counter
            end
        end else begin
            timeout_cnt <= timeout_cnt; // keep the same value in other states
        end 
    end

    // error_flag
    assign error_flag = (state == ERROR); // assert error_flag if in error state

    // byte_header
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            byte_header <= 8'b0; // reset byte_header to 0
        end else if ((state == IDLE) && (byte_cnt == 0) && RX_FIFO_RD) begin
                byte_header <= RX_FIFO_DATA; // store header byte
        end else if(state == DONE || state == ERROR) begin
                byte_header <= 8'b0; // reset byte_header to 0
        end
    end

    // byte_tail
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            byte_tail <= 8'b0; // reset byte_tail to 0
        end else if (byte_cnt == 9) begin
            byte_tail <= RX_FIFO_DATA; // store tail byte
        end else if(state == DONE || state == ERROR) begin
            byte_tail <= 8'b0; // reset byte_tail to 0
        end 
    end

    // OPB_DO
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            OPB_DO <= 32'b0; // reset OPB_DO to 0
        end else if (byte_cnt == 8'd5) begin
            OPB_DO[31:24] <= RX_FIFO_DATA;
        end else if (byte_cnt == 8'd6) begin
            OPB_DO[23:16] <= RX_FIFO_DATA;
        end else if (byte_cnt == 8'd7) begin
            OPB_DO[15:8] <= RX_FIFO_DATA;
        end else if (byte_cnt == 8'd8) begin
            OPB_DO[7:0] <= RX_FIFO_DATA;
        end else if (state == IDLE) begin
            OPB_DO <= 32'b0; // reset OPB_DO to 0
        end 
    end

    // OPB_ADDR
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            OPB_ADDR <= 32'b0; // reset OPB_ADDR to 0
        end else if (byte_cnt == 8'd1) begin
            OPB_ADDR[31:24] <= RX_FIFO_DATA;
        end else if (byte_cnt == 8'd2) begin
            OPB_ADDR[23:16] <= RX_FIFO_DATA;
        end else if (byte_cnt == 8'd3) begin
            OPB_ADDR[15:8] <= RX_FIFO_DATA;
        end else if (byte_cnt == 8'd4) begin
            OPB_ADDR[7:0] <= RX_FIFO_DATA;
        end else if (state == IDLE) begin
            OPB_ADDR <= 32'b0; // reset OPB_ADDR to 0
        end 
    end

    // OPB_RE and OPB_WE
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            OPB_RE <= 1'b0; // reset OPB_RE to 0
            OPB_WE <= 1'b0; // reset OPB_WE to 0
        end else if (next_state == DONE) begin
            OPB_WE <= (byte_header == 8'h5A) ? 1'b1 : 1'b0; // assert OPB_WE for OPB write only
            OPB_RE <= (byte_header == 8'h5B) ? 1'b1 : 1'b0; // assert OPB_RE for OPB read only
        end else begin
            OPB_RE <= 1'b0; // reset OPB_RE to 0 in other states
            OPB_WE <= 1'b0; // reset OPB_WE to 0 in other states
        end 
    end

endmodule