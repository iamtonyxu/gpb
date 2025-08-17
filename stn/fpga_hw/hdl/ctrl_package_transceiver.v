
`timescale 1ns/100ps

module ctrl_package_transceiver (
    input  wire         sys_clk,
    input  wire         rst_n,
    input  wire         tx_start,
    output reg          tx_done,
    output reg          rx_good,

    // tx_package
    input  wire [127:0] tx_package_i,
    output wire [127:0] rx_package_o,

    // tx
    output wire         ctrl_tx_clk,
    output reg  [1:0]   ctrl_tx_data,
    output reg          ctrl_tx_en,

    // rx
    output wire         ctrl_rx_clk,
    input  wire [1:0]   ctrl_rx_data,
    input  wire         ctrl_rx_dv
);

    assign ctrl_tx_clk = sys_clk; // System clock for TX
    assign ctrl_rx_clk = sys_clk; // System clock for RX

    // define a tx package consists of 128bit and initialized with special pattern
    reg [127:0] tx_package = 128'hA5B6C7D8_E9FA0B1C_2D3E4F50_61728394;
    reg [127:0] rx_package;
    reg [7:0]   rx_bit_cnt;

    // tx logic, transmit a package when tx_start is asserted
    reg [7:0] bit_cnt;
    reg [1:0] state;
    localparam IDLE = 2'b00;
    localparam SEND = 2'b01;
    localparam DONE = 2'b10;

    // TX state machine
    always @(posedge ctrl_tx_clk or negedge rst_n) begin
        if (!rst_n) begin
            ctrl_tx_en   <= 1'b0;
            ctrl_tx_data <= 2'b0;
            bit_cnt      <= 8'd2;  // Initialize to 2 to match IDLE state logic
            state        <= IDLE;
        end else begin
            case (state)
                IDLE: begin
                    ctrl_tx_en   <= 1'b0;
                    ctrl_tx_data <= 2'b0;
                    if (tx_start) begin
                        ctrl_tx_en   <= 1'b1;
                        ctrl_tx_data <= tx_package[127:126];  // Start with MSB
                        bit_cnt      <= 8'd2;
                        state        <= SEND;
                    end
                end
                SEND: begin
                    if (bit_cnt < 8'd128) begin
                        ctrl_tx_data <= tx_package[127-bit_cnt -: 2];  // Send from MSB to LSB, 2 bits at a time
                        bit_cnt      <= bit_cnt + 8'd2;
                    end else begin
                        ctrl_tx_en <= 1'b0;
                        state      <= DONE;
                    end
                end
                DONE: begin
                    ctrl_tx_en <= 1'b0;
                    state      <= IDLE;
                end
                default: begin
                    state <= IDLE;
                end
            endcase
        end
    end

    // tx_done logic
    always @(posedge ctrl_tx_clk or negedge rst_n) begin
        if (!rst_n) begin
            tx_done <= 1'b0;
        end else begin
            if (tx_start) begin
                tx_done <= 1'b0;
            end else if (state == DONE) begin
                tx_done <= 1'b1;
            end
        end
    end

    // rx logic, receive ctrl_rx_data if ctrl_rx_dv is valid and save it in rx_package
    always @(posedge ctrl_rx_clk or negedge rst_n) begin
        if (!rst_n) begin
            rx_package  <= 128'h0;
            rx_bit_cnt  <= 8'd0;
        end else begin
            if (tx_start) begin
                rx_package <= 128'h0;
                rx_bit_cnt <= 8'd0;
            end else if (ctrl_rx_dv) begin
                rx_package <= {rx_package[125:0], ctrl_rx_data};  // Shift left, insert 2 bits at LSB
                rx_bit_cnt <= (rx_bit_cnt < 8'd128) ? rx_bit_cnt + 8'd2 : rx_bit_cnt;
            end
        end
    end

    // rx_good logic - direct comparison when packages match
    always @(posedge ctrl_rx_clk or negedge rst_n) begin
        if (!rst_n) begin
            rx_good <= 1'b0;
        end else begin
            if (tx_start) begin
                rx_good <= 1'b0;
            end else begin
                rx_good <= (rx_package == tx_package);
            end
        end
    end

    assign rx_package_o = rx_package; // Output the received package

    // tx_package
    always @(posedge ctrl_tx_clk or negedge rst_n) begin
        if (!rst_n) begin
            tx_package <= 128'hA5B6C7D8_E9FA0B1C_2D3E4F50_61728394; // Default pattern
        end else begin
            tx_package <= tx_package_i; // Update with input package
        end
    end

endmodule
