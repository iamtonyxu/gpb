`timescale 1ns/100ps

module top(
    // System clock and reset
    input              FPGA_100M_CLK,
    input              RESET_N,
/*
    // POWER IF
    input              P24V_GOOD_N,
    input              FAN_FAIL_N,
    output             FAN_EN,
    output             12V_ISO_EN,

    // GANTRY 96V EMOPS
    input              24V_GNT_EMOPS_PG,
    output             24V_GNT_EMOPS_EN,
    output             GNT_EMOPS_EN,

    // GANTRY 96V INTERFACE
    output             GNT_MOT_PWR_EN,
    output             GNT_BRK_PWR_EN,
*/
    output             WD_TRIG,
/*
    input              OC_V_GNT_MOT_DRV,
    input              OC_V_GNT_BRK_DRV,
    input              GNT_MOT_PWR_FLT_N,
    input              GNT_BRK_PWR_FLT_N,
    input              GNT_EMOPS_OV_L,
    input              5V_ISO_MON_GNT,
    output             GNT_SHUNT_EN,
    input              GNT_SHUNT_ON,
    input              5V_ISO_MON_LFT,

    // GANTRY DRIVER
    output             GNT_PWM_PHA_HI,
    output             GNT_PWM_PHA_LO,
    output             GNT_PWM_PHB_HI,
    output             GNT_PWM_PHB_LO,
    output             GNT_PWM_PHC_HI,
    output             GNT_PWM_PHC_LO,

    // SPD-DMD IF
    output             GNT_HW_EN_MON,
    output             LFT_ST_DISB_MON,
    output             LFT_HW_EN_MON,
    output             GNT_ST_DISB_MON,
    output             DMD_PWR_OK,
    output             SPARE_MON,
    input              SPDIO_FLT_N,
    input              SPD2_24V_STATUS_N,
    input              LFT_ST_DISB,
    input              LFT_HW_EN_N,
    input              GNT_ST_DISB,
    input              GNT_HW_EN_N,

    // LIFT MOTOR HALL SENSOR IF
    output             LFT_HALL_PWR_EN_N,
    input              LFT_HALL_PWR_OK,
    input              LFT_HALL_SNS1_N,
    input              LFT_HALL_SNS2_N,
    input              LFT_HALL_SNS3_N,

    // GANTRY BRAKE DRIVER
    input              PWM_BRK_EXT_FAULT,
    output             GNT_BRK_EXT_EN,
    output             GNT_BRK_SW_MON,
    input              GNT_BRK1_FB_N,
    input              GNT_BRK2_FB_N,
    input              GNT_BRK3_FB_N,
    output             GNT_BRK1_PWM_HI,
    output             GNT_BRK1_PWM_LO,
    output             GNT_BRK1_RET_PWM_HI,
    output             GNT_BRK1_RET_PWM_LO,
    output             GNT_BRK2_PWM_HI,
    output             GNT_BRK2_PWM_LO,
    output             GNT_BRK2_RET_PWM_HI,
    output             GNT_BRK2_RET_PWM_LO,
    output             GNT_BRK3_PWM_HI,
    output             GNT_BRK3_PWM_LO,
    output             GNT_BRK3_RET_PWM_HI,
    output             GNT_BRK3_RET_PWM_LO,

    // LIFT MOTOR INTERFACE
    input              24V_LFT_EMOPS_PG,
    output             LFT_PWM_PHA_HI,
    output             LFT_PWM_PHA_LO,
    output             LFT_PWM_PHB_HI,
    output             LFT_PWM_PHB_LO,
    output             LFT_PWM_PHC_HI,
    output             LFT_PWM_PHC_LO,

    // GPIO
    output             GPIO2, // TP99
    output             GPIO3, // TP97
    output             GPIO5, // TP98
*/
    // EEPROM INTERFACE
    output             EEP_CS_N,
    output             EEP_SI,
    output             EEP_SCK,
    input              EEP_SO,
/*
    // LIFT 96V INTERFACE
    output             24V_LFT_EMOPS_EN,
    input              OC_V_LFT_MOT_DRV,
    output             LFT_SHUNT_EN,
    input              LFT_SHUNT_ON,
    output             LFT_EMOPS_EN,
    input              LFT_EMOPS_OV_L,
    input              LFT_MOT_PWR_FLT_N,
    output             LFT_MOT_PWR_EN,

    // SPD_EMOPS INTERFACE
    output             EMOPS_STAT1,
    output             EMOPS_STAT2,
    output             LFT_ROT_BRK_RLS,
    output             LAT_LNG_BRK_RLS,
    input              EM_DOWN_LIMIT,
    input              EM_UP_LIMIT,
    input              CCH_LFT_MOT_EN_N,
    input              CCH_LFT_DWN_N,
    input              CCH_LAT_LNG_FLOAT_N,
    input              EMO_GOOD_N,
    input              SITE_24V_PWR_OK_N,
    output             SRVC_CCH_GNT_N,
    output             EM_CCH_24V_EN,
    input              SPD_EMOPS_FLT_N,

    // STAND CONTROLLER INTERFACE
    output             EXOPS_GNT_24V_EN,
    input              GNT_CCW_LIMIT,
    input              GNT_CW_LIMIT,
    output             ST_MSSB_TX,
    input              MSSB_RX,
    output             ST_SRV_MSSB_TX,

    // SERVICE PENDANT
    input              SRV_MSSB_RX,
    output             PAN_24V_SW,

    // MISCELLANEOUS
    input              MAINS_LEVEL_FB,
*/
    output             POWER_GOOD,
/*
    output             MSSB_COMM_FAULT,
    output             HSWAP_FAULT,

    // EXT BRAKE DRIVER
    output             EXT_BRK1_DRV_EN,
    output             EXT_BRK2_DRV_EN,
    output             EXT_BRK3_DRV_EN,
*/
    // DEBUG PORT
    input              DBUG_HEADER2, // UART_RXD
    output             DBUG_HEADER4, // UART_TXD
    output             DBUG_HEADER6, // CLK_2KHZ
    output             DBUG_HEADER8, // CLK_20KHZ
    input              DBUG_HEADER10, // REF_CLK_2KHZ

/*
    // CCHL INTERFACE
    output             LFT_SER_CLK,
    output             LFT_SER_SYNC,
    output             LFT_SER_DATA0,
    output             LFT_SER_DATA1,
    input              LFT_SERIO_FLT_N,
    input              LFT_MTN_EN_N,
    input              LFT_SER_PAGE_SEL_N,
    input              LFT_DOWN_LIMIT,
    input              LFT_UP_LIMIT,

    // ADC/DAC INTERFACE
    output             AD_SEL0,
    output             AD_SEL1,
    output             AD_SEL2,
    output             AD_MUX1_N,
    output             AD_MUX2_N,
    output             AD_MUX3_N,
    output             AD_MUX4_N,
    output             AD_MUX5_N,
*/
    output             ST_DAC_CLK,
    output             DAC_SDI,
    output             DAC_CS_N,
    input              DAC_SDO,
    input              ADC_SDOUT,
    //input              12V_ACT_DIODE_ON_N,
    output             ST_ADC_CLK,
    output             ADC_CNVST
/*
    // DEBUG PORT
    output             DBUG_MISO,
    input              DBUG_MOSI,
    input              DBUG_CS_N,
    input              DBUG_SCLK,
    input              DBUG_ACTIVE
*/
);

    // SYS_CLK
    wire              SYS_CLK; //FPGA_100M_CLK

    // OPB interface signals
    wire              OPB_CLK;
    wire              OPB_RST;
    wire    [31:0]    OPB_DI;
    wire    [31:0]    OPB_DO;
    wire    [31:0]    OPB_ADDR;
    wire              OPB_RE;
    wire              OPB_WE;

    // UART Interface
    wire            UART_RXD;
    wire            UART_TXD;

    // pulse signals
    wire            PULSE_200KHZ;
    wire            PULSE_20KHZ;
    wire            PULSE_2KHZ;
    wire            PULSE_1HZ;
    wire            PULSE_100US;
    wire            CLK_2MHZ;
    wire            REF_CLK_2KHZ;

    wire    [31:0]  SP_IN; // from scratchpad
    wire    [31:0]  EEP_IN; // from EEPROM
//
    wire    [31:0]  GPIO_IN; // from GPIO
    wire    [31:0]  OSC_CT_IN; // from oscillator counter
    wire    [31:0]  CLK_GEN_IN; // from clock generator
    wire    [31:0]  ILIM_DAC_IN; // from ILIM DAC
    wire    [31:0]  ADC_IN; // from ADC
    wire    [31:0]  GANT_MOT_IN; // from gantry motor
    wire    [31:0]  LIFT_MOT_IN; // from lift motor
	wire            SP1_RE; // scratchpad 1 read enable
	wire            SP1_WE; // scratchpad 1 write enable
	wire            SP2_RE; // scratchpad 2 read enable
	wire            SP2_WE; // scratchpad 2 write enable
    wire            STD_CONT_RE; // standard control read enable
    wire            CCHL_IF_RE; // CCHL interface read enable
    wire            SER_PENDANT_RE; // service pendant read enable
    wire            PWR_IF_RE; // power interface read enable
    wire            LIFT_MOT_SENS_RE; // lift motor sensor read enable
    wire            SPD_DMD_IF_RE; // spd_dmd read enable
    wire            GANTRY_MOT_SENS_RE; // gantry motor sensor read enable
    wire            SPD_EMOPS_RE; // spd_emops read enable
    wire            GPO_RE; // general-purpose output read enable
    wire            GPO_WE; // general-purpose output write enable
    wire            ADMUX_RE; // ADMUX read enable
    wire            ADMUX_WE; // ADMUX write enable
    wire            ADSEL_RE; // ADSEL read enable
    wire            ADSEL_WE; // ADSEL write enable
    wire            STS_RE; // status read enable
    wire            STS_WE; // status write enable
    wire            GANTRY_96V_IF_RE; // gantry 96V interface read enable
    wire            GANTRY_96V_IF_WE; // gantry 96V interface write enable
    wire            LIFT_96V_IF_RE; // lift 96V interface read enable
    wire            LIFT_96V_IF_WE; // lift 96V interface write enable
    wire            MOT_GPO_WE; // motor GPO write enable
    wire            COUNTER_WE; // counter write enable
    wire            COUNTER_RE; // counter read enable
    wire            ILIM_DAC_WE; // ILIM DAC write enable
    wire            ILIM_DAC_RE; // ILIM DAC read enable
    wire            CLOCK_WE; // clock write enable
    wire            CLOCK_RE; // clock read enable
    wire            ADC_RE; // ADC read enable
    wire            ADC_WE; // ADC write enable
    wire            GANT_MOT_RE; // gantry motor read enable
    wire            GANT_MOT_WE; // gantry motor write enable
    wire            LIFT_MOT_RE; // lift motor read enable
    wire            LIFT_MOT_WE; // lift motor write enable
//
    assign SYS_CLK = FPGA_100M_CLK; // 100MHz Clock
    assign POWER_GOOD = PULSE_1HZ; // Power good signal after FPGA programmed
    assign DBUG_HEADER6 = PULSE_2KHZ; // CLK_2KHZ output for debugging
    assign DBUG_HEADER8 = PULSE_20KHZ; // CLK_20KHZ output for debugging
    assign REF_CLK_2KHZ = DBUG_HEADER10; // REF_CLK_2KHZ input for Freq counter

    assign DBUG_HEADER4 = UART_TXD;
    assign UART_RXD = DBUG_HEADER2;

    // PULSE_1HZ
	CLOCK_DIV clkgen_2khz(
		.CLK_DIV(16'd1000),
		.CLK_IN(PULSE_2KHZ),
        .RST(~RESET_N),
		.CLK_OUT(PULSE_1HZ)
	);

    // cmd_server module instantiation
    cmd_server cmd_server_0(
        .SYS_CLK(SYS_CLK),              // System clock
        .SYS_RST(~RESET_N),             // System reset (active low)
        .PULSE_2KHZ(PULSE_2KHZ),        // 2kHz pulse signal
        .OPB_CLK(OPB_CLK),              // OPB clock
        .OPB_RST(OPB_RST),              // OPB reset
        .OPB_DI(OPB_DI),                // OPB data input
        .OPB_DO(OPB_DO),                // OPB data output
        .OPB_ADDR(OPB_ADDR),            // OPB address
        .OPB_RE(OPB_RE),                // Read enable signal
        .OPB_WE(OPB_WE),                // Write enable signal
        .UART_TXD(UART_TXD),            // UART transmit data
        .UART_RXD(UART_RXD)             // UART receive data
    );

    // Example instantiation of the AdderDecode module
    AdderDecode adder_decode_0 (
        .OPB_CLK(OPB_CLK),               // System clock
        .OPB_RST(OPB_RST),               // System reset
        .DEC_RE(OPB_RE),                 // Read enable signal
        .DEC_WE(OPB_WE),                 // Write enable signal
        .DEC_ADDR(OPB_ADDR),             // Address input
        .SP_IN(SP_IN),                   // Scratchpad input
//
        .GPIO_IN(GPIO_IN),               // GPIO output
        .OSC_CT_IN(OSC_CT_IN),           // Oscillator counter output
        .CLK_GEN_IN(CLK_GEN_IN),         // Clock generator output
        .ILIM_DAC_IN(ILIM_DAC_IN),       // ILIM DAC output
        .ADC_IN(ADC_IN),                 // ADC output
        .GANT_MOT_IN(GANT_MOT_IN),       // Gantry motor output
        .LIFT_MOT_IN(LIFT_MOT_IN),       // Lift motor output
        .EEP_IN(EEP_IN),                 // EEPROM output
        .SP1_RE(SP1_RE),                 // Scratchpad 1 read enable
        .SP1_WE(SP1_WE),                 // Scratchpad 1 write enable
        .SP2_RE(SP2_RE),                 // Scratchpad 2 read enable
        .SP2_WE(SP2_WE),                 // Scratchpad 2 write enable
        .STD_CONT_RE(STD_CONT_RE),       // Standard control read enable
        .CCHL_IF_RE(CCHL_IF_RE),         // CCHL interface read enable
        .SER_PENDANT_RE(SER_PENDANT_RE), // Service pendant read enable
        .PWR_IF_RE(PWR_IF_RE),           // Power interface read enable
        .LIFT_MOT_SENS_RE(LIFT_MOT_SENS_RE), // Lift motor sensor read enable
        .SPD_DMD_IF_RE(SPD_DMD_IF_RE),   // Speed demand interface read enable
        .GANTRY_MOT_SENS_RE(GANTRY_MOT_SENS_RE), // Gantry motor sensor read enable
        .SPD_EMOPS_RE(SPD_EMOPS_RE),     // SPD EMOPS read enable
        .GPO_RE(GPO_RE),                 // General-purpose output read enable
        .GPO_WE(GPO_WE),                 // General-purpose output write enable
        .ADMUX_RE(ADMUX_RE),             // ADMUX read enable
        .ADMUX_WE(ADMUX_WE),             // ADMUX write enable
        .ADSEL_RE(ADSEL_RE),             // ADSEL read enable
        .ADSEL_WE(ADSEL_WE),             // ADSEL write enable
        .STS_RE(STS_RE),                 // Status read enable
        .STS_WE(STS_WE),                 // Status write enable
        .GANTRY_96V_IF_RE(GANTRY_96V_IF_RE), // Gantry 96V interface read enable
        .GANTRY_96V_IF_WE(GANTRY_96V_IF_WE), // Gantry 96V interface write enable
        .LIFT_96V_IF_RE(LIFT_96V_IF_RE), // Lift 96V interface read enable
        .LIFT_96V_IF_WE(LIFT_96V_IF_WE), // Lift 96V interface write enable
        .MOT_GPO_WE(MOT_GPO_WE),         // Motor GPO write enable
        .COUNTER_WE(COUNTER_WE),         // Counter write enable
        .COUNTER_RE(COUNTER_RE),         // Counter read enable
        .ILIM_DAC_WE(ILIM_DAC_WE),       // ILIM DAC write enable
        .ILIM_DAC_RE(ILIM_DAC_RE),       // ILIM DAC read enable
        .CLOCK_WE(CLOCK_WE),             // Clock write enable
        .CLOCK_RE(CLOCK_RE),             // Clock read enable
        .ADC_RE(ADC_RE),                 // ADC read enable
        .ADC_WE(ADC_WE),                 // ADC write enable
        .GANT_MOT_RE(GANT_MOT_RE),       // Gantry motor read enable
        .GANT_MOT_WE(GANT_MOT_WE),       // Gantry motor write enable
        .LIFT_MOT_RE(LIFT_MOT_RE),       // Lift motor read enable
        .LIFT_MOT_WE(LIFT_MOT_WE),       // Lift motor write enable
        .EEP_RE(EEP_RE),                 // EEPROM RE
        .EEP_WE(EEP_WE),                 // EEPROM WE
        .DATA_OUT(),             // Data output
//
        .DEC_DO(OPB_DI)                  // Decoder data output
    );

    // CLK_GEN module instantiation
    ClkGen clk_gen_0 (
        .CLK_GEN_DO(CLK_GEN_IN),         // Clock generator data output
        .CLK_GEN_DI(OPB_DO),             // Clock generator data input
        .OPB_ADDR(OPB_ADDR),             // OPB address
        .CLK_GEN_RE(CLOCK_RE),           // Read enable signal
        .CLK_GEN_WE(CLOCK_WE),           // Write enable signal
        .OPB_CLK(OPB_CLK),               // OPB clock
        .OPB_RST(OPB_RST),               // OPB reset
        .SYSCLK(SYS_CLK),                // System clock
        .PULSE_200KHZ(PULSE_200KHZ),     // 200kHz pulse output
        .PULSE_20KHZ(PULSE_20KHZ),       // 20kHz pulse output
        .PULSE_2KHZ(PULSE_2KHZ),         // 2kHz pulse output
        .PULSE_100US(PULSE_100US),       // 100us pulse output
        .CLK_16KHZ(),                    // 16kHz clock output (not connected)
        .CLK_2MHZ(CLK_2MHZ)              // 2MHz clock output
    );

    // OSCILLATOR_COUNTER module instantiation
    OSCILLATOR_COUNTER osc_counter_0 (
        .OPB_CLK(OPB_CLK),               // OPB clock
        .OPB_RST(OPB_RST),               // OPB reset
        .OSC_CT_DO(OSC_CT_IN),           // Oscillator counter data output
        .OSC_CT_DI(OPB_DO),              // Oscillator counter data input
        .OPB_ADDR(OPB_ADDR),             // OPB address
        .OSC_CT_RE(COUNTER_RE),          // Read enable signal
        .OSC_CT_WE(COUNTER_WE),          // Write enable signal
        .REF_CLK(REF_CLK_2KHZ)          // Reference clock (2KHz)
    );

    // SCRATCH_PAD_REGISTER module instantiation
    SCRATCH_PAD_REGISTER scratch_pad_0 (
        .OPB_CLK(OPB_CLK),               // OPB clock
        .OPB_RST(OPB_RST),               // OPB reset
        .SP_DI(OPB_DO),                  // Scratchpad data input
        .SP_DO(SP_IN),                   // Scratchpad data output
        .SP1_RE(SP1_RE),                 // Scratchpad 1 read enable
        .SP1_WE(SP1_WE),                 // Scratchpad 1 write enable
        .SP2_RE(SP2_RE),                 // Scratchpad 2 read enable
        .SP2_WE(SP2_WE)                  // Scratchpad 2 write enable
    );

    EEPROM_OPB_IF eeprom_0(
    .OPB_CLK(OPB_CLK),               // OPB clock
    .OPB_RST(OPB_RST),               // OPB reset
    .EEP_DI(OPB_DO),                 // EEPROM data input
    .EEP_RE(EEP_RE),                 // EEPROM read enable
    .EEP_WE(EEP_WE),                 // EEPROM write enable
    .EEP_DO(EEP_IN),                 // EEPROM data output
    .EEP_CS_N(EEP_CS_N),             // EEPROM chip select (active low)
    .EEP_SI(EEP_SI),                 // EEPROM serial input
    .EEP_SCK(EEP_SCK),               // EEPROM serial clock
    .EEP_SO(EEP_SO)                  // EEPROM serial output
    );

ADC_ADS8864_IF adc_0 (
    .OPB_CLK(OPB_CLK),
    .OPB_RST(OPB_RST),
    .OPB_RE(ADC_RE),
    .OPB_WE(ADC_WE),
    .OPB_ADDR(OPB_ADDR),
    .OPB_DO(ADC_IN),
    .OPB_DI(OPB_DO),

    .ADC_CNVST(ADC_CNVST),
    .ADC_SCLK(ST_ADC_CLK),
    .ADC_SDOUT(ADC_SDOUT)
);

DAC_DACx0504_IF dac_0 (
    .OPB_CLK(OPB_CLK),
    .OPB_RST(OPB_RST),
    .OPB_ADDR(OPB_ADDR),
    .OPB_DI(OPB_DO),
    .OPB_WE(ILIM_DAC_WE),
    .OPB_RE(ILIM_DAC_RE),
    .OPB_DO(ILIM_DAC_IN),
    .DAC_CLK(ST_DAC_CLK),
    .DAC_SDI(DAC_SDI),
    .DAC_CS_N(DAC_CS_N),
    .DAC_SDO(DAC_SDO)
);

    // FPGA_WDI module instantiation
    FPGA_WDI fpga_wdi_0 (
        .OPB_CLK(OPB_CLK),                 // OPB clock
        .PULSE_100US(PULSE_100US),         // 100us pulse signal
        .OPB_RST(OPB_RST),                 // OPB reset
        .WD_TRIG(WD_TRIG)                  // Watchdog output
    );

/*
 
    // Gantry_Motor module instantiation
    Gantry_Motor gantry_motor_0 (
        .GANT_MOT_DO(GANT_MOT_IN),          // Gantry motor data output
        .GANT_PWM(GANT_PWM),                // Gantry motor PWM output
        .GANT_MOT_DRV_EN(GANT_MOT_DRV_EN),  // Gantry motor driver enable
        .GANT_CURR_SAMP(GANT_CURR_SAMP),    // Gantry motor current sample
        .GANT_MOT_DI(OPB_DO),               // Gantry motor data input
        .GANT_ADDR(OPB_ADDR),               // OPB address
        .GANT_MOT_RE(GANT_MOT_RE),          // Read enable signal
        .GANT_MOT_WE(GANT_MOT_WE),          // Write enable signal
        .OPB_CLK(OPB_CLK),                  // OPB clock
        .OPB_RST(OPB_RST),                  // OPB reset
        .SYSCLK(SYS_CLK),                   // System clock
        .CLK_200KHZ(PULSE_200KHZ),          // 200kHz clock input
        .CLK_20KHZ(PULSE_20KHZ),            // 20kHz clock input
        .CLK_2KHZ(PULSE_2KHZ)               // 2kHz clock input
    );

    // Lift_Motor module instantiation
    Lift_Motor lift_motor_0 (
        .LIFT_MOT_DO(LIFT_MOT_IN),          // Lift motor data output
        .LIFT_PWM(LIFT_PWM),                // Lift motor PWM output
        .LIFT_MOT_DRV_EN(LIFT_MOT_DRV_EN),  // Lift motor driver enable
        .LIFT_CURR_SAMP(LIFT_CURR_SAMP),    // Lift motor current sample
        .LIFT_MOT_DI(OPB_DO),               // Lift motor data input
        .LIFT_ADDR(OPB_ADDR),               // OPB address
        .LIFT_MOT_RE(LIFT_MOT_RE),          // Read enable signal
        .LIFT_MOT_WE(LIFT_MOT_WE),          // Write enable signal
        .OPB_CLK(OPB_CLK),                  // OPB clock
        .OPB_RST(OPB_RST),                  // OPB reset
        .SYSCLK(SYS_CLK),                   // System clock
        .CLK_200KHZ(PULSE_200KHZ),          // 200kHz clock input
        .CLK_20KHZ(PULSE_20KHZ),            // 20kHz clock input
        .CLK_2KHZ(PULSE_2KHZ)               // 2kHz clock input
    );

    // GPIO module instantiation
    GPIO gpio_0 (
        .OPB_CLK(OPB_CLK),                  // OPB clock
        .OPB_RST(OPB_RST),                  // OPB reset
        .GPIO_DI(OPB_DO),                   // GPIO data input
        .GPIO_ADDR(OPB_ADDR),               // OPB address
        .STD_CONT_RE(STD_CONT_RE),          // Standard control read enable
        .CCHL_IF_RE(CCHL_IF_RE),            // CCHL interface read enable
        .SER_PENDANT_RE(SER_PENDANT_RE),    // Service pendant read enable
        .PWR_IF_RE(PWR_IF_RE),              // Power interface read enable
        .LIFT_MOT_SENS_RE(LIFT_MOT_SENS_RE),// Lift motor sensor read enable
        .SPD_DMD_IF_RE(SPD_DMD_IF_RE),      // Speed demand interface read enable
        .GANTRY_MOT_SENS_RE(GANTRY_MOT_SENS_RE), // Gantry motor sensor read enable
        .SPD_EMOPS_RE(SPD_EMOPS_RE),        // SPD EMOPS read enable
        .GPO_RE(GPO_RE),                    // General-purpose output read enable
        .GPO_WE(GPO_WE),                    // General-purpose output write enable
        .ADMUX_RE(ADMUX_RE),                // ADMUX read enable
        .ADMUX_WE(ADMUX_WE),                // ADMUX write enable
        .ADSEL_RE(ADSEL_RE),                // ADSEL read enable
        .ADSEL_WE(ADSEL_WE),                // ADSEL write enable
        .STS_RE(STS_RE),                    // Status read enable
        .STS_WE(STS_WE),                    // Status write enable
        .GANTRY_96V_IF_RE(GANTRY_96V_IF_RE),// Gantry 96V interface read enable
        .GANTRY_96V_IF_WE(GANTRY_96V_IF_WE),// Gantry 96V interface write enable
        .LIFT_96V_IF_RE(LIFT_96V_IF_RE),    // Lift 96V interface read enable
        .LIFT_96V_IF_WE(LIFT_96V_IF_WE),    // Lift 96V interface write enable
        .MOT_GPO_WE(MOT_GPO_WE),            // Motor GPO write enable
        .DMD_IO(DMD_IO),                    // DMD I/O data
        .STAND_CONT_IF(STAND_CONT_IF),      // Stand control interface
        .CCHL_IF(CCHL_IF),                  // CCHL interface data
        .SERVICE_PENDANT(SERVICE_PENDANT),  // Service pendant data
        .PWR_IF(PWR_IF),                    // Power interface data
        .LIFT_MOT_SNS_IF(LIFT_MOT_SNS_IF),  // Lift motor sensor interface data
        .SPD_DMD_IF(SPD_DMD_IF),            // Speed demand interface data
        .GANT_MOT_SNS_IF(GANT_MOT_SNS_IF),  // Gantry motor sensor interface data
        .SPD_EMOPS_IF(SPD_EMOPS_IF),        // SPD EMOPS interface data
        .AD_MUX(AD_MUX),                    // ADMUX output
        .AD_SEL(AD_SEL),                    // ADSEL output
        .STS(STS),                          // Status output
        .FPGA_DONE(FPGA_DONE),              // FPGA done signal
        .GANT_96V_BYPASS(GANT_96V_BYPASS),  // Gantry 96V bypass
        .GANT_24V_PWR_EN(GANT_24V_PWR_EN),  // Gantry 24V power enable
        .GANT_96V_PWR_EN(GANT_96V_PWR_EN),  // Gantry 96V power enable
        .GANT_MOT_SHUNT_EN_N(GANT_MOT_SHUNT_EN_N), // Gantry motor shunt enable (active low)
        .LIFT_96V_BYPASS(LIFT_96V_BYPASS),  // Lift 96V bypass
        .LIFT_24V_PWR_EN(LIFT_24V_PWR_EN),  // Lift 24V power enable
        .LIFT_96V_PWR_EN(LIFT_96V_PWR_EN),  // Lift 96V power enable
        .LIFT_MOT_SHUNT_EN_N(LIFT_MOT_SHUNT_EN_N), // Lift motor shunt enable (active low)
        .GANT_SERIO_RST_N(GANT_SERIO_RST_N), // Gantry SERIO reset (active low)
        .GANT_SER_DATA1(GANT_SER_DATA1),    // Gantry SERIO data 1
        .GANT_SER_DATA0(GANT_SER_DATA0),    // Gantry SERIO data 0
        .GANT_SER_SYNC(GANT_SER_SYNC),      // Gantry SERIO sync
        .GANT_SER_CLK(GANT_SER_CLK),        // Gantry SERIO clock
        .LIFT_SERIO_RST_N(LIFT_SERIO_RST_N), // Lift SERIO reset (active low)
        .LIFT_SER_DATA1(LIFT_SER_DATA1),    // Lift SERIO data 1
        .LIFT_SER_DATA0(LIFT_SER_DATA0),    // Lift SERIO data 0
        .LIFT_SER_SYNC(LIFT_SER_SYNC),      // Lift SERIO sync
        .LIFT_SER_CLK(LIFT_SER_CLK),        // Lift SERIO clock
        .LIFT_BRK_OVRD_LED_CTRL(LIFT_BRK_OVRD_LED_CTRL), // Lift brake override LED control
        .FAN_EN(FAN_EN),                    // Fan enable
        .LIFT_HALL_PWR_EN(LIFT_HALL_PWR_EN), // Lift hall power enable
        .SPDIO_RST_N(SPDIO_RST_N),          // SPDIO reset (active low)
        .SPARE_MON(SPARE_MON),              // Spare monitor output
        .DMD_PWR_OK(DMD_PWR_OK),            // DMD power OK signal
        .GANT_ST_DISB_MON(GANT_ST_DISB_MON), // Gantry status disable monitor
        .LIFT_HW_EN_MON(LIFT_HW_EN_MON),    // Lift hardware enable monitor
        .LIFT_ST_DISB_MON(LIFT_ST_DISB_MON), // Lift status disable monitor
        .GNT_HW_EN_MON(GNT_HW_EN_MON),      // Gantry hardware enable monitor
        .GNT_HALL_PWR_EN(GNT_HALL_PWR_EN),  // Gantry hall power enable
        .GNT_BRK_RLS(GNT_BRK_RLS),          // Gantry brake release
        .LFT_BRK_RLS(LFT_BRK_RLS),          // Lift brake release
        .LAT_LNG_BRK_RLS(LAT_LNG_BRK_RLS),  // Lateral/longitudinal brake release
        .EMOPS_STAT2(EMOPS_STAT2),          // EMOPS status 2
        .EMOPS_STAT1(EMOPS_STAT1),          // EMOPS status 1
        .EM_24V_EN(EM_24V_EN),              // EM 24V enable
        .GANT_BRK_RLS1(GANT_BRK_RLS1),      // Gantry brake release 1
        .GPIO_DO(GPIO_IN)                   // GPIO data output
    );

*/

    endmodule


