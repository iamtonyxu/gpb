///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: ADDR_DECODER.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description: 
//
// <Description here>
//
// Targeted device: <Family> <Die> <Package>
// Author: <Name>
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 
`timescale 1ns / 1ps
`define COUNTER_ADDR	        32'h00000000		/* COUNTER address */
`define SP1_ADDR		        32'h00010000		/* Scratch Pad 1 address */
`define SP2_ADDR		        32'h00020000		/* Scratch Pad 2 address */
`define CLOCK_ADDR		        32'h00030000		/* CLOCK module address */
`define ILIM_DAC_ADDR           32'h00040000        /* ILIM address */
`define STD_CONT_ADDR           32'h00050000        /* Stand Cont IF - Digital Input address */
`define CCHL_IF_ADDR            32'h00050100        /* CCHL_IF - Digital Input address */
`define SER_PENDANT_ADDR        32'h00050200        /* Service Pendant - Digital Input address */
`define PWR_IF_ADDR             32'h00050300        /* Power IF - Digital Input address */
`define LIFT_MOT_SENS_ADDR      32'h00050400        /* Lift Motor Hall Sensor IF - Digital Input address */
`define SPD_DMD_IF_ADDR         32'h00050500        /* SPD_DMD_IF - Digital Input address */
`define GANTRY_MOT_SENS_ADDR    32'h00050600        /* Gantry Motor Sensor IF - Digital Input address */
`define SPD_EMOPS_IF            32'h00050700        /* SPD EMOPS IF - Digital Input address */
`define GPO_ADDR                32'h00060000        /* Digital Output address */
`define ADMUX_ADDR		        32'h00060100		/* AD_MUX ADDR */
`define ADSEL_ADDR		        32'h00060200		/* AD_SEL ADDR */
`define STS_ADDR		        32'h00060300        /* STS ADDR */
`define GANTRY_96V_IF_ADDR      32'h00060400        /* GANTRY 96V IF ADDR */
`define LIFT_96V_IF_ADDR  	    32'h00060500        /* LIFT 96V IF ADDR */
`define MOT_GPO_WE_ADDR         32'h00070000        /* MOT_GPO_WE_ADDR Addr */
`define ADC_ADDR		        32'h00080000		/* Analog to Digital converter address */
`define GANTRY_MOT_ADDR         32'h00090000        /* Gantry Motor address */
`define LIFT_MOT_ADDR           32'h000a0000        /* Lift Motor address */
`define EEP_ADDR		        32'h000b0000		/* EEPROM address */

`define COUNTER_SIZE	        32'h00000040		/* COUNTER size */
`define CLOCK_SIZE		        32'h00000028		/* CLOCK module size */
`define ILIM_DAC_SIZE           32'h00000020        /* ILIM size */
`define ADC_SIZE			    32'h00006000		/* Analog to Digital converter size */
`define GANTRY_MOT_SIZE         32'h00000004        /* Gantry Motor size    */
`define LIFT_MOT_SIZE           32'h00000008        /* Lift Motor size */

module AdderDecode(
    input           OPB_CLK,
    input           OPB_RST,
	input           DEC_RE,
	input           DEC_WE,
    input   [31:0]  DEC_ADDR,
    input   [31:0]  SP_IN,
    input   [31:0]  GPIO_IN,
    input   [31:0]  OSC_CT_IN,
    input   [31:0]  CLK_GEN_IN,
    input   [31:0]  ILIM_DAC_IN,
    input   [31:0]  ADC_IN,
    input   [31:0]  GANT_MOT_IN,
    input   [31:0]  LIFT_MOT_IN,
    input   [31:0]  EEP_IN,
	output          SP1_RE,
	output          SP1_WE,
	output          SP2_RE,
	output          SP2_WE,
    output          STD_CONT_RE,
    output          CCHL_IF_RE,
    output          SER_PENDANT_RE,
    output          PWR_IF_RE,
    output          LIFT_MOT_SENS_RE,
    output          SPD_DMD_IF_RE,
    output          GANTRY_MOT_SENS_RE,
    output          SPD_EMOPS_RE,
    output          GPO_RE,
    output          GPO_WE,
    output          ADMUX_RE,
    output          ADMUX_WE,
    output          ADSEL_RE,
    output          ADSEL_WE,
    output          STS_RE,
    output          STS_WE,
    output          GANTRY_96V_IF_RE,
    output          GANTRY_96V_IF_WE,
    output          LIFT_96V_IF_RE,
    output          LIFT_96V_IF_WE,
    output          MOT_GPO_WE,
    output          COUNTER_WE,
    output          COUNTER_RE,
    output          ILIM_DAC_WE,
    output          ILIM_DAC_RE,
    output          CLOCK_WE,
    output          CLOCK_RE,
    output          ADC_RE,
    output          ADC_WE,
    output          GANT_MOT_RE,
    output          GANT_MOT_WE,
    output          LIFT_MOT_RE,
    output          LIFT_MOT_WE,

    output          EEP_RE,
    output          EEP_WE,
    //output          WE_OUT,
    //output          RE_OUT,
    output  [5:0]   DATA_OUT,
    output  [31:0]  DEC_DO
    
   
);

    //Debug
    //reg         reout;
    reg [5:0]   dataout;
    //assign RE_OUT = reout;
    assign DATA_OUT = dataout;
    //End Debug

    // xxx_RE_d1
	reg          SP1_RE_d1;
	reg          SP2_RE_d1;
    reg          STD_CONT_RE_d1;
    reg          CCHL_IF_RE_d1;
    reg          SER_PENDANT_RE_d1;
    reg          PWR_IF_RE_d1;
    reg          LIFT_MOT_SENS_RE_d1;
    reg          SPD_DMD_IF_RE_d1;
    reg          GANTRY_MOT_SENS_RE_d1;
    reg          SPD_EMOPS_RE_d1;
    reg          GPO_RE_d1;
    reg          ADMUX_RE_d1;
    reg          ADSEL_RE_d1;
    reg          STS_RE_d1;
    reg          GANTRY_96V_IF_RE_d1;
    reg          LIFT_96V_IF_RE_d1;
    reg          COUNTER_RE_d1;
    reg          ILIM_DAC_RE_d1;
    reg          CLOCK_RE_d1;
    reg          ADC_RE_d1;
    reg          GANT_MOT_RE_d1;
    reg          LIFT_MOT_RE_d1;
    reg          EEP_RE_d1;
    reg          EEP_WE_d1;

    wire [19:0] dec_addr;
    assign dec_addr = DEC_ADDR;

	assign COUNTER_RE           = DEC_RE & (dec_addr >= `COUNTER_ADDR) & (dec_addr < (`COUNTER_ADDR+`COUNTER_SIZE));	
	assign COUNTER_WE           = DEC_WE & (dec_addr >= `COUNTER_ADDR) & (dec_addr < (`COUNTER_ADDR+`COUNTER_SIZE));

    
	assign CLOCK_WE             = DEC_WE & (dec_addr >= `CLOCK_ADDR) & (dec_addr < (`CLOCK_ADDR + `CLOCK_SIZE));
	assign CLOCK_RE             = DEC_RE & (dec_addr >= `CLOCK_ADDR) & (dec_addr < (`CLOCK_ADDR + `CLOCK_SIZE));

    
	assign ILIM_DAC_WE          = DEC_WE  & (dec_addr >= `ILIM_DAC_ADDR) & (dec_addr < (`ILIM_DAC_ADDR + `ILIM_DAC_SIZE));
	assign ILIM_DAC_RE          = DEC_RE  & (dec_addr >= `ILIM_DAC_ADDR) & (dec_addr < (`ILIM_DAC_ADDR + `ILIM_DAC_SIZE));

    
	assign SP1_RE               = DEC_RE & (dec_addr == `SP1_ADDR);
	assign SP1_WE               = DEC_WE & (dec_addr == `SP1_ADDR);

	assign SP2_RE               = DEC_RE & (dec_addr == `SP2_ADDR);
	assign SP2_WE               = DEC_WE & (dec_addr == `SP2_ADDR);

	assign ADC_RE               = DEC_RE & (dec_addr >= `ADC_ADDR) & (dec_addr < (`ADC_ADDR + `ADC_SIZE));
	assign ADC_WE               = DEC_WE & (dec_addr >= `ADC_ADDR) & (dec_addr < (`ADC_ADDR + `ADC_SIZE));

    assign GANT_MOT_RE          = DEC_RE & (dec_addr >= `GANTRY_MOT_ADDR) & (dec_addr < (`GANTRY_MOT_ADDR + `GANTRY_MOT_SIZE));
    assign GANT_MOT_WE          = DEC_WE & (dec_addr >= `GANTRY_MOT_ADDR) & (dec_addr < (`GANTRY_MOT_ADDR + `GANTRY_MOT_SIZE));

    assign LIFT_MOT_RE          = DEC_RE & (dec_addr >= `LIFT_MOT_ADDR) & (dec_addr < (`LIFT_MOT_ADDR + `LIFT_MOT_SIZE));
    assign LIFT_MOT_WE          = DEC_WE & (dec_addr >= `LIFT_MOT_ADDR) & (dec_addr < (`LIFT_MOT_ADDR + `LIFT_MOT_SIZE));
    
    assign STD_CONT_RE          = DEC_RE & (dec_addr == `STD_CONT_ADDR);
    assign CCHL_IF_RE           = DEC_RE & (dec_addr == `CCHL_IF_ADDR);
    assign SER_PENDANT_RE       = DEC_RE & (dec_addr == `SER_PENDANT_ADDR);
    assign PWR_IF_RE            = DEC_RE & (dec_addr == `PWR_IF_ADDR);
    assign LIFT_MOT_SENS_RE     = DEC_RE & (dec_addr == `LIFT_MOT_SENS_ADDR);
    assign SPD_DMD_IF_RE        = DEC_RE & (dec_addr == `SPD_DMD_IF_ADDR);
    assign GANTRY_MOT_SENS_RE   = DEC_RE & (dec_addr == `GANTRY_MOT_SENS_ADDR);
    assign SPD_EMOPS_RE         = DEC_RE & (dec_addr == `SPD_EMOPS_IF);

	assign GPO_RE               = DEC_RE & (dec_addr == `GPO_ADDR); 
	assign GPO_WE               = DEC_WE & (dec_addr == `GPO_ADDR);

    assign MOT_GPO_WE           = DEC_WE & (dec_addr == `MOT_GPO_WE_ADDR);

	assign ADMUX_RE             = DEC_RE & (dec_addr == `ADMUX_ADDR);
	assign ADMUX_WE             = DEC_WE & (dec_addr == `ADMUX_ADDR);

    
	assign ADSEL_RE             = DEC_RE & (dec_addr == `ADSEL_ADDR);
	assign ADSEL_WE             = DEC_WE & (dec_addr == `ADSEL_ADDR);
 
	assign STS_RE               = DEC_RE & (dec_addr == `STS_ADDR);
	assign STS_WE               = DEC_WE & (dec_addr == `STS_ADDR);

   
	assign GANTRY_96V_IF_RE     = DEC_RE & (dec_addr == `GANTRY_96V_IF_ADDR);
	assign GANTRY_96V_IF_WE     = DEC_WE & (dec_addr == `GANTRY_96V_IF_ADDR);

   
	assign LIFT_96V_IF_RE       = DEC_RE & (dec_addr == `LIFT_96V_IF_ADDR);
	assign LIFT_96V_IF_WE       = DEC_WE & (dec_addr == `LIFT_96V_IF_ADDR);

	assign EEP_RE               = DEC_RE & (dec_addr == `EEP_ADDR);
	assign EEP_WE               = DEC_WE & (dec_addr == `EEP_ADDR);

    always@(posedge OPB_CLK or posedge OPB_RST) begin
        if(OPB_RST) begin   
           dataout  <= 6'b0;
           //reout    <= 1'b0;

        end
        else if(SP1_RE) begin
            //reout <= SP1_RE;
            dataout <= GPIO_IN[5:0];
            
        end
        else if(SP2_RE) begin
            //reout <= SP2_RE;
            dataout <= GPIO_IN[5:0];
        end

    end	

    // xxx_d1
    always@(posedge OPB_CLK or posedge OPB_RST) begin
        if(OPB_RST) begin
            SP1_RE_d1           <= 0;
            SP2_RE_d1           <= 0;
            STD_CONT_RE_d1      <= 0;
            CCHL_IF_RE_d1       <= 0;
            SER_PENDANT_RE_d1   <= 0;
            PWR_IF_RE_d1        <= 0;
            LIFT_MOT_SENS_RE_d1 <= 0;
            SPD_DMD_IF_RE_d1    <= 0;
            GANTRY_MOT_SENS_RE_d1 <= 0;
            SPD_EMOPS_RE_d1     <= 0;
            GPO_RE_d1           <= 0;
            ADMUX_RE_d1         <= 0;
            ADSEL_RE_d1         <= 0;
            STS_RE_d1           <= 0;
            GANTRY_96V_IF_RE_d1 <= 0;
            LIFT_96V_IF_RE_d1   <= 0;
            COUNTER_RE_d1       <= 0;
            ILIM_DAC_RE_d1      <= 0;
            CLOCK_RE_d1         <= 0;
            ADC_RE_d1           <= 0;
            GANT_MOT_RE_d1      <= 0;
            LIFT_MOT_RE_d1      <= 0;
            EEP_RE_d1           <= 0;
            EEP_WE_d1           <= 0;
        end else begin
            SP1_RE_d1           <= SP1_RE;
            SP2_RE_d1           <= SP2_RE;
            STD_CONT_RE_d1      <= STD_CONT_RE;
            CCHL_IF_RE_d1       <= CCHL_IF_RE;
            SER_PENDANT_RE_d1   <= SER_PENDANT_RE;
            PWR_IF_RE_d1        <= PWR_IF_RE;
            LIFT_MOT_SENS_RE_d1 <= LIFT_MOT_SENS_RE;
            SPD_DMD_IF_RE_d1    <= SPD_DMD_IF_RE;
            GANTRY_MOT_SENS_RE_d1 <= GANTRY_MOT_SENS_RE;
            SPD_EMOPS_RE_d1     <= SPD_EMOPS_RE;
            GPO_RE_d1           <= GPO_RE;
            ADMUX_RE_d1         <= ADMUX_RE;
            ADSEL_RE_d1         <= ADSEL_RE;
            STS_RE_d1           <= STS_RE;
            GANTRY_96V_IF_RE_d1 <= GANTRY_96V_IF_RE;
            LIFT_96V_IF_RE_d1   <= LIFT_96V_IF_RE;
            COUNTER_RE_d1       <= COUNTER_RE;
            ILIM_DAC_RE_d1      <= ILIM_DAC_RE;
            CLOCK_RE_d1         <= CLOCK_RE;
            ADC_RE_d1           <= ADC_RE;
            GANT_MOT_RE_d1      <= GANT_MOT_RE;
            LIFT_MOT_RE_d1      <= LIFT_MOT_RE;
            EEP_RE_d1           <= EEP_RE;
            EEP_WE_d1           <= EEP_WE;
        end
    end

    // DEC_DO
/*
    always@(posedge OPB_CLK or posedge OPB_RST) begin
        if(OPB_RST) begin   
           DEC_DO  <= 32'b0; 
        end
        else if(SP1_RE_d1) begin
            DEC_DO <= SP_IN[31:0];
        end
        else if(SP2_RE_d1) begin
            DEC_DO <= SP_IN[31:0];
        end
        else if(GPO_RE_d1) begin
            DEC_DO <= GPIO_IN[31:0];
        end
        else if(ADC_RE_d1) begin
            DEC_DO <= ADC_IN[31:0];
        end
        else if(COUNTER_RE_d1) begin
            DEC_DO <= OSC_CT_IN[31:0];
        end
        else if(CLOCK_RE_d1) begin
            DEC_DO <= CLK_GEN_IN[31:0];
        end
        else if(ILIM_DAC_RE_d1) begin
            DEC_DO <= ILIM_DAC_IN[31:0];
        end
        else if(GANT_MOT_RE_d1) begin
            DEC_DO <= GANT_MOT_IN[31:0];
        end
        else if(LIFT_MOT_RE_d1) begin
            DEC_DO <= LIFT_MOT_IN[31:0];
        end
    end
*/

    assign DEC_DO   = (ILIM_DAC_RE_d1) ? ILIM_DAC_IN[31:0]         : 32'bz;
    assign DEC_DO   = (GANT_MOT_RE_d1) ? GANT_MOT_IN[31:0]         : 32'bz;
    assign DEC_DO   = (LIFT_MOT_RE_d1) ? LIFT_MOT_IN[31:0]         : 32'bz;
    assign DEC_DO   = (ADC_RE_d1)      ? ADC_IN[31:0]              : 32'bz;
    assign DEC_DO   = (COUNTER_RE_d1)  ? OSC_CT_IN[31:0]           : 32'bz; 
    assign DEC_DO   = (CLOCK_RE_d1)    ? CLK_GEN_IN[31:0]          : 32'bz; 
    assign DEC_DO   = (SP1_RE_d1)      ? SP_IN[31:0]               : 32'bz; 
    assign DEC_DO   = (SP2_RE_d1)      ? SP_IN[31:0]               : 32'bz;
    assign DEC_DO   = ((GPO_RE_d1) || (GANTRY_96V_IF_RE_d1) || (LIFT_96V_IF_RE_d1) || (STD_CONT_RE_d1) || (CCHL_IF_RE_d1) || (SER_PENDANT_RE_d1) || (PWR_IF_RE_d1) || (LIFT_MOT_SENS_RE_d1) || (SPD_DMD_IF_RE_d1) || (GANTRY_MOT_SENS_RE_d1) || (SPD_EMOPS_RE_d1) || (STS_RE_d1) || (ADMUX_RE_d1) || (ADSEL_RE_d1)) ? GPIO_IN[31:0]      : 32'bz;
    assign DEC_DO   = (EEP_RE_d1)      ? EEP_IN[31:0]              : 32'bz;

endmodule