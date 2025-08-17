`timescale 1ns/100ps

module ctrl_package_transceiver_tb;

    // Clock and reset
    reg         sys_clk;
    reg         rst_n;
    
    // Control signals
    reg         tx_start;
    wire        tx_done;
    wire        rx_good;
    
    // TX interface
    wire        ctrl_tx_clk;
    wire [1:0]  ctrl_tx_data;
    wire        ctrl_tx_en;
    
    // RX interface  
    wire        ctrl_rx_clk;
    reg  [1:0]  ctrl_rx_data;
    reg         ctrl_rx_dv;
    
    // Test variables
    integer test_case;
    reg [127:0] expected_pattern;
    reg [127:0] received_data;
    wire [127:0] rx_package_o;
    wire [7:0]   rx_bit_cnt_debug;  // Debug signal
    reg [7:0]   rx_counter;
    
    // Clock generation (50MHz = 20ns period)
    initial begin
        sys_clk = 0;
        forever #10 sys_clk = ~sys_clk;
    end
    
    // DUT instantiation
    ctrl_package_transceiver dut (
        .sys_clk        (sys_clk),
        .rst_n          (rst_n),
        .tx_start       (tx_start),
        .tx_done        (tx_done),
        .rx_good        (rx_good),
        .tx_package_i    (128'hA5B6C7D8_E9FA0B1C_2D3E4F50_61728394),
        .rx_package_o    (rx_package_o),

        // TX interface
        .ctrl_tx_clk    (ctrl_tx_clk),
        .ctrl_tx_data   (ctrl_tx_data),
        .ctrl_tx_en     (ctrl_tx_en),
        
        // RX interface
        .ctrl_rx_clk    (ctrl_rx_clk),
        .ctrl_rx_data   (ctrl_rx_data),
        .ctrl_rx_dv     (ctrl_rx_dv),
        
        // Debug interface
        .rx_bit_cnt_o   (rx_bit_cnt_debug)
    );
    
    // Test sequence
    initial begin
        // Initialize signals
        rst_n = 0;
        tx_start = 0;
        ctrl_rx_data = 2'b0;
        ctrl_rx_dv = 0;
        test_case = 0;
        expected_pattern = 128'hA5B6C7D8_E9FA0B1C_2D3E4F50_61728394;
        received_data = 128'h0;
        rx_counter = 0;
        
        $display("=== ctrl_package_transceiver Testbench ===");
        $display("Time: %0t - Starting testbench", $time);
        
        // Reset sequence
        repeat(5) @(posedge sys_clk);
        rst_n = 1;
        repeat(2) @(posedge sys_clk);
        
        // Test Case 1: Basic transmission and loopback
        test_case = 1;
        $display("\nTest Case %0d: Basic TX/RX loopback test (144-bit with 16-bit padding)", test_case);
        $display("Transmitting: 128-bit data + 16-bit FFFF padding = 144 bits total");
        
        // Start transmission
        @(posedge sys_clk);
        tx_start = 1;
        @(posedge sys_clk);
        tx_start = 0;
        
        // Monitor TX data and create RX loopback (manual control)
        begin
            received_data = 128'h0;
            rx_counter = 0;
            
            // Wait for TX to start and create loopback manually
            wait(ctrl_tx_en);  // Wait for transmission to start
            
            // Create loopback during transmission (continuous sending)
            repeat(75) begin  // 72 cycles for data + 3 extra cycles (144 bits / 2 bits per cycle = 72)
                @(posedge sys_clk);
                if (ctrl_tx_en) begin
                    // Loopback: feed TX data to RX  
                    ctrl_rx_data = ctrl_tx_data;
                    ctrl_rx_dv = 1;
                    
                    // Collect data for verification
                    received_data = {received_data[125:0], ctrl_tx_data};
                    rx_counter = rx_counter + 2;
                    
                    $display("Time: %0t - TX: 0x%h, RX: 0x%h, rx_cnt: %0d, debug_cnt: %0d", 
                             $time, ctrl_tx_data, ctrl_rx_data, rx_counter, rx_bit_cnt_debug);
                end else if (rx_counter > 0 && rx_counter <= 144) begin  // Now expecting 144 bits
                    // Keep ctrl_rx_dv high for one more cycle after TX ends to ensure last data is latched
                    ctrl_rx_dv = 1;
                    $display("Time: %0t - Extra RX cycle for last data, debug_cnt: %0d", $time, rx_bit_cnt_debug);
                    // Note: Do not add extra @(posedge sys_clk) here to avoid nested timing issues
                end else begin
                    ctrl_rx_dv = 0;
                end
                
                // Exit early if transmission completed
                if (rx_counter >= 144) begin  // Updated to 144 bits
                    ctrl_rx_dv = 0;
                end
            end
            
            // Stop RX after TX completes
            @(posedge sys_clk);
            ctrl_rx_dv = 0;
        end
        
        // Wait for completion
        repeat(10) @(posedge sys_clk);
        
        // Check results
        if (tx_done) begin
            $display("✓ TX completed successfully");
        end else begin
            $display("✗ TX failed to complete");
        end
        
        if (rx_good) begin
            $display("✓ RX pattern match successful (including 16-bit padding)");
        end else begin
            $display("✗ RX pattern mismatch");
            $display("Expected: 0x%h (first 128 bits)", expected_pattern);
            $display("Received: 0x%h (first 128 bits)", received_data);
            $display("RX Package Output: 0x%h", rx_package_o);
            $display("Debug bit count: %0d (should be 144)", rx_bit_cnt_debug);
        end
        
        // Additional check: verify that we received exactly 144 bits
        if (rx_bit_cnt_debug == 144) begin
            $display("✓ Correct number of bits received (144 including padding)");
        end else begin
            $display("✗ Incorrect bit count: expected 144, got %0d", rx_bit_cnt_debug);
        end
        
        // Test Case 2: Transmission without RX
        test_case = 2;
        $display("\nTest Case %0d: TX only (no RX loopback)", test_case);
        
        // Reset RX inputs
        ctrl_rx_data = 2'b0;
        ctrl_rx_dv = 0;
        
        repeat(5) @(posedge sys_clk);
        
        // Start transmission
        @(posedge sys_clk);
        tx_start = 1;
        @(posedge sys_clk);
        tx_start = 0;
        
        // Wait for completion
        wait(tx_done);
        repeat(5) @(posedge sys_clk);
        
        if (tx_done && !rx_good) begin
            $display("✓ TX completed, RX correctly shows no valid data");
        end else begin
            $display("✗ Unexpected RX behavior");
        end
        
        // Test Case 3: Reset during transmission
        test_case = 3;
        $display("\nTest Case %0d: Reset during transmission", test_case);
        
        // Start transmission
        @(posedge sys_clk);
        tx_start = 1;
        @(posedge sys_clk);
        tx_start = 0;
        
        // Wait a few cycles then reset
        repeat(10) @(posedge sys_clk);
        rst_n = 0;
        repeat(3) @(posedge sys_clk);
        rst_n = 1;
        repeat(5) @(posedge sys_clk);
        
        if (!tx_done && !rx_good && !ctrl_tx_en) begin
            $display("✓ Reset correctly stops transmission");
        end else begin
            $display("✗ Reset behavior incorrect");
        end
        
        // Final summary
        repeat(10) @(posedge sys_clk);
        $display("\n=== Test Summary ===");
        $display("All test cases completed");
        $display("Time: %0t - Testbench finished", $time);
        
        $finish;
    end
    
    // Timeout watchdog
    initial begin
        #50000; // 50us timeout (restored to original for continuous sending)
        $display("ERROR: Testbench timeout!");
        $finish;
    end
    
    // Monitor key signals
    initial begin
        $monitor("Time: %0t | rst_n=%b tx_start=%b tx_done=%b rx_good=%b | TX: en=%b data=0x%h | RX: dv=%b data=0x%h | Debug: rx_bit_cnt=%0d", 
                 $time, rst_n, tx_start, tx_done, rx_good, ctrl_tx_en, ctrl_tx_data, ctrl_rx_dv, ctrl_rx_data, rx_bit_cnt_debug);
    end

endmodule
