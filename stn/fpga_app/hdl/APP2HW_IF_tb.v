`timescale 1ns/100ps

module APP2HW_IF_tb;

    // Parameters
    parameter DATA_WIDTH = 32;
    parameter CLK_PERIOD = 10; // 100MHz clock

    // Clock and Reset
    reg                 OPB_CLK;
    reg                 OPB_RST;
    
    // OPB Interface signals
    reg [31:0]          OPB_DI;
    wire [31:0]         OPB_DO;
    reg [31:0]          OPB_ADDR;
    reg                 APP_RE;
    reg                 APP_WE;
    
    // Output Interface signals (DUT outputs)
    wire                APP_AUX_IO0;
    wire                APP_AUX_IO1;
    wire                APP_AUX_IO2;
    wire                APP_AUX_IO3;
    wire                APP_AUX_IO4;
    wire                APP_AUX_IO5;
    wire                HSSB_PMII_TX_DATA0;
    wire                HSSB_PMII_TX_DATA1;
    wire                HSSB_PMII_TX_DATA2;
    wire                HSSB_PMII_TX_DATA3;
    wire                HSSB_PMII_TX_EN;
    wire                APP_FPGA_SPI1_CS_N;
    wire                APP_FPGA_SPI0_CS_N;
    wire                APP_FPGA_SPI0_MOSI;
    wire                APP_FPGA_SPI1_MOSI;
    wire                APP_FPGA_SPI_CLK;
    wire                DISABLE_HDW_FPGA;
    wire                APP_FPGA_TDO;
    
    // Input Interface signals (testbench drives these)
    reg                 HSSB_PMII_CLK;
    reg                 HSSB_PMII_RESET_N;
    reg                 HSSB_PMII_RX_DATA0;
    reg                 HSSB_PMII_RX_DATA1;
    reg                 HSSB_PMII_RX_DATA2;
    reg                 HSSB_PMII_RX_DATA3;
    reg                 HSSB_PMII_RX_DV;
    reg                 APP_FPGA_SPI0_MISO;
    reg                 APP_FPGA_SPI1_MISO;
    reg                 APP_FPGA_TMS;
    reg                 APP_FPGA_TDI;
    reg                 APP_FPGA_TCK;
    reg                 APP_FPGA_TRST;
    
    // Test control variables
    reg [31:0]          read_data;
    integer             i;

    // Clock generation (100MHz)
    initial begin
        OPB_CLK = 0;
        forever #(CLK_PERIOD/2) OPB_CLK = ~OPB_CLK;
    end

    // Instantiate the DUT (Device Under Test)
    APP2HW_IF #(
        .DATA_WIDTH(DATA_WIDTH)
    ) dut (
        // OPB Interface
        .OPB_CLK(OPB_CLK),
        .OPB_RST(OPB_RST),
        .OPB_DI(OPB_DI),
        .OPB_DO(OPB_DO),
        .OPB_ADDR(OPB_ADDR),
        .APP_RE(APP_RE),
        .APP_WE(APP_WE),
        
        // Output Interface
        .APP_AUX_IO0(APP_AUX_IO0),
        .APP_AUX_IO1(APP_AUX_IO1),
        .APP_AUX_IO2(APP_AUX_IO2),
        .APP_AUX_IO3(APP_AUX_IO3),
        .APP_AUX_IO4(APP_AUX_IO4),
        .APP_AUX_IO5(APP_AUX_IO5),
        .HSSB_PMII_TX_DATA0(HSSB_PMII_TX_DATA0),
        .HSSB_PMII_TX_DATA1(HSSB_PMII_TX_DATA1),
        .HSSB_PMII_TX_DATA2(HSSB_PMII_TX_DATA2),
        .HSSB_PMII_TX_DATA3(HSSB_PMII_TX_DATA3),
        .HSSB_PMII_TX_EN(HSSB_PMII_TX_EN),
        .APP_FPGA_SPI1_CS_N(APP_FPGA_SPI1_CS_N),
        .APP_FPGA_SPI0_CS_N(APP_FPGA_SPI0_CS_N),
        .APP_FPGA_SPI0_MOSI(APP_FPGA_SPI0_MOSI),
        .APP_FPGA_SPI1_MOSI(APP_FPGA_SPI1_MOSI),
        .APP_FPGA_SPI_CLK(APP_FPGA_SPI_CLK),
        .DISABLE_HDW_FPGA(DISABLE_HDW_FPGA),
        .APP_FPGA_TDO(APP_FPGA_TDO),
        
        // Input Interface
        .HSSB_PMII_CLK(HSSB_PMII_CLK),
        .HSSB_PMII_RESET_N(HSSB_PMII_RESET_N),
        .HSSB_PMII_RX_DATA0(HSSB_PMII_RX_DATA0),
        .HSSB_PMII_RX_DATA1(HSSB_PMII_RX_DATA1),
        .HSSB_PMII_RX_DATA2(HSSB_PMII_RX_DATA2),
        .HSSB_PMII_RX_DATA3(HSSB_PMII_RX_DATA3),
        .HSSB_PMII_RX_DV(HSSB_PMII_RX_DV),
        .APP_FPGA_SPI0_MISO(APP_FPGA_SPI0_MISO),
        .APP_FPGA_SPI1_MISO(APP_FPGA_SPI1_MISO),
        .APP_FPGA_TMS(APP_FPGA_TMS),
        .APP_FPGA_TDI(APP_FPGA_TDI),
        .APP_FPGA_TCK(APP_FPGA_TCK),
        .APP_FPGA_TRST(APP_FPGA_TRST)
    );

    // OPB Read Task
    task opb_read;
        input [31:0] addr;
        output [31:0] data;
        begin
            @(posedge OPB_CLK);
            OPB_ADDR = addr;
            APP_RE = 1'b1;
            APP_WE = 1'b0;
            @(posedge OPB_CLK);
            APP_RE = 1'b0;
            @(posedge OPB_CLK); // Wait for operation to complete
            data = OPB_DO;
            $display("Time %t: OPB Read - Addr: 0x%08X, Data: 0x%08X", $time, addr, data);
        end
    endtask

    // OPB Write Task
    task opb_write;
        input [31:0] addr;
        input [31:0] data;
        begin
            @(posedge OPB_CLK);
            OPB_ADDR = addr;
            OPB_DI = data;
            APP_WE = 1'b1;
            APP_RE = 1'b0;
            @(posedge OPB_CLK);
            APP_WE = 1'b0;
            $display("Time %t: OPB Write - Addr: 0x%08X, Data: 0x%08X", $time, addr, data);
        end
    endtask

    // Task to set input pattern
    task set_input_pattern;
        input [8:0] pattern;
        begin
            {APP_FPGA_SPI1_MISO, APP_FPGA_SPI0_MISO, HSSB_PMII_RX_DV, 
             HSSB_PMII_RX_DATA3, HSSB_PMII_RX_DATA2, HSSB_PMII_RX_DATA1, 
             HSSB_PMII_RX_DATA0, HSSB_PMII_RESET_N, HSSB_PMII_CLK} = pattern;
            #CLK_PERIOD;
        end
    endtask

    // Task to verify output pattern
    task verify_outputs;
        input [16:0] expected_pattern;
        reg [16:0] actual_pattern;
        begin
            actual_pattern = {DISABLE_HDW_FPGA, APP_FPGA_SPI_CLK, 
                            APP_FPGA_SPI1_MOSI, APP_FPGA_SPI0_MOSI, APP_FPGA_SPI0_CS_N,
                            APP_FPGA_SPI1_CS_N, HSSB_PMII_TX_EN, HSSB_PMII_TX_DATA3,
                            HSSB_PMII_TX_DATA2, HSSB_PMII_TX_DATA1, HSSB_PMII_TX_DATA0,
                            APP_AUX_IO5, APP_AUX_IO4, APP_AUX_IO3, APP_AUX_IO2, 
                            APP_AUX_IO1, APP_AUX_IO0};
            
            if (actual_pattern === expected_pattern) begin
                $display("Time %t: Output verification PASSED - Expected: 0x%05X, Actual: 0x%05X", 
                         $time, expected_pattern, actual_pattern);
            end else begin
                $display("Time %t: Output verification FAILED - Expected: 0x%05X, Actual: 0x%05X", 
                         $time, expected_pattern, actual_pattern);
            end
        end
    endtask

    // Main test sequence
    initial begin
        $display("=== APP2HW_IF Testbench Started ===");
        
        // Initialize signals
        OPB_RST = 1'b1;
        OPB_DI = 32'h0;
        OPB_ADDR = 32'h0;
        APP_RE = 1'b0;
        APP_WE = 1'b0;
        
        // Initialize input signals
        HSSB_PMII_CLK = 1'b0;
        HSSB_PMII_RESET_N = 1'b0;
        HSSB_PMII_RX_DATA0 = 1'b0;
        HSSB_PMII_RX_DATA1 = 1'b0;
        HSSB_PMII_RX_DATA2 = 1'b0;
        HSSB_PMII_RX_DATA3 = 1'b0;
        HSSB_PMII_RX_DV = 1'b0;
        APP_FPGA_SPI0_MISO = 1'b0;
        APP_FPGA_SPI1_MISO = 1'b0;
        APP_FPGA_TMS = 1'b0;
        APP_FPGA_TDI = 1'b0;
        APP_FPGA_TCK = 1'b0;
        APP_FPGA_TRST = 1'b0;
        
        // Reset sequence
        #(CLK_PERIOD * 10);
        OPB_RST = 1'b0;
        #(CLK_PERIOD * 5);
        
        $display("\n=== Test 1: Reset State Verification ===");
        // Verify all outputs are 0 after reset
        verify_outputs(17'h00000);
        
        $display("\n=== Test 2: Input Reading Test ===");
        // Test different input patterns and verify reading
        set_input_pattern(9'h1ff);
        #(CLK_PERIOD * 10);
        verify_outputs(17'h1ffff);

        set_input_pattern(9'h05A);
        #(CLK_PERIOD * 10);
        verify_outputs(17'h05A5A);

        set_input_pattern(9'h15A);
        #(CLK_PERIOD * 10);
        verify_outputs(17'h15A5A);

        set_input_pattern(9'h0A5);
        #(CLK_PERIOD * 10);
        verify_outputs(17'h0A5A5);

        set_input_pattern(9'h1A5);
        #(CLK_PERIOD * 10);
        verify_outputs(17'h1A5A5);

        $display("\n=== APP2HW_IF Testbench Completed Successfully ===");
        #(CLK_PERIOD * 10);
        $stop;
    end

endmodule
