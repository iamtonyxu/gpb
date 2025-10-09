`timescale 1ns/1ps

module top (
    // clock and reset
    input wire CLK,
    input wire RST_N,
    output wire FPGA_DONE,

    // EEPROM INTERFACE
    output             EEP_CS_N,
    output             EEP_SI,
    output             EEP_SCK,
    input              EEP_SO,

    // DEBUG PORT
    input              RXD,
    output             TXD,

    // LEDs
    output wire [7:0] LEDs
);

    // Derived clock signals
    wire              PULSE_2KHZ;
    wire              PULSE_1HZ;

    // OPB interface signals
    wire              OPB_CLK;
    wire              OPB_RST;
    wire    [31:0]    OPB_DI;
    wire    [31:0]    OPB_DO;
    wire    [31:0]    OPB_ADDR;
    wire              OPB_RE;
    wire              OPB_WE;

    // cmd_server module instantiation
    cmd_server cmd_server_0(
        .SYS_CLK(CLK),                  // System clock
        .SYS_RST(~RST_N),               // System reset (active low)
        .PULSE_2KHZ(PULSE_2KHZ),        // 2kHz pulse signal
        .OPB_CLK(OPB_CLK),              // OPB clock
        .OPB_RST(OPB_RST),              // OPB reset
        .OPB_DI(OPB_DI),                // OPB data input
        .OPB_DO(OPB_DO),                // OPB data output
        .OPB_ADDR(OPB_ADDR),            // OPB address
        .OPB_RE(OPB_RE),                // Read enable signal
        .OPB_WE(OPB_WE),                // Write enable signal
        .UART_TXD(TXD),                 // UART transmit data
        .UART_RXD(RXD)                  // UART receive data
    );

    // CLK_GEN module instantiation
    ClkGen clk_gen_0 (
        .CLK_GEN_DO(),                   // Clock generator data output
        .CLK_GEN_DI(0),                  // Clock generator data input
        .OPB_ADDR(0),                    // OPB address
        .CLK_GEN_RE(0),                  // Read enable signal
        .CLK_GEN_WE(0),                  // Write enable signal
        .OPB_CLK(OPB_CLK),               // OPB clock
        .OPB_RST(OPB_RST),               // OPB reset
        .SYSCLK(CLK),                    // System clock
        .PULSE_200KHZ(),                 // 200kHz pulse output
        .PULSE_20KHZ(),                  // 20kHz pulse output
        .PULSE_2KHZ(PULSE_2KHZ),         // 2kHz pulse output
        .PULSE_100US(),                  // 100us pulse output
        .CLK_16KHZ(),                    // 16kHz clock output (not connected)
        .CLK_2MHZ()                      // 2MHz clock output
    );

    // PULSE_1HZ
	CLOCK_DIV clkgen_2khz(
		.CLK_DIV(16'd1000),
		.CLK_IN(PULSE_2KHZ),
        .RST(~RST_N),
		.CLK_OUT(PULSE_1HZ)
	);

    // Instantiate EEPROM IF
    EEPROM_OPB_IF_V2 eeprom_0(
    .OPB_CLK(OPB_CLK),               // OPB clock
    .OPB_RST(OPB_RST),               // OPB reset
    .OPB_ADDR(OPB_ADDR[15:0]),       // OPB address
    .EEP_DI(OPB_DO),                 // EEPROM data input
    .EEP_RE(OPB_RE),                 // EEPROM read enable
    .EEP_WE(OPB_WE),                 // EEPROM write enable
    .EEP_DO(OPB_DI),                 // EEPROM data output
    .EEP_CS_N(EEP_CS_N),             // EEPROM chip select (active low)
    .EEP_SI(EEP_SI),                 // EEPROM serial input
    .EEP_SCK(EEP_SCK),               // EEPROM serial clock
    .EEP_SO(EEP_SO)                  // EEPROM serial output
    );

    // Assign LEDs to show status
    assign LEDs = {EEP_CS_N, EEP_SI, EEP_SCK, EEP_SO, PULSE_2KHZ, PULSE_1HZ, OPB_WE, OPB_RE};

    // Indicate FPGA is done
    assign FPGA_DONE = 1'b1;

endmodule
