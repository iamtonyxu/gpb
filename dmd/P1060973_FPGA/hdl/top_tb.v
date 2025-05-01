`timescale 1ns/1ps

module top_tb;

    // Test Case Configuration
    integer  SCRATCHPAD_TEST        = 0;    // Enable Scratchpad Test
    integer  ADC_TEST               = 0;    // Enable ADC Test
    integer  DAC_TEST               = 1;    // Enable DAC Test
    integer  EEPROM_TEST            = 0;    // Enable EEPROM Test
    integer  OSC_COUNTER_TEST       = 0;    // Enable Oscillator Counter Test

    // System Clock and Reset
    reg         SYS_CLK;
    reg         RESET_N;

    // System Signals
    wire        POWER_GOOD;
    wire        UART_TXD;
    reg         UART_RXD;
    wire        CLK_2KHZ;
    wire        CLK_20KHZ;

    // EEPROM Interface
    wire        EEP_CS_N;
    wire        EEP_SI;
    wire        EEP_SCK;
    wire        EEP_SO;

    // Watchdog Signal
    wire        WD_TRIG;

    // ADC Interface
    wire        ADC_SDOUT;
    wire        ST_ADC_CLK;
    wire        ADC_CNVST;

    // DAC Interface
    wire        ST_DAC_CLK;
    wire        DAC_SDI;
    wire        DAC_CS_N;
    wire        DAC_SDO;

    // UART Data
    reg [7:0]   uart_tdata;

    // Clock Period Definition
    parameter CLOCK_PERIOD = 10;    // 100MHz System Clock in ns

    // Instantiate the Unit Under Test (UUT)
    top uut (
        // System Clock and Reset
        .FPGA_100M_CLK(SYS_CLK),
        .RESET_N(RESET_N),
        .POWER_GOOD(POWER_GOOD),

        // Debug Interface
        .DBUG_HEADER2(UART_RXD),
        .DBUG_HEADER4(UART_TXD),
        .DBUG_HEADER6(CLK_2KHZ),
        .DBUG_HEADER8(CLK_20KHZ),
        .DBUG_HEADER10(CLK_2KHZ),    // REF_CLK_2KHZ

        // EEPROM Interface
        .EEP_CS_N(EEP_CS_N),
        .EEP_SI(EEP_SI),
        .EEP_SCK(EEP_SCK),
        .EEP_SO(EEP_SO),

        // Watchdog
        .WD_TRIG(WD_TRIG),

        // ADC Interface
        .ST_DAC_CLK(ST_DAC_CLK),
        .DAC_SDI(DAC_SDI),
        .DAC_CS_N(DAC_CS_N),
        .DAC_SDO(DAC_SDO),

        // DAC Interface
        .ADC_SDOUT(ADC_SDOUT),
        .ST_ADC_CLK(ST_ADC_CLK),
        .ADC_CNVST(ADC_CNVST)
    );

    // Instantiate EEPROM Simulation Model
    SER_EEPROM_SIM dut_eeprom (
        .CS_N(EEP_CS_N),
        .SCLK(EEP_SCK),
        .SI(EEP_SI),
        .SO(EEP_SO)
    );

    // Instantiate ADC Simulation Model
    DUT_ADS8864 adc_dut (
        .RESET(~RESET_N),
        .SYSCLK(SYS_CLK),
        .ADC_SCLK(ST_ADC_CLK),
        .ADC_CNVST(ADC_CNVST),
        .ADC_SDOUT(ADC_SDOUT)
    );

    // Instantiate DAC Simulation Model
    DUT_DACx0504 dac_dut (
        .SYS_CLK(SYS_CLK),
        .SYS_RST(~RESET_N),
        .DAC_CLK(ST_DAC_CLK),
        .DAC_SDI(DAC_SDI),
        .DAC_CS_N(DAC_CS_N),
        .DAC_SDO(DAC_SDO)
    );

    // UART Send Task
    task uart_send;
        input [7:0] data;    // Byte to send
        integer i;
        reg [10:0] uart_frame;    // UART frame: start bit, data bits, stop bit
        integer baud_delay;        // Delay for one baud period
        begin
            // Calculate the delay for one baud period
            // Baud rate = 115200, Clock frequency = 100 MHz
            baud_delay = (100000000 / 115200) * CLOCK_PERIOD;    // 868 clock cycles per bit

            // Construct the UART frame
            // Start bit (0), 8 data bits (LSB first), Stop bit (1)
            uart_frame = {1'b1, data, 1'b0};

            // Transmit the UART frame
            for (i = 0; i < 10; i = i + 1) begin
                UART_RXD = uart_frame[i];    // Send each bit
                #baud_delay;                 // Wait for one baud period
            end
            UART_RXD = 1'b1;                // Set to idle state (high) after transmission
            #20;                            // Wait for a short time before sending the next byte
        end
    endtask

    // UART Receive Task
    task uart_recv;
        output reg [7:0] data;    // Received byte
        integer i;
        integer baud_delay;        // Delay for one baud period
        begin
            // Calculate the delay for one baud period
            // Baud rate = 115200, Clock frequency = 100 MHz
            baud_delay = (100000000 / 115200) * CLOCK_PERIOD;    // 868 clock cycles per bit

            // Wait for the start bit (falling edge)
            wait(UART_TXD == 0);
            #(baud_delay / 2);    // Wait for the middle of the start bit

            // Read 8 data bits (LSB first)
            for (i = 0; i < 8; i = i + 1) begin
                #(baud_delay);    // Wait for one baud period
                data[i] = UART_TXD;    // Sample the data bit
            end

            // Wait for the stop bit
            #(baud_delay);
            if (UART_TXD != 1) begin
                $display("UART RX Error: Stop bit not detected.");
            end
        end
    endtask

    // Clock Generation
    initial begin
        SYS_CLK = 0;
        forever #(CLOCK_PERIOD/2) SYS_CLK = ~SYS_CLK;    // 100 MHz clock
    end

    // Testbench Main Process
    initial begin
        // Initialize inputs
        RESET_N = 0;
        UART_RXD = 1;

        // Reset the system
        #100;
        RESET_N = 1; 
        #100000;    // Wait for Ping message to be sent

        // Scratchpad Test
        if (SCRATCHPAD_TEST == 1) begin
            $display("Scratchpad Test Start...");
            
            // Read Scratchpad 1
            uart_send(8'h5B); uart_send(8'h00); uart_send(8'h01); uart_send(8'h00); uart_send(8'h00);
            uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'hA4);
            repeat(10) uart_recv(uart_tdata);
            #1000000;    // Wait 1us

            // Read Scratchpad 2
            uart_send(8'h5B); uart_send(8'h00); uart_send(8'h02); uart_send(8'h00); uart_send(8'h00);
            uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'hA4);
            repeat(10) uart_recv(uart_tdata);
            #1000000;    // Wait 1us

            // Write Scratchpad 1
            uart_send(8'h5A); uart_send(8'h00); uart_send(8'h01); uart_send(8'h00); uart_send(8'h00);
            uart_send(8'h11); uart_send(8'h22); uart_send(8'h33); uart_send(8'h44); uart_send(8'hA5);
            repeat(10) uart_recv(uart_tdata);
            #1000000;    // Wait 1us

            // Write Scratchpad 2
            uart_send(8'h5A); uart_send(8'h00); uart_send(8'h02); uart_send(8'h00); uart_send(8'h00);
            uart_send(8'h55); uart_send(8'h66); uart_send(8'h77); uart_send(8'h88); uart_send(8'hA5);
            repeat(10) uart_recv(uart_tdata);
            #1000000;    // Wait 1us

            // Read Scratchpad 1
            uart_send(8'h5B); uart_send(8'h00); uart_send(8'h01); uart_send(8'h00); uart_send(8'h00);
            uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'hA4);
            repeat(10) uart_recv(uart_tdata);
            #1000000;    // Wait 1us

            // Read Scratchpad 2
            uart_send(8'h5B); uart_send(8'h00); uart_send(8'h02); uart_send(8'h00); uart_send(8'h00);
            uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'hA4);
            repeat(10) uart_recv(uart_tdata);
            #1000000;    // Wait 1us
            
            $display("Scratchpad Test End.");
        end

        // EEPROM Test
        if (EEPROM_TEST == 1) begin
            $display("EEPROM Test Start...");

            // OPB WRITE: EEPROM Write
            uart_send(8'h5A); uart_send(8'h00); uart_send(8'h0B); uart_send(8'h00); uart_send(8'h00);
            uart_send(8'h30); uart_send(8'h00); uart_send(8'h00); uart_send(8'h5a); uart_send(8'hA5);
            repeat(10) uart_recv(uart_tdata);
            #1000000;    // Wait 1us

            // OPB WRITE: EEPROM Read
            uart_send(8'h5A); uart_send(8'h00); uart_send(8'h0B); uart_send(8'h00); uart_send(8'h00);
            uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'hA5);
            repeat(10) uart_recv(uart_tdata);
            #1000000;    // Wait 1us

            // OPB READ: EEPROM Data
            uart_send(8'h5B); uart_send(8'h00); uart_send(8'h0B); uart_send(8'h00); uart_send(8'h00);
            uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'hA4);
            repeat(10) uart_recv(uart_tdata);
            #1000000;    // Wait 1us
            
            $display("EEPROM Test End.");
        end

        // ADC Test
        if (ADC_TEST == 1) begin
            $display("ADC Test Start...");
            // OPB WRITE: Trigger ADC Convert
            uart_send(8'h5A); uart_send(8'h00); uart_send(8'h06); uart_send(8'h08); uart_send(8'h00);
            uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'h02); uart_send(8'hA5);
            repeat(10) uart_recv(uart_tdata);
            #1000000;    // Wait 1us

            // OPB Read: Check ADC Status
            uart_send(8'h5B); uart_send(8'h00); uart_send(8'h06); uart_send(8'h08); uart_send(8'h08);
            uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'hA4);
            repeat(10) uart_recv(uart_tdata);
            #100;    // Wait 100ns

            // OPB Read: Read ADC Data RAM @ADRR = 10'h000
            uart_send(8'h5B); uart_send(8'h00); uart_send(8'h06); uart_send(8'h00); uart_send(8'h00);
            uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'hA4);
            repeat(10) uart_recv(uart_tdata);
            #100;    // Wait 100ns

            // OPB Read: Read ADC Data RAM @ADRR = 10'h001
            uart_send(8'h5B); uart_send(8'h00); uart_send(8'h06); uart_send(8'h00); uart_send(8'h01);
            uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'hA4);
            repeat(10) uart_recv(uart_tdata);
            #100;    // Wait 100ns

            // OPB Read: Read ADC Data RAM @ADRR = 10'h002
            uart_send(8'h5B); uart_send(8'h00); uart_send(8'h06); uart_send(8'h00); uart_send(8'h02);
            uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'hA4);
            repeat(10) uart_recv(uart_tdata);
            #100;    // Wait 100ns

            // OPB Read: Read ADC Data RAM @ADRR = 10'h003
            uart_send(8'h5B); uart_send(8'h00); uart_send(8'h06); uart_send(8'h00); uart_send(8'h03);
            uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'hA4);
            repeat(10) uart_recv(uart_tdata);
            #100;    // Wait 100ns

            $display("ADC Test End.");
        end

        // DAC Test
        if (DAC_TEST == 1) begin
            $display("DAC Test Start...");
            // OPB WRITE: Write DAC0 register
            uart_send(8'h5A); uart_send(8'h00); uart_send(8'h04); uart_send(8'h00); uart_send(8'h08);
            uart_send(8'h00); uart_send(8'h00); uart_send(8'h12); uart_send(8'h34); uart_send(8'hA5);
            repeat(10) uart_recv(uart_tdata);
            #1000000;    // Wait 1us

            // OPB WRITE: Write DAC1 register
            uart_send(8'h5A); uart_send(8'h00); uart_send(8'h04); uart_send(8'h00); uart_send(8'h09);
            uart_send(8'h00); uart_send(8'h00); uart_send(8'h56); uart_send(8'h78); uart_send(8'hA5);
            repeat(10) uart_recv(uart_tdata);
            #1000000;    // Wait 1us

            // OPB WRITE: Write DAC2 register
            uart_send(8'h5A); uart_send(8'h00); uart_send(8'h04); uart_send(8'h00); uart_send(8'h0A);
            uart_send(8'h00); uart_send(8'h00); uart_send(8'hab); uart_send(8'hcd); uart_send(8'hA5);
            repeat(10) uart_recv(uart_tdata);
            #1000000;    // Wait 1us

            // OPB WRITE: Write DAC3 register
            uart_send(8'h5A); uart_send(8'h00); uart_send(8'h04); uart_send(8'h00); uart_send(8'h0B);
            uart_send(8'h00); uart_send(8'h00); uart_send(8'hbe); uart_send(8'hef); uart_send(8'hA5);
            repeat(10) uart_recv(uart_tdata);
            #1000000;    // Wait 1us
            $display("DAC Test End.");

        end

        // Oscillator Counter Test
        if (OSC_COUNTER_TEST == 1) begin
            $display("Oscillator Counter Test Start...");
            
            // Reset counter and trigger
            uart_send(8'h5A); uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'h00);
            uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'h03); uart_send(8'hA5);
            repeat(10) uart_recv(uart_tdata);
            #1000000;    // Wait 1us

            // Read counter value
            uart_send(8'h5B); uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'h01);
            uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'h00); uart_send(8'hA4);
            repeat(10) uart_recv(uart_tdata);
            #1000000;    // Wait 1us
            
            $display("Oscillator Counter Test End.");
        end

        $stop;
    end

endmodule