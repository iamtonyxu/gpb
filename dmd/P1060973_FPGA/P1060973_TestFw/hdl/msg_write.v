`timescale 1ns/1ps

/*-----------------------------------------------------------------------------------------------------------
--
-- Module name: msg_write
--
-- Description: This module is to construct and send the message to module msg_buffer after a valid OPB read/write operation.
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

module msg_write(
    /* system clock and reset */
    input               OPB_CLK,
    input               OPB_RST,
    input               PULSE_2KHZ,

    /* interface to TX FIFO */
    output  reg         TX_FIFO_WR,
    output  reg [7:0]   TX_FIFO_DATA,
    input               TX_FIFO_FULL,

    /* interface to OPB interface */
    input       [31:0]  OPB_DI,
    input       [31:0]  OPB_DO,
    input       [31:0]  OPB_ADDR,
    input               OPB_RE,
    input               OPB_WE,

    /* error flag */
    output              error_flag
);

    /* state machine */
    parameter IDLE_STATE = 8'h00; // idle state
    parameter HEAD_STATE = 8'h01; // header state, 1 byte, 0x5A or 0x5B
    parameter ADDR_STATE = 8'h02; // address state, 4 bytes
    parameter DATA_STATE = 8'h03; // data state, 4 bytes
    parameter TAIL_STATE = 8'h04; // tail state, 1 byte, 0xA5 or 0xA4
    parameter DONE_STATE = 8'h05; // done state, then return to idle state
    parameter ERROR_STATE = 8'h06;// error state, assert error_flag

    reg [7:0] state; // current state
    reg [7:0] next_state; // next state

    /* tx_byte */
    reg [7:0] tx_header; // header byte, 0x5A or 0x5B
    reg [7:0] tx_tail; // tail byte, 0xA5 or 0xA4
    reg [31:0] tx_addr; // address byte, 4 bytes
    reg [31:0] tx_data; // data byte, 4 bytes
    // byte_cnt
    reg [3:0] byte_cnt; // byte counter, 0-9, 10 bytes in total

    // timeout counter
    reg [15:0] timeout_cnt; // 16-bit counter for timeout
    /* TIMEOUT_LIMIT Calculation
     * a frame of message is 10 bytes, each byte has 8 bits data, 1 start bit and 1 stop bit.
     * 10 bytes * 10 bits / 115200 baud rate = 0.868 ms
     * OPB clock is 100 MHz
     * a message takes 0.69*100e3 = 868 clock cycles */
    parameter TIMEOUT_LIMIT = 16'd200; // assume 2KHz clock and 100ms timeout
    wire timeout_flag; // timeout flag

    // state machine
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            state <= IDLE_STATE;
        end else begin
            state <= next_state;
        end
    end

    // next state logic
    always @(*) begin
        case(state)
            IDLE_STATE: begin
                if (OPB_RE||OPB_WE) begin
                    next_state = HEAD_STATE;
                end else begin
                    next_state = IDLE_STATE;
                end
            end
            HEAD_STATE: begin
                if(timeout_flag) begin
                    next_state = ERROR_STATE; // timeout error
                end else if (!TX_FIFO_FULL) begin
                    next_state = ADDR_STATE;
                end else begin
                    next_state = HEAD_STATE;
                end
            end
            ADDR_STATE: begin
                if(timeout_flag) begin
                    next_state = ERROR_STATE; // timeout error
                end else if (!TX_FIFO_FULL && (byte_cnt == 4)) begin
                    next_state = DATA_STATE;
                end else begin
                    next_state = ADDR_STATE;
                end
            end
            DATA_STATE: begin
                if(timeout_flag) begin
                    next_state = ERROR_STATE; // timeout error
                end else if (!TX_FIFO_FULL && (byte_cnt == 8)) begin
                    next_state = TAIL_STATE;
                end else begin
                    next_state = DATA_STATE;
                end
            end
            TAIL_STATE: begin
                next_state = DONE_STATE;
            end
            DONE_STATE: begin
                next_state = IDLE_STATE;
            end
            ERROR_STATE: begin
                next_state = IDLE_STATE;
            end
            default: begin
                next_state = ERROR_STATE;
            end
        endcase
    end

    // byte count logic
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            byte_cnt <= 0;
        end else if (state == HEAD_STATE || state == ADDR_STATE || state == DATA_STATE || state == TAIL_STATE) begin
            if(!TX_FIFO_FULL) begin
                byte_cnt <= byte_cnt + 1; // increment byte count if TX FIFO is not full
            end else begin
                byte_cnt <= byte_cnt; // keep the same value if TX FIFO is full
            end
        end else begin
            byte_cnt <= 0;
        end
    end

    // tx_header and tx_tail logic
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            tx_header <= 8'h5A; // default header byte
            tx_tail <= 8'hA5; // default tail byte
        end if(OPB_WE) begin
            tx_header <= 8'h5A; // set header byte to 0x5A for write operation
            tx_tail <= 8'hA5; // set tail byte to 0xA5 for write operation
        end else if (OPB_RE) begin
            tx_header <= 8'h5B; // set header byte to 0x5B for read operation
            tx_tail <= 8'hA4; // set tail byte to 0xA4 for read operation
        end else begin
            tx_header <= tx_header; // keep the same header byte
            tx_tail <= tx_tail; // keep the same tail byte
        end
    end

    // tx_addr logic
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            tx_addr <= 32'b0; // reset address byte to 0
        end else if(OPB_WE || OPB_RE) begin
            tx_addr <= OPB_ADDR; // store address byte
        end else if (state == ADDR_STATE) begin
            tx_addr <= {tx_addr[23:0], 8'h00}; // shift in address byte
        end else begin
            tx_addr <= tx_addr; // keep the same value in other states
        end
    end

    // tx_data logic
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            tx_data <= 32'b0; // reset data byte to 0
        end else if(OPB_WE) begin
            tx_data <= OPB_DO; // store data byte
        end else if (OPB_RE) begin
            tx_data <= OPB_DI; // store data byte
        end else if (state == DATA_STATE) begin
            tx_data <= {tx_data[23:0], 8'h00}; // shift in data byte
        end else begin
            tx_data <= tx_data; // keep the same value in other states
        end
    end

    // TX_FIFO_DATA logic
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            TX_FIFO_DATA <= 8'h00; // reset TX_FIFO_DATA to 0
        end else if (state == HEAD_STATE) begin
            TX_FIFO_DATA <= tx_header; // store header byte
        end else if (state == ADDR_STATE) begin
            TX_FIFO_DATA <= tx_addr[31:24]; // store address byte
        end else if (state == DATA_STATE) begin
            TX_FIFO_DATA <= tx_data[31:24]; // store data byte
        end else if (state == TAIL_STATE) begin
            TX_FIFO_DATA <= tx_tail; // store tail byte
        end else begin
            TX_FIFO_DATA <= 8'h00; // pass 0 in other states
        end
    end

    //TX_FIFO_WR
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            TX_FIFO_WR <= 1'b0; // reset TX_FIFO_WR to 0
        end else if (state == HEAD_STATE || state == ADDR_STATE || state == DATA_STATE || state == TAIL_STATE) begin
            TX_FIFO_WR <= (!TX_FIFO_FULL) ? 1'b1 : 1'b0; // assert TX_FIFO_WR if TX FIFO is not full
        end else begin
            TX_FIFO_WR <= 1'b0; // deassert TX_FIFO_WR in other states
        end
    end

    // timeout_cnt
    always@(posedge PULSE_2KHZ or posedge OPB_RST) begin
        if (OPB_RST) begin
            timeout_cnt <= 16'b0; // reset timeout_cnt to 0
        end else if (state == IDLE_STATE) begin
            timeout_cnt <= 16'b0; // reset timeout_cnt to 0 in idle state
        end else if (state == HEAD_STATE || state == ADDR_STATE || state == DATA_STATE || state == TAIL_STATE) begin
            if (timeout_cnt < TIMEOUT_LIMIT) begin
                timeout_cnt <= timeout_cnt + 1; // increment timeout_cnt if not reached limit
            end
        end else begin
            timeout_cnt <= timeout_cnt; // keep the same value in other states
        end
    end

    // timeout_flag
    assign timeout_flag = (timeout_cnt >= TIMEOUT_LIMIT) ? 1'b1 : 1'b0; // assert timeout_flag if timeout_cnt reaches limit

    // error_flag
    assign error_flag = (state == ERROR_STATE) ? 1'b1 : 1'b0; // assert error_flag if in error state

endmodule