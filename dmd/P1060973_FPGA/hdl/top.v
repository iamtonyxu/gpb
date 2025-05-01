`timescale 1ns/100ps

module top(
    // System clock and reset
    input              FPGA_100M_CLK,
    input              RESET_N,

    // LEDS
    output             MSSB_COMM_FAULT, // D32
    output             HSWAP_FAULT, // D33
    output             POWER_GOOD, // D34

    // DEBUG PORT
    input              DBUG_HEADER2, // UART_RXD
    output             DBUG_HEADER4, // UART_TXD
    output             DBUG_HEADER6, // CLK_2KHZ
    output             DBUG_HEADER8, // CLK_20KHZ
    input              DBUG_HEADER10, // REF_CLK_2KHZ

    // Watchdog Trigger
    output             WD_TRIG,

    // EEPROM INTERFACE
    output             EEP_CS_N,
    output             EEP_SI,
    output             EEP_SCK,
    input              EEP_SO,

    // DAC INTERFACE
    output             ST_DAC_CLK,
    output             DAC_SDI,
    output             DAC_CS_N,
    input              DAC_SDO,

    // ADC INTERFACE
    input              ADC_SDOUT,
    output             ST_ADC_CLK,
    output             ADC_CNVST,
/*
    // GANTRY DRIVER
    output             GNT_PWM_PHA_HI,
    output             GNT_PWM_PHA_LO,
    output             GNT_PWM_PHB_HI,
    output             GNT_PWM_PHB_LO,
    output             GNT_PWM_PHC_HI,
    output             GNT_PWM_PHC_LO,

    // GANTRY BRAKE DRIVER
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
    output             LFT_PWM_PHA_HI,
    output             LFT_PWM_PHA_LO,
    output             LFT_PWM_PHB_HI,
    output             LFT_PWM_PHB_LO,
    output             LFT_PWM_PHC_HI,
    output             LFT_PWM_PHC_LO,

    // STAND_MSSB
    output             ST_MSSB_TX,
    input              MSSB_RX,

    // SERVICNE_MSSB
    output             ST_SRV_MSSB_TX,
    input              SRV_MSSB_RX,
*/
    //---------------------------------
    //---------   GPIO  ---------------
    //---------------------------------
    // POWER_IF
    output             FAN_EN,
    output             P12V_ISO_EN,
    input              P24V_GOOD_N,
    input              FAN_FAIL_N,

    // GANTRY_EMOPS_IF
    output             P24V_GNT_EMOPS_EN,
    output             GNT_EMOPS_EN,
    input              P24V_GNT_EMOPS_PG,
    input              P12V_ACT_DIODE_ON_N,

    // GANTRY_96V_IF
    output             GNT_MOT_PWR_EN,
    output             GNT_BRK_PWR_EN,
    output             GNT_SHUNT_EN,
    input              OC_V_GNT_MOT_DRV,
    input              OC_V_GNT_BRK_DRV,
    input              GNT_MOT_PWR_FLT_N,
    input              GNT_BRK_PWR_FLT_N,
    input              GNT_EMOPS_OV_L,
    input              P5V_ISO_MON_GNT,
    input              GNT_SHUNT_ON,
    input              P5V_ISO_MON_LFT,

    // GANTRY_BRAKE_IF
    output             GNT_BRK_EXT_EN,
    output             GNT_BRK_SW_MON,
    input              PWM_BRK_EXT_FAULT,
    input              GNT_BRK1_FB_N,
    input              GNT_BRK2_FB_N,
    input              GNT_BRK3_FB_N,

    // SPD_DMD_IF
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

    // SPD_EMOPS_IF
    output             EMOPS_STAT1,
    output             EMOPS_STAT2,
    output             LFT_ROT_BRK_RLS,
    output             LAT_LNG_BRK_RLS,
    output             SRVC_CCH_GNT_N,
    output             EM_CCH_24V_EN,
    input              EM_DOWN_LIMIT,
    input              EM_UP_LIMIT,
    input              CCH_LFT_MOT_EN_N,
    input              CCH_LFT_DWN_N,
    input              CCH_LAT_LNG_FLOAT_N,
    input              EMO_GOOD_N,
    input              SITE_24V_PWR_OK_N,
    input              SPD_EMOPS_FLT_N,

    // LIFT_MOTOR_SENSOR_IF
    output             LFT_HALL_PWR_EN_N,
    input              LFT_HALL_PWR_OK,
    input              LFT_HALL_SNS1_N,
    input              LFT_HALL_SNS2_N,
    input              LFT_HALL_SNS3_N,

    // LIFT_96V_IF
    output             P24V_LFT_EMOPS_EN,
    output             LFT_SHUNT_EN,
    output             LFT_EMOPS_EN,
    output             LFT_MOT_PWR_EN,
    input              P24V_LFT_EMOPS_PG,
    input              OC_V_LFT_MOT_DRV,
    input              LFT_SHUNT_ON,
    input              LFT_EMOPS_OV_L,
    input              LFT_MOT_PWR_FLT_N,

    // STAND_IF
    output             EXOPS_GNT_24V_EN,
    input              GNT_CCW_LIMIT,
    input              GNT_CW_LIMIT,

    // SERVICE_PENDANT_IF
    output             PAN_24V_SW,

    // MAINS_LEVEL_IF
    input              MAINS_LEVEL_FB,

    // EXT_BRAKE_IF
    output             EXT_BRK1_DRV_EN,
    output             EXT_BRK2_DRV_EN,
    output             EXT_BRK3_DRV_EN,

    // CCHL_IF
    output             LFT_SER_CLK,
    output             LFT_SER_SYNC,
    output             LFT_SER_DATA0,
    output             LFT_SER_DATA1,
    input              LFT_SERIO_FLT_N,
    input              LFT_MTN_EN_N,
    input              LFT_SER_PAGE_SEL_N,
    input              LFT_DOWN_LIMIT,
    input              LFT_UP_LIMIT,

    // ADCSELMUX_IF
    output             AD_SEL0,
    output             AD_SEL1,
    output             AD_SEL2,
    output             AD_MUX1_N,
    output             AD_MUX2_N,
    output             AD_MUX3_N,
    output             AD_MUX4_N,
    output             AD_MUX5_N,

    // DEBUG_IF
    output             DBUG_MISO, // J11-3
    input              DBUG_MOSI, // J11-5
    input              DBUG_CS_N, // J11-7
    input              DBUG_SCLK, // J11-1
    input              DBUG_ACTIVE, //J11-9

    // GPIO_FREE_IF
    output             GPIO2, // TP99
    output             GPIO3, // TP97
    output             GPIO5  // TP98
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

    wire    [31:0]  OSC_CT_IN; // from oscillator counter
    wire    [31:0]  SP_IN; // from scratchpad
    wire    [31:0]  CLK_GEN_IN; // from clock generator
    wire    [31:0]  ILIM_DAC_IN; // from ILIM DAC
    wire    [31:0]  ADC_IN; // from ADC
    wire    [31:0]  EEP_IN; // from EEPROM
    wire    [31:0]  GPIO_IN; // from GPIO

    // OPB READ/WRITE ENABLES
    wire            COUNTER_WE; // counter write enable
    wire            COUNTER_RE; // counter read enable
	wire            SP1_RE; // scratchpad 1 read enable
	wire            SP1_WE; // scratchpad 1 write enable
	wire            SP2_RE; // scratchpad 2 read enable
	wire            SP2_WE; // scratchpad 2 write enable
    wire            CLOCK_WE; // clock write enable
    wire            CLOCK_RE; // clock read enable
    wire            ILIM_DAC_WE; // ILIM DAC write enable
    wire            ILIM_DAC_RE; // ILIM DAC read enable
    wire            ADC_RE; // ADC read enable
    wire            ADC_WE; // ADC write enable
    wire           EEP_RE; // EEPROM read enable
    wire           EEP_WE; // EEPROM write enable
    wire          PWR_IF_RE; // Power interface read enable
    wire          PWR_IF_WE; // Power interface write enable
    wire          GANTRY_EMOPS_IF_RE; // Gantry EMOPS interface read enable
    wire          GANTRY_EMOPS_IF_WE; // Gantry EMOPS interface write enable
    wire          GANTRY_96V_IF_RE;   // Gantry 96V interface read enable
    wire          GANTRY_96V_IF_WE;   // Gantry 96V interface write enable
    wire          GANTRY_BRAKE_IF_RE; // Gantry brake interface read enable
    wire          GANTRY_BRAKE_IF_WE; // Gantry brake interface write enable
    wire          SPD_DMD_IF_RE;      // Speed demand interface read enable
    wire          SPD_DMD_IF_WE;      // Speed demand interface write enable
    wire          SPD_EMOPS_IF_RE;    // SPD EMOPS interface read enable
    wire          SPD_EMOPS_IF_WE;    // SPD EMOPS interface write enable
    wire          LIFT_MOTOR_SENSOR_IF_RE; // Lift motor sensor interface read enable
    wire          LIFT_MOTOR_SENSOR_IF_WE; // Lift motor sensor interface write enable
    wire          LIFT_96V_IF_RE;     // Lift 96V interface read enable
    wire          LIFT_96V_IF_WE;     // Lift 96V interface write enable
    wire          STAND_IF_RE;        // Stand interface read enable
    wire          STAND_IF_WE;        // Stand interface write enable
    wire          SERVICE_PENDANT_IF_RE; // Service pendant interface read enable
    wire          SERVICE_PENDANT_IF_WE; // Service pendant interface write enable
    wire          MAINS_LEVEL_IF_RE;  // Mains level interface read enable
    wire          MAINS_LEVEL_IF_WE;  // Mains level interface write enable
    wire          EXT_BRAKE_IF_RE;    // External brake interface read enable
    wire          EXT_BRAKE_IF_WE;    // External brake interface write enable
    wire          CCHL_IF_RE;         // CCHL interface read enable
    wire          CCHL_IF_WE;         // CCHL interface write enable
    wire          ADCSELMUX_IF_RE;    // ADC select multiplexer interface read enable
    wire          ADCSELMUX_IF_WE;    // ADC select multiplexer interface write enable
    wire          DEBUG_IF_RE;        // Debug interface read enable
    wire          DEBUG_IF_WE;        // Debug interface write enable
    wire          GPIO_FREE_IF_RE;    // GPIO free interface read enable
    wire          GPIO_FREE_IF_WE;    // GPIO free interface write enable

//
    assign SYS_CLK = FPGA_100M_CLK; // 100MHz Clock
    
    assign POWER_GOOD = PULSE_1HZ; // Power good signal after FPGA programmed
    assign MSSB_COMM_FAULT = PULSE_1HZ; // MSSB communication fault signal
    assign HSWAP_FAULT = PULSE_1HZ; // HSWAP fault signal

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
        // OPB signals
        .OPB_CLK(OPB_CLK),               // System clock
        .OPB_RST(OPB_RST),               // System reset
        .DEC_RE(OPB_RE),                 // Read enable signal
        .DEC_WE(OPB_WE),                 // Write enable signal
        .DEC_ADDR(OPB_ADDR),             // Address input
        .DEC_DO(OPB_DI),                 // Decoder data output

        // OPB Output from other modules
        .OSC_CT_IN(OSC_CT_IN),           // Oscillator counter output
        .SP_IN(SP_IN),                   // Scratchpad output
        .CLK_GEN_IN(CLK_GEN_IN),         // Clock generator output
        .ILIM_DAC_IN(ILIM_DAC_IN),       // ILIM DAC output
        .ADC_IN(ADC_IN),                 // ADC output
        .EEP_IN(EEP_IN),                 // EEPROM output
        .GPIO_IN(GPIO_IN),               // GPIO output

        //OPB WE/RE signals to other modules
        .COUNTER_WE(COUNTER_WE),         // Counter write enable
        .COUNTER_RE(COUNTER_RE),         // Counter read enable
        .SP1_RE(SP1_RE),                 // Scratchpad 1 read enable
        .SP1_WE(SP1_WE),                 // Scratchpad 1 write enable
        .SP2_RE(SP2_RE),                 // Scratchpad 2 read enable
        .SP2_WE(SP2_WE),                 // Scratchpad 2 write enable
        .CLOCK_WE(CLOCK_WE),             // Clock write enable
        .CLOCK_RE(CLOCK_RE),             // Clock read enable
        .ILIM_DAC_WE(ILIM_DAC_WE),       // ILIM DAC write enable
        .ILIM_DAC_RE(ILIM_DAC_RE),       // ILIM DAC read enable
        .ADC_RE(ADC_RE),                 // ADC read enable
        .ADC_WE(ADC_WE),                 // ADC write enable
        .EEP_RE(EEP_RE),                 // EEPROM RE
        .EEP_WE(EEP_WE),                 // EEPROM WE
        .PWR_IF_RE(PWR_IF_RE),           // Power interface read enable
        .PWR_IF_WE(PWR_IF_WE),           // Power interface write enable
        .GANTRY_EMOPS_IF_RE(GANTRY_EMOPS_IF_RE), // Gantry EMOPS interface read enable
        .GANTRY_EMOPS_IF_WE(GANTRY_EMOPS_IF_WE), // Gantry EMOPS interface write enable
        .GANTRY_96V_IF_RE(GANTRY_96V_IF_RE), // Gantry 96V interface read enable
        .GANTRY_96V_IF_WE(GANTRY_96V_IF_WE), // Gantry 96V interface write enable
        .GANTRY_BRAKE_IF_RE(GANTRY_BRAKE_IF_RE), // Gantry brake interface read enable
        .GANTRY_BRAKE_IF_WE(GANTRY_BRAKE_IF_WE), // Gantry brake interface write enable
        .SPD_DMD_IF_RE(SPD_DMD_IF_RE),   // Speed demand interface read enable
        .SPD_DMD_IF_WE(SPD_DMD_IF_WE),   // Speed demand interface write enable
        .SPD_EMOPS_IF_RE(SPD_EMOPS_IF_RE), // SPD EMOPS interface read enable
        .SPD_EMOPS_IF_WE(SPD_EMOPS_IF_WE), // SPD EMOPS interface write enable
        .LIFT_MOTOR_SENSOR_IF_RE(LIFT_MOTOR_SENSOR_IF_RE), // Lift motor sensor interface read enable
        .LIFT_MOTOR_SENSOR_IF_WE(LIFT_MOTOR_SENSOR_IF_WE), // Lift motor sensor interface write enable
        .LIFT_96V_IF_RE(LIFT_96V_IF_RE), // Lift 96V interface read enable
        .LIFT_96V_IF_WE(LIFT_96V_IF_WE), // Lift 96V interface write enable
        .STAND_IF_RE(STAND_IF_RE),       // Stand interface read enable
        .STAND_IF_WE(STAND_IF_WE),       // Stand interface write enable
        .SERVICE_PENDANT_IF_RE(SERVICE_PENDANT_IF_RE), // Service pendant interface read enable
        .SERVICE_PENDANT_IF_WE(SERVICE_PENDANT_IF_WE), // Service pendant interface write enable
        .MAINS_LEVEL_IF_RE(MAINS_LEVEL_IF_RE), // Mains level interface read enable
        .MAINS_LEVEL_IF_WE(MAINS_LEVEL_IF_WE), // Mains level interface write enable
        .EXT_BRAKE_IF_RE(EXT_BRAKE_IF_RE), // External brake interface read enable
        .EXT_BRAKE_IF_WE(EXT_BRAKE_IF_WE), // External brake interface write enable
        .CCHL_IF_RE(CCHL_IF_RE),         // CCHL interface read enable
        .CCHL_IF_WE(CCHL_IF_WE),         // CCHL interface write enable
        .ADCSELMUX_IF_RE(ADCSELMUX_IF_RE), // ADC select multiplexer interface read enable
        .ADCSELMUX_IF_WE(ADCSELMUX_IF_WE), // ADC select multiplexer interface write enable
        .DEBUG_IF_RE(DEBUG_IF_RE),       // Debug interface read enable
        .DEBUG_IF_WE(DEBUG_IF_WE),       // Debug interface write enable
        .GPIO_FREE_IF_RE(GPIO_FREE_IF_RE), // GPIO free interface read enable
        .GPIO_FREE_IF_WE(GPIO_FREE_IF_WE)  // GPIO free interface write enable
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

    // GPIO module instantiation
    GPIO gpio_0 (
        // OPB Interface
        .OPB_CLK(OPB_CLK),
        .OPB_RST(OPB_RST),
        .OPB_DI(OPB_DO),
        .OPB_DO(GPIO_IN),

        // OPB RE/WE Signals
        .PWR_IF_RE(PWR_IF_RE),
        .PWR_IF_WE(PWR_IF_WE),
        .GANTRY_EMOPS_IF_RE(GANTRY_EMOPS_IF_RE),
        .GANTRY_EMOPS_IF_WE(GANTRY_EMOPS_IF_WE),
        .GANTRY_96V_IF_RE(GANTRY_96V_IF_RE),
        .GANTRY_96V_IF_WE(GANTRY_96V_IF_WE),
        .GANTRY_BRAKE_IF_RE(GANTRY_BRAKE_IF_RE),
        .GANTRY_BRAKE_IF_WE(GANTRY_BRAKE_IF_WE),
        .SPD_DMD_IF_RE(SPD_DMD_IF_RE),
        .SPD_DMD_IF_WE(SPD_DMD_IF_WE),
        .SPD_EMOPS_IF_RE(SPD_EMOPS_IF_RE),
        .SPD_EMOPS_IF_WE(SPD_EMOPS_IF_WE),
        .LIFT_MOTOR_SENSOR_IF_RE(LIFT_MOTOR_SENSOR_IF_RE),
        .LIFT_MOTOR_SENSOR_IF_WE(LIFT_MOTOR_SENSOR_IF_WE),
        .LIFT_96V_IF_RE(LIFT_96V_IF_RE),
        .LIFT_96V_IF_WE(LIFT_96V_IF_WE),
        .STAND_IF_RE(STAND_IF_RE),
        .STAND_IF_WE(STAND_IF_WE),
        .SERVICE_PENDANT_IF_RE(SERVICE_PENDANT_IF_RE),
        .SERVICE_PENDANT_IF_WE(SERVICE_PENDANT_IF_WE),
        .MAINS_LEVEL_IF_RE(MAINS_LEVEL_IF_RE),
        .MAINS_LEVEL_IF_WE(MAINS_LEVEL_IF_WE),
        .EXT_BRAKE_IF_RE(EXT_BRAKE_IF_RE),
        .EXT_BRAKE_IF_WE(EXT_BRAKE_IF_WE),
        .CCHL_IF_RE(CCHL_IF_RE),
        .CCHL_IF_WE(CCHL_IF_WE),
        .ADCSELMUX_IF_RE(ADCSELMUX_IF_RE),
        .ADCSELMUX_IF_WE(ADCSELMUX_IF_WE),
        .DEBUG_IF_RE(DEBUG_IF_RE),
        .DEBUG_IF_WE(DEBUG_IF_WE),
        .GPIO_FREE_IF_RE(GPIO_FREE_IF_RE),
        .GPIO_FREE_IF_WE(GPIO_FREE_IF_WE),

        // POWER_IF
        .FAN_EN(FAN_EN),
        .P12V_ISO_EN(P12V_ISO_EN),
        .P24V_GOOD_N(P24V_GOOD_N),
        .FAN_FAIL_N(FAN_FAIL_N),

        // GANTRY_EMOPS_IF
        .P24V_GNT_EMOPS_EN(P24V_GNT_EMOPS_EN),
        .GNT_EMOPS_EN(GNT_EMOPS_EN),
        .P24V_GNT_EMOPS_PG(P24V_GNT_EMOPS_PG),
        .P12V_ACT_DIODE_ON_N(P12V_ACT_DIODE_ON_N),

        // GANTRY_96V_IF
        .GNT_MOT_PWR_EN(GNT_MOT_PWR_EN),
        .GNT_BRK_PWR_EN(GNT_BRK_PWR_EN),
        .GNT_SHUNT_EN(GNT_SHUNT_EN),
        .OC_V_GNT_MOT_DRV(OC_V_GNT_MOT_DRV),
        .OC_V_GNT_BRK_DRV(OC_V_GNT_BRK_DRV),
        .GNT_MOT_PWR_FLT_N(GNT_MOT_PWR_FLT_N),
        .GNT_BRK_PWR_FLT_N(GNT_BRK_PWR_FLT_N),
        .GNT_EMOPS_OV_L(GNT_EMOPS_OV_L),
        .P5V_ISO_MON_GNT(P5V_ISO_MON_GNT),
        .GNT_SHUNT_ON(GNT_SHUNT_ON),
        .P5V_ISO_MON_LFT(P5V_ISO_MON_LFT),

        // GANTRY_BRAKE_IF
        .GNT_BRK_EXT_EN(GNT_BRK_EXT_EN),
        .GNT_BRK_SW_MON(GNT_BRK_SW_MON),
        .PWM_BRK_EXT_FAULT(PWM_BRK_EXT_FAULT),
        .GNT_BRK1_FB_N(GNT_BRK1_FB_N),
        .GNT_BRK2_FB_N(GNT_BRK2_FB_N),
        .GNT_BRK3_FB_N(GNT_BRK3_FB_N),

        // SPD_DMD_IF
        .GNT_HW_EN_MON(GNT_HW_EN_MON),
        .LFT_ST_DISB_MON(LFT_ST_DISB_MON),
        .LFT_HW_EN_MON(LFT_HW_EN_MON),
        .GNT_ST_DISB_MON(GNT_ST_DISB_MON),
        .DMD_PWR_OK(DMD_PWR_OK),
        .SPARE_MON(SPARE_MON),
        .SPDIO_FLT_N(SPDIO_FLT_N),
        .SPD2_24V_STATUS_N(SPD2_24V_STATUS_N),
        .LFT_ST_DISB(LFT_ST_DISB),
        .LFT_HW_EN_N(LFT_HW_EN_N),
        .GNT_ST_DISB(GNT_ST_DISB),
        .GNT_HW_EN_N(GNT_HW_EN_N),

        // SPD_EMOPS_IF
        .EMOPS_STAT1(EMOPS_STAT1),
        .EMOPS_STAT2(EMOPS_STAT2),
        .LFT_ROT_BRK_RLS(LFT_ROT_BRK_RLS),
        .LAT_LNG_BRK_RLS(LAT_LNG_BRK_RLS),
        .SRVC_CCH_GNT_N(SRVC_CCH_GNT_N),
        .EM_CCH_24V_EN(EM_CCH_24V_EN),
        .EM_DOWN_LIMIT(EM_DOWN_LIMIT),
        .EM_UP_LIMIT(EM_UP_LIMIT),
        .CCH_LFT_MOT_EN_N(CCH_LFT_MOT_EN_N),
        .CCH_LFT_DWN_N(CCH_LFT_DWN_N),
        .CCH_LAT_LNG_FLOAT_N(CCH_LAT_LNG_FLOAT_N),
        .EMO_GOOD_N(EMO_GOOD_N),
        .SITE_24V_PWR_OK_N(SITE_24V_PWR_OK_N),
        .SPD_EMOPS_FLT_N(SPD_EMOPS_FLT_N),

        // LIFT_MOTOR_SENSOR_IF
        .LFT_HALL_PWR_EN_N(LFT_HALL_PWR_EN_N),
        .LFT_HALL_PWR_OK(LFT_HALL_PWR_OK),
        .LFT_HALL_SNS1_N(LFT_HALL_SNS1_N),
        .LFT_HALL_SNS2_N(LFT_HALL_SNS2_N),
        .LFT_HALL_SNS3_N(LFT_HALL_SNS3_N),

        // LIFT_96V_IF
        .P24V_LFT_EMOPS_EN(P24V_LFT_EMOPS_EN),
        .LFT_SHUNT_EN(LFT_SHUNT_EN),
        .LFT_EMOPS_EN(LFT_EMOPS_EN),
        .LFT_MOT_PWR_EN(LFT_MOT_PWR_EN),
        .P24V_LFT_EMOPS_PG(P24V_LFT_EMOPS_PG),
        .OC_V_LFT_MOT_DRV(OC_V_LFT_MOT_DRV),
        .LFT_SHUNT_ON(LFT_SHUNT_ON),
        .LFT_EMOPS_OV_L(LFT_EMOPS_OV_L),
        .LFT_MOT_PWR_FLT_N(LFT_MOT_PWR_FLT_N),

        // STAND_IF
        .EXOPS_GNT_24V_EN(EXOPS_GNT_24V_EN),
        .GNT_CCW_LIMIT(GNT_CCW_LIMIT),
        .GNT_CW_LIMIT(GNT_CW_LIMIT),

        // SERVICE_PENDANT_IF
        .PAN_24V_SW(PAN_24V_SW),

        // MAINS_LEVEL_IF
        .MAINS_LEVEL_FB(MAINS_LEVEL_FB),

        // EXT_BRAKE_IF
        .EXT_BRK1_DRV_EN(EXT_BRK1_DRV_EN),
        .EXT_BRK2_DRV_EN(EXT_BRK2_DRV_EN),
        .EXT_BRK3_DRV_EN(EXT_BRK3_DRV_EN),

        // CCHL_IF
        .LFT_SER_CLK(LFT_SER_CLK),
        .LFT_SER_SYNC(LFT_SER_SYNC),
        .LFT_SER_DATA0(LFT_SER_DATA0),
        .LFT_SER_DATA1(LFT_SER_DATA1),
        .LFT_SERIO_FLT_N(LFT_SERIO_FLT_N),
        .LFT_MTN_EN_N(LFT_MTN_EN_N),
        .LFT_SER_PAGE_SEL_N(LFT_SER_PAGE_SEL_N),
        .LFT_DOWN_LIMIT(LFT_DOWN_LIMIT),
        .LFT_UP_LIMIT(LFT_UP_LIMIT),

        // ADCSELMUX_IF
        .AD_SEL0(AD_SEL0),
        .AD_SEL1(AD_SEL1),
        .AD_SEL2(AD_SEL2),
        .AD_MUX1_N(AD_MUX1_N),
        .AD_MUX2_N(AD_MUX2_N),
        .AD_MUX3_N(AD_MUX3_N),
        .AD_MUX4_N(AD_MUX4_N),
        .AD_MUX5_N(AD_MUX5_N),

        // DEBUG_IF
        .DBUG_MISO(DBUG_MISO),
        .DBUG_MOSI(DBUG_MOSI),
        .DBUG_CS_N(DBUG_CS_N),
        .DBUG_SCLK(DBUG_SCLK),
        .DBUG_ACTIVE(DBUG_ACTIVE),

        // GPIO_FREE_IF
        .GPIO2(GPIO2),
        .GPIO3(GPIO3),
        .GPIO5(GPIO5)
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


*/

endmodule


