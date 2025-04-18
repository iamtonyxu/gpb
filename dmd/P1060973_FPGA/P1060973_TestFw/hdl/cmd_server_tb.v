`timescale 1ns/1ps

module cmd_server_tb;

    // System Clock and Reset
    reg SYS_CLK;
    reg SYS_RST;
    reg PULSE_2KHZ;
/*
    // Interface to module cmn_uart
    reg [7:0] DATA_STREAM_OUT;
    reg DATA_STREAM_OUT_STB;
    wire DATA_STREAM_OUT_ACK;

    wire [7:0] DATA_STREAM_IN;
    wire DATA_STREAM_IN_STB;
    reg DATA_STREAM_IN_ACK;
*/
    // OPB Bus
    wire OPB_CLK;
    wire OPB_RST;
    reg [31:0] OPB_DI;
    wire [31:0] OPB_DO;
    wire [31:0] OPB_ADDR;
    wire OPB_RE;
    wire OPB_WE;

    // UART signals
    wire UART_TXD;
    reg  UART_RXD;

    reg [7:0] uart_tdata;

    // Instantiate the Unit Under Test (UUT)
    cmd_server uut (
        .SYS_CLK(SYS_CLK),
        .SYS_RST(SYS_RST),
        .PULSE_2KHZ(PULSE_2KHZ),
        .OPB_CLK(OPB_CLK),
        .OPB_RST(OPB_RST),
        .OPB_DI(OPB_DI),
        .OPB_DO(OPB_DO),
        .OPB_ADDR(OPB_ADDR),
        .OPB_RE(OPB_RE),
        .OPB_WE(OPB_WE),
        .UART_TXD(UART_TXD),
        .UART_RXD(UART_RXD)
    );

    parameter CLOCK_PERIOD = 10; // 100M SYS_Clock in ns
    parameter PULSE_PERIOD = 500000; // 2 kHz pulse period in ns
    //parameter PULSE_PERIOD = 50; // 2 kHz pulse period in ns

// Task to send a byte using UART protocol
task uart_send;
    input [7:0] data; // Byte to send
    integer i;
    reg [10:0] uart_frame; // UART frame: start bit, data bits, stop bit
    integer baud_delay; // Delay for one baud period
    begin
        // Calculate the delay for one baud period
        // Baud rate = 115200, Clock frequency = 100 MHz
        baud_delay = (100000000 / 115200)*CLOCK_PERIOD; // 868 clock cycles per bit

        // Construct the UART frame
        // Start bit (0), 8 data bits (LSB first), Stop bit (1)
        uart_frame = {1'b1, data, 1'b0};

        // Transmit the UART frame
        for (i = 0; i < 10; i = i + 1) begin
            UART_RXD = uart_frame[i]; // Send each bit
            #baud_delay; // Wait for one baud period
        end
        UART_RXD = 1'b1; // Set to idle state (high) after transmission
        #20; // Wait for a short time before sending the next byte
    end
endtask

// Task to receive a byte using UART protocol
task uart_recv;
    output reg [7:0] data; // Received byte
    integer i;
    integer baud_delay; // Delay for one baud period
    begin
        // Calculate the delay for one baud period
        // Baud rate = 115200, Clock frequency = 100 MHz
        baud_delay = (100000000 / 115200)*CLOCK_PERIOD; // 868 clock cycles per bit

        // Wait for the start bit (falling edge)
        wait(UART_TXD == 0);
        #(baud_delay / 2); // Wait for the middle of the start bit

        // Read 8 data bits (LSB first)
        for (i = 0; i < 8; i = i + 1) begin
            #(baud_delay); // Wait for one baud period
            data[i] = UART_TXD; // Sample the data bit
        end

        // Wait for the stop bit
        #(baud_delay);
        if (UART_TXD != 1) begin
            $display("UART RX Error: Stop bit not detected.");
        end
    end
endtask

    // Clock generation
    initial begin
        SYS_CLK = 0;
        forever #(CLOCK_PERIOD/2) SYS_CLK = ~SYS_CLK; // 100 MHz clock
    end

    // Generate 2 kHz pulse
    initial begin
        PULSE_2KHZ = 0;
        forever #(PULSE_PERIOD/2) PULSE_2KHZ = ~PULSE_2KHZ; // 2 kHz pulse
    end

    // Testbench logic
    initial begin
        // Initialize inputs
        SYS_RST = 1;
        UART_RXD = 1;
        OPB_DI = 32'h0;
        // Reset the system
        #100;
        SYS_RST = 0; 
        #100;

        // Uart send cmd of OPB write operation
        uart_send(8'h5A);
        uart_send(8'hAA);
        uart_send(8'hBB);
        uart_send(8'hCC);
        uart_send(8'hDD);
        uart_send(8'h11);
        uart_send(8'h22);
        uart_send(8'h33);
        uart_send(8'h44);
        uart_send(8'hA5);

        // check response reply on OPB write operation
        repeat(10) begin
            uart_recv(uart_tdata);
        end
        #100; // Wait for processing


        // Uart send cmd of OPB write operation
        OPB_DI = 32'h12345678; // Set OPB_DI to a test value
        uart_send(8'h5B);
        uart_send(8'h12);
        uart_send(8'h34);
        uart_send(8'h56);
        uart_send(8'h78);
        uart_send(8'hAA);
        uart_send(8'hBB);
        uart_send(8'hCC);
        uart_send(8'hDD);
        uart_send(8'hA4);

        // check response reply on OPB write operation
        repeat(10) begin
            uart_recv(uart_tdata);
        end
        #100; // Wait for processing

/*
        // Uart send cmd of OPB write operation
        uart_send(8'h5A);
        uart_send(8'hAA);
        uart_send(8'hBB);
        uart_send(8'hCC);
        uart_send(8'hDD);
*/
        #100;
        $stop;
    end

    // Monitor OPB signals
    initial begin
        $monitor("Time: %0t, OPB_DI: %h, OPB_DO: %h, OPB_ADDR: %h, OPB_RE: %b, OPB_WE: %b",
                 $time, OPB_DI, OPB_DO, OPB_ADDR, OPB_RE, OPB_WE);
    end

endmodule