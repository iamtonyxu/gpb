`timescale 1ns/100ps

module msg_read_tb;

    // Inputs
    reg OPB_CLK;
    reg OPB_RST;
    reg PULSE_2KHZ;

    // Outputs
    reg  rx_fifo_wr;
    reg  [7:0] rx_fifo_data;
    wire rx_fifo_full;
    wire RX_FIFO_RD;
    wire [7:0] RX_FIFO_DATA;
    wire RX_FIFO_EMPTY;

    wire [31:0] OPB_DO;
    wire [31:0] OPB_ADDR;
    wire OPB_RE;
    wire OPB_WE;
    wire error_flag;

    //parameter PULSE_PERIOD = 500000; // 2 kHz pulse period in ns
    parameter PULSE_PERIOD = 50; // 2 kHz pulse period in ns

    // Instantiate the Unit Under Test (UUT)
    msg_read uut (
        .OPB_CLK(OPB_CLK),
        .OPB_RST(OPB_RST),
        .PULSE_2KHZ(PULSE_2KHZ),
        .RX_FIFO_RD(RX_FIFO_RD),
        .RX_FIFO_DATA(RX_FIFO_DATA),
        .RX_FIFO_EMPTY(RX_FIFO_EMPTY),
        .OPB_DO(OPB_DO),
        .OPB_ADDR(OPB_ADDR),
        .OPB_RE(OPB_RE),
        .OPB_WE(OPB_WE),
        .error_flag(error_flag)
    );

    // Clock generation
    initial begin
        OPB_CLK = 1;
        forever #5 OPB_CLK = ~OPB_CLK; // 100 MHz clock
    end

    // Generate 2 kHz pulse
    initial begin
        PULSE_2KHZ = 1;
        forever #(PULSE_PERIOD/2) PULSE_2KHZ = ~PULSE_2KHZ; // 2 kHz pulse
    end

    // afifo instantiation
    afifo #(
        .DSIZE(8),
        .ASIZE(4)
    )rx_fifo_inst(
        .i_wclk(OPB_CLK),
        .i_wrst_n(~OPB_RST),
        .i_wr(rx_fifo_wr),
        .i_wdata(rx_fifo_data),
        .o_wfull(rx_fifo_full),
		.i_rclk(OPB_CLK),
        .i_rrst_n(~OPB_RST),
        .i_rd(RX_FIFO_RD),
        .o_rdata(RX_FIFO_DATA),
        .o_rempty(RX_FIFO_EMPTY)
    );

    // function to write data to RX FIFO, considering FIFO full condition
    task write_to_rx_fifo;
        input [7:0] data;
        begin
            //if (!rx_fifo_full) begin
            if (1) begin
                rx_fifo_data = data;
                rx_fifo_wr = 1;
                #10; // Wait for FIFO write
                rx_fifo_wr = 0;
            end else begin
                $display("RX FIFO is full, cannot write data: %h", data);
            end
        end
    endtask


    // Testbench logic
    initial begin
        // Initialize inputs
        OPB_RST = 1;
        rx_fifo_wr = 0;
        rx_fifo_data = 0;

        // Reset the system
        #200;
        OPB_RST = 0;

        // Test valid message (OPB Write)
        #10;
        write_to_rx_fifo(8'h5A); // write header to RX FIFO
        write_to_rx_fifo(8'hAA); // write OPB_ADDR[31:24] to RX FIFO
        write_to_rx_fifo(8'hBB); // write OPB_ADDR[23:16] to RX FIFO
        write_to_rx_fifo(8'hCC); // write OPB_ADDR[15:8] to RX FIFO
        write_to_rx_fifo(8'hDD); // write OPB_ADDR[7:0] to RX FIFO
        write_to_rx_fifo(8'h11); // write OPB_DATA[31:24] to RX FIFO
        write_to_rx_fifo(8'h22); // write OPB_DATA[23:16] to RX FIFO
        write_to_rx_fifo(8'h33); // write OPB_DATA[15:8] to RX FIFO
        write_to_rx_fifo(8'h44); // write OPB_DATA[7:0] to RX FIFO
        write_to_rx_fifo(8'hA5); // write tail to RX FIFO

        // Wait for processing
        #100;

        // Test valid message (OPB Read)
        write_to_rx_fifo(8'h5B); // write header to RX FIFO
        write_to_rx_fifo(8'h12); // write OPB_ADDR[31:24] to RX FIFO
        write_to_rx_fifo(8'h34); // write OPB_ADDR[23:16] to RX FIFO
        write_to_rx_fifo(8'h56); // write OPB_ADDR[15:8] to RX FIFO
        write_to_rx_fifo(8'h78); // write OPB_ADDR[7:0] to RX FIFO
        write_to_rx_fifo(8'hAA); // write OPB_DATA[31:24] to RX FIFO
        write_to_rx_fifo(8'hBB); // write OPB_DATA[23:16] to RX FIFO
        write_to_rx_fifo(8'hCC); // write OPB_DATA[15:8] to RX FIFO
        write_to_rx_fifo(8'hDD); // write OPB_DATA[7:0] to RX FIFO
        write_to_rx_fifo(8'hA4); // write tail to RX FIFO

        // Wait for processing
        #100;

        // Test tail error
        write_to_rx_fifo(8'h5B); // write header to RX FIFO
        write_to_rx_fifo(8'h12); // write OPB_ADDR[31:24] to RX FIFO
        write_to_rx_fifo(8'h34); // write OPB_ADDR[23:16] to RX FIFO
        write_to_rx_fifo(8'h56); // write OPB_ADDR[15:8] to RX FIFO
        write_to_rx_fifo(8'h78); // write OPB_ADDR[7:0] to RX FIFO
        write_to_rx_fifo(8'hAA); // write OPB_DATA[31:24] to RX FIFO
        write_to_rx_fifo(8'hBB); // write OPB_DATA[23:16] to RX FIFO
        write_to_rx_fifo(8'hCC); // write OPB_DATA[15:8] to RX FIFO
        write_to_rx_fifo(8'hDD); // write OPB_DATA[7:0] to RX FIFO
        write_to_rx_fifo(8'hA5); // write tail to RX FIFO
        // Wait for processing
        wait(error_flag == 1); // Wait for tail error flag
        #100;

        // Test timeout error
        write_to_rx_fifo(8'h5A); // write header to RX FIFO
        write_to_rx_fifo(8'hAA); // write OPB_ADDR[31:24] to RX FIFO
        write_to_rx_fifo(8'hBB); // write OPB_ADDR[23:16] to RX FIFO
        write_to_rx_fifo(8'hCC); // write OPB_ADDR[15:8] to RX FIFO
        write_to_rx_fifo(8'hDD); // write OPB_ADDR[7:0] to RX FIFO
        // Wait for timeout
        #(PULSE_PERIOD* 200+100); // Wait for 200 pulses
        wait(error_flag == 1); // Wait for timeout error flag
        #100;

        // End simulation
        $stop;
    end

    // Monitor signals
    initial begin
        $monitor("Time: %0t | OPB_ADDR: %h | OPB_DO: %h | OPB_WE: %b | OPB_RE: %b | error_flag: %b", 
                 $time, OPB_ADDR, OPB_DO, OPB_WE, OPB_RE, error_flag);
    end

endmodule