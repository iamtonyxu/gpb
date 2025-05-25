`timescale 1ns/100ps

/*
* MSSB_IF.v
* This module is to test MSSB communication between MSSB_TX and MSSB_RX.
* It handles the read and write operations to the MSSB bus.
* After trans_bytes and trans_start configured via OPB write,
* The known pattern (0,1,2,3...255,0,1,...) is sent from MSSB_TX to MSSB_RX;
* Then, the received data is compared with the known pattern.
* Received bytes and error status are reported via OPB read.
* The error status is set when the received data does not match the known pattern.
*
* NOTE: 
* 1. The default trasnmit bytes count is 500K = 20'h7A120
* 2. The Max transmit bytes count is 1M = 20'hF4240
* 3. The Baud rate is 921600 bps (or 921.6K bps), and the package with 1M bytes takes ~10.85s.
* 4. The MSSB_IF module is a test module and should be used for testing purposes only.
*/

// Address of Internal Registers
`define ADDR_MSSB_CONFIG     4'h0 // {[31]:trans_start, [19:0]:trans_bytes}
`define ADDR_MSSB_STATUS     4'h1 // {2'b00: busy; 2'b01: done without error, 2'b11: done with error}
`define ADDR_RECV_BYTES      4'h2 // {[19:0]:recv_bytes}
`define ADDR_ERROR_BYTES     4'h3 // {[19:0]:error_bytes}

module MSSB_IF (
    // OPB Interface
    input                   OPB_CLK, //100MHz
    input                   OPB_RST,
    input       [31:0]      OPB_ADDR,
    input       [31:0]      OPB_DI,
    input                   MSSB_IF_RE,
    input                   MSSB_IF_WE,
    output  reg [31:0]      OPB_DO,

    // MSSB IF
    output                  MSSB_TX,
    input                   MSSB_RX
);

    parameter BAUD_RATE = 921600; // 921.6K bps
    parameter CLOCK_FREQUENCY = 100000000; // 100MHz
    parameter MAX_TRANSMIT_BYTES = 20'hF4240; // 1M bytes
    //parameter MAX_TRANSMIT_BYTES = 20'h2710; // 10K bytes
    parameter MIN_TRANSMIT_BYTES = 20'h2710; // 10K bytes

    // state machine for MSSB transmission
    // The state machine has two states: ST_IDLE and ST_MSSB_TX
    // ST_IDLE: waiting for transmission start
    // ST_MSSB_TX: sending data from MSSB_TX to MSSB_RX, and will return to ST_IDLE when trans_bytes reached
    parameter ST_IDLE = 2'b00; // Idle state, waiting for transmission start
    parameter ST_MSSB_TX = 2'b01; // Transmission state, sending data from MSSB_TX to MSSB_RX
    reg [1:0] state; // Current state of the state machine

    // Internal Registers
    // Configuration register for MSSB
    // mssb_config[31]: trans_start, write 1 to start the transmission, and self-clear to 0
    // mssb_config[30:20]: 0 for reserved
    // mssb_config[19:0]: trans_bytes, the number of bytes to be transmitted, default is 500K (20'h7A120)
    reg [31:0] mssb_config; 
    wire trans_start; // Start transmission signal
    wire [19:0] set_trans_bytes; // Number of bytes to be transmitted (set)

    // Status register for MSSB
    // mssb_status = 2'b00: busy
    // mssb_status = 2'b01: done without error
    // mssb_status = 2'b11: done with error
    reg [31:0] mssb_status; // Status register for MSSB, only 2 bits are used
    reg [31:0] mssb_recv_bytes; // Received bytes register, only 20 bits are used
    reg [31:0] mssb_error_bytes; // Error bytes register, only 20 bits are used

    // interface to module cmn_uart
    // The input data: 8 bit - this is the UART sender
    // Provide data on DATA_STREAM_IN and set STB to high
    // Keep the data stable until ACK is set to high which shows that
    // the data is copied into the internal buffer. Then you should
    // revoke STB and you can change IN as you want.
    reg        [7:0]    DATA_STREAM_IN;
    reg                 DATA_STREAM_IN_STB;
    wire                DATA_STREAM_IN_ACK;
    reg        [19:0]   actual_trans_bytes; // Number of bytes to be transmitted (act)

    // The output data: 8 bit - this is the UART receiver
    // Data is only valid during the time the STB is high
    // Acknowledge the data with a pulse on ACK, which is confirmed by revoking STB.
    wire       [7:0]    DATA_STREAM_OUT;
    reg        [7:0]    DATA_STREAM_OUT_EXPECTED; // Expected data for comparison
    wire                DATA_STREAM_OUT_STB;
    reg                 DATA_STREAM_OUT_ACK;

    // state machine for MSSB transmission
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            state <= ST_IDLE; // Reset to idle state
        end else begin
            case (state)
                ST_IDLE: begin
                    if (trans_start) begin // Start transmission signal is high
                        state <= ST_MSSB_TX; // Transition to transmission state
                    end else begin
                        state <= ST_IDLE; // Stay in idle state
                    end
                end
                ST_MSSB_TX: begin
                    if (actual_trans_bytes >= set_trans_bytes) begin // Check if the number of transmitted bytes reached the set value
                        state <= ST_IDLE; // Transition back to idle state
                    end else begin
                        state <= ST_MSSB_TX; // Stay in transmission state
                    end
                end
                default: begin
                    state <= ST_IDLE; // Default to idle state for any other case
                end
            endcase
        end
    end

    // DATA_STREAM_IN
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            DATA_STREAM_IN <= 8'h0; // Reset the output data stream
        end else if (state == ST_MSSB_TX) begin
            if(DATA_STREAM_IN_ACK) begin // Check if the data stream output is acknowledged
                DATA_STREAM_IN <= DATA_STREAM_IN + 1; // Increment the output data stream
            end
        end else begin
            DATA_STREAM_IN <= 8'h0; // Reset the output data stream when not in transmission state
        end
    end

    // DATA_STREAM_IN_STB
    // The strobe signal is set high when the state is ST_MSSB_TX
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            DATA_STREAM_IN_STB <= 1'b0; // Reset the output data stream strobe signal
        end else if (state == ST_MSSB_TX) begin
            DATA_STREAM_IN_STB <= 1'b1; // Set the output data stream strobe signal high during transmission
        end else begin
            DATA_STREAM_IN_STB <= 1'b0; // Reset the output data stream strobe signal when not in transmission state
        end
    end

    // actual_trans_bytes
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            actual_trans_bytes <= 20'h0; // Reset the actual transmitted bytes count
        end else if (state == ST_MSSB_TX) begin
            if (DATA_STREAM_IN_ACK) begin // Check if the data stream output is acknowledged
                actual_trans_bytes <= actual_trans_bytes + 1; // Increment the actual transmitted bytes count
            end
        end else if ((state == ST_IDLE) && trans_start) begin
            actual_trans_bytes <= 20'h0; // Reset the actual transmitted bytes count when transmission starts
        end
    end



    // DATA_STREAM_OUT_ACK
    // The acknowledge signal is set high when DATA_STREAM_OUT_STB is high
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            DATA_STREAM_OUT_ACK <= 1'b0; // Reset the input data stream acknowledge signal
        end else if (DATA_STREAM_OUT_STB) begin
            DATA_STREAM_OUT_ACK <= 1'b1; // Set the input data stream acknowledge signal high when data is received
        end else begin
            DATA_STREAM_OUT_ACK <= 1'b0; // Reset the input data stream acknowledge signal when not receiving data
        end
    end

    // mssb_recv_bytes
    // The number of received bytes is updated when DATA_STREAM_OUT_ACK is high
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            mssb_recv_bytes <= 20'h0; // Reset the received bytes count
        end else if (DATA_STREAM_OUT_ACK && DATA_STREAM_OUT_STB) begin
            mssb_recv_bytes <= mssb_recv_bytes + 1; // Increment the received bytes count when data is acknowledged
        end else if((state == ST_IDLE) && trans_start) begin
            mssb_recv_bytes <= 20'h0; // Reset the received bytes count when transmission starts
        end
    end

    // DATA_STREAM_OUT_EXPECTED
    // The expected data is updated when DATA_STREAM_OUT_ACK is high and incremented by 1
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            DATA_STREAM_OUT_EXPECTED <= 8'h0; // Reset the expected data
        end else if (DATA_STREAM_OUT_ACK && DATA_STREAM_OUT_STB) begin
            DATA_STREAM_OUT_EXPECTED <= DATA_STREAM_OUT_EXPECTED + 8'h1; // Increment the expected data when data is acknowledged
        end else if((state == ST_IDLE) && trans_start) begin
            DATA_STREAM_OUT_EXPECTED <= 8'h0; // Reset the expected data when not in transmission state
        end
    end

    // mssb_error_bytes
    // The number of error bytes is updated when DATA_STREAM_OUT_ACK is high
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            mssb_error_bytes <= 20'h0; // Reset the error bytes count
        end else if (DATA_STREAM_OUT_ACK && DATA_STREAM_OUT_STB) begin
            if (DATA_STREAM_OUT != DATA_STREAM_OUT_EXPECTED) begin // Check if the received data matches the expected data
                mssb_error_bytes <= mssb_error_bytes + 1; // Increment the error bytes count if there is a mismatch
            end
        end else if((state == ST_IDLE) && trans_start) begin
            mssb_error_bytes <= 20'h0; // Reset the error bytes count when transmission starts
        end
    end

    // mssb_status
    // The status register is updated when actual_trans_bytes reaches the set value
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            mssb_status <= 32'h0; // Reset the status register
        end else if (actual_trans_bytes >= set_trans_bytes) begin // Check if the number of transmitted bytes reached the set value
            mssb_status[0] <= 1; // Check if the received bytes count matches the set value
            mssb_status[1] <= ((mssb_recv_bytes < actual_trans_bytes) | (mssb_error_bytes > 0)); // Check if there are any error bytes
        end else if((state == ST_IDLE) && trans_start) begin
            mssb_status <= 32'h0; // Reset the status register when transmission starts
        end
    end

    // mssb_config are updated when OPB write
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            mssb_config[31:20] <= 0; // Reset the configuration register
            mssb_config[19:0] <= MIN_TRANSMIT_BYTES; // Set the default transmit bytes count to 10K
        end else if (MSSB_IF_WE && (OPB_ADDR[3:0] == `ADDR_MSSB_CONFIG)) begin
            mssb_config <= OPB_DI; // Update the configuration register with OPB data input
            if(OPB_DI[19:0] > MAX_TRANSMIT_BYTES) begin
                mssb_config[19:0] <= MAX_TRANSMIT_BYTES; // Limit the transmit bytes count to 1M
            end else begin
                mssb_config[19:0] <= OPB_DI[19:0]; // Set the transmit bytes count to the value in OPB data input
            end
        end else if(mssb_config[31]) begin
            mssb_config[31] <= 1'b0; // Self-clear
        end
    end

    // OPB read mssb_config and mssb_status
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            OPB_DO <= 32'h0;
        end else if (MSSB_IF_RE && (OPB_ADDR[3:0] == `ADDR_MSSB_CONFIG)) begin
            OPB_DO <= mssb_config; // Read the config register
        end else if (MSSB_IF_RE && (OPB_ADDR[3:0] == `ADDR_MSSB_STATUS)) begin
            OPB_DO <= mssb_status; // Read the status register for ST_MSSB_TX
        end else if (MSSB_IF_RE && (OPB_ADDR[3:0] == `ADDR_RECV_BYTES)) begin
            OPB_DO <= mssb_recv_bytes; // Read the received bytes register
        end else if (MSSB_IF_RE && (OPB_ADDR[3:0] == `ADDR_RECV_BYTES)) begin
            OPB_DO <= mssb_error_bytes; // Read the error bytes register
        end else begin
            OPB_DO <= 32'h0;
        end
    end

    assign trans_start = mssb_config[31]; // Start transmission signal
    assign set_trans_bytes = mssb_config[19:0]; // Number of bytes to be transmitted

    // Instantiate the VHDL cmn_uart module
    cmn_uart #(
        .BAUD_RATE(BAUD_RATE),
        .CLOCK_FREQUENCY(CLOCK_FREQUENCY)
    ) cmn_uart_inst (
        .CLOCK(OPB_CLK),
        .RESET(OPB_RST),
        .uart_active(1'b1),
        .DATA_STREAM_IN(DATA_STREAM_IN),
        .DATA_STREAM_IN_STB(DATA_STREAM_IN_STB),
        .DATA_STREAM_IN_ACK(DATA_STREAM_IN_ACK),
        .next_command_ready(),
        .DATA_STREAM_OUT(DATA_STREAM_OUT),
        .DATA_STREAM_OUT_STB(DATA_STREAM_OUT_STB),
        .DATA_STREAM_OUT_ACK(DATA_STREAM_OUT_ACK),
        .TX(MSSB_TX),
        .RX(MSSB_RX),
        .debug_uart_phy()
    );


endmodule
