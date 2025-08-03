`timescale 1ns/100ps

`define TEST_PATTERN_ADDR       8'h00
`define TX_TRANS_BYTES_ADDR     8'h01 
`define TX_CTRL_ADDR            8'h02
`define RX_STATUS_ADDR          8'h03
`define RX1_RECV_BYTES_ADDR     8'h04
`define RX2_RECV_BYTES_ADDR     8'h05
`define RX3_RECV_BYTES_ADDR     8'h06
`define RX4_RECV_BYTES_ADDR     8'h07
`define RX5_RECV_BYTES_ADDR     8'h08
`define RX6_RECV_BYTES_ADDR     8'h09
`define RX7_RECV_BYTES_ADDR     8'h0A
`define RX8_RECV_BYTES_ADDR     8'h0B
`define RX9_RECV_BYTES_ADDR     8'h0C
`define RX1_ERR_BYTES_ADDR      8'h0D
`define RX2_ERR_BYTES_ADDR      8'h0E
`define RX3_ERR_BYTES_ADDR      8'H0F
`define RX4_ERR_BYTES_ADDR      8'H10
`define RX5_ERR_BYTES_ADDR      8'h11
`define RX6_ERR_BYTES_ADDR      8'h12
`define RX7_ERR_BYTES_ADDR      8'h13
`define RX8_ERR_BYTES_ADDR      8'h14
`define RX9_ERR_BYTES_ADDR      8'h15

module RS422_TEST_IF(
    // OPB Interface
    input                   OPB_CLK,
    input                   OPB_RST,
    input       [31:0]      OPB_DI,
    output reg  [31:0]      OPB_DO,
    input       [31:0]      OPB_ADDR,

    // RS422 RE/WE Signals
    input                   RS422_RE,
    input                   RS422_WE,

    // RS422-IN
    input                   SYNC_LOC_MONITOR,
    input                   SYNC_MONITOR,
    input                   DMD_MSSB_RX,
    input                   ENCODER_RX1,
    input                   ENCODER_RX2,
    input                   BMPLS,
    input                   PRI_QUADR_A,
    input                   PRI_QUADR_B,
    input                   PRI_QUADR_I,

    // RS422-OUT
    output                  SYNC_LOC_OUT,
    output                  SYNC_OUT,
    output                  DMD_MSSB_TX,
    output                  ENCODER_TX1,
    output                  ENCODER_TX2
);

    // UART Baud rate and clock frequency
    parameter BAUD_RATE         = 115200;      // Baud rate
    parameter CLOCK_FREQUENCY   = 100000000;   // Clock frequency in Hz

    // Internal Registers
    reg [7:0]   test_pattern;                   // WRITE AND READ
    reg [31:0]  tx_trans_bytes;                 // WRITE AND READ
    reg [31:0]  tx_ctrl;                        // WRITE AND READ
    reg [31:0]  rx_status;                      // READ-ONLY
    reg [31:0]  rx_recv_bytes [0:8];            // READ-ONLY (indexed 0-8 for RX1-RX9)
    reg [31:0]  rx_err_bytes [0:8];             // READ-ONLY (indexed 0-8 for RX1-RX9)

    reg [31:0]  act_tx_trans_bytes;

    // Test Control Signals
    wire start, stop, clear;

    assign start = tx_ctrl[0];                  // Start transmission
    assign stop  = tx_ctrl[1];                  // Stop transmission
    assign clear = tx_ctrl[2];                  // Clear status registers

    // Data Stream Signals
    reg         data_stream_in_stb;             // Changed from wire to reg since it's driven by always block
    wire        data_stream_in_ack;             // share with all UARTs
    wire [7:0]  data_stream_out [0:8];          // indexed 0-8 for RX1-RX9
    wire [8:0]  data_stream_out_stb;            // bits 0-8 for RX1-RX9
    wire [8:0]  data_stream_out_ack;            // bits 0-8 for RX1-RX9
    wire        txd;                            // txd shared with all UARTs
    wire [8:0]  rxd;                            // bits 0-8 for RX1-RX9

    // state machine for handling RS422 test
    // There are two main states: IDLE and RUNNING
    // In IDLE, the module waits for a start signal
    // In RUNNING, it processes the RS422 signals and updates the registers
    // And it can switch from RUNNING to IDLE on a stop signal or clear command
    // State machine parameters
    parameter IDLE      = 1'b0;
    parameter RUNNING   = 1'b1;

    reg state, next_state;

    // State machine sequential logic
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            state <= IDLE;
        end else begin
            state <= next_state;
        end
    end

    // State machine combinational logic
    always @(*) begin
        case (state)
            IDLE: begin
                if (start && !clear)
                    next_state = RUNNING;
                else
                    next_state = IDLE;
            end
            RUNNING: begin
                if (stop || clear)
                    next_state = IDLE;
                else
                    next_state = RUNNING;
            end
            default: next_state = IDLE;
        endcase
    end

    // OPB Write Logic
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            test_pattern    <= 8'b0;
            tx_trans_bytes  <= 32'b0;
            tx_ctrl         <= 32'b0;
        end else if (RS422_WE) begin
            case (OPB_ADDR[7:0])
                `TEST_PATTERN_ADDR:     test_pattern    <= OPB_DI[7:0];
                `TX_TRANS_BYTES_ADDR:   tx_trans_bytes  <= OPB_DI;
                `TX_CTRL_ADDR:          tx_ctrl         <= OPB_DI;
                default: ;                              // No action for other addresses
            endcase
        end else begin
            if(start) begin
                tx_ctrl[0] <= 1'b0;                     // Clear start signal after processing
            end
            if(stop) begin
                tx_ctrl[1] <= 1'b0;                     // Clear stop signal after processing
            end
            if(clear) begin
                tx_ctrl[2] <= 1'b0;                     // Clear clear signal after processing
            end
        end
    end

    // OPB Read Logic
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            OPB_DO <= 32'b0;
        end else if (RS422_RE) begin
            case (OPB_ADDR[7:0])
                `TEST_PATTERN_ADDR:     OPB_DO <= {24'b0, test_pattern};
                `TX_TRANS_BYTES_ADDR:   OPB_DO <= tx_trans_bytes;
                `TX_CTRL_ADDR:          OPB_DO <= tx_ctrl;
                `RX_STATUS_ADDR:        OPB_DO <= rx_status;
                `RX1_RECV_BYTES_ADDR:   OPB_DO <= rx_recv_bytes[0];
                `RX2_RECV_BYTES_ADDR:   OPB_DO <= rx_recv_bytes[1];
                `RX3_RECV_BYTES_ADDR:   OPB_DO <= rx_recv_bytes[2];
                `RX4_RECV_BYTES_ADDR:   OPB_DO <= rx_recv_bytes[3];
                `RX5_RECV_BYTES_ADDR:   OPB_DO <= rx_recv_bytes[4];
                `RX6_RECV_BYTES_ADDR:   OPB_DO <= rx_recv_bytes[5];
                `RX7_RECV_BYTES_ADDR:   OPB_DO <= rx_recv_bytes[6];
                `RX8_RECV_BYTES_ADDR:   OPB_DO <= rx_recv_bytes[7];
                `RX9_RECV_BYTES_ADDR:   OPB_DO <= rx_recv_bytes[8];
                `RX1_ERR_BYTES_ADDR:    OPB_DO <= rx_err_bytes[0];
                `RX2_ERR_BYTES_ADDR:    OPB_DO <= rx_err_bytes[1];
                `RX3_ERR_BYTES_ADDR:    OPB_DO <= rx_err_bytes[2];
                `RX4_ERR_BYTES_ADDR:    OPB_DO <= rx_err_bytes[3];
                `RX5_ERR_BYTES_ADDR:    OPB_DO <= rx_err_bytes[4];
                `RX6_ERR_BYTES_ADDR:    OPB_DO <= rx_err_bytes[5];
                `RX7_ERR_BYTES_ADDR:    OPB_DO <= rx_err_bytes[6];
                `RX8_ERR_BYTES_ADDR:    OPB_DO <= rx_err_bytes[7];
                `RX9_ERR_BYTES_ADDR:    OPB_DO <= rx_err_bytes[8];
                default:                OPB_DO <= 32'b0;
            endcase
        end
    end

    // RS422-TX UART instance
    cmn_uart #(
        .BAUD_RATE(BAUD_RATE),
        .CLOCK_FREQUENCY(CLOCK_FREQUENCY)
    ) RS422_TX (
        .CLOCK(OPB_CLK),
        .RESET(OPB_RST),
        .uart_active(1'b1),
        .DATA_STREAM_IN(test_pattern),
        .DATA_STREAM_IN_STB(data_stream_in_stb),
        .DATA_STREAM_IN_ACK(data_stream_in_ack),
        .DATA_STREAM_OUT(),
        .DATA_STREAM_OUT_STB(),
        .DATA_STREAM_OUT_ACK(1'b0),
        .TX(txd),
        .RX(1'b0),                              // Not used
        .debug_uart_phy()
    );

    // RS422-RX UART instances using generate
    genvar i;
    generate
        for (i = 0; i < 9; i = i + 1) begin : uart_gen
            cmn_uart #(
                .BAUD_RATE(BAUD_RATE),
                .CLOCK_FREQUENCY(CLOCK_FREQUENCY)
            ) RS422_U (
                .CLOCK(OPB_CLK),
                .RESET(OPB_RST),
                .uart_active(1'b1),
                .DATA_STREAM_IN(8'h00),
                .DATA_STREAM_IN_STB(1'b0),
                .DATA_STREAM_IN_ACK(),
                .next_command_ready(),
                .DATA_STREAM_OUT(data_stream_out[i]),
                .DATA_STREAM_OUT_STB(data_stream_out_stb[i]),
                .DATA_STREAM_OUT_ACK(data_stream_out_ack[i]),
                .TX(),                          // Not used
                .RX(rxd[i]),
                .debug_uart_phy()
            );
        end
    endgenerate

    // data_stream_in_stb
    // assert as 1 when state is RUNNING
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            data_stream_in_stb <= 1'b0;
        end else if (state == RUNNING) begin
            data_stream_in_stb <= 1'b1;         // Set to 1 when running
        end else begin
            data_stream_in_stb <= 1'b0;         // Clear when not running
        end
    end

    // data_stream_out_ack
    generate
        for (i = 0; i < 9; i = i + 1) begin : ack_gen
            assign data_stream_out_ack[i] = data_stream_out_stb[i];
        end
    endgenerate

    // act_tx_trans_bytes
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            act_tx_trans_bytes <= 32'b0;
        end else if(clear) begin
            act_tx_trans_bytes <= 32'b0;
        end else if (data_stream_in_ack) begin
            act_tx_trans_bytes <= act_tx_trans_bytes + 1;
        end
    end

    // rx_recv_bytes
    // rx_recv_bytes[n] increments when data is received
    generate
        for (i = 0; i < 9; i = i + 1) begin : recv_bytes_gen
            always @(posedge OPB_CLK or posedge OPB_RST) begin
                if (OPB_RST) begin
                    rx_recv_bytes[i] <= 32'b0;
                end else if(clear) begin
                    rx_recv_bytes[i] <= 32'b0;     // Clear on clear command
                end else if (data_stream_out_stb[i]) begin
                    rx_recv_bytes[i] <= rx_recv_bytes[i] + 1;   // Increment on data received
                end
            end
        end
    endgenerate

    // rx_err_bytes
    // rx_err_bytes[n] increments when an error is detected
    generate
        for (i = 0; i < 9; i = i + 1) begin : err_bytes_gen
            always @(posedge OPB_CLK or posedge OPB_RST) begin
                if (OPB_RST) begin
                    rx_err_bytes[i] <= 32'b0;
                end else if(clear) begin
                    rx_err_bytes[i] <= 32'b0;      // Clear on clear command
                end else if (data_stream_out_stb[i] && (data_stream_out[i][7:0] != test_pattern)) begin
                    rx_err_bytes[i] <= rx_err_bytes[i] + 1;     // Increment on error detected
                end
            end
        end
    endgenerate

    // rx_status
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            rx_status <= 32'b0;
        end else if (clear) begin
            rx_status <= 32'b0;                 // Clear on clear command
        end else if (act_tx_trans_bytes == tx_trans_bytes) begin
            rx_status[0] <= 1'b1;               // Transmission complete
            rx_status[1] <= (rx_recv_bytes[0] == tx_trans_bytes) ? 1'b1 : 1'b0;
            rx_status[2] <= (rx_recv_bytes[1] == tx_trans_bytes) ? 1'b1 : 1'b0;
            rx_status[3] <= (rx_recv_bytes[2] == tx_trans_bytes) ? 1'b1 : 1'b0;
            rx_status[4] <= (rx_recv_bytes[3] == tx_trans_bytes) ? 1'b1 : 1'b0;
            rx_status[5] <= (rx_recv_bytes[4] == tx_trans_bytes) ? 1'b1 : 1'b0;
            rx_status[6] <= (rx_recv_bytes[5] == tx_trans_bytes) ? 1'b1 : 1'b0;
            rx_status[7] <= (rx_recv_bytes[6] == tx_trans_bytes) ? 1'b1 : 1'b0;
            rx_status[8] <= (rx_recv_bytes[7] == tx_trans_bytes) ? 1'b1 : 1'b0;
            rx_status[9] <= (rx_recv_bytes[8] == tx_trans_bytes) ? 1'b1 : 1'b0;
        end
    end

    // Connect txd and rxd to actual RS422 signals as needed
    // Example connections (modify based on your actual signal mapping):
    // Note: only the first txd is used for the output
    assign SYNC_LOC_OUT = txd;
    assign SYNC_OUT     = txd;
    assign DMD_MSSB_TX  = txd;
    assign ENCODER_TX1  = txd;
    assign ENCODER_TX2  = txd;

    assign rxd[0] = SYNC_LOC_MONITOR;
    assign rxd[1] = SYNC_MONITOR;
    assign rxd[2] = DMD_MSSB_RX;
    assign rxd[3] = ENCODER_RX1;
    assign rxd[4] = ENCODER_RX2;
    assign rxd[5] = BMPLS;
    assign rxd[6] = PRI_QUADR_A;
    assign rxd[7] = PRI_QUADR_B;
    assign rxd[8] = PRI_QUADR_I;

endmodule