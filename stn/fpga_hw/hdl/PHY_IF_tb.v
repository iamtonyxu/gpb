`timescale 1ns/100ps

module PHY_IF_tb;

    // Clock periods
    parameter OPB_CLK_PERIOD = 10;      // 100MHz
    parameter PHY_CLK_PERIOD = 20;      // 50MHz
    parameter CLK_25MHZ_PERIOD = 40;    // 25MHz

    // Testbench signals
    reg                     OPB_CLK;
    reg                     OPB_RST;
    reg     [31:0]          OPB_DI;
    wire    [31:0]          OPB_DO;
    reg     [31:0]          OPB_DO_reg;
    reg     [31:0]          OPB_ADDR;
    reg                     PHY_RE;
    reg                     PHY_WE;
    reg                     PHY_CLK;
    reg                     CLK_25MHZ;
    
    // PHY interface signals
    wire                    PHY_RMII_TX_EN;
    wire                    PHY_RMII_TX_DATA1;
    wire                    PHY_RMII_TX_DATA0;
    wire                    PHY_RST_N;
    wire                    PHY_MDIO_OUT;
    reg                     PHY_MDIO_IN;
    wire                    PHY_MDIO_ENABLE;
    wire                    PHY_MDC;
    wire                    ETH_LED1;
    wire                    ETH_LED2;
    reg                     PHY_RMII_RX_DATA1;
    reg                     PHY_RMII_RX_DATA0;
    reg                     PHY_RMII_RX_DV;

    // Test control variables
    integer test_case;
    
    // Clock generation
    initial begin
        OPB_CLK = 0;
        forever #(OPB_CLK_PERIOD/2) OPB_CLK = ~OPB_CLK;
    end
    
    initial begin
        PHY_CLK = 0;
        forever #(PHY_CLK_PERIOD/2) PHY_CLK = ~PHY_CLK;
    end
    
    initial begin
        CLK_25MHZ = 0;
        forever #(CLK_25MHZ_PERIOD/2) CLK_25MHZ = ~CLK_25MHZ;
    end
    
    // Test tasks
    task opb_write;
        input [31:0] addr;
        input [31:0] data;
        begin
            @(posedge OPB_CLK);
            OPB_ADDR = addr;
            OPB_DI = data;
            PHY_WE = 1'b1;
            PHY_RE = 1'b0;
            @(posedge OPB_CLK);
            PHY_WE = 1'b0;
            $display("Time %0t: OPB Write - Addr: 0x%08x, Data: 0x%08x", $time, addr, data);
        end
    endtask
    
    task opb_read;
        input [31:0] addr;
        output [31:0] data;
        begin
            @(posedge OPB_CLK);
            OPB_ADDR = addr;
            PHY_RE = 1'b1;
            PHY_WE = 1'b0;
            @(posedge OPB_CLK);
            data = OPB_DO;
            PHY_RE = 1'b0;
            $display("Time %0t: OPB Read - Addr: 0x%08x, Data: 0x%08x", $time, addr, data);
        end
    endtask
    
    task simulate_mdio_response;
        integer i;
        begin
            // Simulate PHY response to MDIO read
            PHY_MDIO_IN = 1'b0;  // Default state
            #1000;               // Wait for MDIO transaction
            // Simulate some response data
            for (i = 0; i < 16; i = i + 1) begin
                @(posedge PHY_MDC);
                PHY_MDIO_IN = i[0]; // Use bit pattern instead of $random
            end
        end
    endtask
    
    // Main test sequence
    initial begin
        // Initialize signals
        OPB_RST = 1'b1;
        OPB_DI = 32'h0;
        OPB_ADDR = 32'h0;
        PHY_RE = 1'b0;
        PHY_WE = 1'b0;
        PHY_MDIO_IN = 1'b1;
        PHY_RMII_RX_DATA1 = 1'b0;
        PHY_RMII_RX_DATA0 = 1'b0;
        PHY_RMII_RX_DV = 1'b0;
        test_case = 0;
        
        $display("=====================================");
        $display("PHY_IF Testbench Starting");
        $display("=====================================");
        
        // Reset sequence
        #(OPB_CLK_PERIOD * 10);
        $display("Time %0t: Releasing reset", $time);
        OPB_RST = 1'b0;
        
        // Wait for PHY reset to be released
        wait(PHY_RST_N == 1'b1);
        $display("Time %0t: PHY reset released", $time);
        
        #(OPB_CLK_PERIOD * 10);
        
        // Test Case 1: PHY TX Control Register Write/Read
        test_case = 1;
        $display("\n--- Test Case %0d: PHY TX Control Register ---", test_case);
        opb_write(32'h00000001, 32'h0000001F); // Write to PHY_TX_CTRL_ADDR
        #(OPB_CLK_PERIOD * 5);
        opb_read(32'h00000001, OPB_DO_reg); // Read back PHY_TX_CTRL_ADDR

        // Check LED and TX signals
        $display("ETH_LED1: %b, ETH_LED2: %b", ETH_LED1, ETH_LED2);
        $display("PHY_RMII_TX_EN: %b, TX_DATA1: %b, TX_DATA0: %b", 
                 PHY_RMII_TX_EN, PHY_RMII_TX_DATA1, PHY_RMII_TX_DATA0);
        
        #100; // Wait for TX signals to stabilize
        // Test Case 2: PHY Register Access (MDIO Write)
        test_case = 2;
        $display("\n--- Test Case %0d: PHY Register Write via MDIO ---", test_case);
        // Write: PHY_ADDR=0, REG_ADDR=0, DATA=0x3100, WRITE=1
        opb_write(32'h00000000, 32'h00803100); // bit[23]=1 (write), REG=0, PHY=0, DATA=0x3100
        
        // Wait for MDIO transaction to complete
        #30000;
        opb_read(32'h00000000, OPB_DO_reg); // Read back to check


        // Test Case 3: PHY Register Access (MDIO Read)
        test_case = 3;
        $display("\n--- Test Case %0d: PHY Register Read via MDIO ---", test_case);
        
        // MDIO read operation (no parallel simulation needed in standard Verilog)
        // Read: PHY_ADDR=0, REG_ADDR=1, READ operation
        opb_write(32'h00000000, 32'h00040000); // bit[23]=0 (read), REG=1, PHY=0
        
        // Wait for MDIO transaction
        #30000;
        
        // Read the result
        opb_read(32'h00000000, OPB_DO_reg);
        #100;

        // Test Case 4: Invalid Address Access
        test_case = 4;
        $display("\n--- Test Case %0d: Invalid Address Access ---", test_case);
        opb_read(32'h00000999, OPB_DO_reg); // Invalid address

        // Final delay
        #(OPB_CLK_PERIOD * 100);
        $display("Time %0t: Finalizing testbench", $time);
        $display("\n=====================================");
        $display("Test Summary:");
        $display("- PHY Reset: %s", PHY_RST_N ? "RELEASED" : "ACTIVE");
        $display("Testbench completed successfully");
        $display("=====================================");
        
        $finish;
    end
    
    // Monitor MDIO transactions
    always @(posedge PHY_MDC) begin
        if (PHY_MDIO_ENABLE) begin
            $display("Time %0t: MDIO TX: %b", $time, PHY_MDIO_OUT);
        end
    end
    
    
    // DUT instantiation
    PHY_IF dut (
        .OPB_CLK(OPB_CLK),
        .OPB_RST(OPB_RST),
        .OPB_DI(OPB_DI),
        .OPB_DO(OPB_DO),
        .OPB_ADDR(OPB_ADDR),
        .PHY_RE(PHY_RE),
        .PHY_WE(PHY_WE),
        .PHY_CLK(PHY_CLK),
        .CLK_25MHZ(CLK_25MHZ),
        .PHY_RMII_TX_EN(PHY_RMII_TX_EN),
        .PHY_RMII_TX_DATA1(PHY_RMII_TX_DATA1),
        .PHY_RMII_TX_DATA0(PHY_RMII_TX_DATA0),
        .PHY_RST_N(PHY_RST_N),
        .PHY_MDIO_OUT(PHY_MDIO_OUT),
        .PHY_MDIO_IN(PHY_MDIO_IN),
        .PHY_MDIO_ENABLE(PHY_MDIO_ENABLE),
        .PHY_MDC(PHY_MDC),
        .ETH_LED1(ETH_LED1),
        .ETH_LED2(ETH_LED2),
        .PHY_RMII_RX_DATA1(PHY_RMII_RX_DATA1),
        .PHY_RMII_RX_DATA0(PHY_RMII_RX_DATA0),
        .PHY_RMII_RX_DV(PHY_RMII_RX_DV)
    );

endmodule
