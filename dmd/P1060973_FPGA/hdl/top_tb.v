`timescale 1ns/1ps

module top_tb;

    // System Clock and Reset
    reg SYS_CLK;
    reg RESET_N;

    wire POWER_GOOD;
    wire UART_TXD;
    reg  UART_RXD;
    wire CLK_2KHZ;
    wire CLK_20KHZ;

    reg [7:0] uart_tdata;

    // Instantiate the Unit Under Test module top
    top uut (
        .SYS_CLK(SYS_CLK),
        .RESET_N(RESET_N),
        .POWER_GOOD(POWER_GOOD),
        .DBUG_HEADER2(UART_RXD),
        .DBUG_HEADER4(UART_TXD),
        .DBUG_HEADER6(CLK_2KHZ),
        .DBUG_HEADER8(CLK_20KHZ),
        .DBUG_HEADER10(CLK_20KHZ)
    );

    parameter CLOCK_PERIOD = 10; // 100M SYS_Clock in ns

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

    // Testbench logic
    initial begin
        // Initialize inputs
        RESET_N = 0;
        UART_RXD = 1;

        // Reset the system
        #100;
        RESET_N = 1; 
      #100000; // Wait for Ping message to be sent

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
        #1000000; // Wait 1us

        // Read scrach pad 1
        uart_send(8'h5B);
        uart_send(8'h00);
        uart_send(8'h01);
        uart_send(8'h00);
        uart_send(8'h00);
        uart_send(8'h00);
        uart_send(8'h00);
        uart_send(8'h00);
        uart_send(8'h00);
        uart_send(8'hA4);

        // check response reply on OPB write operation
        repeat(10) begin
            uart_recv(uart_tdata);
        end
        #1000000; // Wait 1us

        // Read scrach pad 2
        uart_send(8'h5B);
        uart_send(8'h00);
        uart_send(8'h02);
        uart_send(8'h00);
        uart_send(8'h00);
        uart_send(8'h00);
        uart_send(8'h00);
        uart_send(8'h00);
        uart_send(8'h00);
        uart_send(8'hA4);

        // check response reply on OPB write operation
        repeat(10) begin
            uart_recv(uart_tdata);
        end
        #1000000; // Wait 1us

        // Write scrach pad 1
        uart_send(8'h5A);
        uart_send(8'h00);
        uart_send(8'h01);
        uart_send(8'h00);
        uart_send(8'h00);
        uart_send(8'h11);
        uart_send(8'h22);
        uart_send(8'h33);
        uart_send(8'h44);
        uart_send(8'hA5);

        // check response reply on OPB write operation
        repeat(10) begin
            uart_recv(uart_tdata);
        end
        #1000000; // Wait 1us

        // Write scrach pad 2
        uart_send(8'h5A);
        uart_send(8'h00);
        uart_send(8'h02);
        uart_send(8'h00);
        uart_send(8'h00);
        uart_send(8'h55);
        uart_send(8'h66);
        uart_send(8'h77);
        uart_send(8'h88);
        uart_send(8'hA5);

        // check response reply on OPB write operation
        repeat(10) begin
            uart_recv(uart_tdata);
        end
        #1000000; // Wait 1us

        // Read scrach pad 1
        uart_send(8'h5B);
        uart_send(8'h00);
        uart_send(8'h01);
        uart_send(8'h00);
        uart_send(8'h00);
        uart_send(8'h00);
        uart_send(8'h00);
        uart_send(8'h00);
        uart_send(8'h00);
        uart_send(8'hA4);

        // check response reply on OPB write operation
        repeat(10) begin
            uart_recv(uart_tdata);
        end
        #1000000; // Wait 1us

        // Read scrach pad 2
        uart_send(8'h5B);
        uart_send(8'h00);
        uart_send(8'h02);
        uart_send(8'h00);
        uart_send(8'h00);
        uart_send(8'h00);
        uart_send(8'h00);
        uart_send(8'h00);
        uart_send(8'h00);
        uart_send(8'hA4);

        // check response reply on OPB write operation
        repeat(10) begin
            uart_recv(uart_tdata);
        end
        #1000000; // Wait 1us

/*
        // Timout error test
        uart_send(8'h5A);
        uart_send(8'hAA);
        uart_send(8'hBB);
        uart_send(8'hCC);
        uart_send(8'hDD);
*/
        $stop;
    end

    // monitor power_good signal
    initial begin
        $monitor("Time: %0t, POWER_GOOD: %b", $time, POWER_GOOD);
    end

endmodule