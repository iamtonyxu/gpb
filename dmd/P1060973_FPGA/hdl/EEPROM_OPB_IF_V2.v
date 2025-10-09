/*-----------------------------------------------------------------------------------------------------------
--
-- Module name: EEPROM_OPB_IF_V2
--
-- Description: This module is to interface with the EEPROM memory.
--
-- Author: Yalong Xu
-- Data: 2025-10-06
-- 00.00.00.01  XYL  Initial version number
-----------------------------------------------------------------------------------------------------------*/

`define EEP_BYTE_CONTROL 8'h00
`define EEP_PAGE_CONTROL 8'h01
`define EEP_PAGE_WRDATA0 8'h10
`define EEP_PAGE_WRDATA1 8'h11
`define EEP_PAGE_WRDATA2 8'h12
`define EEP_PAGE_WRDATA3 8'h13
`define EEP_PAGE_WRDATA4 8'h14
`define EEP_PAGE_WRDATA5 8'h15
`define EEP_PAGE_WRDATA6 8'h16
`define EEP_PAGE_WRDATA7 8'h17
`define EEP_PAGE_RDDATA0 8'h18
`define EEP_PAGE_RDDATA1 8'h19
`define EEP_PAGE_RDDATA2 8'h1a
`define EEP_PAGE_RDDATA3 8'h1b
`define EEP_PAGE_RDDATA4 8'h1c
`define EEP_PAGE_RDDATA5 8'h1d
`define EEP_PAGE_RDDATA6 8'h1e
`define EEP_PAGE_RDDATA7 8'h1f

module EEPROM_OPB_IF_V2 (
    // OPB Interface
    input               OPB_CLK,
    input               OPB_RST,
    input       [15:0]  OPB_ADDR,
    input       [31:0]  EEP_DI,
    input               EEP_RE,
    input               EEP_WE,
    output reg  [31:0]  EEP_DO, 

    // EEPROM Interface
    output              EEP_CS_N,
    output              EEP_SI,
    output              EEP_SCK,
    input               EEP_SO
);

    // Parameters
    parameter CLK_DIV = 100; // Derive 1 MHz clock from OPB_CLK (100 MHz)

    // Internal Registers
    reg     [7:0]   clk_cnt;       // Divide OPB_CLK by 100 to get 1 MHz clock
    reg             strobe_1us;   // 1us pulse generated from OPB_CLK
    reg             eep_done_reg; // Register to indicate EEPROM operation done
    reg     [7:0]   eep_rddata_reg; // Register to store read data from EEPROM
    // control signals
    reg             eeprom_start;
    reg     [15:0]  eeprom_addr;
    reg     [7:0]   eeprom_wrdata;
    reg     [3:0]   eeprom_inst;

    // for page write/read
    reg             eeprom_page_seq;
    reg     [7:0]   eeprom_page_num;
    wire    [255:0] eeprom_page_wrdata;
    reg     [31:0]  eeprom_page_wrdata0;
    reg     [31:0]  eeprom_page_wrdata1;
    reg     [31:0]  eeprom_page_wrdata2;
    reg     [31:0]  eeprom_page_wrdata3;
    reg     [31:0]  eeprom_page_wrdata4;
    reg     [31:0]  eeprom_page_wrdata5;
    reg     [31:0]  eeprom_page_wrdata6;
    reg     [31:0]  eeprom_page_wrdata7;
    wire    [255:0] eeprom_page_rddata;
    wire    [31:0]  eeprom_page_rddata0;
    wire    [31:0]  eeprom_page_rddata1;
    wire    [31:0]  eeprom_page_rddata2;
    wire    [31:0]  eeprom_page_rddata3;
    wire    [31:0]  eeprom_page_rddata4;
    wire    [31:0]  eeprom_page_rddata5;
    wire    [31:0]  eeprom_page_rddata6;
    wire    [31:0]  eeprom_page_rddata7;

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

    // eeprom_page_wrdata
    assign eeprom_page_wrdata = {eeprom_page_wrdata7, eeprom_page_wrdata6, eeprom_page_wrdata5, eeprom_page_wrdata4,
                                 eeprom_page_wrdata3, eeprom_page_wrdata2, eeprom_page_wrdata1, eeprom_page_wrdata0};

    // eeprom_page_rddata
    assign eeprom_page_rddata0 = eeprom_page_rddata[31:0];
    assign eeprom_page_rddata1 = eeprom_page_rddata[63:32];
    assign eeprom_page_rddata2 = eeprom_page_rddata[95:64];
    assign eeprom_page_rddata3 = eeprom_page_rddata[127:96];
    assign eeprom_page_rddata4 = eeprom_page_rddata[159:128];
    assign eeprom_page_rddata5 = eeprom_page_rddata[191:160];
    assign eeprom_page_rddata6 = eeprom_page_rddata[223:192];
    assign eeprom_page_rddata7 = eeprom_page_rddata[255:224];

    // EEP_DO
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            EEP_DO <= 32'h0;
        end else if (EEP_RE) begin
            case(OPB_ADDR[7:0])
                `EEP_BYTE_CONTROL: EEP_DO <= {eep_done_reg, 23'h0, eep_rddata_reg};
                `EEP_PAGE_CONTROL: EEP_DO <= {16'h0, eeprom_page_seq, 7'h0, eeprom_page_num};
                `EEP_PAGE_RDDATA0: EEP_DO <= eeprom_page_rddata0;
                `EEP_PAGE_RDDATA1: EEP_DO <= eeprom_page_rddata1;
                `EEP_PAGE_RDDATA2: EEP_DO <= eeprom_page_rddata2;
                `EEP_PAGE_RDDATA3: EEP_DO <= eeprom_page_rddata3;
                `EEP_PAGE_RDDATA4: EEP_DO <= eeprom_page_rddata4;
                `EEP_PAGE_RDDATA5: EEP_DO <= eeprom_page_rddata5;
                `EEP_PAGE_RDDATA6: EEP_DO <= eeprom_page_rddata6;
                `EEP_PAGE_RDDATA7: EEP_DO <= eeprom_page_rddata7;
                default: EEP_DO <= 32'h0;
            endcase
        end
    end

    //eeprom_write
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            eeprom_start        <= 1'b0;
            eeprom_addr         <= 16'h0;
            eeprom_wrdata       <= 8'h0;
            eeprom_inst         <= 4'h0;
            eeprom_page_seq     <= 1'b0;
            eeprom_page_num     <= 8'h0;
            eeprom_page_wrdata0 <= 32'h0;
            eeprom_page_wrdata1 <= 32'h0;
            eeprom_page_wrdata2 <= 32'h0;
            eeprom_page_wrdata3 <= 32'h0;
            eeprom_page_wrdata4 <= 32'h0;
            eeprom_page_wrdata5 <= 32'h0;
            eeprom_page_wrdata6 <= 32'h0;
            eeprom_page_wrdata7 <= 32'h0;
        end else if (EEP_WE) begin
            case (OPB_ADDR[7:0])
                `EEP_BYTE_CONTROL: begin
                    eeprom_start  <= 1'b1;
                    eeprom_addr   <= EEP_DI[23:8];
                    eeprom_wrdata <= EEP_DI[7:0];
                    eeprom_inst   <= EEP_DI[31:28];
                end
                `EEP_PAGE_CONTROL: begin
                    eeprom_page_num <= EEP_DI[7:0];
                    eeprom_page_seq <= EEP_DI[15];
                    // 修正：当bit 31为1时启动页操作
                    if (EEP_DI[31]) begin
                        eeprom_start <= 1'b1;
                        eeprom_inst  <= EEP_DI[30:27];
                    end
                end
                `EEP_PAGE_WRDATA0: eeprom_page_wrdata0 <= EEP_DI;
                `EEP_PAGE_WRDATA1: eeprom_page_wrdata1 <= EEP_DI;
                `EEP_PAGE_WRDATA2: eeprom_page_wrdata2 <= EEP_DI;
                `EEP_PAGE_WRDATA3: eeprom_page_wrdata3 <= EEP_DI;
                `EEP_PAGE_WRDATA4: eeprom_page_wrdata4 <= EEP_DI;
                `EEP_PAGE_WRDATA5: eeprom_page_wrdata5 <= EEP_DI;
                `EEP_PAGE_WRDATA6: eeprom_page_wrdata6 <= EEP_DI;
                `EEP_PAGE_WRDATA7: eeprom_page_wrdata7 <= EEP_DI;
                default: ; // Do nothing
            endcase
        end else begin
            eeprom_start <= 1'b0; // Clear start signal
        end
    end

    // Instantiate the EEPROM Interface Module
    serial_eeprom_if_v2 eeprom_if_0 (
        .reset(OPB_RST),
        .clk(OPB_CLK),
        .strobe_1us(strobe_1us),
        // for page write/read
        .eeprom_page_seq(eeprom_page_seq),
        .eeprom_page_wrdata(eeprom_page_wrdata),
        .eeprom_page_rddata(eeprom_page_rddata),
        .eeprom_page_num(eeprom_page_num),
        // for byte write/read
        .eeprom_addr(eeprom_addr),
        .eeprom_wrdata(eeprom_wrdata),
        .eeprom_rddata(eep_rddata),
        // control signals
        .eeprom_start(eeprom_start),
        .eeprom_done(eep_done),
        .eeprom_inst(eeprom_inst),
        .eeprom_en(1'b1),
        .eep_sdo(EEP_SO),
        .eep_sdi(EEP_SI),
        .eep_sclk(EEP_SCK),
        .eep_csn(EEP_CS_N)
    );

endmodule