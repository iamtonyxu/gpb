`timescale 1ns/100ps

module top(
    // System clock and reset
    input              SYS_CLK,
    input              RESET_N,
    output             POWER_GOOD,

    // 16KHz reference clock
    //input              CLK_16KHZ, // DBUG_HEADER10

    // UART interface
    input              UART_RXD, // DBUG_HEADER2
    output             UART_TXD  // DBUG_HEADER2

/*
    // AD7663AS ADC interface
    output             AD_CNVST,
    output             AD_SCLK,
    input              AD_SDOUT,
    input              AD_BUSY, // NOT USED

    // AD8803AR DAC interface
    output             ILIM_DAC_CLK,
    output             ILIM_DAC_SDI,
    output             ILIM_DAC_CS,

    // Gantry_Motor interface
    output     [5:0]   GANT_PWM,
    output             GANT_MOT_DRV_EN, // NOT USED
    output             GANT_CURR_SAMP, // NOT USED

    // Lift_Motor interface
    output     [5:0]   LIFT_PWM,
    output             LIFT_MOT_DRV_EN, // NOT USED
    output             LIFT_CURR_SAMP, // NOT USED

    // FPGA_WDI interface
    output             WD_OUT,

    // GPIO interface
    input      [14:0]  DMD_IO,
    input      [5:0]   STAND_CONT_IF,
    input      [4:0]   CCHL_IF,
    input      [6:0]   SERVICE_PENDANT,
    input      [6:0]   PWR_IF,
    input      [3:0]   LIFT_MOT_SNS_IF,
    input      [4:0]   SPD_DMD_IF,
    input      [4:0]   GANT_MOT_SNS_IF,
    input      [4:0]   SPD_EMOPS_IF,
    output     [3:0]   AD_MUX,
    output     [2:0]   AD_SEL,
    output     [7:0]   STS,
    output             FPGA_DONE,
    output             GANT_96V_BYPASS,
    output             GANT_24V_PWR_EN,
    output             GANT_96V_PWR_EN,
    output             GANT_MOT_SHUNT_EN_N,
    output             LIFT_96V_BYPASS,
    output             LIFT_24V_PWR_EN,
    output             LIFT_96V_PWR_EN,
    output             LIFT_MOT_SHUNT_EN_N,
    output             GANT_SERIO_RST_N,
    output             GANT_SER_DATA1,
    output             GANT_SER_DATA0,
    output             GANT_SER_SYNC,
    output             GANT_SER_CLK,
    output             LIFT_SERIO_RST_N,
    output             LIFT_SER_DATA1,
    output             LIFT_SER_DATA0,
    output             LIFT_SER_SYNC,
    output             LIFT_SER_CLK,
    output             LIFT_BRK_OVRD_LED_CTRL,
    output             FAN_EN,
    output             LIFT_HALL_PWR_EN,
    output             SPDIO_RST_N,
    output             SPARE_MON,
    output             DMD_PWR_OK,
    output             GANT_ST_DISB_MON,
    output             LIFT_HW_EN_MON,
    output             LIFT_ST_DISB_MON,
    output             GNT_HW_EN_MON,
    output             GNT_HALL_PWR_EN,
    output             GNT_BRK_RLS,
    output             LFT_BRK_RLS,
    output             LAT_LNG_BRK_RLS,
    output             EMOPS_STAT2,
    output             EMOPS_STAT1,
    output             EM_24V_EN,
    output             GANT_BRK_RLS1,

    // Debug GPIO
    output     [5:0]   GPIO_OUT
*/
);

    // OPB interface signals
    wire              OPB_CLK;
    wire              OPB_RST;
    wire    [31:0]    OPB_DI;
    wire    [31:0]    OPB_DO;
    wire    [31:0]    OPB_ADDR;
    wire              OPB_RE;
    wire              OPB_WE;

    // pulse signals
    wire            PULSE_200KHZ;
    wire            PULSE_20KHZ;
    wire            PULSE_2KHZ;
    wire            PULSE_100US;
    wire            CLK_2MHZ;

    wire    [31:0]  SP_IN; // from scratchpad
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

    assign POWER_GOOD = 1'b1; // Power good signal after FPGA programmed

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
/*
        .GPIO_IN(GPIO_IN),               // GPIO output
        .OSC_CT_IN(OSC_CT_IN),           // Oscillator counter output
        .CLK_GEN_IN(CLK_GEN_IN),         // Clock generator output
        .ILIM_DAC_IN(ILIM_DAC_IN),       // ILIM DAC output
        .ADC_IN(ADC_IN),                 // ADC output
        .GANT_MOT_IN(GANT_MOT_IN),       // Gantry motor output
        .LIFT_MOT_IN(LIFT_MOT_IN),       // Lift motor output
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
        .DATA_OUT(GPIO_OUT),             // Data output
*/
        .DEC_DO(OPB_DI)                  // Decoder data output
    );
/*
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
        .OSC_CT_DO(OSC_CT_IN),           // Oscillator counter data output
        .OSC_CT_DI(OPB_DO),              // Oscillator counter data input
        .OPB_ADDR(OPB_ADDR),             // OPB address
        .OSC_CT_RE(COUNTER_RE),          // Read enable signal
        .OSC_CT_WE(COUNTER_WE),          // Write enable signal
        .OPB_CLK(OPB_CLK),               // OPB clock
        .OPB_RST(OPB_RST),               // OPB reset
        .SYSCLK(SYS_CLK),                // System clock
        .REF_CLK(CLK_16KHZ)              // Reference clock (16kHz)
    );
*/
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

/*
   // Example instantiation of the AdderDecode module
    AdderDecode adder_decode_0 (
        .OPB_CLK(OPB_CLK),               // System clock
        .OPB_RST(OPB_RST),               // System reset
        .DEC_RE(OPB_RE),                 // Read enable signal
        .DEC_WE(OPB_WE),                 // Write enable signal
        .DEC_ADDR(OPB_ADDR),             // Address input
        .SP_IN(SP_IN),                   // Scratchpad input
        .GPIO_IN(GPIO_IN),               // GPIO output
        .OSC_CT_IN(OSC_CT_IN),           // Oscillator counter output
        .CLK_GEN_IN(CLK_GEN_IN),         // Clock generator output
        .ILIM_DAC_IN(ILIM_DAC_IN),       // ILIM DAC output
        .ADC_IN(ADC_IN),                 // ADC output
        .GANT_MOT_IN(GANT_MOT_IN),       // Gantry motor output
        .LIFT_MOT_IN(LIFT_MOT_IN),       // Lift motor output
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
        .DATA_OUT(GPIO_OUT),             // Data output
        .DEC_DO(OPB_DI)                  // Decoder data output
    );

    // ADC_AD7663AS module instantiation
    ADC_AD7663AS adc_adc7663as_0 (
        .ADC_DO(ADC_IN),                 // ADC data output
        .ADC_DI(OPB_DO),                 // ADC data input
        .ADC_ADDR(OPB_ADDR),             // OPB address
        .ADC_RE(ADC_RE),                 // Read enable signal
        .ADC_WE(ADC_WE),                 // Write enable signal
        .OPB_CLK(OPB_CLK),               // OPB clock
        .OPB_RST(OPB_RST),               // OPB reset
        .SYSCLK(SYS_CLK),                // System clock
        .AD_CNVST(AD_CNVST),             // ADC conversion start signal
        .AD_SCLK(AD_SCLK),               // ADC clock output
        .AD_SDOUT(AD_SDOUT),             // ADC data output
        .AD_BUSY(AD_BUSY)                // ADC busy signal
    );

    // DAC_AD8803AR module instantiation
    DAC_AD8803AR dac_ad8803ar_0 (
        .ILIM_DAC_CLK(ILIM_DAC_CLK),     // DAC clock output (not connected)
        .ILIM_DAC_SDI(ILIM_DAC_SDI),     // DAC data input (not connected)
        .ILIM_DAC_CS(ILIM_DAC_CS),       // DAC chip select (not connected)
        .DAC_DO(ILIM_DAC_IN),            // DAC data output
        .DAC_DI(OPB_DO),                 // DAC data input
        .OPB_ADDR(OPB_ADDR),             // OPB address
        .DAC_RE(ILIM_DAC_RE),            // Read enable signal
        .DAC_WE(ILIM_DAC_WE),            // Write enable signal
        .OPB_CLK(OPB_CLK),               // OPB clock
        .OPB_RST(OPB_RST),               // OPB reset
        .SYSCLK(SYS_CLK)                 // System clock
    );

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

    // FPGA_WDI module instantiation
    FPGA_WDI fpga_wdi_0 (
        .OPB_CLK(OPB_CLK),                 // OPB clock
        .PULSE_100US(PULSE_100US),         // 100us pulse signal
        .OPB_RST(OPB_RST),                 // OPB reset
        .WD_OUT(WD_OUT)                    // Watchdog output
    );
*/

    endmodule


