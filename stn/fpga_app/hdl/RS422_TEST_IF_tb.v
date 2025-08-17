`timescale 1ns/100ps

module RS422_TEST_IF_tb;

    // Clock and Reset
    reg OPB_CLK;
    reg OPB_RST;
    
    // OPB Interface signals
    reg [31:0] OPB_DI;
    wire [31:0] OPB_DO;
    reg [31:0] OPB_ADDR;
    reg RS422_RE;
    reg RS422_WE;
    
    // RS422 Input signals
    reg SYNC_LOC_MONITOR;
    reg SYNC_MONITOR;
    reg DMD_MSSB_RX;
    reg ENCODER_RX1;
    reg ENCODER_RX2;
    reg BMPLS;
    reg PRI_QUADR_A;
    reg PRI_QUADR_B;
    reg PRI_QUADR_I;
    
    // RS422 Output signals
    wire SYNC_LOC_OUT;
    wire SYNC_OUT;
    wire DMD_MSSB_TX;
    wire ENCODER_TX1;
    wire ENCODER_TX2;
    
    // Test control variables
    reg [31:0] read_data;
    integer i;
    
    // Clock generation (100MHz)
    initial begin
        OPB_CLK = 0;
        forever #5 OPB_CLK = ~OPB_CLK; // 100MHz clock
    end
    
    // Instantiate the DUT (Device Under Test)
    RS422_TEST_IF dut (
        .OPB_CLK(OPB_CLK),
        .OPB_RST(OPB_RST),
        .OPB_DI(OPB_DI),
        .OPB_DO(OPB_DO),
        .OPB_ADDR(OPB_ADDR),
        .RS422_RE(RS422_RE),
        .RS422_WE(RS422_WE),
        .SYNC_LOC_MONITOR(SYNC_LOC_MONITOR),
        .SYNC_MONITOR(SYNC_MONITOR),
        .DMD_MSSB_RX(DMD_MSSB_RX),
        .ENCODER_RX1(ENCODER_RX1),
        .ENCODER_RX2(ENCODER_RX2),
        .BMPLS(BMPLS),
        .PRI_QUADR_A(PRI_QUADR_A),
        .PRI_QUADR_B(PRI_QUADR_B),
        .PRI_QUADR_I(PRI_QUADR_I),
        .SYNC_LOC_OUT(SYNC_LOC_OUT),
        .SYNC_OUT(SYNC_OUT),
        .DMD_MSSB_TX(DMD_MSSB_TX),
        .ENCODER_TX1(ENCODER_TX1),
        .ENCODER_TX2(ENCODER_TX2)
    );
    
    // OPB Write Task
    task opb_write;
        input [31:0] addr;
        input [31:0] data;
        begin
            @(posedge OPB_CLK);
            OPB_ADDR = addr;
            OPB_DI = data;
            RS422_WE = 1'b1;
            RS422_RE = 1'b0;
            @(posedge OPB_CLK);
            RS422_WE = 1'b0;
            $display("Time %t: OPB Write - Addr: 0x%08X, Data: 0x%08X", $time, addr, data);
        end
    endtask
    
    // OPB Read Task
    task opb_read;
        input [31:0] addr;
        output [31:0] data;
        begin
            @(posedge OPB_CLK);
            OPB_ADDR = addr;
            RS422_RE = 1'b1;
            RS422_WE = 1'b0;
            @(posedge OPB_CLK);
            RS422_RE = 1'b0;
            @(posedge OPB_CLK);
            data = OPB_DO; // data delay 1 clock cycle after RS422_RE
            $display("Time %t: OPB Read - Addr: 0x%08X, Data: 0x%08X", $time, addr, data);
        end
    endtask
    
    // UART Serial Data Simulation Task (for simulating received data on RS422 lines)
    task simulate_uart_rx;
        input [8:0] rx_line_select; // bit mask for which RX lines to drive
        input [7:0] data_byte;
        integer bit_period;
        integer line_idx;
        begin
            // Calculate bit period for 115200 baud: 1/115200 ≈ 8.68μs
            bit_period = 8680; // in ns
            
            $display("Time %t: Simulating UART RX data 0x%02X on lines 0x%03b", $time, data_byte, rx_line_select);
            
            // Start bit (0)
            if (rx_line_select[0]) SYNC_LOC_MONITOR = 1'b0;
            if (rx_line_select[1]) SYNC_MONITOR = 1'b0;
            if (rx_line_select[2]) DMD_MSSB_RX = 1'b0;
            if (rx_line_select[3]) ENCODER_RX1 = 1'b0;
            if (rx_line_select[4]) ENCODER_RX2 = 1'b0;
            if (rx_line_select[5]) BMPLS = 1'b0;
            if (rx_line_select[6]) PRI_QUADR_A = 1'b0;
            if (rx_line_select[7]) PRI_QUADR_B = 1'b0;
            if (rx_line_select[8]) PRI_QUADR_I = 1'b0;
            #bit_period;
            
            // Data bits (LSB first)
            for (line_idx = 0; line_idx < 8; line_idx = line_idx + 1) begin
                if (rx_line_select[0]) SYNC_LOC_MONITOR = data_byte[line_idx];
                if (rx_line_select[1]) SYNC_MONITOR = data_byte[line_idx];
                if (rx_line_select[2]) DMD_MSSB_RX = data_byte[line_idx];
                if (rx_line_select[3]) ENCODER_RX1 = data_byte[line_idx];
                if (rx_line_select[4]) ENCODER_RX2 = data_byte[line_idx];
                if (rx_line_select[5]) BMPLS = data_byte[line_idx];
                if (rx_line_select[6]) PRI_QUADR_A = data_byte[line_idx];
                if (rx_line_select[7]) PRI_QUADR_B = data_byte[line_idx];
                if (rx_line_select[8]) PRI_QUADR_I = data_byte[line_idx];
                #bit_period;
            end
            
            // Stop bit (1)
            if (rx_line_select[0]) SYNC_LOC_MONITOR = 1'b1;
            if (rx_line_select[1]) SYNC_MONITOR = 1'b1;
            if (rx_line_select[2]) DMD_MSSB_RX = 1'b1;
            if (rx_line_select[3]) ENCODER_RX1 = 1'b1;
            if (rx_line_select[4]) ENCODER_RX2 = 1'b1;
            if (rx_line_select[5]) BMPLS = 1'b1;
            if (rx_line_select[6]) PRI_QUADR_A = 1'b1;
            if (rx_line_select[7]) PRI_QUADR_B = 1'b1;
            if (rx_line_select[8]) PRI_QUADR_I = 1'b1;
            #bit_period;
        end
    endtask
    
    // Main test sequence
    initial begin
        $display("=== RS422_TEST_IF Testbench Started ===");
        
        // Initialize signals
        OPB_RST = 1'b1;
        OPB_DI = 32'h0;
        OPB_ADDR = 32'h0;
        RS422_RE = 1'b0;
        RS422_WE = 1'b0;
        
        // Initialize RS422 input signals to idle state (high for UART)
        SYNC_LOC_MONITOR = 1'b1;
        SYNC_MONITOR = 1'b1;
        DMD_MSSB_RX = 1'b1;
        ENCODER_RX1 = 1'b1;
        ENCODER_RX2 = 1'b1;
        BMPLS = 1'b1;
        PRI_QUADR_A = 1'b1;
        PRI_QUADR_B = 1'b1;
        PRI_QUADR_I = 1'b1;
        
        // Reset sequence
        #100;
        OPB_RST = 1'b0;
        #100;
        
        $display("\n=== Test 1: Register Read/Write Test ===");
        
        // Test 1: Write and read test pattern
        opb_write(32'h00000000, 32'h000000A5); // TEST_PATTERN_ADDR = 0x00
        opb_read(32'h00000000, read_data);
        if (read_data[7:0] == 8'hA5) 
            $display("✓ Test Pattern register test PASSED");
        else 
            $display("✗ Test Pattern register test FAILED - Expected: 0xA5, Got: 0x%02X", read_data[7:0]);
            
        // Test 2: Write and read transmission bytes
        opb_write(32'h00000001, 32'h00000010); // TX_TRANS_BYTES_ADDR = 0x01
        opb_read(32'h00000001, read_data);
        if (read_data == 32'h00000010) 
            $display("✓ TX Trans Bytes register test PASSED");
        else 
            $display("✗ TX Trans Bytes register test FAILED - Expected: 0x10, Got: 0x%08X", read_data);
            
        $display("\n=== Test 2: Control Register Test ===");
        
        // Test 3: Control register functionality
        opb_write(32'h00000002, 32'h00000004); // TX_CTRL_ADDR = 0x02, clear bit
        #1000;
        opb_read(32'h00000002, read_data);
        $display("Control register after clear: 0x%08X", read_data);
        
        $display("\n=== Test 3: RS422 Communication Test ===");
        
        // Test 4: Start transmission and simulate RS422 reception
        
        // Set test pattern to 0x55 (alternating bits)
        opb_write(32'h00000000, 32'h00000055); // TEST_PATTERN_ADDR
        
        // Set transmission count to 5 bytes
        opb_write(32'h00000001, 32'h00000005); // TX_TRANS_BYTES_ADDR
        
        // Start transmission
        opb_write(32'h00000002, 32'h00000001); // TX_CTRL_ADDR, start bit
        $display("Transmission started with pattern 0x55, count = 5");
        
        // Wait a bit for transmission to start
        #50000;
        
        // Simulate receiving the same pattern on multiple RS422 lines
        // This simulates loopback or reception from other devices
        
        for (i = 0; i < 5; i = i + 1) begin
            $display("Simulating reception of byte %d", i + 1);
            
            // Simulate reception on RX1 (SYNC_LOC_MONITOR)
            simulate_uart_rx(9'b000000001, 8'h55);
            #10000; // Small gap between bytes
            
            // Simulate reception on RX2 (SYNC_MONITOR) 
            simulate_uart_rx(9'b000000010, 8'h55);
            #10000;
            
            // Simulate reception on RX3 (DMD_MSSB_RX)
            simulate_uart_rx(9'b000000100, 8'h55);
            #10000;
        end
        
        // Wait for processing to complete
        #100000;
        
        $display("\n=== Test 4: Status and Counter Verification ===");
        
        // Read status register
        opb_read(32'h00000003, read_data); // RX_STATUS_ADDR
        $display("RX Status: 0x%08X", read_data);
        
        // Read received byte counters
        opb_read(32'h00000004, read_data); // RX1_RECV_BYTES_ADDR
        $display("RX1 Received Bytes: %d", read_data);
        
        opb_read(32'h00000005, read_data); // RX2_RECV_BYTES_ADDR  
        $display("RX2 Received Bytes: %d", read_data);
        
        opb_read(32'h00000006, read_data); // RX3_RECV_BYTES_ADDR
        $display("RX3 Received Bytes: %d", read_data);
        
        // Read error counters
        opb_read(32'h0000000D, read_data); // RX1_ERR_BYTES_ADDR
        $display("RX1 Error Bytes: %d", read_data);
        
        opb_read(32'h0000000E, read_data); // RX2_ERR_BYTES_ADDR
        $display("RX2 Error Bytes: %d", read_data);
        
        opb_read(32'h0000000F, read_data); // RX3_ERR_BYTES_ADDR
        $display("RX3 Error Bytes: %d", read_data);
        
        $display("\n=== Test 5: Error Detection Test ===");
        
        // Clear previous test
        opb_write(32'h00000002, 32'h00000004); // Clear command
        #10000;
        
        // Set test pattern to 0xAA
        opb_write(32'h00000000, 32'h000000AA); // TEST_PATTERN_ADDR
        
        // Start new transmission
        opb_write(32'h00000002, 32'h00000001); // Start transmission
        #50000;
        
        // Simulate incorrect data reception (should increment error counters)
        for (i = 0; i < 3; i = i + 1) begin
            $display("Simulating incorrect byte reception %d", i + 1);
            
            // Send wrong pattern (0x55 instead of 0xAA) to RX1
            simulate_uart_rx(9'b000000001, 8'h55);
            #10000;
            
            // Send correct pattern to RX2 for comparison
            simulate_uart_rx(9'b000000010, 8'hAA);
            #10000;
        end
        
        #100000;
        
        // Read error counters again
        opb_read(32'h0000000D, read_data); // RX1_ERR_BYTES_ADDR
        $display("RX1 Error Bytes after error test: %d", read_data);
        
        opb_read(32'h0000000E, read_data); // RX2_ERR_BYTES_ADDR  
        $display("RX2 Error Bytes after error test: %d", read_data);
        
        if (read_data == 0)
            $display("✓ Error detection test PASSED - RX2 has no errors");
        else
            $display("✗ Error detection test FAILED - RX2 should have no errors");
            
        $display("\n=== Test 6: Stop and Clear Test ===");
        
        // Test stop functionality
        opb_write(32'h00000002, 32'h00000002); // Stop command
        #10000;
        
        // Test clear functionality
        opb_write(32'h00000002, 32'h00000004); // Clear command
        #10000;
        
        // Verify counters are cleared
        opb_read(32'h00000004, read_data); // RX1_RECV_BYTES_ADDR
        if (read_data == 0)
            $display("✓ Clear functionality test PASSED - RX1 counter cleared");
        else
            $display("✗ Clear functionality test FAILED - RX1 counter not cleared");
            
        // Monitor TX outputs for a while
        $display("\n=== Monitoring TX Outputs ===");
        $monitor("Time %t: TX_OUT=%b, SYNC_OUT=%b, DMD_TX=%b, ENC_TX1=%b, ENC_TX2=%b", 
                 $time, SYNC_LOC_OUT, SYNC_OUT, DMD_MSSB_TX, ENCODER_TX1, ENCODER_TX2);
        
        #500000; // Monitor for 500μs
        
        $display("\n=== RS422_TEST_IF Testbench Completed ===");
        $finish;
    end
    
    // Timeout watchdog
    initial begin
        #50000000; // 50ms timeout
        $display("ERROR: Testbench timeout!");
        $finish;
    end
    
endmodule
