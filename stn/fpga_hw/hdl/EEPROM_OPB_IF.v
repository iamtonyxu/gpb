`timescale 1ns/100ps

module EEPROM_OPB_IF (
    // OPB Interface
    input               OPB_CLK,
    input               OPB_RST,
    input       [31:0]  EEP_DI,
    input               EEP_RE,
    input               EEP_WE,
    output      [31:0]  EEP_DO, 

    // EEPROM Interface
    output              EEP_CS_N,
    output              EEP_SI,
    output              EEP_SCK,
    input               EEP_SO
);

    // Parameters
    parameter CLK_DIV = 10; // Derive 10 MHz clock from OPB_CLK (100 MHz)

    // Internal Registers
    reg     [7:0]   clk_cnt;       // Divide OPB_CLK by 10 to get 10 MHz clock
    reg             strobe_1us;   // 1us pulse generated from OPB_CLK
    reg             eep_done_reg; // Register to indicate EEPROM operation done
    reg     [7:0]   eep_rddata_reg; // Register to store read data from EEPROM
    reg             eeprom_start;
    reg     [15:0]  eeprom_addr;
    reg     [7:0]   eeprom_wrdata;
    reg     [3:0]   eeprom_inst;

    // Internal Wires
    wire            eep_done;     // Indicates EEPROM operation completion
    wire    [7:0]   eep_rddata;   // Read data from EEPROM
    
    // Clock Divider: Generate 1 MHz clock from OPB_CLK
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            clk_cnt <= 8'h0;
        end else if (clk_cnt == CLK_DIV - 1) begin
            clk_cnt <= 8'h0;
        end else begin
            clk_cnt <= clk_cnt + 1'b1;
        end
    end

    // Generate 1us Strobe Signal
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            strobe_1us <= 1'b0;
        end else if (clk_cnt == CLK_DIV - 1) begin
            strobe_1us <= 1'b1;
        end else begin
            strobe_1us <= 1'b0;
        end
    end

    // Update EEPROM Done Register
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            eep_done_reg <= 1'b0;
        end else if (EEP_WE) begin
            eep_done_reg <= 1'b0;
        end else if(eep_done)begin
            eep_done_reg <= 1'b1;
        end
    end

    // Update EEPROM Read Data Register
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            eep_rddata_reg <= 8'h0;
        end else if (eep_done) begin
            eep_rddata_reg <= eep_rddata;
        end
    end

    // Assign Output Data
    assign EEP_DO = {eep_done_reg, 23'h0, eep_rddata_reg};

    //eeprom_start
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            eeprom_start    <= 1'b0;
            eeprom_addr     <= 0;
            eeprom_wrdata   <= 0;
            eeprom_inst     <= 0;
        end else if (EEP_WE) begin
            eeprom_start    <= 1'b1;
            eeprom_addr     <= EEP_DI[23:8];
            eeprom_wrdata   <= EEP_DI[7:0];
            eeprom_inst     <= EEP_DI[31:28];
        end else begin
            eeprom_start    <= 1'b0;
        end
    end

    // Instantiate the EEPROM Interface Module
    serial_eeprom_if eeprom_if_0 (
        .reset(OPB_RST),
        .clk(OPB_CLK),
        .strobe_1us(strobe_1us),
        .eeprom_start(eeprom_start),
        .eeprom_addr(eeprom_addr),
        .eeprom_wrdata(eeprom_wrdata),
        .eeprom_rddata(eep_rddata),
        .eeprom_done(eep_done),
        .eeprom_inst(eeprom_inst),
        .eeprom_en(1'b1),
        .eep_sdo(EEP_SO),
        .eep_sdi(EEP_SI),
        .eep_sclk(EEP_SCK),
        .eep_csn(EEP_CS_N)
    );

endmodule