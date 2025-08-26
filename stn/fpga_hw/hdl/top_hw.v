///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: Jabil
//
// File: top_hw.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      0.1: 2025-06-21: init project
//
//
// Description: 
//
// <Description here>
// Top module of hw fpga design
//
// Targeted device: <Family::PolarFire> <Die::MPF050T> <Package::FCVG484>
// Author: XYL
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

`timescale 1ns / 100ps
`define FW_VERSION  32'h0001_0000 // Firmware version
`define FPGA_ID     32'h0000_0050 // FPGA ID
`define BUILD_DATE  32'h2025_0822 // YYYY_MMDD

module top_hw(
    // Clock and Reset
    input  HDW_FPGA_100M_CLK,
    input  HDW_FPGA_50M_CLK,
    input  HDW_DEVRST_N,

    // External Input/Output Signals

    // APP Interface
    input  APP_AUX_IO0,
    input  APP_AUX_IO1,
    input  APP_AUX_IO2,
    input  APP_AUX_IO3,
    input  APP_AUX_IO4,
    input  APP_AUX_IO5,
    
    input  HSSB_PMII_TX_DATA0,
    input  HSSB_PMII_TX_DATA1,
    input  HSSB_PMII_TX_DATA2,
    input  HSSB_PMII_TX_DATA3,
    input  HSSB_PMII_TX_EN,

    input  APP_FPGA_SPI1_CS_N,
    input  APP_FPGA_SPI0_CS_N,
    input  APP_FPGA_SPI0_MOSI,
    input  APP_FPGA_SPI1_MOSI,
    input  APP_FPGA_SPI_CLK,
    input  DISABLE_HDW_FPGA,
    //input  APP_FPGA_TDO,

    // GPIO Inputs
    input  BMENLP_STATE,
    input  PWRENLP_STATE,
    input  MTNENLP_STATE,
    input  KVBMENLP_STATE,
    input  MTNENLP_CCH_STATE,
    input  MTNENLP_DKB_STATE,
    input  PENDANT_INST,
    input  PENDANT_MEB_N,

    input  CMNR_STS_N,
    input  CDOS_STS_N,

    input  DC_MAIN_DOOR_SW_N,
    input  NEUTRON_DR_SW1_N,
    input  NEUTRON_DR_SW2_N,
    input  CSPARESW1_N,
    input  CSPARESW2_N,

    input  LS_OSSD1_N,
    input  LS_ERROR_N,

    input  SPD_AC_DR_N,
    input  EMO_GOOD_N,

    // Output Signals

    // APP Interface
    output HSSB_PMII_CLK,
    output HSSB_PMII_RESET_N,
    output HSSB_PMII_RX_DATA0,
    output HSSB_PMII_RX_DATA1,
    output HSSB_PMII_RX_DATA2,
    output HSSB_PMII_RX_DATA3,
    output HSSB_PMII_RX_DV,
    
    output APP_FPGA_SPI0_MISO,
    output APP_FPGA_SPI1_MISO,
    //output APP_FPGA_TMS,
    //output APP_FPGA_TDI,
    //output APP_FPGA_TCK,
    //output APP_FPGA_TRST,

    // GPIO Outputs
    output BMENLP_LOC_CNTL,
    output PWRENLP_LOC_CNTL,
    output MTNENLP_LOC_CNTL,

    output PWRENLP_CNTL,
    output KVBMENLP_CNTL,
    output MTNENLP_CNTL,
    output BMENLP_CNTL,

    output HDW_GANT_ROT_EN,

    // Internal Interface
    // LEDs and Status
    output HDW_FPGA_DONE,
    output HDW_FPGA_STAT_LED1,
    output HDW_FPGA_STAT_LED2,

    // Switches: SW1, SW2, SW4
    input  MEL_SW_CONFIG0,
    input  MEL_SW_CONFIG1,
    input  MEL_SW_CONFIG2,
    input  MEL_SW_CONFIG3,
    input  MEL_SW_CONFIG4,
    input  MEL_SW_CONFIG5,
    input  MEL_SW_CONFIG6,
    input  MEL_SW_CONFIG7,

    input  BEL_SW_CONFIG0,
    input  BEL_SW_CONFIG1,
    input  BEL_SW_CONFIG2,
    input  BEL_SW_CONFIG3,
    input  BEL_SW_CONFIG4,
    input  BEL_SW_CONFIG5,
    input  BEL_SW_CONFIG6,
    input  BEL_SW_CONFIG7,

    input  KVBEL_SW_CONFIG0,
    input  KVBEL_SW_CONFIG1,
    input  KVBEL_SW_CONFIG2,
    input  KVBEL_SW_CONFIG3,
    input  KVBEL_SW_CONFIG4,
    input  KVBEL_SW_CONFIG5,
    input  KVBEL_SW_CONFIG6,
    input  KVBEL_SW_CONFIG7,

    // EEPROM Interface
    output HDW_EEP_CS_N,
    output HDW_EEP_SDI,
    output HDW_EEP_SCLK,
    input  HDW_EEP_SDO,

    // ETH Interface
    output PHY_RMII_TX_EN,
    output PHY_RMII_TX_DATA1,
    output PHY_RMII_TX_DATA0,
    output PHY_RST_N,
    inout  PHY_MDIO,
    output PHY_MDC,
    output ETH_LED1,
    output ETH_LED2,
    input  PHY_RMII_RX_DATA1,
    input  PHY_RMII_RX_DATA0,
    input  PHY_RMII_RX_DV,

    // DBUG Connector
    input  HDW_DBUG_SCLK,    // J36-P1, UART-RXD
    input  HDW_DBUG_MISO,    // J36-P3, CLKIN_2KHZ
    output HDW_DBUG_MOSI,
    output HDW_DBUG_CS_N,
    output HDW_DBUG_ACTIVE,
    output HDW_DBUG_HEADER2, // J36-P2, UART-TXD
    output HDW_DBUG_HEADER4, // J36-P4, CLKOUT_2KHZ
    output HDW_DBUG_HEADER6,
    output HDW_DBUG_HEADER8,
    output HDW_DBUG_HEADER10,

    // Test Points
    output TP85,             // 1.8V Bank
    output TP86,
    output TP88,
    output TP89,
    output TP91,
    output TP92,
    output TP93,
    output TP94,
    output TP95,
    output TP96,
    output TP97,
    output TP98,
    output TP99,
    output TP100,
    output TP101,
    output TP102,
    output TP140,            // 3.3V Bank
    output TP141,
    output TP142,
    output TP143,
    output TP144,
    output TP145,
    output TP146,
    output TP147,
    output TP148,
    output TP149,
    output TP150,
    output TP151,
    output TP152,
    output TP153,
    output TP154,
    output TP155
);

    // Clock and Reset Signals
    wire clk_100mhz, clk_50mhz, clk_25mhz, rst_n;
    // UART Signals
    wire rxd, txd;
    // Reference Clock Signals
    wire clkin_2khz, clkout_2khz;

    // Internal signals for cmd_server
    wire        opb_clk, opb_rst;
    wire [31:0] opb_di, opb_do, opb_addr;
    wire        opb_re, opb_we;

    // Signal declarations for ADDER_DECODER
    wire [31:0] sp_in, clock_in, counter_in1, counter_in2, gpio_in, app_in, eep_in, phy_in;
    wire        sp_re, sp_we, clock_we, clock_re, counter_we1, counter_re1, counter_we2, counter_re2;
    wire        gpio_re, gpio_we, app_re, app_we, eep_re, eep_we, phy_re, phy_we;

    // clock generation
    wire pulse_200khz, pulse_20khz, pulse_2khz, pulse_1hz;

    // PHY_MII
    wire PHY_MDIO_OUT, PHY_MDIO_IN, PHY_MDIO_ENABLE;

    // Wake-up Logic
    reg opb_wakeup;
    wire HDW_FPGA_STAT_LED1_W, HDW_FPGA_STAT_LED2_W;

    assign clk_100mhz    = HDW_FPGA_100M_CLK;
    assign clk_50mhz     = HDW_FPGA_50M_CLK;
    assign rst_n         = HDW_DEVRST_N;

    assign rxd         = HDW_DBUG_SCLK;      // J36-P1
    assign clkin_2khz  = HDW_DBUG_MISO;      // J36
    assign HDW_DBUG_HEADER2  = txd;          // J36-P2
    assign HDW_DBUG_HEADER4  = clkout_2khz;  // J36-P4
    assign HDW_DBUG_MOSI     = 1'b0; // Reserved
    assign HDW_DBUG_CS_N     = 1'b0; // Reserved
    assign HDW_DBUG_ACTIVE   = 1'b0; // Reserved
    assign HDW_DBUG_HEADER6  = 1'b0; // Reserved
    assign HDW_DBUG_HEADER8  = 1'b0; // Reserved
    assign HDW_DBUG_HEADER10 = 1'b0; // Reserved

    // status LEDs
    assign HDW_FPGA_DONE      = ~rst_n; // D33 OFF after FPGA configuration

    assign HDW_FPGA_STAT_LED1 = opb_wakeup ? HDW_FPGA_STAT_LED1_W : pulse_1hz;   // D20 ON
    assign HDW_FPGA_STAT_LED2 = opb_wakeup ? HDW_FPGA_STAT_LED2_W : pulse_1hz;   // D21 ON

    //=========================================================================
    // Wake-up Logic
    //=========================================================================
    // OPB wakeup - any opb_re and opb_we will wake up the system
    reg [3:0]seconds;
    always @(posedge pulse_1hz or negedge rst_n) begin
        if(!rst_n) begin
            seconds <= 4'b0000;
        end else begin
            if(seconds < 4'b1111) begin
                seconds <= seconds + 1;
            end
        end
    end
    
    always @(posedge opb_clk or negedge rst_n) begin
        if (!rst_n) begin
            opb_wakeup <= 1'b0;
        end else begin
            if (opb_re || opb_we) begin
                opb_wakeup <= 1'b1;
            end else if(seconds > 1) begin
                opb_wakeup <= 1'b1;
            end
        end
    end

    // PULSE_1HZ
    CLOCK_DIV clkgen_2khz(
        .CLK_DIV (16'd1000),
        .CLK_IN  (pulse_2khz),
        .RST     (~rst_n),
        .CLK_OUT (pulse_1hz)
    );

    // clk_25mhz
    CLOCK_DIV clkgen_25mhz(
        .CLK_DIV (16'd2),
        .CLK_IN  (clk_100mhz),
        .RST     (~rst_n),
        .CLK_OUT (clk_25mhz)
    );

    // cmd_server instantiation
    cmd_server u_cmd_server(
        .SYS_CLK    (clk_100mhz),
        .SYS_RST    (~rst_n),
        .PULSE_2KHZ (pulse_2khz),
        .OPB_CLK    (opb_clk),
        .OPB_RST    (opb_rst),
        .OPB_DI     (opb_di),
        .OPB_DO     (opb_do),
        .OPB_ADDR   (opb_addr),
        .OPB_RE     (opb_re),
        .OPB_WE     (opb_we),
        .UART_TXD   (txd),
        .UART_RXD   (rxd)
    );

    // ADDER_DECODE instantiation
    ADDER_DECODE adder_decode_0(
        .OPB_CLK      (opb_clk),
        .OPB_RST      (opb_rst),
        .OPB_RE       (opb_re),
        .OPB_WE       (opb_we),
        .OPB_ADDR     (opb_addr),
        .OPB_DO       (opb_di),
        
        .SP_IN        (sp_in),
        .CLOCK_IN     (clock_in),
        .COUNTER_IN1  (counter_in1),
        .COUNTER_IN2  (counter_in2),
        .GPIO_IN      (gpio_in),
        .APP_IN       (app_in),
        .EEP_IN       (eep_in),
        .PHY_IN       (phy_in),
        
        .SP_RE        (sp_re),
        .SP_WE        (sp_we),
        .CLOCK_WE     (clock_we),
        .CLOCK_RE     (clock_re),
        .COUNTER_WE1  (counter_we1),
        .COUNTER_RE1  (counter_re1),
        .COUNTER_WE2  (counter_we2),
        .COUNTER_RE2  (counter_re2),
        .GPIO_RE      (gpio_re),
        .GPIO_WE      (gpio_we),
        .APP_RE       (app_re),
        .APP_WE       (app_we),
        .EEP_RE       (eep_re),
        .EEP_WE       (eep_we),
        .PHY_RE       (phy_re),
        .PHY_WE       (phy_we)
    );

    // SCRATCH_PAD_REGISTER instantiation
    SCRATCH_PAD_REGISTER #(
        .VERSION (`FW_VERSION),
        .ID      (`FPGA_ID),
        .DATE    (`BUILD_DATE)
    ) scratch_pad_register_0 (
        .OPB_CLK  (opb_clk),
        .OPB_RST  (opb_rst),
        .OPB_ADDR (opb_addr),
        .SP_DI    (opb_do),
        .SP_RE    (sp_re),
        .SP_WE    (sp_we),
        .SP_DO    (sp_in)
    );

    // ClkGen instantiation
    ClkGen u_clkgen(
        .CLK_GEN_DO   (clock_in),
        .CLK_GEN_DI   (opb_do),
        .OPB_ADDR     (opb_addr),
        .CLK_GEN_RE   (clock_re),
        .CLK_GEN_WE   (clock_we),
        .OPB_CLK      (opb_clk),
        .OPB_RST      (opb_rst),
        .SYSCLK       (clk_100mhz),
        .PULSE_200KHZ (pulse_200khz),
        .PULSE_20KHZ  (pulse_20khz),
        .PULSE_2KHZ   (pulse_2khz),
        .PULSE_100US  (),
        .CLK_16KHZ    (),
        .CLK_2MHZ     ()
    );
    assign clkout_2khz = pulse_2khz; // replacement of clkin_2khz, connect J36-P4 to P3

    // OSCILLATOR_COUNTER instantiation
    OSCILLATOR_COUNTER oscillator_counter_0(
        .OPB_CLK   (opb_clk),
        .OPB_RST   (opb_rst),
        .OSC_CT_DO (counter_in1),
        .OSC_CT_DI (opb_do),
        .OPB_ADDR  (opb_addr),
        .OSC_CT_RE (counter_re1),
        .OSC_CT_WE (counter_we1),
        .TEST_CLK  (clk_100mhz),
        .REF_CLK   (clkin_2khz)
    );

    // OSCILLATOR_COUNTER instantiation
    OSCILLATOR_COUNTER oscillator_counter_1(
        .OPB_CLK   (opb_clk),
        .OPB_RST   (opb_rst),
        .OSC_CT_DO (counter_in2),
        .OSC_CT_DI (opb_do),
        .OPB_ADDR  (opb_addr),
        .OSC_CT_RE (counter_re2),
        .OSC_CT_WE (counter_we2),
        .TEST_CLK  (clk_50mhz),
        .REF_CLK   (clkin_2khz)
    );

    // EEPROM_OPB_IF instantiation
    EEPROM_OPB_IF u_eeprom_opb_if(
        .OPB_CLK  (opb_clk),
        .OPB_RST  (opb_rst),
        .EEP_DI   (opb_do),
        .EEP_RE   (eep_re),
        .EEP_WE   (eep_we),
        .EEP_DO   (eep_in),
        .EEP_CS_N (HDW_EEP_CS_N),
        .EEP_SI   (HDW_EEP_SDI),
        .EEP_SCK  (HDW_EEP_SCLK),
        .EEP_SO   (HDW_EEP_SDO)
    );

    // GPIO instantiation
    GPIO gpio_0(
        .OPB_CLK            (opb_clk),
        .OPB_RST            (opb_rst),
        .OPB_DI             (opb_do),
        .OPB_DO             (gpio_in),
        .OPB_ADDR           (opb_addr),
        .GPIO_RE            (gpio_re),
        .GPIO_WE            (gpio_we),
        
        // GPIO Inputs
        .BMENLP_STATE       (BMENLP_STATE),
        .PWRENLP_STATE      (PWRENLP_STATE),
        .MTNENLP_STATE      (MTNENLP_STATE),
        .KVBMENLP_STATE     (KVBMENLP_STATE),
        .MTNENLP_CCH_STATE  (MTNENLP_CCH_STATE),
        .MTNENLP_DKB_STATE  (MTNENLP_DKB_STATE),
        .PENDANT_INST       (PENDANT_INST),
        .PENDANT_MEB_N      (PENDANT_MEB_N),
        
        .CMNR_STS_N         (CMNR_STS_N),
        .CDOS_STS_N         (CDOS_STS_N),
        
        .DC_MAIN_DOOR_SW_N  (DC_MAIN_DOOR_SW_N),
        .NEUTRON_DR_SW1_N   (NEUTRON_DR_SW1_N),
        .NEUTRON_DR_SW2_N   (NEUTRON_DR_SW2_N),
        .CSPARESW1_N        (CSPARESW1_N),
        .CSPARESW2_N        (CSPARESW2_N),
        
        .LS_OSSD1_N         (LS_OSSD1_N),
        .LS_ERROR_N         (LS_ERROR_N),
        
        .SPD_AC_DR_N        (SPD_AC_DR_N),
        .EMO_GOOD_N         (EMO_GOOD_N),
        
        // Switches
        .MEL_SW_CONFIG0     (MEL_SW_CONFIG0),
        .MEL_SW_CONFIG1     (MEL_SW_CONFIG1),
        .MEL_SW_CONFIG2     (MEL_SW_CONFIG2),
        .MEL_SW_CONFIG3     (MEL_SW_CONFIG3),
        .MEL_SW_CONFIG4     (MEL_SW_CONFIG4),
        .MEL_SW_CONFIG5     (MEL_SW_CONFIG5),
        .MEL_SW_CONFIG6     (MEL_SW_CONFIG6),
        .MEL_SW_CONFIG7     (MEL_SW_CONFIG7),
        
        .BEL_SW_CONFIG0     (BEL_SW_CONFIG0),
        .BEL_SW_CONFIG1     (BEL_SW_CONFIG1),
        .BEL_SW_CONFIG2     (BEL_SW_CONFIG2),
        .BEL_SW_CONFIG3     (BEL_SW_CONFIG3),
        .BEL_SW_CONFIG4     (BEL_SW_CONFIG4),
        .BEL_SW_CONFIG5     (BEL_SW_CONFIG5),
        .BEL_SW_CONFIG6     (BEL_SW_CONFIG6),
        .BEL_SW_CONFIG7     (BEL_SW_CONFIG7),
        
        .KVBEL_SW_CONFIG0   (KVBEL_SW_CONFIG0),
        .KVBEL_SW_CONFIG1   (KVBEL_SW_CONFIG1),
        .KVBEL_SW_CONFIG2   (KVBEL_SW_CONFIG2),
        .KVBEL_SW_CONFIG3   (KVBEL_SW_CONFIG3),
        .KVBEL_SW_CONFIG4   (KVBEL_SW_CONFIG4),
        .KVBEL_SW_CONFIG5   (KVBEL_SW_CONFIG5),
        .KVBEL_SW_CONFIG6   (KVBEL_SW_CONFIG6),
        .KVBEL_SW_CONFIG7   (KVBEL_SW_CONFIG7),
        
        // GPIO Outputs
        .BMENLP_LOC_CNTL    (BMENLP_LOC_CNTL),
        .PWRENLP_LOC_CNTL   (PWRENLP_LOC_CNTL),
        .MTNENLP_LOC_CNTL   (MTNENLP_LOC_CNTL),
        
        .PWRENLP_CNTL       (PWRENLP_CNTL),
        .KVBMENLP_CNTL      (KVBMENLP_CNTL),
        .MTNENLP_CNTL       (MTNENLP_CNTL),
        .BMENLP_CNTL        (BMENLP_CNTL),
        
        .HDW_GANT_ROT_EN    (HDW_GANT_ROT_EN),
        .HDW_FPGA_STAT_LED1  (HDW_FPGA_STAT_LED1_W),
        .HDW_FPGA_STAT_LED2  (HDW_FPGA_STAT_LED2_W),

        // Test Points
        .TP85               (TP85),
        .TP86               (TP86),
        .TP88               (TP88),
        .TP89               (TP89),
        .TP91               (TP91),
        .TP92               (TP92),
        .TP93               (TP93),
        .TP94               (TP94),
        .TP95               (TP95),
        .TP96               (TP96),
        .TP97               (TP97),
        .TP98               (TP98),
        .TP99               (TP99),
        .TP100              (TP100),
        .TP101              (TP101),
        .TP102              (TP102),
        .TP140              (TP140),
        .TP141              (TP141),
        .TP142              (TP142),
        .TP143              (TP143),
        .TP144              (TP144),
        .TP145              (TP145),
        .TP146              (TP146),
        .TP147              (TP147),
        .TP148              (TP148),
        .TP149              (TP149),
        .TP150              (TP150),
        .TP151              (TP151),
        .TP152              (TP152),
        .TP153              (TP153),
        .TP154              (TP154),
        .TP155              (TP155)
    );

    // PHY_IF instantiation
    PHY_IF phy_if_0(
        .OPB_CLK            (opb_clk),
        .OPB_RST            (opb_rst),
        .OPB_DI             (opb_do),
        .OPB_DO             (phy_in),
        .OPB_ADDR           (opb_addr),
        .PHY_RE             (phy_re),
        .PHY_WE             (phy_we),

        // PHY Clock for RMII_TX and RMII_RX
        .PHY_CLK            (clk_50mhz),
        .CLK_25MHZ          (clk_25mhz),

        // ETH Interface
        .PHY_RMII_TX_EN     (PHY_RMII_TX_EN),
        .PHY_RMII_TX_DATA1  (PHY_RMII_TX_DATA1),
        .PHY_RMII_TX_DATA0  (PHY_RMII_TX_DATA0),
        .PHY_RST_N          (PHY_RST_N),
        .PHY_MDIO_OUT       (PHY_MDIO_OUT),
        .PHY_MDIO_IN        (PHY_MDIO_IN),
        .PHY_MDIO_ENABLE    (PHY_MDIO_ENABLE),
        .PHY_MDC            (PHY_MDC),
        .ETH_LED1           (ETH_LED1),
        .ETH_LED2           (ETH_LED2),
        .PHY_RMII_RX_DATA1  (PHY_RMII_RX_DATA1),
        .PHY_RMII_RX_DATA0  (PHY_RMII_RX_DATA0),
        .PHY_RMII_RX_DV     (PHY_RMII_RX_DV)
    );

    assign PHY_MDIO_IN = PHY_MDIO;
    assign PHY_MDIO = PHY_MDIO_ENABLE ? PHY_MDIO_OUT : 1'bz;

    // APP_IF instantiation
    APP_IF app_if_0(
        .OPB_CLK            (opb_clk),
        .OPB_RST            (opb_rst),
        .OPB_DI             (opb_do),
        .OPB_DO             (app_in),
        .OPB_ADDR           (opb_addr),
        .APP_RE             (app_re),
        .APP_WE             (app_we),
        
        // Input Interface
        .APP_AUX_IO0        (APP_AUX_IO0),
        .APP_AUX_IO1        (APP_AUX_IO1),
        .APP_AUX_IO2        (APP_AUX_IO2),
        .APP_AUX_IO3        (APP_AUX_IO3),
        .APP_AUX_IO4        (APP_AUX_IO4),
        .APP_AUX_IO5        (APP_AUX_IO5),
        
        .HSSB_PMII_TX_DATA0 (HSSB_PMII_TX_DATA0),
        .HSSB_PMII_TX_DATA1 (HSSB_PMII_TX_DATA1),
        .HSSB_PMII_TX_DATA2 (HSSB_PMII_TX_DATA2),
        .HSSB_PMII_TX_DATA3 (HSSB_PMII_TX_DATA3),
        .HSSB_PMII_TX_EN    (HSSB_PMII_TX_EN),
        
        .APP_FPGA_SPI1_CS_N (APP_FPGA_SPI1_CS_N),
        .APP_FPGA_SPI0_CS_N (APP_FPGA_SPI0_CS_N),
        .APP_FPGA_SPI0_MOSI (APP_FPGA_SPI0_MOSI),
        .APP_FPGA_SPI1_MOSI (APP_FPGA_SPI1_MOSI),
        .APP_FPGA_SPI_CLK   (APP_FPGA_SPI_CLK),
        .DISABLE_HDW_FPGA   (DISABLE_HDW_FPGA),
        .APP_FPGA_TDO       (0),
        
        // Output Interface
        .HSSB_PMII_CLK      (HSSB_PMII_CLK),
        .HSSB_PMII_RESET_N  (HSSB_PMII_RESET_N),
        .HSSB_PMII_RX_DATA0 (HSSB_PMII_RX_DATA0),
        .HSSB_PMII_RX_DATA1 (HSSB_PMII_RX_DATA1),
        .HSSB_PMII_RX_DATA2 (HSSB_PMII_RX_DATA2),
        .HSSB_PMII_RX_DATA3 (HSSB_PMII_RX_DATA3),
        .HSSB_PMII_RX_DV    (HSSB_PMII_RX_DV),
        
        .APP_FPGA_SPI0_MISO (APP_FPGA_SPI0_MISO),
        .APP_FPGA_SPI1_MISO (APP_FPGA_SPI1_MISO),
        .APP_FPGA_TMS       (),
        .APP_FPGA_TDI       (),
        .APP_FPGA_TCK       (),
        .APP_FPGA_TRST      ()
    );

    // End of module
endmodule
