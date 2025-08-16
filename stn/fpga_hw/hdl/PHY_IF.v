`timescale 1ns/100ps

`define PHY_REG_ACCESS_ADDR     16'h0000
`define PHY_CTRL_ADDR           16'h0001
`define PHY_STATUS_ADDR         16'h0002
`define PHY_TX_WORD0_ADDR       16'h0010
`define PHY_TX_WORD1_ADDR       16'h0011
`define PHY_TX_WORD2_ADDR       16'h0012
`define PHY_TX_WORD3_ADDR       16'h0013
`define PHY_RX_WORD0_ADDR       16'h0020
`define PHY_RX_WORD1_ADDR       16'h0021
`define PHY_RX_WORD2_ADDR       16'h0022
`define PHY_RX_WORD3_ADDR       16'h0023

module PHY_IF
(
    // OPB Interface
    input                       OPB_CLK,        // 100MHz
    input                       OPB_RST,
    input       [31:0]          OPB_DI,
    output reg  [31:0]          OPB_DO,
    input       [31:0]          OPB_ADDR,

    // GPIO RE/WE Signals
    input                       PHY_RE,
    input                       PHY_WE,

    // PHY Clock for RMII_TX and RMII_RX
    input                       PHY_CLK,        // 50MHz
    input                       CLK_25MHZ,      // 25MHz for MDC/MDIO

    // ETH Interface
    output                      PHY_RMII_TX_EN,
    output                      PHY_RMII_TX_DATA1,
    output                      PHY_RMII_TX_DATA0,
    output                      PHY_RST_N,
    output                      PHY_MDIO_OUT,
    input                       PHY_MDIO_IN,
    output                      PHY_MDIO_ENABLE,
    output                      PHY_MDC,
    output                      ETH_LED1,
    output                      ETH_LED2,
    input                       PHY_RMII_RX_DATA1,
    input                       PHY_RMII_RX_DATA0,
    input                       PHY_RMII_RX_DV
);

    // Internal signals
    reg     [31:0]              phy_tx_ctrl;
    reg     [31:0]              phy_rx_status;

    // Signal to SERIAL_MII
    wire                        smii_csw;
    wire    [31:0]              smii_write_data;
    wire    [31:0]              smii_read_data;
    reg     [31:0]              smii_read_data_reg;

    // Reset counter for PHY reset
    reg     [7:0]               reset_cnt;
    wire                        phy_rst;

    // tx_start to trigger package send
    reg tx_start;
    reg tx_start_sync1, tx_start_sync2; // Synchronizer for OPB_CLK to PHY_CLK crossing
    wire tx_start_synced;
    wire tx_done;
    wire rx_good;
    reg [127:0] tx_package;
    wire [127:0] rx_package;
    
    // Synchronizers for reading PHY_CLK domain signals in OPB_CLK domain
    reg tx_done_sync1, tx_done_sync2;
    reg rx_good_sync1, rx_good_sync2;

    // Wire declarations for ctrl_package_transceiver connections
    wire [1:0] ctrl_tx_data;
    wire ctrl_tx_en;
    wire [1:0] ctrl_rx_data;
    wire ctrl_rx_dv;


    // afifo to pass OPB DI from OPB_CLK to CLK_25MHZ 
    // only if OPB_WE is asserted and OPB_ADDR is PHY_REG_ACCESS_ADDR
    wire afifo_wr, afifo_rd;
    wire afifo_rempty;

    afifo #(
        .DSIZE(32),
        .ASIZE(2)
    ) opb_fifo_inst (
        .i_wclk(OPB_CLK),
        .i_wrst_n(~OPB_RST),
        .i_wr(afifo_wr),
        .i_wdata(OPB_DI),
        .o_wfull(),
        .i_rclk(CLK_25MHZ),
        .i_rrst_n(~phy_rst),
        .i_rd(afifo_rd),
        .o_rdata(smii_write_data),
        .o_rempty(afifo_rempty)
    );

    assign afifo_wr = PHY_WE && (OPB_ADDR[15:0] == `PHY_REG_ACCESS_ADDR);
    assign afifo_rd = ~afifo_rempty;
    assign smii_csw = afifo_rd;

    // PHY Interface Logic
    // OPB Read Logic
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            OPB_DO <= 32'h0;
        end else if (PHY_RE) begin
            case (OPB_ADDR[15:0])
                `PHY_REG_ACCESS_ADDR: begin
                    // Read operation, return PHY data
                    OPB_DO <= smii_read_data_reg;
                end
                `PHY_CTRL_ADDR: begin
                    OPB_DO <= phy_tx_ctrl;
                end
                `PHY_STATUS_ADDR: begin
                    OPB_DO <= phy_rx_status;
                end
                `PHY_TX_WORD0_ADDR: begin
                    OPB_DO <= tx_package[31:0];
                end
                `PHY_TX_WORD1_ADDR: begin
                    OPB_DO <= tx_package[63:32];
                end
                `PHY_TX_WORD2_ADDR: begin
                    OPB_DO <= tx_package[95:64];
                end
                `PHY_TX_WORD3_ADDR: begin
                    OPB_DO <= tx_package[127:96];
                end
                `PHY_RX_WORD0_ADDR: begin
                    OPB_DO <= rx_package[31:0];
                end
                `PHY_RX_WORD1_ADDR: begin
                    OPB_DO <= rx_package[63:32];
                end
                `PHY_RX_WORD2_ADDR: begin
                    OPB_DO <= rx_package[95:64];
                end
                `PHY_RX_WORD3_ADDR: begin
                    OPB_DO <= rx_package[127:96];
                end
                default: begin
                    // Default case, return zero
                    OPB_DO <= 32'h0;
                end
            endcase
        end else begin
            // When PHY_RE is not asserted, maintain previous value
            // This prevents unnecessary updates and potential glitches
            OPB_DO <= OPB_DO;
        end
    end

    // Generate smii_reset from OPB_RST
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            reset_cnt <= 8'b11111111;
        end else begin
            reset_cnt <= {reset_cnt[6:0], 1'b0};
        end
    end

    // phy_rst
    assign phy_rst = reset_cnt[7];

    // SERIAL_MII instance
    SERIAL_MII serial_mii_inst (
        .RESET(phy_rst),
        .CLK(CLK_25MHZ),
        .CSW(smii_csw),
        .WRITE_DATA(smii_write_data),
        .READ_DATA(smii_read_data),
        .MDIO_OUT(PHY_MDIO_OUT),
        .MDIO_IN(PHY_MDIO_IN),
        .MDIO_ENABLE(PHY_MDIO_ENABLE),
        .MDC(PHY_MDC)
    );

    // smii_read_data_reg - capture read data with improved logic
    always @(posedge CLK_25MHZ or posedge OPB_RST) begin
        if (OPB_RST) begin
            smii_read_data_reg <= 32'h0;
        end else if (smii_read_data[24]) begin  // Valid data indicator
            smii_read_data_reg <= smii_read_data;
        end else if (smii_csw) begin
            smii_read_data_reg <= 32'h0; // Clear at start of new transaction
        end
    end

    // Assign outputs to PHY interface signals
    assign PHY_RST_N            = ~phy_rst;     // Active low reset

    // PHY_CTRL_ADDR - control register for PHY operations
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            phy_tx_ctrl <= 32'h0;
        end else if (PHY_WE && (OPB_ADDR[15:0] == `PHY_CTRL_ADDR)) begin
            phy_tx_ctrl <= OPB_DI;
        end
    end

    // PHY_STATUS_ADDR - use synchronized signals from PHY_CLK domain
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            phy_rx_status <= 32'h0;
        end else begin
            phy_rx_status <= {30'h0, rx_good_sync2, tx_done_sync2};
        end
    end

    // tx_package
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            tx_package <= 128'h0;
        end else if (PHY_WE && (OPB_ADDR[15:0] == `PHY_TX_WORD0_ADDR)) begin
            tx_package[31:0] <= OPB_DI;
        end else if (PHY_WE && (OPB_ADDR[15:0] == `PHY_TX_WORD1_ADDR)) begin
            tx_package[63:32] <= OPB_DI;
        end else if (PHY_WE && (OPB_ADDR[15:0] == `PHY_TX_WORD2_ADDR)) begin
            tx_package[95:64] <= OPB_DI;
        end else if (PHY_WE && (OPB_ADDR[15:0] == `PHY_TX_WORD3_ADDR)) begin
            tx_package[127:96] <= OPB_DI;
        end
    end

    // LED control signals
    assign ETH_LED1             = phy_tx_ctrl[0];
    assign ETH_LED2             = phy_tx_ctrl[0];

    // tx_start - generate pulse in OPB_CLK domain when bit 0 of PHY_CTRL_ADDR is written
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            tx_start <= 1'b0;
        end else if (PHY_WE && (OPB_ADDR[15:0] == `PHY_CTRL_ADDR) && OPB_DI[0]) begin
            tx_start <= 1'b1; // Generate pulse when bit 0 is written as 1
        end else begin
            tx_start <= 1'b0; // Single cycle pulse
        end
    end

    // Synchronize tx_start from OPB_CLK to PHY_CLK domain
    always @(posedge PHY_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            tx_start_sync1 <= 1'b0;
            tx_start_sync2 <= 1'b0;
        end else begin
            tx_start_sync1 <= tx_start;
            tx_start_sync2 <= tx_start_sync1;
        end
    end
    
    assign tx_start_synced = tx_start_sync2;

    // Synchronize tx_done and rx_good from PHY_CLK to OPB_CLK domain for status reading
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            tx_done_sync1 <= 1'b0;
            tx_done_sync2 <= 1'b0;
            rx_good_sync1 <= 1'b0;
            rx_good_sync2 <= 1'b0;
        end else begin
            tx_done_sync1 <= tx_done;
            tx_done_sync2 <= tx_done_sync1;
            rx_good_sync1 <= rx_good;
            rx_good_sync2 <= rx_good_sync1;
        end
    end

// PHY RMII Interface instance
phy_ctrl_rmii phy_ctrl_rmii_inst (
    .sysclk(OPB_CLK),
    .reset_n(~phy_rst),
    
    // RMII Interface
    .phy_tx_clk(PHY_CLK),
    .phy_tx_data({PHY_RMII_TX_DATA1, PHY_RMII_TX_DATA0}),
    .phy_tx_en(PHY_RMII_TX_EN),
    .phy_rx_clk(PHY_CLK),
    .phy_rx_data({PHY_RMII_RX_DATA1, PHY_RMII_RX_DATA0}),
    .phy_rx_dv(PHY_RMII_RX_DV),
    
    // "link_ctrl" interface (system clock domain)
    .ctrl_tx_data(ctrl_tx_data),
    .ctrl_tx_en(ctrl_tx_en),
    .ctrl_rx_data(ctrl_rx_data),
    .ctrl_rx_dv(ctrl_rx_dv),
    .ctrl_rx_err()
);

// Update Package Transceiver instance connections
ctrl_package_transceiver ctrl_pkg_transceiver_inst (
    .sys_clk(PHY_CLK),           // Use PHY_CLK as system clock
    .rst_n(~phy_rst),
    .tx_start(tx_start_synced),  // Use synchronized signal from OPB_CLK domain
    .tx_done(tx_done),
    .rx_good(rx_good),
    .tx_package_i(tx_package),
    .rx_package_o(rx_package),
    .ctrl_tx_clk(),              // Not used, clock is internal
    .ctrl_tx_data(ctrl_tx_data), // Output: sends data to phy_ctrl_rmii
    .ctrl_tx_en(ctrl_tx_en),     // Output: sends enable to phy_ctrl_rmii
    .ctrl_rx_clk(),              // Not used, clock is internal
    .ctrl_rx_data(ctrl_rx_data), // Input: receives data from phy_ctrl_rmii
    .ctrl_rx_dv(ctrl_rx_dv)      // Input: receives data valid from phy_ctrl_rmii
);

endmodule