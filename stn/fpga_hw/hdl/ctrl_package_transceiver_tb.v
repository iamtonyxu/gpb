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
        .ctrl_rx_dv     (ctrl_rx_dv)
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
        $display("\nTest Case %0d: Basic TX/RX loopback test", test_case);
        
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
            
            // Create loopback during transmission
            repeat(65) begin  // 64 cycles for data + 1 extra cycle for last ctrl_rx_dv (128 bits / 2 bits per cycle = 64)
                @(posedge sys_clk);
                if (ctrl_tx_en) begin
                    // Loopback: feed TX data to RX  
                    ctrl_rx_data = ctrl_tx_data;
                    ctrl_rx_dv = 1;
                    
                    // Collect data for verification
                    received_data = {received_data[125:0], ctrl_tx_data};
                    rx_counter = rx_counter + 2;
                    
                    $display("Time: %0t - TX: 0x%h, RX: 0x%h", $time, ctrl_tx_data, ctrl_rx_data);
                end else if (rx_counter > 0 && rx_counter <= 128) begin
                    // Keep ctrl_rx_dv high for one more cycle after TX ends to ensure last data is latched
                    ctrl_rx_dv = 1;
                    $display("Time: %0t - Extra RX cycle for last data", $time);
                    @(posedge sys_clk);
                    ctrl_rx_dv = 0;
                    // Exit loop after extra cycle
                    rx_counter = 8'b11111111; // Signal to break from outer repeat
                end else begin
                    ctrl_rx_dv = 0;
                    // Exit loop when transmission stops
                    rx_counter = 8'b11111111; // Signal to break from outer repeat
                end
                
                // Break from repeat loop if transmission completed
                if (rx_counter >= 128) begin
                    ctrl_rx_dv = 0;
                    rx_counter = 128; // Cap the counter
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
            $display("✓ RX pattern match successful");
        end else begin
            $display("✗ RX pattern mismatch");
            $display("Expected: 0x%h", expected_pattern);
            $display("Received: 0x%h", received_data);
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
        #50000; // 50us timeout
        $display("ERROR: Testbench timeout!");
        $finish;
    end
    
    // Monitor key signals
    initial begin
        $monitor("Time: %0t | rst_n=%b tx_start=%b tx_done=%b rx_good=%b | TX: en=%b data=0x%h | RX: dv=%b data=0x%h", 
                 $time, rst_n, tx_start, tx_done, rx_good, ctrl_tx_en, ctrl_tx_data, ctrl_rx_dv, ctrl_rx_data);
    end

endmodule
