`timescale 1ns/100ps

`define PHY_REG_ACCESS_ADDR     16'h0000
`define PHY_TX_CTRL_ADDR        16'h0001
`define PHY_RX_STATUS_ADDR      16'h0002


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

    // afifo to pass OPB DI from OPB_CLK to CLK_25MHZ 
    // only if OPB_WE is asserted and OPB_ADDR is PHY_REG_ACCESS_ADDR
    wire                        afifo_wr, afifo_rd;
    wire                        afifo_rempty;

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
                `PHY_TX_CTRL_ADDR: begin
                    OPB_DO <= phy_tx_ctrl;
                end
                `PHY_RX_STATUS_ADDR: begin
                    OPB_DO <= phy_rx_status;
                end
                default: begin
                    // Default case, return zero
                    OPB_DO <= 32'h0;
                end
            endcase
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

    // smii_read_data_reg
    always @(posedge CLK_25MHZ or posedge OPB_RST) begin
        if (OPB_RST) begin
            smii_read_data_reg <= 32'h0;
        end else if(smii_read_data[24])begin
            smii_read_data_reg[24:0] <= smii_read_data[24:0];
        end else if(smii_csw) begin
            smii_read_data_reg <= 32'h0; // Reset at start of new transaction
        end
    end

    // Assign outputs to PHY interface signals
    assign PHY_RST_N            = ~phy_rst;     // Active low reset

    // TODO: implement PHY_TX and PHY_RX later
    // PHY_TX_CTRL_ADDR
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            phy_tx_ctrl <= 32'h0;
        end else if (PHY_WE && (OPB_ADDR[15:0] == `PHY_TX_CTRL_ADDR)) begin
            phy_tx_ctrl <= OPB_DI;
        end
    end

    // PHY_RX_STATUS_ADDR
    always @(posedge PHY_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            phy_rx_status <= 32'h0;
        end else if (PHY_RE && (OPB_ADDR[15:0] == `PHY_RX_STATUS_ADDR)) begin
            phy_rx_status <= {29'h0, PHY_RMII_RX_DATA1, PHY_RMII_RX_DATA0, PHY_RMII_RX_DV};
        end
    end

    assign ETH_LED1             = phy_tx_ctrl[0];
    assign ETH_LED2             = phy_tx_ctrl[1];
    assign PHY_RMII_TX_EN       = phy_tx_ctrl[2];
    assign PHY_RMII_TX_DATA1    = phy_tx_ctrl[3];
    assign PHY_RMII_TX_DATA0    = phy_tx_ctrl[4];

endmodule