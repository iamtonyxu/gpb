///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: Jabil Circuit
//
// File: top_app.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      0.1: 2025-06-21: Initial version
//
// Description: 
//
// Top-level application module
//
// Targeted device: Family::PolarFire Die::MPF100T Package::FCG484
// Author: XYL
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 

`timescale 1ns / 1ps
`define FW_VERSION  32'h0000_0001 // Firmware version
`define FPGA_ID     32'h0000_0100 // FPGA ID
`define BUILD_DATE  32'h2025_0809 // YYYY_MMDD

module top_app(
    // BANK-2/4, 3.3V I/O
    // ADC Interface
    output      AD_SCLK,                    // ADC Interface
    output      AD_CNVST_N,                 // ADC Interface, active low
    input       AD_SDOUT,                   // ADC Interface
    output      AD_SEL0,                    // GPIO Outputs
    output      AD_SEL1,                    // GPIO Outputs
    output      AD_SEL2,                    // GPIO Outputs
    output      AD_SEL3,                    // GPIO Outputs
    output      AD_SEL4,                    // GPIO Outputs
    output      AD_SEL5,                    // GPIO Outputs
    output      AD_SEL6,                    // GPIO Outputs
    output      AD_SEL7,                    // GPIO Outputs

    // GPIO Inputs
    input       BMPLS,                      // GPIO Inputs, RS422-IN
    input       CCW_LIMIT_STAT,             // GPIO Inputs
    input       CW_LIMIT_STAT,              // GPIO Inputs
    input       LS_OSSD2_N,                 // GPIO Inputs
    input       LS_WARNING_N,               // GPIO Inputs
    input       GANT_LOCK_PIN_STAT,         // GPIO Inputs
    input       LS_RES_REQ_N,               // GPIO Inputs

    // Control Signals
    input       APP_DEVRST_N,               // SW3, APP_DEVRST_L
    output      PUMP_CLR_FLT_ON,            // GPIO Outputs
    input       SYNC_LOC_MONITOR,           // GPIO Inputs, RS422-IN
    output      SYNC_LOC_OUT,               // GPIO Outputs, RS422-OUT
    input       SYNC_MONITOR,               // GPIO Inputs, RS422-IN
    output      SYNC_OUT,                   // GPIO Outputs, RS422-OUT
    input       GROTPWR_STS_N,              // GPIO Inputs

    // Enable/Disable Loop States
    input       BMENLP_LOC_SINK_STATE,      // GPIO Inputs
    input       BMENLP_LOC_SOURCE_STATE,    // GPIO Inputs
    input       BMENLP_SOURCE_STATE,        // GPIO Inputs
    input       KVBMENLP_SOURCE_STATE,      // GPIO Inputs
    input       MTNENLP_CCH_SOURCE_STATE,   // GPIO Inputs
    input       MTNENLP_DKB_SOURCE_STATE,   // GPIO Inputs
    input       MTNENLP_LOC_SINK_STATE,     // GPIO Inputs
    input       MTNENLP_LOC_SOURCE_STATE,   // GPIO Inputs
    input       MTNENLP_SOURCE_STATE,       // GPIO Inputs
    input       PWRENLP_LOC_SINK_STATE,     // GPIO Inputs
    input       PWRENLP_LOC_SOURCE_STATE,   // GPIO Inputs
    input       PWRENLP_SOURCE_STATE,       // GPIO Inputs

    // Test Points
    input       TP134,                      // Test Points
    input       TP133,                      // Test Points

    // DAC Interface
    output      ST_DAC_CLK,                 // DAC Interface
    output      DAC_SDI,                    // DAC Interface
    output      DAC_CS_N,                   // DAC Interface
    input       DAC_SDO,                    // DAC Interface
    
    // Flow Sensors
    input       FLOW_N1,                    // GPIO Inputs
    input       FLOW_N2,                    // GPIO Inputs
    input       FLOW_N3,                    // GPIO Inputs
    input       FLOW_N4,                    // GPIO Inputs
    input       FLOW_N5,                    // GPIO Inputs

    // Light Control and Power
    output      LGCTRL1,                    // GPIO Outputs
    output      LGCTRL2,                    // GPIO Outputs
    output      LGCTRL3,                    // GPIO Outputs
    input       P24VDRV_TEMP_FAULT_N,       // GPIO Inputs

    // Loop Monitor
    output      LP_MON_A0,                  // GPIO Outputs
    output      LP_MON_A1,                  // GPIO Outputs
    output      LP_MON_A2,                  // GPIO Outputs
    output      LP_MON_SEL0,                // GPIO Outputs
    output      LP_MON_SEL1,                // GPIO Outputs
    output      LP_MON_SEL2,                // GPIO Outputs
    output      LP_MON_SEL3,                // GPIO Outputs

    // System Clock and Status
    input       APP_FPGA_100M_CLK,          // Global clock signal
    input       DKB_EMO_CLOSED,             // GPIO Inputs
    input       DKB_FUSE_OK_N,              // GPIO Inputs
    input       ENCODER1_FUSE_OK,           // GPIO Inputs
    input       HW_GANT_ROT_EN_FLT_N,       // GPIO Inputs
    input       PEND_FUSE_OK_N,             // GPIO Inputs
    input       PUMP_FAULT,                 // GPIO Inputs
    input       WATER_HIGH_ERROR,           // GPIO Inputs
    input       WATER_FUSE_OK_N,            // GPIO Inputs
    input       WATER_LOW_ERROR,            // GPIO Inputs
    input       WATER_LOW_WARNING,          // GPIO Inputs

    // Additional Test Points
    input       TP183,                      // Test Points
    input       TP182,                      // Test Points
    input       TP181,                      // Test Points
    input       TP180,                      // Test Points

    // CAN BUS Interface
    output      CAN_TX1,                    // CAN BUS, J3, CAN
    output      CAN_TX2,                    // CAN BUS, J9,CAND
    output      CAN_TX3,                    // CAN BUS, J29/30, CAN_LOC
    output      CAN_TX4,                    // CAN BUS, J25, CAN_PEND
    input       CAN_RX1,                    // CAN BUS, J3, CAN
    input       CAN_RX2,                    // CAN BUS, J9, CAND
    input       CAN_RX3,                    // CAN BUS, J29/30, CAN_LOC
    input       CAN_RX4,                    // CAN BUS, J25, CAN_PEND

    // Encoder Quadrature Interface
    input       PRI_QUADR_A,                // ENCODER-QUAD IF, RS422-IN
    input       PRI_QUADR_B,                // ENCODER-QUAD IF, RS422-IN
    input       PRI_QUADR_I,                // ENCODER-QUAD IF, RS422-IN

    // Status LEDs
    output      STAT_LED1_N,                // GPIO Outputs: LED D32
    output      STAT_LED2_N,                // GPIO Outputs: LED D40
    output      STAT_LED3_N,                // GPIO Outputs: LED D41

    // Control Outputs
    output      HEARTBEAT_LED_N,            // GPIO Outputs: LED D42
    output      ENCODER_FUSE_ON_N,          // GPIO Outputs
    output      FPGA_DONE,                  // GPIO Outputs: LED D43
    output      PUMP_EN_ON,                 // GPIO Outputs
    output      SF6_24V_ON,                 // GPIO Outputs
    output      SF6_VALVE_OPEN,             // GPIO Outputs
    output      WATER_FUSE_ON,              // GPIO Outputs
    output      DKB_FUSE_ON,                // GPIO Outputs
    output      PEND_FUSE_ON,               // GPIO Outputs
    input       P5VISO_STATUS,              // GPIO Inputs

    // More Test Points
    input       TP198,                      // Test Points
    input       TP195,                      // Test Points
    input       TP202,                      // Test Points
    input       TP196,                      // Test Points

    // DMD MSSB Interface
    output      ST_DMD_MSSB_TX,             // DMD MSSB signals, RS422-OUT
    input       DMD_MSSB_RX,                // DMD MSSB signals , RS422-IN

    // Additional Test Points
    input       TP190,                      // Test Points
    input       TP192,                      // Test Points
    input       TP203,                      // Test Points
    input       TP201,                      // Test Points
    input       TP189,                      // Test Points
    input       TP199,                      // Test Points
    input       TP193,                      // Test Points
    input       TP200,                      // Test Points

    // Encoder ENDAT Interface
    input       ENCODER_RX1,                // ENCODER-ENDAT IF, RS422-IN
    input       ENCODER_RX2,                // ENCODER-ENDAT IF, RS422-IN
    output      ENCODER_TX1,                // ENCODER-ENDAT IF, RS422-OUT
    output      ENCODER_TX2,                // ENCODER-ENDAT IF, RS422-OUT
    output      ENCODER_TX_ENAB1,           // ENCODER-ENDAT IF, GPIO Outputs
    output      ENCODER_TX_ENAB2,           // ENCODER-ENDAT IF, GPIO Outputs

    // CAN LEDs
    output      CAN1_LED_N,                 // GPIO Outputs: LED D28
    output      CAN2_LED_N,                 // GPIO Outputs: LED D29
    output      CAN3_LED_N,                 // GPIO Outputs: LED D30
    output      CAN4_LED_N,                 // GPIO Outputs: LED D31

    // Final Test Points
    input       TP184,                      // Test Points
    input       TP197,                      // Test Points
    input       TP191,                      // Test Points
    input       TP194,                      // Test Points
    input       TP187,                      // Test Points
    input       TP186,                      // Test Points
    input       TP185,                      // Test Points
    input       TP188,                      // Test Points

    // BANK-0/1, 1.8V I/O
    // HSSB PMII Interface
    input       HSSB_PMII_CLK,              // APP-HW IF
    input       HSSB_PMII_RESET_N,          // APP-HW IF
    output      HSSB_PMII_TX_DATA0,         // APP-HW IF
    output      HSSB_PMII_TX_DATA1,         // APP-HW IF
    output      HSSB_PMII_TX_DATA2,         // APP-HW IF
    output      HSSB_PMII_TX_DATA3,         // APP-HW IF
    output      HSSB_PMII_TX_EN,            // APP-HW IF
    input       HSSB_PMII_RX_DV,            // APP-HW IF
    input       HSSB_PMII_RX_DATA0,         // APP-HW IF
    input       HSSB_PMII_RX_DATA1,         // APP-HW IF
    input       HSSB_PMII_RX_DATA2,         // APP-HW IF
    input       HSSB_PMII_RX_DATA3,         // APP-HW IF

    // Test Points
    input       TP136,                      // Test Points
    input       TP138,                      // Test Points
    input       TP135,                      // Test Points
    input       TP137,                      // Test Points

    // DBUG HEADER (J40)
    output      APP_DBUG_HEADER2,           // J40-2, UART-TXD
    output      APP_DBUG_HEADER4,           // J40-4, CLKOUT_2KHZ
    output      APP_DBUG_HEADER6,
    output      APP_DBUG_HEADER8,
    output      APP_DBUG_HEADER10,
    output      APP_DBUG_CS_N,
    output      APP_DBUG_ACTIVE,
    output      APP_DBUG_MOSI,
    input       APP_DBUG_MISO,             // J40-3, CLKIN_2KHZ 
    input       APP_DBUG_SCLK,              // J40-1, UART-RXD

    // Test Points
    input       TP207,                      // Test Points
    input       TP205,                      // Test Points
    input       TP206,                      // Test Points
    input       TP204,                      // Test Points

    // SPI Interface
    output      APP_FPGA_SPI_CLK,           // APP-HW IF
    output      APP_FPGA_SPI0_CS_N,         // APP-HW IF
    output      APP_FPGA_SPI0_MOSI,         // APP-HW IF
    output      APP_FPGA_SPI0_MISO,         // APP-HW IF
    output      APP_FPGA_SPI1_CS_N,         // APP-HW IF
    output      APP_FPGA_SPI1_MOSI,         // APP-HW IF
    output      APP_FPGA_SPI1_MISO,         // APP-HW IF

    // Test Points
    input       TP120,                      // Test Points
    input       TP121,                      // Test Points
    input       TP119,                      // Test Points
    input       TP118,                      // Test Points

    // AUX IO Interface
    output      APP_AUX_IO0,                // APP-HW IF
    output      APP_AUX_IO1,                // APP-HW IF
    output      APP_AUX_IO2,                // APP-HW IF
    output      APP_AUX_IO3,                // APP-HW IF
    output      APP_AUX_IO4,                // APP-HW IF
    output      APP_AUX_IO5,                // APP-HW IF

    output      DISABLE_HDW_FPGA,           // APP-HW IF

    // Test Points
    input       TP115,                      // Test Points
    input       TP114,                      // Test Points
    input       TP117,                      // Test Points
    input       TP116                       // Test Points

    // JTAG Interface, CANNOT be used in this design
    //input       APP_FPGA_TMS,               // APP-HW IF
    //input       APP_FPGA_TDI,               // APP-HW IF
    //input       APP_FPGA_TCK,               // APP-HW IF
    //input       APP_FPGA_TRST,              // APP-HW IF
    //output      APP_FPGA_TDO                // APP-HW IF
);

    //=========================================================================
    // Signal Declarations
    //=========================================================================
    
    // Global signals
    wire        clk_100m;                   // Global clock signal
    wire        rst_n;                      // Active low reset signal
    wire        rxd, txd;                   // UART RX and TX signals
    wire        clkin_2khz, clkout_2khz;    // Reference Clock Signals

    // Internal signals for cmd_server
    wire        opb_clk, opb_rst;
    wire [31:0] opb_di, opb_do, opb_addr;
    wire        opb_re, opb_we;

    // Signal declarations for ADDR_DECODER
    wire [31:0] sp_in, clock_in, counter_in, adc_in, dac_in, gpio_in, hw_in;
    wire        sp_re, sp_we, clock_we, clock_re, counter_we, counter_re;
    wire        gpio_re, gpio_we, fpga_if_re, fpga_if_we;
    wire        adc_re, adc_we, dac_re, dac_we, rs422_re, rs422_we;
    wire        can1_re, can1_we, can2_re, can2_we, can3_re, can3_we, can4_re, can4_we;

    // Signal declarations for module interfaces
    wire [31:0] fpga_if_in, rs422_in, can1_in, can2_in, can3_in, can4_in;
    wire        adc_convst_i;

    // System control signals
    reg         opb_wakeup;
    wire        heartbeat_led_n_w;

    // Clock generation signals
    wire        pulse_200khz, pulse_20khz, pulse_2khz, pulse_1hz;

    //=========================================================================
    // Signal Assignments
    //=========================================================================
    
    assign clk_100m      = APP_FPGA_100M_CLK;
    assign rst_n         = APP_DEVRST_N;

    // UART assignments
    assign rxd           = APP_DBUG_SCLK;       // J40-1, UART-RXD
    assign APP_DBUG_HEADER2 = txd;              // J40-2, UART-TXD
    
    // Clock assignments
    assign clkin_2khz    = APP_DBUG_MISO;       // J40-3, CLKIN_2KHZ
    assign APP_DBUG_HEADER4 = clkout_2khz;      // J40-4, CLKOUT_2KHZ
    assign clkout_2khz   = pulse_2khz;          // Replacement of clkin_2khz

    // Unused debug pins
    assign APP_DBUG_HEADER6  = 1'b0;
    assign APP_DBUG_HEADER8  = 1'b0;
    assign APP_DBUG_HEADER10 = 1'b0;
    assign APP_DBUG_CS_N     = 1'b0;
    assign APP_DBUG_ACTIVE   = 1'b0;
    assign APP_DBUG_MOSI     = 1'b0;

    // Fixed outputs
    assign FPGA_DONE         = 1'b1;           // LED D43

    // ADC signal inversion
    assign AD_CNVST_N        = adc_convst_i;  // Active low signal

    // Heartbeat LED control
    assign HEARTBEAT_LED_N   = opb_wakeup ? heartbeat_led_n_w : pulse_1hz; // D42

    //=========================================================================
    // Wake-up Logic
    //=========================================================================
    
    // OPB wakeup - any opb_re and opb_we will wake up the system
    always @(posedge opb_clk or negedge rst_n) begin
        if (!rst_n) begin
            opb_wakeup <= 1'b0;
        end else begin
            if (opb_re || opb_we) begin
                opb_wakeup <= 1'b1;
            end
        end
    end

    //=========================================================================
    // Module Instantiations
    //=========================================================================

    // Clock Divider for 1Hz pulse
    CLOCK_DIV clkgen_2khz(
        .CLK_DIV(16'd1000),
        .CLK_IN(pulse_2khz),
        .RST(~rst_n),
        .CLK_OUT(pulse_1hz)
    );

    // Command Server
    cmd_server u_cmd_server(
        .SYS_CLK(clk_100m),
        .SYS_RST(~rst_n),
        .PULSE_2KHZ(pulse_2khz),
        .OPB_CLK(opb_clk),
        .OPB_RST(opb_rst),
        .OPB_DI(opb_di),
        .OPB_DO(opb_do),
        .OPB_ADDR(opb_addr),
        .OPB_RE(opb_re),
        .OPB_WE(opb_we),
        .UART_TXD(txd),
        .UART_RXD(rxd)
    );

    // Address Decoder
    ADDR_DECODE addr_decode_0 (
        .OPB_CLK(opb_clk),
        .OPB_RST(opb_rst),
        .OPB_RE(opb_re),
        .OPB_WE(opb_we),
        .OPB_ADDR(opb_addr),
        .OPB_DO(opb_di),

        .SP_IN(sp_in),
        .CLOCK_IN(clock_in),
        .COUNTER_IN(counter_in),
        .GPIO_IN(gpio_in),
        .FPGA_IF_IN(fpga_if_in),
        .ADC_IN(adc_in),
        .DAC_IN(dac_in),
        .RS422_IN(rs422_in),
        .CAN1_IN(can1_in),
        .CAN2_IN(can2_in),
        .CAN3_IN(can3_in),
        .CAN4_IN(can4_in),

        .SP_RE(sp_re),
        .SP_WE(sp_we),
        .CLOCK_WE(clock_we),
        .CLOCK_RE(clock_re),
        .COUNTER_WE(counter_we),
        .COUNTER_RE(counter_re),
        .GPIO_RE(gpio_re),
        .GPIO_WE(gpio_we),
        .FPGA_IF_RE(fpga_if_re),
        .FPGA_IF_WE(fpga_if_we),
        .ADC_RE(adc_re),
        .ADC_WE(adc_we),
        .DAC_RE(dac_re),
        .DAC_WE(dac_we),
        .RS422_RE(rs422_re),
        .RS422_WE(rs422_we),
        .CAN1_RE(can1_re),
        .CAN1_WE(can1_we),
        .CAN2_RE(can2_re),
        .CAN2_WE(can2_we),
        .CAN3_RE(can3_re),
        .CAN3_WE(can3_we),
        .CAN4_RE(can4_re),
        .CAN4_WE(can4_we)
    );

    // Scratch Pad Register
    SCRATCH_PAD_REGISTER #(
        .VERSION(`FW_VERSION),
        .ID(`FPGA_ID),
        .DATE(`BUILD_DATE)
    ) scratch_pad_register_0 (
        .OPB_CLK(opb_clk),
        .OPB_RST(opb_rst),
        .OPB_ADDR(opb_addr),
        .SP_DI(opb_do),
        .SP_RE(sp_re),
        .SP_WE(sp_we),
        .SP_DO(sp_in)
    );

    // Clock Generator
    ClkGen u_clkgen (
        .CLK_GEN_DO(clock_in),
        .CLK_GEN_DI(opb_do),
        .OPB_ADDR(opb_addr),
        .CLK_GEN_RE(clock_re),
        .CLK_GEN_WE(clock_we),
        .OPB_CLK(opb_clk),
        .OPB_RST(opb_rst),
        .SYSCLK(clk_100m),
        .PULSE_200KHZ(pulse_200khz),
        .PULSE_20KHZ(pulse_20khz),
        .PULSE_2KHZ(pulse_2khz),
        .PULSE_100US(),
        .CLK_16KHZ(),
        .CLK_2MHZ()
    );

    // Oscillator Counter
    OSCILLATOR_COUNTER oscillator_counter_0 (
        .OPB_CLK(opb_clk),
        .OPB_RST(opb_rst),
        .OSC_CT_DO(counter_in),
        .OSC_CT_DI(opb_do),
        .OPB_ADDR(opb_addr),
        .OSC_CT_RE(counter_re),
        .OSC_CT_WE(counter_we),
        .TEST_CLK(clk_100m),
        .REF_CLK(clkin_2khz)
    );

    // ADC Interface
    ADC_ADS8864_IF u_adc (
        .OPB_CLK(opb_clk),
        .OPB_RST(opb_rst),
        .OPB_RE(adc_re),
        .OPB_WE(adc_we),
        .OPB_ADDR(opb_addr),
        .OPB_DO(adc_in),
        .OPB_DI(opb_do),
        .ADC_CNVST(adc_convst_i),
        .ADC_SCLK(AD_SCLK),
        .ADC_SDOUT(AD_SDOUT)
    );

    // DAC Interface
    DAC_DACx0504_IF u_dac (
        .OPB_CLK(opb_clk),
        .OPB_RST(opb_rst),
        .OPB_ADDR(opb_addr),
        .OPB_DI(opb_do),
        .OPB_WE(dac_we),
        .OPB_RE(dac_re),
        .OPB_DO(dac_in),
        .DAC_CLK(ST_DAC_CLK),
        .DAC_SDI(DAC_SDI),
        .DAC_CS_N(DAC_CS_N),
        .DAC_SDO(DAC_SDO)
    );


    // RS422 Interface
    RS422_TEST_IF u_rs422 (
        .OPB_CLK(opb_clk),
        .OPB_RST(opb_rst),
        .OPB_DI(opb_do),
        .OPB_DO(rs422_in),
        .OPB_ADDR(opb_addr),
        .RS422_RE(rs422_re),
        .RS422_WE(rs422_we),
        
        // RS422-IN
        .SYNC_LOC_MONITOR(SYNC_LOC_MONITOR),
        .SYNC_MONITOR(SYNC_MONITOR),
        .DMD_MSSB_RX(DMD_MSSB_RX),
        .ENCODER_RX1(ENCODER_RX1),
        .ENCODER_RX2(ENCODER_RX2),
        .BMPLS(BMPLS),
        .PRI_QUADR_A(PRI_QUADR_A),
        .PRI_QUADR_B(PRI_QUADR_B),
        .PRI_QUADR_I(PRI_QUADR_I),

        // RS422-OUT
        .SYNC_LOC_OUT(SYNC_LOC_OUT),
        .SYNC_OUT(SYNC_OUT),
        .DMD_MSSB_TX(ST_DMD_MSSB_TX),
        .ENCODER_TX1(ENCODER_TX1),
        .ENCODER_TX2(ENCODER_TX2)
    );

/*
assign SYNC_LOC_OUT = 0;
assign SYNC_OUT = 0;
assign ST_DMD_MSSB_TX = 0;
assign ENCODER_TX1 = 0;
assign ENCODER_TX2 = 0;
*/

    // APP to Hardware Interface
    APP2HW_IF u_app2hw_if (
        .OPB_CLK(opb_clk),
        .OPB_RST(opb_rst),
        .OPB_DI(opb_do),
        .OPB_DO(fpga_if_in),
        .OPB_ADDR(opb_addr),
        .APP_RE(fpga_if_re),
        .APP_WE(fpga_if_we),
        
        // Output Interface
        .APP_AUX_IO0(APP_AUX_IO0),
        .APP_AUX_IO1(APP_AUX_IO1),
        .APP_AUX_IO2(APP_AUX_IO2),
        .APP_AUX_IO3(APP_AUX_IO3),
        .APP_AUX_IO4(APP_AUX_IO4),
        .APP_AUX_IO5(APP_AUX_IO5),
        .HSSB_PMII_TX_DATA0(HSSB_PMII_TX_DATA0),
        .HSSB_PMII_TX_DATA1(HSSB_PMII_TX_DATA1),
        .HSSB_PMII_TX_DATA2(HSSB_PMII_TX_DATA2),
        .HSSB_PMII_TX_DATA3(HSSB_PMII_TX_DATA3),
        .HSSB_PMII_TX_EN(HSSB_PMII_TX_EN),
        .APP_FPGA_SPI1_CS_N(APP_FPGA_SPI1_CS_N),
        .APP_FPGA_SPI0_CS_N(APP_FPGA_SPI0_CS_N),
        .APP_FPGA_SPI0_MOSI(APP_FPGA_SPI0_MOSI),
        .APP_FPGA_SPI1_MOSI(APP_FPGA_SPI1_MOSI),
        .APP_FPGA_SPI_CLK(APP_FPGA_SPI_CLK),
        .DISABLE_HDW_FPGA(DISABLE_HDW_FPGA),
        .APP_FPGA_TDO(), // Not used, kept for compatibility

        // Input Interface
        .HSSB_PMII_CLK(HSSB_PMII_CLK),
        .HSSB_PMII_RESET_N(HSSB_PMII_RESET_N),
        .HSSB_PMII_RX_DATA0(HSSB_PMII_RX_DATA0),
        .HSSB_PMII_RX_DATA1(HSSB_PMII_RX_DATA1),
        .HSSB_PMII_RX_DATA2(HSSB_PMII_RX_DATA2),
        .HSSB_PMII_RX_DATA3(HSSB_PMII_RX_DATA3),
        .HSSB_PMII_RX_DV(HSSB_PMII_RX_DV),
        .APP_FPGA_SPI0_MISO(APP_FPGA_SPI0_MISO),
        .APP_FPGA_SPI1_MISO(APP_FPGA_SPI1_MISO),
        .APP_FPGA_TMS(1'b0), // Not used, kept for compatibility
        .APP_FPGA_TDI(1'b0), // Not used, kept for compatibility
        .APP_FPGA_TCK(1'b0), // Not used, kept for compatibility
        .APP_FPGA_TRST(1'b0)  // Not used, kept for compatibility
    );

    // CAN Interface
    CAN_IF u_can_if (
        .OPB_CLK(opb_clk),
        .OPB_RST(opb_rst),
        .OPB_DI(opb_do),
        .OPB_ADDR(opb_addr[15:0]),
        .CAN1_DO(can1_in),
        .CAN2_DO(can2_in),
        .CAN3_DO(can3_in),
        .CAN4_DO(can4_in),

        .CAN1_RE(can1_re),
        .CAN1_WE(can1_we),
        .CAN2_RE(can2_re),
        .CAN2_WE(can2_we),
        .CAN3_RE(can3_re),
        .CAN3_WE(can3_we),
        .CAN4_RE(can4_re),
        .CAN4_WE(can4_we),

        // CAN Interface
        .CAN_TX1(CAN_TX1),
        .CAN_TX2(CAN_TX2),
        .CAN_TX3(CAN_TX3),
        .CAN_TX4(CAN_TX4),
        .CAN_RX1(CAN_RX1),
        .CAN_RX2(CAN_RX2),
        .CAN_RX3(CAN_RX3),
        .CAN_RX4(CAN_RX4)
    );

    // GPIO Interface
    GPIO u_gpio (
        .OPB_CLK(opb_clk),
        .OPB_RST(opb_rst),
        .OPB_DI(opb_do),
        .OPB_DO(gpio_in),
        .OPB_ADDR(opb_addr),
        .GPIO_RE(gpio_re),
        .GPIO_WE(gpio_we),

        // GPIO Inputs
        .BMPLS(BMPLS), // Don't care, RS422-IN
        .CCW_LIMIT_STAT(CCW_LIMIT_STAT),
        .CW_LIMIT_STAT(CW_LIMIT_STAT),
        .LS_OSSD2_N(LS_OSSD2_N),
        .LS_WARNING_N(LS_WARNING_N),
        .GANT_LOCK_PIN_STAT(GANT_LOCK_PIN_STAT),
        .LS_RES_REQ_N(LS_RES_REQ_N),
        .SYNC_LOC_MONITOR(SYNC_LOC_MONITOR), // Don't care, RS422-IN
        .SYNC_MONITOR(SYNC_MONITOR), // Don't care, RS422-IN
        .GROTPWR_STS_N(GROTPWR_STS_N),
        .BMENLP_LOC_SINK_STATE(BMENLP_LOC_SINK_STATE),
        .BMENLP_LOC_SOURCE_STATE(BMENLP_LOC_SOURCE_STATE),
        .BMENLP_SOURCE_STATE(BMENLP_SOURCE_STATE),
        .KVBMENLP_SOURCE_STATE(KVBMENLP_SOURCE_STATE),
        .MTNENLP_CCH_SOURCE_STATE(MTNENLP_CCH_SOURCE_STATE),
        .MTNENLP_DKB_SOURCE_STATE(MTNENLP_DKB_SOURCE_STATE),
        .MTNENLP_LOC_SINK_STATE(MTNENLP_LOC_SINK_STATE),
        .MTNENLP_LOC_SOURCE_STATE(MTNENLP_LOC_SOURCE_STATE),
        .MTNENLP_SOURCE_STATE(MTNENLP_SOURCE_STATE),
        .PWRENLP_LOC_SINK_STATE(PWRENLP_LOC_SINK_STATE),
        .PWRENLP_LOC_SOURCE_STATE(PWRENLP_LOC_SOURCE_STATE),
        .PWRENLP_SOURCE_STATE(PWRENLP_SOURCE_STATE),
        .FLOW_N1(FLOW_N1),
        .FLOW_N2(FLOW_N2),
        .FLOW_N3(FLOW_N3),
        .FLOW_N4(FLOW_N4),
        .FLOW_N5(FLOW_N5),
        .P24VDRV_TEMP_FAULT_N(P24VDRV_TEMP_FAULT_N),
        .DKB_EMO_CLOSED(DKB_EMO_CLOSED),
        .DKB_FUSE_OK_N(DKB_FUSE_OK_N),
        .ENCODER1_FUSE_OK(ENCODER1_FUSE_OK),
        .HW_GANT_ROT_EN_FLT_N(HW_GANT_ROT_EN_FLT_N),
        .PEND_FUSE_OK_N(PEND_FUSE_OK_N),
        .PUMP_FAULT(PUMP_FAULT),
        .WATER_HIGH_ERROR(WATER_HIGH_ERROR),
        .WATER_FUSE_OK_N(WATER_FUSE_OK_N),
        .WATER_LOW_ERROR(WATER_LOW_ERROR),
        .WATER_LOW_WARNING(WATER_LOW_WARNING),
        .P5VISO_STATUS(P5VISO_STATUS),
        
        // GPIO Outputs
        .AD_SEL0(AD_SEL0),
        .AD_SEL1(AD_SEL1),
        .AD_SEL2(AD_SEL2),
        .AD_SEL3(AD_SEL3),
        .AD_SEL4(AD_SEL4),
        .AD_SEL5(AD_SEL5),
        .AD_SEL6(AD_SEL6),
        .AD_SEL7(AD_SEL7),
        .PUMP_CLR_FLT_ON(PUMP_CLR_FLT_ON),
        .SYNC_LOC_OUT(), // Not used, kept for compatibility
        .SYNC_OUT(), // Not used, kept for compatibility
        .LGCTRL1(LGCTRL1),
        .LGCTRL2(LGCTRL2),
        .LGCTRL3(LGCTRL3),
        .LP_MON_A0(LP_MON_A0),
        .LP_MON_A1(LP_MON_A1),
        .LP_MON_A2(LP_MON_A2),
        .LP_MON_SEL0(LP_MON_SEL0),
        .LP_MON_SEL1(LP_MON_SEL1),
        .LP_MON_SEL2(LP_MON_SEL2),
        .LP_MON_SEL3(LP_MON_SEL3),
        .ENCODER_FUSE_ON_N(ENCODER_FUSE_ON_N),
        .PUMP_EN_ON(PUMP_EN_ON),
        .SF6_24V_ON(SF6_24V_ON),
        .SF6_VALVE_OPEN(SF6_VALVE_OPEN),
        .WATER_FUSE_ON(WATER_FUSE_ON),
        .DKB_FUSE_ON(DKB_FUSE_ON),
        .PEND_FUSE_ON(PEND_FUSE_ON),
        .STAT_LED1_N(STAT_LED1_N),
        .STAT_LED2_N(STAT_LED2_N),
        .STAT_LED3_N(STAT_LED3_N),
        .HEARTBEAT_LED_N(heartbeat_led_n_w),
        .CAN1_LED_N(CAN1_LED_N),
        .CAN2_LED_N(CAN2_LED_N),
        .CAN3_LED_N(CAN3_LED_N),
        .CAN4_LED_N(CAN4_LED_N),
        .ENCODER_TX_ENAB1(ENCODER_TX_ENAB1),
        .ENCODER_TX_ENAB2(ENCODER_TX_ENAB2),
        
        // Test Points
        .TP134(TP134),
        .TP133(TP133),
        .TP183(TP183),
        .TP182(TP182),
        .TP181(TP181),
        .TP180(TP180),
        .TP198(TP198),
        .TP195(TP195),
        .TP202(TP202),
        .TP196(TP196),
        .TP190(TP190),
        .TP192(TP192),
        .TP203(TP203),
        .TP201(TP201),
        .TP189(TP189),
        .TP199(TP199),
        .TP193(TP193),
        .TP200(TP200),
        .TP184(TP184),
        .TP197(TP197),
        .TP191(TP191),
        .TP194(TP194),
        .TP187(TP187),
        .TP186(TP186),
        .TP185(TP185),
        .TP188(TP188),
        .TP136(TP136),
        .TP138(TP138),
        .TP135(TP135),
        .TP137(TP137),
        .TP207(TP207),
        .TP205(TP205),
        .TP206(TP206),
        .TP204(TP204),
        .TP120(TP120),
        .TP121(TP121),
        .TP119(TP119),
        .TP118(TP118),
        .TP115(TP115),
        .TP114(TP114),
        .TP117(TP117),
        .TP116(TP116)
    );

endmodule
