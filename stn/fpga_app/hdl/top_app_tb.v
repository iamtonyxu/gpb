///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: Jabil Circuit
//
// File: top_app_tb.v
// Description: Testbench for top_app module
//
// Author: Auto-generated testbench
//
///////////////////////////////////////////////////////////////////////////////////////////////////

`timescale 1ns/100ps

`define CLK100M_PERIOD 10 // 100 MHz clock period = 10ns
`include "ADDR_DEFINITION.v"

module top_app_tb;

    // Test Case Configuration
    integer SCRATCHPAD_TEST        = 0;    // Enable Scratchpad Test
    integer COUNTER_TEST           = 0;    // Enable COUNTER Test
    integer GPIO_TEST              = 1;    // Enable GPIO Test
    integer HW_TEST                = 0;    // Enable HW Test
    integer ADC_TEST               = 0;    // Enable ADC Test
    integer DAC_TEST               = 0;    // Enable DAC Test
    integer RS422_TEST             = 0;    // Enable RS422 Test
    integer CAN_TEST               = 0;    // Enable CAN Test

    //=========================================================================
    // Signal Declarations
    //=========================================================================

    // Clock and Reset
    reg         clk100m;
    reg         rst_n;

    // ADC Interface
    wire        AD_SCLK;
    wire        AD_CNVST_N;
    reg         AD_SDOUT;

    // DAC Interface
    wire        ST_DAC_CLK;
    wire        DAC_SDI;
    wire        DAC_CS_N;
    reg         DAC_SDO;

    // GPIO Inputs
    reg         BMPLS;
    reg         CCW_LIMIT_STAT;
    reg         CW_LIMIT_STAT;
    reg         LS_OSSD2_N;
    reg         LS_WARNING_N;
    reg         GANT_LOCK_PIN_STAT;
    reg         LS_RES_REQ_N;
    reg         SYNC_LOC_MONITOR;
    reg         SYNC_MONITOR;
    reg         GROTPWR_STS_N;
    reg         BMENLP_LOC_SINK_STATE;
    reg         BMENLP_LOC_SOURCE_STATE;
    reg         BMENLP_SOURCE_STATE;
    reg         KVBMENLP_SOURCE_STATE;
    reg         MTNENLP_CCH_SOURCE_STATE;
    reg         MTNENLP_DKB_SOURCE_STATE;
    reg         MTNENLP_LOC_SINK_STATE;
    reg         MTNENLP_LOC_SOURCE_STATE;
    reg         MTNENLP_SOURCE_STATE;
    reg         PWRENLP_LOC_SINK_STATE;
    reg         PWRENLP_LOC_SOURCE_STATE;
    reg         PWRENLP_SOURCE_STATE;

    reg         FLOW_N1;
    reg         FLOW_N2;
    reg         FLOW_N3;
    reg         FLOW_N4;
    reg         FLOW_N5;
    reg         P24VDRV_TEMP_FAULT_N;
    reg         DKB_EMO_CLOSED;
    reg         DKB_FUSE_OK_N;
    reg         ENCODER1_FUSE_OK;
    reg         HW_GANT_ROT_EN_FLT_N;
    reg         PEND_FUSE_OK_N;
    reg         PUMP_FAULT;
    reg         WATER_HIGH_ERROR;
    reg         WATER_FUSE_OK_N;
    reg         WATER_LOW_ERROR;
    reg         WATER_LOW_WARNING;
    reg         P5VISO_STATUS;

    // GPIO Outputs
    wire        AD_SEL0;
    wire        AD_SEL1;
    wire        AD_SEL2;
    wire        AD_SEL3;
    wire        AD_SEL4;
    wire        AD_SEL5;
    wire        AD_SEL6;
    wire        AD_SEL7;

    wire        PUMP_CLR_FLT_ON;
    //wire        SYNC_LOC_OUT;
    //wire        SYNC_OUT;
    wire        LGCTRL1;
    wire        LGCTRL2;
    wire        LGCTRL3;

    wire        LP_MON_A0;
    wire        LP_MON_A1;
    wire        LP_MON_A2;
    wire        LP_MON_SEL0;
    wire        LP_MON_SEL1;
    wire        LP_MON_SEL2;
    wire        LP_MON_SEL3;

    wire        ENCODER_FUSE_ON_N;
    wire        PUMP_EN_ON;
    wire        SF6_24V_ON;
    wire        SF6_VALVE_OPEN;
    wire        WATER_FUSE_ON;
    wire        DKB_FUSE_ON;
    wire        PEND_FUSE_ON;

    wire        STAT_LED1_N;        // LED D32
    wire        STAT_LED2_N;        // LED D40
    wire        STAT_LED3_N;        // LED D41
    wire        HEARTBEAT_LED_N;    // LED D42
    wire        CAN1_LED_N;         // LED D28
    wire        CAN2_LED_N;         // LED D29
    wire        CAN3_LED_N;         // LED D30
    wire        CAN4_LED_N;         // LED D31

    wire        ENCODER_TX_ENAB1;   // ENCODER-ENDAT IF, GPIO Outputs
    wire        ENCODER_TX_ENAB2;   // ENCODER-ENDAT IF, GPIO Outputs


     // FPGA_IF_OUTPUT Interface
    wire        APP_AUX_IO0;
    wire        APP_AUX_IO1;
    wire        APP_AUX_IO2;
    wire        APP_AUX_IO3;
    wire        APP_AUX_IO4;
    wire        APP_AUX_IO5;

    wire        HSSB_PMII_TX_DATA0;
    wire        HSSB_PMII_TX_DATA1;
    wire        HSSB_PMII_TX_DATA2;
    wire        HSSB_PMII_TX_DATA3;
    wire        HSSB_PMII_TX_EN;

    wire        APP_FPGA_SPI1_CS_N;
    wire        APP_FPGA_SPI0_CS_N;
    wire        APP_FPGA_SPI0_MOSI;
    wire        APP_FPGA_SPI1_MOSI;
    wire        APP_FPGA_SPI_CLK;
    wire        APP_FPGA_SPI0_MISO;
    wire        APP_FPGA_SPI1_MISO;
    wire        DISABLE_HDW_FPGA;

    // FPGA_IF_INPUT Interface
    reg         HSSB_PMII_CLK;
    reg         HSSB_PMII_RESET_N;
    reg         HSSB_PMII_RX_DATA0;
    reg         HSSB_PMII_RX_DATA1;
    reg         HSSB_PMII_RX_DATA2;
    reg         HSSB_PMII_RX_DATA3;
    reg         HSSB_PMII_RX_DV;


    // Test Points
    reg         TP134, TP133;
    reg         TP183, TP182, TP181, TP180;
    reg         TP198, TP195, TP202, TP196;
    reg         TP190, TP192, TP203, TP201;
    reg         TP189, TP199, TP193, TP200;
    reg         TP184, TP197, TP191, TP194;
    reg         TP187, TP186, TP185, TP188;
    reg         TP136, TP138, TP135, TP137;
    reg         TP207, TP205, TP206, TP204;
    reg         TP120, TP121, TP119, TP118;
    reg         TP115, TP114, TP117, TP116;

    // RS422-IN
    reg         DMD_MSSB_RX, ENCODER_RX1, ENCODER_RX2;
    reg         PRI_QUADR_A, PRI_QUADR_B, PRI_QUADR_I;

    // RS422-OUT
    wire        SYNC_LOC_OUT, SYNC_OUT, DMD_MSSB_TX;
    wire        ENCODER_TX1, ENCODER_TX2;

    // CAN Interface
    wire        CAN_TX1, CAN_TX2, CAN_TX3, CAN_TX4;
    reg         CAN_RX1, CAN_RX2, CAN_RX3, CAN_RX4;


    // DBUG HEADER (J40)
    //wire        APP_DBUG_HEADER2;           // UART-TXD
    wire        APP_DBUG_HEADER4;           // CLKOUT_2KHZ
    wire        APP_DBUG_HEADER6;
    wire        APP_DBUG_HEADER8;
    wire        APP_DBUG_HEADER10;
    wire        APP_DBUG_CS_N;
    wire        APP_DBUG_ACTIVE;
    wire        APP_DBUG_MOSI;
    reg         APP_DBUG_MISO;             // CLKIN_2KHZ
    //reg         APP_DBUG_SCLK;             // UART-RXD

// UART signals
reg RXD;
wire TXD;
reg [7:0] uart_tdata;

// UART Send Task
task uart_send;
    input [7:0] data;    // Byte to send
    integer i;
    reg [10:0] uart_frame;    // UART frame: start bit, data bits, stop bit
    integer baud_delay;       // Delay for one baud period
    begin
        // Calculate the delay for one baud period
        // Baud rate = 115200, Clock frequency = 100 MHz
        baud_delay = (100000000 / 115200) * `CLK100M_PERIOD;    // 868 clock cycles per bit

        // Construct the UART frame
        // Start bit (0), 8 data bits (LSB first), Stop bit (1)
        uart_frame = {1'b1, data, 1'b0};

        // Transmit the UART frame
        for (i = 0; i < 10; i = i + 1) begin
            RXD = uart_frame[i];    // Send each bit
            #baud_delay;                 // Wait for one baud period
        end
        RXD = 1'b1;                // Set to idle state (high) after transmission
        #20;                            // Wait for a short time before sending the next byte
    end
endtask

// UART Receive Task
task uart_recv;
    output reg [7:0] data;    // Received byte
    integer i;
    integer baud_delay;       // Delay for one baud period
    begin
        // Calculate the delay for one baud period
        // Baud rate = 115200, Clock frequency = 100 MHz
        baud_delay = (100000000 / 115200) * `CLK100M_PERIOD;    // 868 clock cycles per bit

        // Wait for the start bit (falling edge)
        wait(TXD == 0);
        #(baud_delay / 2);    // Wait for the middle of the start bit

        // Read 8 data bits (LSB first)
        for (i = 0; i < 8; i = i + 1) begin
            #(baud_delay);    // Wait for one baud period
            data[i] = TXD;    // Sample the data bit
        end

        // Wait for the stop bit
        #(baud_delay);
        if (TXD != 1) begin
            $display("UART RX Error: Stop bit not detected.");
        end
    end
endtask


// UART Receive data Task
task uart_recv_data_display;
    reg [7:0] uart_data_array [0:9];
    integer j;
    begin
        for (j = 0; j < 10; j = j + 1) begin
            uart_recv(uart_tdata);
            uart_data_array[j] = uart_tdata;
        end
        // Print all received data at once
        $display("Received: %h %h %h %h %h %h %h %h %h %h", 
                 uart_data_array[0], uart_data_array[1], uart_data_array[2], uart_data_array[3], uart_data_array[4],
                 uart_data_array[5], uart_data_array[6], uart_data_array[7], uart_data_array[8], uart_data_array[9]);
    end
endtask

// OPB Write Task
task opb_write;
    input [31:0] addr;    // Address to write to
    input [31:0] data;    // Data to write
    begin
        // Set OPB address and data
        uart_send(8'h5A); // Start byte for write
        uart_send(addr[31:24]); uart_send(addr[23:16]); uart_send(addr[15:8]); uart_send(addr[7:0]);
        uart_send(data[31:24]); uart_send(data[23:16]); uart_send(data[15:8]); uart_send(data[7:0]);
        uart_send(8'hA5); // Send end byte
    end
endtask

// OPB Read Task
task opb_read;
    input [31:0] addr;    // Address to read from
    begin
        // Set OPB address for read
        uart_send(8'h5B); // Start byte for read
        uart_send(addr[31:24]); uart_send(addr[23:16]); uart_send(addr[15:8]); uart_send(addr[7:0]);
        uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); // Padding bytes
        uart_send(8'hA4); // Send end byte
    end
endtask

// task to set GPIO Inputs for both GPIO_IN1 and GPIO_IN2 registers
task set_gpio_inputs;
input [31:0] gpio_in1_values; // GPIO_IN1 register (bits 0-31)
input [31:0] gpio_in2_values; // GPIO_IN2 register (bits 32-63)
begin
    // Set GPIO_IN1 register signals (first 32 GPIO inputs)
    BMPLS = gpio_in1_values[0];
    CCW_LIMIT_STAT = gpio_in1_values[1];
    CW_LIMIT_STAT = gpio_in1_values[2];
    LS_OSSD2_N = gpio_in1_values[3];
    LS_WARNING_N = gpio_in1_values[4];
    GANT_LOCK_PIN_STAT = gpio_in1_values[5];
    LS_RES_REQ_N = gpio_in1_values[6];
    SYNC_LOC_MONITOR = gpio_in1_values[7];
    SYNC_MONITOR = gpio_in1_values[8];
    GROTPWR_STS_N = gpio_in1_values[9];
    BMENLP_LOC_SINK_STATE = gpio_in1_values[10];
    BMENLP_LOC_SOURCE_STATE = gpio_in1_values[11];
    BMENLP_SOURCE_STATE = gpio_in1_values[12];
    KVBMENLP_SOURCE_STATE = gpio_in1_values[13];
    MTNENLP_CCH_SOURCE_STATE = gpio_in1_values[14];
    MTNENLP_DKB_SOURCE_STATE = gpio_in1_values[15];
    MTNENLP_LOC_SINK_STATE = gpio_in1_values[16];
    MTNENLP_LOC_SOURCE_STATE = gpio_in1_values[17];
    MTNENLP_SOURCE_STATE = gpio_in1_values[18];
    PWRENLP_LOC_SINK_STATE = gpio_in1_values[19];
    PWRENLP_LOC_SOURCE_STATE = gpio_in1_values[20];
    PWRENLP_SOURCE_STATE = gpio_in1_values[21];

    // Set GPIO_IN2 register signals (second GPIO inputs)
    FLOW_N1 = gpio_in2_values[0];
    FLOW_N2 = gpio_in2_values[1];
    FLOW_N3 = gpio_in2_values[2];
    FLOW_N4 = gpio_in2_values[3];
    FLOW_N5 = gpio_in2_values[4];
    P24VDRV_TEMP_FAULT_N = gpio_in2_values[5];
    DKB_EMO_CLOSED = gpio_in2_values[6];
    DKB_FUSE_OK_N = gpio_in2_values[7];
    ENCODER1_FUSE_OK = gpio_in2_values[8];
    HW_GANT_ROT_EN_FLT_N = gpio_in2_values[9];
    PEND_FUSE_OK_N = gpio_in2_values[10];
    PUMP_FAULT = gpio_in2_values[11];
    WATER_HIGH_ERROR = gpio_in2_values[12];
    WATER_FUSE_OK_N = gpio_in2_values[13];
    WATER_LOW_ERROR = gpio_in2_values[14];
    WATER_LOW_WARNING = gpio_in2_values[15];
    P5VISO_STATUS = gpio_in2_values[16];

    $display("GPIO inputs set at time %0t us: GPIO_IN1=0x%08h, GPIO_IN2=0x%08h", 
             $time/1000000, gpio_in1_values, gpio_in2_values);
end
endtask

    //=========================================================================
    // Clock and Reset Generation
    //=========================================================================

    // 100MHz system clock generation
    initial begin
        clk100m = 1'b0;
        forever #(`CLK100M_PERIOD / 2) clk100m = ~clk100m;
    end

    // 2KHz reference clock generation for debug
    initial begin
        APP_DBUG_MISO = 1'b0;
        forever #250000 APP_DBUG_MISO = ~APP_DBUG_MISO; // 2KHz = 500us period
    end


    // Reset generation
    initial begin
        rst_n = 1'b0;
        #1000; // Hold reset for 1000ns
        rst_n = 1'b1;
        $display("Reset released at time %0t", $time);
    end

    //=========================================================================
    // Signal Initialization
    //=========================================================================

    initial begin
        // Initialize all inputs to safe values
        AD_SDOUT = 1'b0;
        DAC_SDO = 1'b0;
        
        // GPIO inputs - initialize to inactive/safe states
        CCW_LIMIT_STAT = 1'b1;
        CW_LIMIT_STAT = 1'b1;
        LS_OSSD2_N = 1'b1;               // Active low, so 1 = not active
        LS_WARNING_N = 1'b1;             // Active low
        GANT_LOCK_PIN_STAT = 1'b0;
        LS_RES_REQ_N = 1'b1;             // Active low
        GROTPWR_STS_N = 1'b1;            // Active low

        // Loop states - initialize to safe states
        BMENLP_LOC_SINK_STATE = 1'b0;
        BMENLP_LOC_SOURCE_STATE = 1'b0;
        BMENLP_SOURCE_STATE = 1'b0;
        KVBMENLP_SOURCE_STATE = 1'b0;
        MTNENLP_CCH_SOURCE_STATE = 1'b0;
        MTNENLP_DKB_SOURCE_STATE = 1'b0;
        MTNENLP_LOC_SINK_STATE = 1'b0;
        MTNENLP_LOC_SOURCE_STATE = 1'b0;
        MTNENLP_SOURCE_STATE = 1'b0;
        PWRENLP_LOC_SINK_STATE = 1'b0;
        PWRENLP_LOC_SOURCE_STATE = 1'b0;
        PWRENLP_SOURCE_STATE = 1'b0;

        // Flow sensors
        FLOW_N1 = 1'b0; FLOW_N2 = 1'b0; FLOW_N3 = 1'b0;
        FLOW_N4 = 1'b0; FLOW_N5 = 1'b0;

        // Status inputs
        P24VDRV_TEMP_FAULT_N = 1'b1;     // Active low
        DKB_EMO_CLOSED = 1'b1;
        DKB_FUSE_OK_N = 1'b1;            // Active low, so 1 = OK
        ENCODER1_FUSE_OK = 1'b1;
        HW_GANT_ROT_EN_FLT_N = 1'b1;     // Active low
        PEND_FUSE_OK_N = 1'b1;           // Active low
        PUMP_FAULT = 1'b0;
        WATER_HIGH_ERROR = 1'b0;
        WATER_FUSE_OK_N = 1'b1;          // Active low
        WATER_LOW_ERROR = 1'b0;
        WATER_LOW_WARNING = 1'b0;
        P5VISO_STATUS = 1'b1;

        // CAN inputs
        CAN_RX1 = 1'b1; CAN_RX2 = 1'b1; 
        CAN_RX3 = 1'b1; CAN_RX4 = 1'b1;

        // HSSB PMII inputs
        HSSB_PMII_RX_DV = 1'b0;
        HSSB_PMII_RX_DATA0 = 1'b0; HSSB_PMII_RX_DATA1 = 1'b0;
        HSSB_PMII_RX_DATA2 = 1'b0; HSSB_PMII_RX_DATA3 = 1'b0;

        // RS422 inputs
        SYNC_LOC_MONITOR = 1'b0;
        SYNC_MONITOR = 1'b0;
        DMD_MSSB_RX = 1'b0;
        ENCODER_RX1 = 1'b0;
        ENCODER_RX2 = 1'b0;
        BMPLS = 1'b0;
        PRI_QUADR_A = 1'b0;
        PRI_QUADR_B = 1'b0;
        PRI_QUADR_I = 1'b0;

        // Initialize all test points to 0
        TP134 = 1'b0; TP133 = 1'b0;
        TP183 = 1'b0; TP182 = 1'b0; TP181 = 1'b0; TP180 = 1'b0;
        TP198 = 1'b0; TP195 = 1'b0; TP202 = 1'b0; TP196 = 1'b0;
        TP190 = 1'b0; TP192 = 1'b0; TP203 = 1'b0; TP201 = 1'b0;
        TP189 = 1'b0; TP199 = 1'b0; TP193 = 1'b0; TP200 = 1'b0;
        TP184 = 1'b0; TP197 = 1'b0; TP191 = 1'b0; TP194 = 1'b0;
        TP187 = 1'b0; TP186 = 1'b0; TP185 = 1'b0; TP188 = 1'b0;
        TP136 = 1'b0; TP138 = 1'b0; TP135 = 1'b0; TP137 = 1'b0;
        TP207 = 1'b0; TP205 = 1'b0; TP206 = 1'b0; TP204 = 1'b0;
        TP120 = 1'b0; TP121 = 1'b0; TP119 = 1'b0; TP118 = 1'b0;
        TP115 = 1'b0; TP114 = 1'b0; TP117 = 1'b0; TP116 = 1'b0;
    end

    //=========================================================================
    // DUT Instantiation
    //=========================================================================

    top_app uut (
        // ADC Interface
        .AD_SCLK(AD_SCLK),
        .AD_CNVST_N(AD_CNVST_N),
        .AD_SDOUT(AD_SDOUT),
        .AD_SEL0(AD_SEL0), .AD_SEL1(AD_SEL1), .AD_SEL2(AD_SEL2), .AD_SEL3(AD_SEL3),
        .AD_SEL4(AD_SEL4), .AD_SEL5(AD_SEL5), .AD_SEL6(AD_SEL6), .AD_SEL7(AD_SEL7),

        // GPIO Inputs
        .BMPLS(BMPLS),
        .CCW_LIMIT_STAT(CCW_LIMIT_STAT),
        .CW_LIMIT_STAT(CW_LIMIT_STAT),
        .LS_OSSD2_N(LS_OSSD2_N),
        .LS_WARNING_N(LS_WARNING_N),
        .GANT_LOCK_PIN_STAT(GANT_LOCK_PIN_STAT),
        .LS_RES_REQ_N(LS_RES_REQ_N),

        // Control Signals
        .APP_DEVRST_N(rst_n),
        .PUMP_CLR_FLT_ON(PUMP_CLR_FLT_ON),
        .SYNC_LOC_MONITOR(SYNC_LOC_MONITOR),
        .SYNC_LOC_OUT(SYNC_LOC_OUT),
        .SYNC_MONITOR(SYNC_MONITOR),
        .SYNC_OUT(SYNC_OUT),
        .GROTPWR_STS_N(GROTPWR_STS_N),

        // Enable/Disable Loop States
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

        // Test Points
        .TP134(TP134), .TP133(TP133),

        // DAC Interface
        .ST_DAC_CLK(ST_DAC_CLK),
        .DAC_SDI(DAC_SDI),
        .DAC_CS_N(DAC_CS_N),
        .DAC_SDO(DAC_SDO),

        // Flow Sensors
        .FLOW_N1(FLOW_N1), .FLOW_N2(FLOW_N2), .FLOW_N3(FLOW_N3),
        .FLOW_N4(FLOW_N4), .FLOW_N5(FLOW_N5),

        // Light Control and Power
        .LGCTRL1(LGCTRL1), .LGCTRL2(LGCTRL2), .LGCTRL3(LGCTRL3),
        .P24VDRV_TEMP_FAULT_N(P24VDRV_TEMP_FAULT_N),

        // Loop Monitor
        .LP_MON_A0(LP_MON_A0), .LP_MON_A1(LP_MON_A1), .LP_MON_A2(LP_MON_A2),
        .LP_MON_SEL0(LP_MON_SEL0), .LP_MON_SEL1(LP_MON_SEL1),
        .LP_MON_SEL2(LP_MON_SEL2), .LP_MON_SEL3(LP_MON_SEL3),

        // System Clock and Status
        .APP_FPGA_100M_CLK(clk100m),
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

        // Additional Test Points
        .TP183(TP183), .TP182(TP182), .TP181(TP181), .TP180(TP180),

        // CAN BUS Interface
        .CAN_TX1(CAN_TX1), .CAN_TX2(CAN_TX2), .CAN_TX3(CAN_TX3), .CAN_TX4(CAN_TX4),
        .CAN_RX1(CAN_RX1), .CAN_RX2(CAN_RX2), .CAN_RX3(CAN_RX3), .CAN_RX4(CAN_RX4),

        // Encoder Quadrature Interface
        .PRI_QUADR_A(PRI_QUADR_A), .PRI_QUADR_B(PRI_QUADR_B), .PRI_QUADR_I(PRI_QUADR_I),

        // Status LEDs
        .STAT_LED1_N(STAT_LED1_N), .STAT_LED2_N(STAT_LED2_N), .STAT_LED3_N(STAT_LED3_N),

        // Control Outputs
        .HEARTBEAT_LED_N(HEARTBEAT_LED_N),
        .ENCODER_FUSE_ON_N(ENCODER_FUSE_ON_N),
        .FPGA_DONE(FPGA_DONE),
        .PUMP_EN_ON(PUMP_EN_ON),
        .SF6_24V_ON(SF6_24V_ON),
        .SF6_VALVE_OPEN(SF6_VALVE_OPEN),
        .WATER_FUSE_ON(WATER_FUSE_ON),
        .DKB_FUSE_ON(DKB_FUSE_ON),
        .PEND_FUSE_ON(PEND_FUSE_ON),
        .P5VISO_STATUS(P5VISO_STATUS),

        // More Test Points
        .TP198(TP198), .TP195(TP195), .TP202(TP202), .TP196(TP196),

        // DMD MSSB Interface
        .ST_DMD_MSSB_TX(ST_DMD_MSSB_TX),
        .DMD_MSSB_RX(DMD_MSSB_RX),

        // Additional Test Points
        .TP190(TP190), .TP192(TP192), .TP203(TP203), .TP201(TP201),
        .TP189(TP189), .TP199(TP199), .TP193(TP193), .TP200(TP200),

        // Encoder ENDAT Interface
        .ENCODER_RX1(ENCODER_RX1), .ENCODER_RX2(ENCODER_RX2),
        .ENCODER_TX1(ENCODER_TX1), .ENCODER_TX2(ENCODER_TX2),
        .ENCODER_TX_ENAB1(ENCODER_TX_ENAB1), .ENCODER_TX_ENAB2(ENCODER_TX_ENAB2),

        // CAN LEDs
        .CAN1_LED_N(CAN1_LED_N), .CAN2_LED_N(CAN2_LED_N),
        .CAN3_LED_N(CAN3_LED_N), .CAN4_LED_N(CAN4_LED_N),

        // Final Test Points
        .TP184(TP184), .TP197(TP197), .TP191(TP191), .TP194(TP194),
        .TP187(TP187), .TP186(TP186), .TP185(TP185), .TP188(TP188),

        // HSSB PMII Interface
        .HSSB_PMII_CLK(HSSB_PMII_CLK),
        .HSSB_PMII_RESET_N(HSSB_PMII_RESET_N),
        .HSSB_PMII_TX_DATA0(HSSB_PMII_TX_DATA0), .HSSB_PMII_TX_DATA1(HSSB_PMII_TX_DATA1),
        .HSSB_PMII_TX_DATA2(HSSB_PMII_TX_DATA2), .HSSB_PMII_TX_DATA3(HSSB_PMII_TX_DATA3),
        .HSSB_PMII_TX_EN(HSSB_PMII_TX_EN),
        .HSSB_PMII_RX_DV(HSSB_PMII_RX_DV),
        .HSSB_PMII_RX_DATA0(HSSB_PMII_RX_DATA0), .HSSB_PMII_RX_DATA1(HSSB_PMII_RX_DATA1),
        .HSSB_PMII_RX_DATA2(HSSB_PMII_RX_DATA2), .HSSB_PMII_RX_DATA3(HSSB_PMII_RX_DATA3),

        // Test Points
        .TP136(TP136), .TP138(TP138), .TP135(TP135), .TP137(TP137),

        // DBUG HEADER (J40)
        .APP_DBUG_HEADER2(TXD),   // UART-TXD
        .APP_DBUG_HEADER4(APP_DBUG_HEADER4),   // CLKOUT_2KHZ
        .APP_DBUG_HEADER6(APP_DBUG_HEADER6),
        .APP_DBUG_HEADER8(APP_DBUG_HEADER8),
        .APP_DBUG_HEADER10(APP_DBUG_HEADER10),
        .APP_DBUG_CS_N(APP_DBUG_CS_N),
        .APP_DBUG_ACTIVE(APP_DBUG_ACTIVE),
        .APP_DBUG_MOSI(APP_DBUG_MOSI),
        .APP_DBUG_MISO(APP_DBUG_MISO),         // CLKIN_2KHZ
        .APP_DBUG_SCLK(RXD),         // UART-RXD

        // Test Points
        .TP207(TP207), .TP205(TP205), .TP206(TP206), .TP204(TP204),

        // SPI Interface
        .APP_FPGA_SPI_CLK(APP_FPGA_SPI_CLK),
        .APP_FPGA_SPI0_CS_N(APP_FPGA_SPI0_CS_N), .APP_FPGA_SPI1_CS_N(APP_FPGA_SPI1_CS_N),
        .APP_FPGA_SPI0_MOSI(APP_FPGA_SPI0_MOSI), .APP_FPGA_SPI1_MOSI(APP_FPGA_SPI1_MOSI),
        .APP_FPGA_SPI0_MISO(APP_FPGA_SPI0_MISO), .APP_FPGA_SPI1_MISO(APP_FPGA_SPI1_MISO),

        // Test Points
        .TP120(TP120), .TP121(TP121), .TP119(TP119), .TP118(TP118),

        // AUX IO Interface
        .APP_AUX_IO0(APP_AUX_IO0), .APP_AUX_IO1(APP_AUX_IO1), .APP_AUX_IO2(APP_AUX_IO2),
        .APP_AUX_IO3(APP_AUX_IO3), .APP_AUX_IO4(APP_AUX_IO4), .APP_AUX_IO5(APP_AUX_IO5),
        .DISABLE_HDW_FPGA(DISABLE_HDW_FPGA),

        // Test Points
        .TP115(TP115), .TP114(TP114), .TP117(TP117), .TP116(TP116)
    );

    //=========================================================================
    // Test Stimulus
    //=========================================================================

    initial begin
        $display("Starting top_app testbench simulation at time %0t", $time);
        
        // Wait for reset to be released
        wait(rst_n);
        #100;
        
        $display("Reset released, starting tests at time %0t us", $time/1000000);

        // Basic functionality test
        if(SCRATCHPAD_TEST) begin
            $display("Starting Scratchpad test at time %0t us", $time/1000000);
            test_scratchpad_functionality();
        end

        // Test GPIO functionality
        if (GPIO_TEST) begin
            $display("Starting GPIO tests at time %0t us", $time/1000000);
            test_gpio_functionality();
        end

        // Test CAN functionality
        if (CAN_TEST) begin
            $display("Starting CAN tests at time %0t", $time);
            test_can_functionality();
        end

        // Test ADC functionality
        if (ADC_TEST) begin
            $display("Starting ADC tests at time %0t", $time);
            test_adc_functionality();
        end

        // Test RS422 functionality
        if (RS422_TEST) begin
            $display("Starting RS422 tests at time %0t", $time);
            test_rs422_functionality();
        end

        #10000; // Run for additional time
        
        $display("Simulation completed at time %0t", $time);
        $finish;
    end

    //=========================================================================
    // Test Tasks
    //=========================================================================

    task test_scratchpad_functionality;
        begin
            $display("Testing basic functionality...");
            
            // Read FPGA VERSION
            opb_read(32'h00000000);
            $display("FPGA VERSION read at time %0t us", $time/1000000);
            uart_recv_data_display();
            #1000000;    // Wait 1us

            // Read FPGA ID
            opb_read(32'h00000001);
            $display("FPGA ID read at time %0t us", $time/1000000);
            uart_recv_data_display();
            #1000000;    // Wait 1us

            // Read BUILD DATE
            opb_read(32'h00000002);
            $display("FPGA BUILD DATE read at time %0t us", $time/1000000);
            uart_recv_data_display();
            #1000000;    // Wait 1us

            // Write Scratchpad Reg1
            opb_write(32'h00000003, 32'h12345678);
            $display("Scratchpad Reg1 written at time %0t us", $time/1000000);
            uart_recv_data_display();
            #1000000;    // Wait 1us

            // Read Scratchpad Reg1
            opb_read(32'h00000003);
            $display("Scratchpad Reg1 read at time %0t us", $time/1000000);
            uart_recv_data_display();
            #1000000;    // Wait 1us

            // Write Scratchpad Reg2
            opb_write(32'h00000004, 32'h87654321);
            $display("Scratchpad Reg2 written at time %0t us", $time/1000000);
            uart_recv_data_display();
            #1000000;    // Wait 1us

            // Read Scratchpad Reg2
            opb_read(32'h00000004);
            $display("Scratchpad Reg2 read at time %0t us", $time/1000000);
            uart_recv_data_display();
            #1000000;    // Wait 1us
        end
    endtask

    task test_gpio_functionality;
        begin
            $display("Testing GPIO functionality...");
            
            // Test various GPIO inputs
            set_gpio_inputs(32'h0, 32'h0); // All inputs low
            #1000;
            // Read GPIO_IN
            opb_read(32'h00030000);
            $display("GPIO_IN1 read at time %0t us", $time/1000000);
            uart_recv_data_display();
            opb_read(32'h00030001);
            $display("GPIO_IN2 read at time %0t us", $time/1000000);
            uart_recv_data_display();
            #1000000; // Wait 1us

            set_gpio_inputs(32'hFFFFFFFF, 32'hFFFFFFFF); // All inputs high
            #1000;
            // Read GPIO_IN
            opb_read(32'h00030000);
            $display("GPIO_IN1 read at time %0t us", $time/1000000);
            uart_recv_data_display();
            opb_read(32'h00030001);
            $display("GPIO_IN2 read at time %0t us", $time/1000000);
            uart_recv_data_display();
            #1000000; // Wait 1us

            set_gpio_inputs(32'hA5A5A5A5, 32'h5A5A5A5A); // Alternating pattern
            #1000;
            // Read GPIO_IN
            opb_read(32'h00030000);
            $display("GPIO_IN1 read at time %0t us", $time/1000000);
            uart_recv_data_display();
            opb_read(32'h00030001);
            $display("GPIO_IN2 read at time %0t us", $time/1000000);
            uart_recv_data_display();
            #1000000; // Wait 1us
            $display("GPIO tests completed");

        end
    endtask

    task test_can_functionality;
        begin
            $display("Testing CAN functionality...");
            
            // Simulate CAN traffic
            CAN_RX1 = 1'b0;
            #50;
            CAN_RX1 = 1'b1;
            #50;
            
            CAN_RX2 = 1'b0;
            #50;
            CAN_RX2 = 1'b1;
            #50;
            
            $display("CAN tests completed");
        end
    endtask

    task test_adc_functionality;
        begin
            $display("Testing ADC functionality...");
            
            // Simulate ADC data
            repeat(8) begin
                wait(AD_CNVST_N == 1'b0);  // Wait for conversion start
                #100;
                wait(AD_CNVST_N == 1'b1);  // Wait for conversion end
                
                // Simulate ADC serial data
                repeat(16) begin
                    @(posedge AD_SCLK);
                    AD_SDOUT = $random;
                end
                #100;
            end
            
            $display("ADC tests completed");
        end
    endtask

    task test_rs422_functionality;
        begin
            $display("Testing RS422 functionality...");

            // Simulate RS422 inputs
            SYNC_LOC_MONITOR = 1'b0;
            SYNC_MONITOR = 1'b0;
            DMD_MSSB_RX = 1'b0;
            ENCODER_RX1 = 1'b0;
            ENCODER_RX2 = 1'b0;
            BMPLS = 1'b0;
            PRI_QUADR_A = 1'b0;
            PRI_QUADR_B = 1'b0;
            PRI_QUADR_I = 1'b0;
            #100;

            $display("RS422 tests completed");
        end
    endtask


endmodule