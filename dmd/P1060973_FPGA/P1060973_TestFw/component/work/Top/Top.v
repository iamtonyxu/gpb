//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sat Apr 12 14:05:58 2025
// Version: 2024.2 2024.2.0.13
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// Top
module Top(
    // Inputs
    ADDR_DATA_SEL,
    AD_BUSY,
    AD_SDOUT,
    BYTE_SEL,
    CCHL_IF,
    CS,
    DMD_IO,
    GANT_MOT_SNS_IF,
    LIFT_MOT_SNS_IF,
    PCI_CLK2,
    PCI_RST,
    PWR_IF,
    RD_WR,
    RESET_N,
    SERVICE_PENDANT,
    SPD_DMD_IF,
    SPD_EMOPS_IF,
    STAND_CONT_IF,
    SYSCLK,
    // Outputs
    AD_CNVST,
    AD_MUX,
    AD_SCLK,
    AD_SEL,
    DATA_OUT,
    DMD_PWR_OK,
    EMOPS_STAT1,
    EMOPS_STAT2,
    EM_24V_EN,
    FAN_EN,
    FPGA_DONE,
    GANT_24V_PWR_EN,
    GANT_96V_BYPASS,
    GANT_96V_PWR_EN,
    GANT_BRK_RLS1,
    GANT_CURR_SAMP,
    GANT_MOT_DRV_EN,
    GANT_MOT_SHUNT_EN_N,
    GANT_PWM,
    GANT_SERIO_RST_N,
    GANT_SER_CLK,
    GANT_SER_DATA0,
    GANT_SER_DATA1,
    GANT_SER_SYNC,
    GANT_ST_DISB_MON,
    GNT_BRK_RLS,
    GNT_HALL_PWR_EN,
    GNT_HW_EN_MON,
    ILIM_DAC_CLK,
    ILIM_DAC_CS,
    ILIM_DAC_SDI,
    LAT_LNG_BRK_RLS,
    LFT_BRK_RLS,
    LIFT_24V_PWR_EN,
    LIFT_96V_BYPASS,
    LIFT_96V_PWR_EN,
    LIFT_BRK_OVRD_LED_CTRL,
    LIFT_CURR_SAMP,
    LIFT_HALL_PWR_EN,
    LIFT_HW_EN_MON,
    LIFT_MOT_DRV_EN,
    LIFT_MOT_SHUNT_EN_N,
    LIFT_PWM,
    LIFT_SERIO_RST_N,
    LIFT_SER_CLK,
    LIFT_SER_DATA0,
    LIFT_SER_DATA1,
    LIFT_SER_SYNC,
    LIFT_ST_DISB_MON,
    SPARE_MON,
    SPDIO_RST_N,
    STS,
    WD_OUT,
    // Inouts
    AD
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         ADDR_DATA_SEL;
input         AD_BUSY;
input         AD_SDOUT;
input  [2:0]  BYTE_SEL;
input  [4:0]  CCHL_IF;
input         CS;
input  [14:0] DMD_IO;
input  [4:0]  GANT_MOT_SNS_IF;
input  [3:0]  LIFT_MOT_SNS_IF;
input         PCI_CLK2;
input         PCI_RST;
input  [6:0]  PWR_IF;
input         RD_WR;
input         RESET_N;
input  [6:0]  SERVICE_PENDANT;
input  [4:0]  SPD_DMD_IF;
input  [4:0]  SPD_EMOPS_IF;
input  [5:0]  STAND_CONT_IF;
input         SYSCLK;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output        AD_CNVST;
output [3:0]  AD_MUX;
output        AD_SCLK;
output [2:0]  AD_SEL;
output [5:0]  DATA_OUT;
output        DMD_PWR_OK;
output        EMOPS_STAT1;
output        EMOPS_STAT2;
output        EM_24V_EN;
output        FAN_EN;
output        FPGA_DONE;
output        GANT_24V_PWR_EN;
output        GANT_96V_BYPASS;
output        GANT_96V_PWR_EN;
output        GANT_BRK_RLS1;
output        GANT_CURR_SAMP;
output        GANT_MOT_DRV_EN;
output        GANT_MOT_SHUNT_EN_N;
output [5:0]  GANT_PWM;
output        GANT_SERIO_RST_N;
output        GANT_SER_CLK;
output        GANT_SER_DATA0;
output        GANT_SER_DATA1;
output        GANT_SER_SYNC;
output        GANT_ST_DISB_MON;
output        GNT_BRK_RLS;
output        GNT_HALL_PWR_EN;
output        GNT_HW_EN_MON;
output        ILIM_DAC_CLK;
output        ILIM_DAC_CS;
output        ILIM_DAC_SDI;
output        LAT_LNG_BRK_RLS;
output        LFT_BRK_RLS;
output        LIFT_24V_PWR_EN;
output        LIFT_96V_BYPASS;
output        LIFT_96V_PWR_EN;
output        LIFT_BRK_OVRD_LED_CTRL;
output        LIFT_CURR_SAMP;
output        LIFT_HALL_PWR_EN;
output        LIFT_HW_EN_MON;
output        LIFT_MOT_DRV_EN;
output        LIFT_MOT_SHUNT_EN_N;
output [5:0]  LIFT_PWM;
output        LIFT_SERIO_RST_N;
output        LIFT_SER_CLK;
output        LIFT_SER_DATA0;
output        LIFT_SER_DATA1;
output        LIFT_SER_SYNC;
output        LIFT_ST_DISB_MON;
output        SPARE_MON;
output        SPDIO_RST_N;
output [7:0]  STS;
output        WD_OUT;
//--------------------------------------------------------------------
// Inout
//--------------------------------------------------------------------
inout  [7:0]  AD;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [7:0]  AD;
wire          AD_BUSY;
wire          AD_CNVST_net_0;
wire   [3:0]  AD_MUX_net_0;
wire          AD_SCLK_net_0;
wire          AD_SDOUT;
wire   [2:0]  AD_SEL_net_0;
wire   [31:0] ADC_AD7663AS_0_ADC_DO;
wire          AdderDecode_0_ADC_RE;
wire          AdderDecode_0_ADC_WE;
wire          AdderDecode_0_ADMUX_RE;
wire          AdderDecode_0_ADMUX_WE;
wire          AdderDecode_0_ADSEL_RE;
wire          AdderDecode_0_ADSEL_WE;
wire          AdderDecode_0_CCHL_IF_RE;
wire          AdderDecode_0_CLOCK_RE;
wire          AdderDecode_0_CLOCK_WE;
wire          AdderDecode_0_COUNTER_RE;
wire          AdderDecode_0_COUNTER_WE;
wire   [31:0] AdderDecode_0_DEC_DO;
wire          AdderDecode_0_GANT_MOT_RE;
wire          AdderDecode_0_GANT_MOT_WE;
wire          AdderDecode_0_GANTRY_96V_IF_RE;
wire          AdderDecode_0_GANTRY_96V_IF_WE;
wire          AdderDecode_0_GANTRY_MOT_SENS_RE;
wire          AdderDecode_0_GPO_RE;
wire          AdderDecode_0_GPO_WE;
wire          AdderDecode_0_ILIM_DAC_RE;
wire          AdderDecode_0_ILIM_DAC_WE;
wire          AdderDecode_0_LIFT_96V_IF_RE;
wire          AdderDecode_0_LIFT_96V_IF_WE;
wire          AdderDecode_0_LIFT_MOT_RE;
wire          AdderDecode_0_LIFT_MOT_SENS_RE;
wire          AdderDecode_0_LIFT_MOT_WE;
wire          AdderDecode_0_MOT_GPO_WE;
wire          AdderDecode_0_PWR_IF_RE;
wire          AdderDecode_0_SER_PENDANT_RE;
wire          AdderDecode_0_SP1_RE;
wire          AdderDecode_0_SP1_WE;
wire          AdderDecode_0_SP2_RE;
wire          AdderDecode_0_SP2_WE;
wire          AdderDecode_0_SPD_DMD_IF_RE;
wire          AdderDecode_0_SPD_EMOPS_RE;
wire          AdderDecode_0_STD_CONT_RE;
wire          AdderDecode_0_STS_RE;
wire          AdderDecode_0_STS_WE;
wire          ADDR_DATA_SEL;
wire   [2:0]  BYTE_SEL;
wire   [4:0]  CCHL_IF;
wire          CLK_16KHZ;
wire          ClkGen_0_CLK_2MHZ;
wire   [31:0] ClkGen_0_CLK_GEN_DO;
wire          ClkGen_0_PULSE_2KHZ;
wire          ClkGen_0_PULSE_20KHZ;
wire          ClkGen_0_PULSE_100US;
wire          ClkGen_0_PULSE_200KHZ;
wire          CS;
wire   [31:0] DAC_AD8803AR_0_DAC_DO;
wire   [5:0]  DATA_OUT_0;
wire   [14:0] DMD_IO;
wire          DMD_PWR_OK_net_0;
wire          EM_24V_EN_net_0;
wire          EMOPS_STAT1_net_0;
wire          EMOPS_STAT2_net_0;
wire          FAN_EN_net_0;
wire          FPGA_DONE_net_0;
wire          GANT_24V_PWR_EN_net_0;
wire          GANT_96V_BYPASS_net_0;
wire          GANT_96V_PWR_EN_net_0;
wire          GANT_BRK_RLS1_net_0;
wire          GANT_CURR_SAMP_net_0;
wire          GANT_MOT_DRV_EN_net_0;
wire          GANT_MOT_SHUNT_EN_N_net_0;
wire   [4:0]  GANT_MOT_SNS_IF;
wire   [5:0]  GANT_PWM_net_0;
wire          GANT_SER_CLK_net_0;
wire          GANT_SER_DATA0_net_0;
wire          GANT_SER_DATA1_net_0;
wire          GANT_SER_SYNC_net_0;
wire          GANT_SERIO_RST_N_net_0;
wire          GANT_ST_DISB_MON_net_0;
wire   [31:0] Gantry_Motor_0_GANT_MOT_DO;
wire          GNT_BRK_RLS_net_0;
wire          GNT_HALL_PWR_EN_net_0;
wire          GNT_HW_EN_MON_net_0;
wire   [31:0] GPIO_0_GPIO_DO;
wire          ILIM_DAC_CLK_net_0;
wire          ILIM_DAC_CS_net_0;
wire          ILIM_DAC_SDI_net_0;
wire          LAT_LNG_BRK_RLS_net_0;
wire          LFT_BRK_RLS_net_0;
wire          LIFT_24V_PWR_EN_net_0;
wire          LIFT_96V_BYPASS_net_0;
wire          LIFT_96V_PWR_EN_net_0;
wire          LIFT_BRK_OVRD_LED_CTRL_net_0;
wire          LIFT_CURR_SAMP_net_0;
wire          LIFT_HALL_PWR_EN_net_0;
wire          LIFT_HW_EN_MON_net_0;
wire          LIFT_MOT_DRV_EN_net_0;
wire          LIFT_MOT_SHUNT_EN_N_net_0;
wire   [3:0]  LIFT_MOT_SNS_IF;
wire   [31:0] Lift_Motor_0_LIFT_MOT_DO;
wire   [5:0]  LIFT_PWM_net_0;
wire          LIFT_SER_CLK_net_0;
wire          LIFT_SER_DATA0_net_0;
wire          LIFT_SER_DATA1_net_0;
wire          LIFT_SER_SYNC_net_0;
wire          LIFT_SERIO_RST_N_net_0;
wire          LIFT_ST_DISB_MON_net_0;
wire   [31:0] OSCILLATOR_COUNTER_0_OSC_CT_DO;
wire          PCI_CLK2;
wire   [31:0] PCI_EMU_TARGET_0_OPB_ADDR;
wire          PCI_EMU_TARGET_0_OPB_CLK;
wire   [31:0] PCI_EMU_TARGET_0_OPB_DO;
wire          PCI_EMU_TARGET_0_OPB_RE;
wire          PCI_EMU_TARGET_0_OPB_RST;
wire          PCI_EMU_TARGET_0_OPB_WE;
wire          PCI_RST;
wire   [6:0]  PWR_IF;
wire          RD_WR;
wire          RESET_N;
wire   [31:0] SCRATCH_PAD_REGISTER_0_SP_DO;
wire   [6:0]  SERVICE_PENDANT;
wire          SPARE_MON_net_0;
wire   [4:0]  SPD_DMD_IF;
wire   [4:0]  SPD_EMOPS_IF;
wire          SPDIO_RST_N_net_0;
wire   [5:0]  STAND_CONT_IF;
wire   [7:0]  STS_0;
wire          SYSCLK;
wire          WD_OUT_net_0;
wire          FPGA_DONE_net_1;
wire          GANT_96V_BYPASS_net_1;
wire          GANT_24V_PWR_EN_net_1;
wire          GANT_96V_PWR_EN_net_1;
wire          GANT_MOT_SHUNT_EN_N_net_1;
wire          LIFT_96V_BYPASS_net_1;
wire          LIFT_24V_PWR_EN_net_1;
wire          LIFT_96V_PWR_EN_net_1;
wire          LIFT_MOT_SHUNT_EN_N_net_1;
wire          GANT_SERIO_RST_N_net_1;
wire          GANT_SER_DATA1_net_1;
wire          GANT_SER_DATA0_net_1;
wire          GANT_SER_SYNC_net_1;
wire          GANT_SER_CLK_net_1;
wire          LIFT_SERIO_RST_N_net_1;
wire          LIFT_SER_DATA1_net_1;
wire          LIFT_SER_DATA0_net_1;
wire          LIFT_SER_SYNC_net_1;
wire          LIFT_SER_CLK_net_1;
wire          LIFT_BRK_OVRD_LED_CTRL_net_1;
wire          FAN_EN_net_1;
wire          LIFT_HALL_PWR_EN_net_1;
wire          SPDIO_RST_N_net_1;
wire          SPARE_MON_net_1;
wire          DMD_PWR_OK_net_1;
wire          GANT_ST_DISB_MON_net_1;
wire          LIFT_HW_EN_MON_net_1;
wire          LIFT_ST_DISB_MON_net_1;
wire          GNT_HW_EN_MON_net_1;
wire          GNT_HALL_PWR_EN_net_1;
wire          GNT_BRK_RLS_net_1;
wire          LFT_BRK_RLS_net_1;
wire          LAT_LNG_BRK_RLS_net_1;
wire          EMOPS_STAT2_net_1;
wire          EMOPS_STAT1_net_1;
wire          WD_OUT_net_1;
wire          ILIM_DAC_CLK_net_1;
wire          ILIM_DAC_SDI_net_1;
wire          ILIM_DAC_CS_net_1;
wire          AD_SCLK_net_1;
wire          AD_CNVST_net_1;
wire          GANT_MOT_DRV_EN_net_1;
wire          GANT_CURR_SAMP_net_1;
wire          LIFT_CURR_SAMP_net_1;
wire          LIFT_MOT_DRV_EN_net_1;
wire          EM_24V_EN_net_1;
wire          GANT_BRK_RLS1_net_1;
wire   [3:0]  AD_MUX_net_1;
wire   [2:0]  AD_SEL_net_1;
wire   [5:0]  GANT_PWM_net_1;
wire   [5:0]  LIFT_PWM_net_1;
wire   [7:0]  STS_0_net_0;
wire   [5:0]  DATA_OUT_0_net_0;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign FPGA_DONE_net_1              = FPGA_DONE_net_0;
assign FPGA_DONE                    = FPGA_DONE_net_1;
assign GANT_96V_BYPASS_net_1        = GANT_96V_BYPASS_net_0;
assign GANT_96V_BYPASS              = GANT_96V_BYPASS_net_1;
assign GANT_24V_PWR_EN_net_1        = GANT_24V_PWR_EN_net_0;
assign GANT_24V_PWR_EN              = GANT_24V_PWR_EN_net_1;
assign GANT_96V_PWR_EN_net_1        = GANT_96V_PWR_EN_net_0;
assign GANT_96V_PWR_EN              = GANT_96V_PWR_EN_net_1;
assign GANT_MOT_SHUNT_EN_N_net_1    = GANT_MOT_SHUNT_EN_N_net_0;
assign GANT_MOT_SHUNT_EN_N          = GANT_MOT_SHUNT_EN_N_net_1;
assign LIFT_96V_BYPASS_net_1        = LIFT_96V_BYPASS_net_0;
assign LIFT_96V_BYPASS              = LIFT_96V_BYPASS_net_1;
assign LIFT_24V_PWR_EN_net_1        = LIFT_24V_PWR_EN_net_0;
assign LIFT_24V_PWR_EN              = LIFT_24V_PWR_EN_net_1;
assign LIFT_96V_PWR_EN_net_1        = LIFT_96V_PWR_EN_net_0;
assign LIFT_96V_PWR_EN              = LIFT_96V_PWR_EN_net_1;
assign LIFT_MOT_SHUNT_EN_N_net_1    = LIFT_MOT_SHUNT_EN_N_net_0;
assign LIFT_MOT_SHUNT_EN_N          = LIFT_MOT_SHUNT_EN_N_net_1;
assign GANT_SERIO_RST_N_net_1       = GANT_SERIO_RST_N_net_0;
assign GANT_SERIO_RST_N             = GANT_SERIO_RST_N_net_1;
assign GANT_SER_DATA1_net_1         = GANT_SER_DATA1_net_0;
assign GANT_SER_DATA1               = GANT_SER_DATA1_net_1;
assign GANT_SER_DATA0_net_1         = GANT_SER_DATA0_net_0;
assign GANT_SER_DATA0               = GANT_SER_DATA0_net_1;
assign GANT_SER_SYNC_net_1          = GANT_SER_SYNC_net_0;
assign GANT_SER_SYNC                = GANT_SER_SYNC_net_1;
assign GANT_SER_CLK_net_1           = GANT_SER_CLK_net_0;
assign GANT_SER_CLK                 = GANT_SER_CLK_net_1;
assign LIFT_SERIO_RST_N_net_1       = LIFT_SERIO_RST_N_net_0;
assign LIFT_SERIO_RST_N             = LIFT_SERIO_RST_N_net_1;
assign LIFT_SER_DATA1_net_1         = LIFT_SER_DATA1_net_0;
assign LIFT_SER_DATA1               = LIFT_SER_DATA1_net_1;
assign LIFT_SER_DATA0_net_1         = LIFT_SER_DATA0_net_0;
assign LIFT_SER_DATA0               = LIFT_SER_DATA0_net_1;
assign LIFT_SER_SYNC_net_1          = LIFT_SER_SYNC_net_0;
assign LIFT_SER_SYNC                = LIFT_SER_SYNC_net_1;
assign LIFT_SER_CLK_net_1           = LIFT_SER_CLK_net_0;
assign LIFT_SER_CLK                 = LIFT_SER_CLK_net_1;
assign LIFT_BRK_OVRD_LED_CTRL_net_1 = LIFT_BRK_OVRD_LED_CTRL_net_0;
assign LIFT_BRK_OVRD_LED_CTRL       = LIFT_BRK_OVRD_LED_CTRL_net_1;
assign FAN_EN_net_1                 = FAN_EN_net_0;
assign FAN_EN                       = FAN_EN_net_1;
assign LIFT_HALL_PWR_EN_net_1       = LIFT_HALL_PWR_EN_net_0;
assign LIFT_HALL_PWR_EN             = LIFT_HALL_PWR_EN_net_1;
assign SPDIO_RST_N_net_1            = SPDIO_RST_N_net_0;
assign SPDIO_RST_N                  = SPDIO_RST_N_net_1;
assign SPARE_MON_net_1              = SPARE_MON_net_0;
assign SPARE_MON                    = SPARE_MON_net_1;
assign DMD_PWR_OK_net_1             = DMD_PWR_OK_net_0;
assign DMD_PWR_OK                   = DMD_PWR_OK_net_1;
assign GANT_ST_DISB_MON_net_1       = GANT_ST_DISB_MON_net_0;
assign GANT_ST_DISB_MON             = GANT_ST_DISB_MON_net_1;
assign LIFT_HW_EN_MON_net_1         = LIFT_HW_EN_MON_net_0;
assign LIFT_HW_EN_MON               = LIFT_HW_EN_MON_net_1;
assign LIFT_ST_DISB_MON_net_1       = LIFT_ST_DISB_MON_net_0;
assign LIFT_ST_DISB_MON             = LIFT_ST_DISB_MON_net_1;
assign GNT_HW_EN_MON_net_1          = GNT_HW_EN_MON_net_0;
assign GNT_HW_EN_MON                = GNT_HW_EN_MON_net_1;
assign GNT_HALL_PWR_EN_net_1        = GNT_HALL_PWR_EN_net_0;
assign GNT_HALL_PWR_EN              = GNT_HALL_PWR_EN_net_1;
assign GNT_BRK_RLS_net_1            = GNT_BRK_RLS_net_0;
assign GNT_BRK_RLS                  = GNT_BRK_RLS_net_1;
assign LFT_BRK_RLS_net_1            = LFT_BRK_RLS_net_0;
assign LFT_BRK_RLS                  = LFT_BRK_RLS_net_1;
assign LAT_LNG_BRK_RLS_net_1        = LAT_LNG_BRK_RLS_net_0;
assign LAT_LNG_BRK_RLS              = LAT_LNG_BRK_RLS_net_1;
assign EMOPS_STAT2_net_1            = EMOPS_STAT2_net_0;
assign EMOPS_STAT2                  = EMOPS_STAT2_net_1;
assign EMOPS_STAT1_net_1            = EMOPS_STAT1_net_0;
assign EMOPS_STAT1                  = EMOPS_STAT1_net_1;
assign WD_OUT_net_1                 = WD_OUT_net_0;
assign WD_OUT                       = WD_OUT_net_1;
assign ILIM_DAC_CLK_net_1           = ILIM_DAC_CLK_net_0;
assign ILIM_DAC_CLK                 = ILIM_DAC_CLK_net_1;
assign ILIM_DAC_SDI_net_1           = ILIM_DAC_SDI_net_0;
assign ILIM_DAC_SDI                 = ILIM_DAC_SDI_net_1;
assign ILIM_DAC_CS_net_1            = ILIM_DAC_CS_net_0;
assign ILIM_DAC_CS                  = ILIM_DAC_CS_net_1;
assign AD_SCLK_net_1                = AD_SCLK_net_0;
assign AD_SCLK                      = AD_SCLK_net_1;
assign AD_CNVST_net_1               = AD_CNVST_net_0;
assign AD_CNVST                     = AD_CNVST_net_1;
assign GANT_MOT_DRV_EN_net_1        = GANT_MOT_DRV_EN_net_0;
assign GANT_MOT_DRV_EN              = GANT_MOT_DRV_EN_net_1;
assign GANT_CURR_SAMP_net_1         = GANT_CURR_SAMP_net_0;
assign GANT_CURR_SAMP               = GANT_CURR_SAMP_net_1;
assign LIFT_CURR_SAMP_net_1         = LIFT_CURR_SAMP_net_0;
assign LIFT_CURR_SAMP               = LIFT_CURR_SAMP_net_1;
assign LIFT_MOT_DRV_EN_net_1        = LIFT_MOT_DRV_EN_net_0;
assign LIFT_MOT_DRV_EN              = LIFT_MOT_DRV_EN_net_1;
assign EM_24V_EN_net_1              = EM_24V_EN_net_0;
assign EM_24V_EN                    = EM_24V_EN_net_1;
assign GANT_BRK_RLS1_net_1          = GANT_BRK_RLS1_net_0;
assign GANT_BRK_RLS1                = GANT_BRK_RLS1_net_1;
assign AD_MUX_net_1                 = AD_MUX_net_0;
assign AD_MUX[3:0]                  = AD_MUX_net_1;
assign AD_SEL_net_1                 = AD_SEL_net_0;
assign AD_SEL[2:0]                  = AD_SEL_net_1;
assign GANT_PWM_net_1               = GANT_PWM_net_0;
assign GANT_PWM[5:0]                = GANT_PWM_net_1;
assign LIFT_PWM_net_1               = LIFT_PWM_net_0;
assign LIFT_PWM[5:0]                = LIFT_PWM_net_1;
assign STS_0_net_0                  = STS_0;
assign STS[7:0]                     = STS_0_net_0;
assign DATA_OUT_0_net_0             = DATA_OUT_0;
assign DATA_OUT[5:0]                = DATA_OUT_0_net_0;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------ADC_AD7663AS
ADC_AD7663AS ADC_AD7663AS_0(
        // Inputs
        .ADC_RE   ( AdderDecode_0_ADC_RE ),
        .ADC_WE   ( AdderDecode_0_ADC_WE ),
        .OPB_CLK  ( PCI_EMU_TARGET_0_OPB_CLK ),
        .OPB_RST  ( PCI_EMU_TARGET_0_OPB_RST ),
        .SYSCLK   ( SYSCLK ),
        .AD_SDOUT ( AD_SDOUT ),
        .AD_BUSY  ( AD_BUSY ),
        .ADC_DI   ( PCI_EMU_TARGET_0_OPB_DO ),
        .ADC_ADDR ( PCI_EMU_TARGET_0_OPB_ADDR ),
        // Outputs
        .AD_CNVST ( AD_CNVST_net_0 ),
        .AD_SCLK  ( AD_SCLK_net_0 ),
        .ADC_DO   ( ADC_AD7663AS_0_ADC_DO ) 
        );

//--------AdderDecode
AdderDecode AdderDecode_0(
        // Inputs
        .OPB_CLK            ( PCI_EMU_TARGET_0_OPB_CLK ),
        .OPB_RST            ( PCI_EMU_TARGET_0_OPB_RST ),
        .DEC_RE             ( PCI_EMU_TARGET_0_OPB_RE ),
        .DEC_WE             ( PCI_EMU_TARGET_0_OPB_WE ),
        .DEC_ADDR           ( PCI_EMU_TARGET_0_OPB_ADDR ),
        .SP_IN              ( SCRATCH_PAD_REGISTER_0_SP_DO ),
        .GPIO_IN            ( GPIO_0_GPIO_DO ),
        .OSC_CT_IN          ( OSCILLATOR_COUNTER_0_OSC_CT_DO ),
        .CLK_GEN_IN         ( ClkGen_0_CLK_GEN_DO ),
        .ILIM_DAC_IN        ( DAC_AD8803AR_0_DAC_DO ),
        .ADC_IN             ( ADC_AD7663AS_0_ADC_DO ),
        .GANT_MOT_IN        ( Gantry_Motor_0_GANT_MOT_DO ),
        .LIFT_MOT_IN        ( Lift_Motor_0_LIFT_MOT_DO ),
        // Outputs
        .SP1_RE             ( AdderDecode_0_SP1_RE ),
        .SP1_WE             ( AdderDecode_0_SP1_WE ),
        .SP2_RE             ( AdderDecode_0_SP2_RE ),
        .SP2_WE             ( AdderDecode_0_SP2_WE ),
        .STD_CONT_RE        ( AdderDecode_0_STD_CONT_RE ),
        .CCHL_IF_RE         ( AdderDecode_0_CCHL_IF_RE ),
        .SER_PENDANT_RE     ( AdderDecode_0_SER_PENDANT_RE ),
        .PWR_IF_RE          ( AdderDecode_0_PWR_IF_RE ),
        .LIFT_MOT_SENS_RE   ( AdderDecode_0_LIFT_MOT_SENS_RE ),
        .SPD_DMD_IF_RE      ( AdderDecode_0_SPD_DMD_IF_RE ),
        .GANTRY_MOT_SENS_RE ( AdderDecode_0_GANTRY_MOT_SENS_RE ),
        .SPD_EMOPS_RE       ( AdderDecode_0_SPD_EMOPS_RE ),
        .GPO_RE             ( AdderDecode_0_GPO_RE ),
        .GPO_WE             ( AdderDecode_0_GPO_WE ),
        .ADMUX_RE           ( AdderDecode_0_ADMUX_RE ),
        .ADMUX_WE           ( AdderDecode_0_ADMUX_WE ),
        .ADSEL_RE           ( AdderDecode_0_ADSEL_RE ),
        .ADSEL_WE           ( AdderDecode_0_ADSEL_WE ),
        .STS_RE             ( AdderDecode_0_STS_RE ),
        .STS_WE             ( AdderDecode_0_STS_WE ),
        .GANTRY_96V_IF_RE   ( AdderDecode_0_GANTRY_96V_IF_RE ),
        .GANTRY_96V_IF_WE   ( AdderDecode_0_GANTRY_96V_IF_WE ),
        .LIFT_96V_IF_RE     ( AdderDecode_0_LIFT_96V_IF_RE ),
        .LIFT_96V_IF_WE     ( AdderDecode_0_LIFT_96V_IF_WE ),
        .MOT_GPO_WE         ( AdderDecode_0_MOT_GPO_WE ),
        .COUNTER_WE         ( AdderDecode_0_COUNTER_WE ),
        .COUNTER_RE         ( AdderDecode_0_COUNTER_RE ),
        .ILIM_DAC_WE        ( AdderDecode_0_ILIM_DAC_WE ),
        .ILIM_DAC_RE        ( AdderDecode_0_ILIM_DAC_RE ),
        .CLOCK_WE           ( AdderDecode_0_CLOCK_WE ),
        .CLOCK_RE           ( AdderDecode_0_CLOCK_RE ),
        .ADC_RE             ( AdderDecode_0_ADC_RE ),
        .ADC_WE             ( AdderDecode_0_ADC_WE ),
        .GANT_MOT_RE        ( AdderDecode_0_GANT_MOT_RE ),
        .GANT_MOT_WE        ( AdderDecode_0_GANT_MOT_WE ),
        .LIFT_MOT_RE        ( AdderDecode_0_LIFT_MOT_RE ),
        .LIFT_MOT_WE        ( AdderDecode_0_LIFT_MOT_WE ),
        .DATA_OUT           ( DATA_OUT_0 ),
        .DEC_DO             ( AdderDecode_0_DEC_DO ) 
        );

//--------ClkGen
ClkGen ClkGen_0(
        // Inputs
        .CLK_GEN_RE   ( AdderDecode_0_CLOCK_RE ),
        .CLK_GEN_WE   ( AdderDecode_0_CLOCK_WE ),
        .OPB_CLK      ( PCI_EMU_TARGET_0_OPB_CLK ),
        .OPB_RST      ( PCI_EMU_TARGET_0_OPB_RST ),
        .SYSCLK       ( SYSCLK ),
        .CLK_GEN_DI   ( PCI_EMU_TARGET_0_OPB_DO ),
        .OPB_ADDR     ( PCI_EMU_TARGET_0_OPB_ADDR ),
        // Outputs
        .PULSE_200KHZ ( ClkGen_0_PULSE_200KHZ ),
        .PULSE_20KHZ  ( ClkGen_0_PULSE_20KHZ ),
        .PULSE_2KHZ   ( ClkGen_0_PULSE_2KHZ ),
        .PULSE_100US  ( ClkGen_0_PULSE_100US ),
        .CLK_16KHZ    ( CLK_16KHZ ),
        .CLK_2MHZ     ( ClkGen_0_CLK_2MHZ ),
        .CLK_GEN_DO   ( ClkGen_0_CLK_GEN_DO ) 
        );

//--------DAC_AD8803AR
DAC_AD8803AR DAC_AD8803AR_0(
        // Inputs
        .DAC_RE       ( AdderDecode_0_ILIM_DAC_RE ),
        .DAC_WE       ( AdderDecode_0_ILIM_DAC_WE ),
        .OPB_CLK      ( PCI_EMU_TARGET_0_OPB_CLK ),
        .OPB_RST      ( PCI_EMU_TARGET_0_OPB_RST ),
        .SYSCLK       ( SYSCLK ),
        .DAC_DI       ( PCI_EMU_TARGET_0_OPB_DO ),
        .OPB_ADDR     ( PCI_EMU_TARGET_0_OPB_ADDR ),
        // Outputs
        .ILIM_DAC_CLK ( ILIM_DAC_CLK_net_0 ),
        .ILIM_DAC_SDI ( ILIM_DAC_SDI_net_0 ),
        .ILIM_DAC_CS  ( ILIM_DAC_CS_net_0 ),
        .DAC_DO       ( DAC_AD8803AR_0_DAC_DO ) 
        );

//--------FPGA_WDI
FPGA_WDI FPGA_WDI_0(
        // Inputs
        .OPB_CLK     ( PCI_EMU_TARGET_0_OPB_CLK ),
        .PULSE_100US ( ClkGen_0_PULSE_100US ),
        .OPB_RST     ( PCI_EMU_TARGET_0_OPB_RST ),
        // Outputs
        .WD_OUT      ( WD_OUT_net_0 ) 
        );

//--------Gantry_Motor
Gantry_Motor Gantry_Motor_0(
        // Inputs
        .GANT_MOT_RE     ( AdderDecode_0_GANT_MOT_RE ),
        .GANT_MOT_WE     ( AdderDecode_0_GANT_MOT_WE ),
        .OPB_CLK         ( PCI_EMU_TARGET_0_OPB_CLK ),
        .OPB_RST         ( PCI_EMU_TARGET_0_OPB_RST ),
        .SYSCLK          ( SYSCLK ),
        .CLK_200KHZ      ( ClkGen_0_PULSE_200KHZ ),
        .CLK_20KHZ       ( ClkGen_0_PULSE_20KHZ ),
        .CLK_2KHZ        ( ClkGen_0_PULSE_2KHZ ),
        .GANT_MOT_DI     ( PCI_EMU_TARGET_0_OPB_DO ),
        .GANT_ADDR       ( PCI_EMU_TARGET_0_OPB_ADDR ),
        // Outputs
        .GANT_MOT_DRV_EN ( GANT_MOT_DRV_EN_net_0 ),
        .GANT_CURR_SAMP  ( GANT_CURR_SAMP_net_0 ),
        .GANT_MOT_DO     ( Gantry_Motor_0_GANT_MOT_DO ),
        .GANT_PWM        ( GANT_PWM_net_0 ) 
        );

//--------GPIO
GPIO GPIO_0(
        // Inputs
        .OPB_CLK                ( PCI_EMU_TARGET_0_OPB_CLK ),
        .OPB_RST                ( PCI_EMU_TARGET_0_OPB_RST ),
        .STD_CONT_RE            ( AdderDecode_0_STD_CONT_RE ),
        .CCHL_IF_RE             ( AdderDecode_0_CCHL_IF_RE ),
        .SER_PENDANT_RE         ( AdderDecode_0_SER_PENDANT_RE ),
        .PWR_IF_RE              ( AdderDecode_0_PWR_IF_RE ),
        .LIFT_MOT_SENS_RE       ( AdderDecode_0_LIFT_MOT_SENS_RE ),
        .SPD_DMD_IF_RE          ( AdderDecode_0_SPD_DMD_IF_RE ),
        .GANTRY_MOT_SENS_RE     ( AdderDecode_0_GANTRY_MOT_SENS_RE ),
        .SPD_EMOPS_RE           ( AdderDecode_0_SPD_EMOPS_RE ),
        .GPO_RE                 ( AdderDecode_0_GPO_RE ),
        .GPO_WE                 ( AdderDecode_0_GPO_WE ),
        .ADMUX_RE               ( AdderDecode_0_ADMUX_RE ),
        .ADMUX_WE               ( AdderDecode_0_ADMUX_WE ),
        .ADSEL_RE               ( AdderDecode_0_ADSEL_RE ),
        .ADSEL_WE               ( AdderDecode_0_ADSEL_WE ),
        .STS_RE                 ( AdderDecode_0_STS_RE ),
        .STS_WE                 ( AdderDecode_0_STS_WE ),
        .GANTRY_96V_IF_RE       ( AdderDecode_0_GANTRY_96V_IF_RE ),
        .GANTRY_96V_IF_WE       ( AdderDecode_0_GANTRY_96V_IF_WE ),
        .LIFT_96V_IF_RE         ( AdderDecode_0_LIFT_96V_IF_RE ),
        .LIFT_96V_IF_WE         ( AdderDecode_0_LIFT_96V_IF_WE ),
        .MOT_GPO_WE             ( AdderDecode_0_MOT_GPO_WE ),
        .GPIO_DI                ( PCI_EMU_TARGET_0_OPB_DO ),
        .GPIO_ADDR              ( PCI_EMU_TARGET_0_OPB_ADDR ),
        .DMD_IO                 ( DMD_IO ),
        .STAND_CONT_IF          ( STAND_CONT_IF ),
        .CCHL_IF                ( CCHL_IF ),
        .SERVICE_PENDANT        ( SERVICE_PENDANT ),
        .PWR_IF                 ( PWR_IF ),
        .LIFT_MOT_SNS_IF        ( LIFT_MOT_SNS_IF ),
        .SPD_DMD_IF             ( SPD_DMD_IF ),
        .GANT_MOT_SNS_IF        ( GANT_MOT_SNS_IF ),
        .SPD_EMOPS_IF           ( SPD_EMOPS_IF ),
        // Outputs
        .FPGA_DONE              ( FPGA_DONE_net_0 ),
        .GANT_96V_BYPASS        ( GANT_96V_BYPASS_net_0 ),
        .GANT_24V_PWR_EN        ( GANT_24V_PWR_EN_net_0 ),
        .GANT_96V_PWR_EN        ( GANT_96V_PWR_EN_net_0 ),
        .GANT_MOT_SHUNT_EN_N    ( GANT_MOT_SHUNT_EN_N_net_0 ),
        .LIFT_96V_BYPASS        ( LIFT_96V_BYPASS_net_0 ),
        .LIFT_24V_PWR_EN        ( LIFT_24V_PWR_EN_net_0 ),
        .LIFT_96V_PWR_EN        ( LIFT_96V_PWR_EN_net_0 ),
        .LIFT_MOT_SHUNT_EN_N    ( LIFT_MOT_SHUNT_EN_N_net_0 ),
        .GANT_SERIO_RST_N       ( GANT_SERIO_RST_N_net_0 ),
        .GANT_SER_DATA1         ( GANT_SER_DATA1_net_0 ),
        .GANT_SER_DATA0         ( GANT_SER_DATA0_net_0 ),
        .GANT_SER_SYNC          ( GANT_SER_SYNC_net_0 ),
        .GANT_SER_CLK           ( GANT_SER_CLK_net_0 ),
        .LIFT_SERIO_RST_N       ( LIFT_SERIO_RST_N_net_0 ),
        .LIFT_SER_DATA1         ( LIFT_SER_DATA1_net_0 ),
        .LIFT_SER_DATA0         ( LIFT_SER_DATA0_net_0 ),
        .LIFT_SER_SYNC          ( LIFT_SER_SYNC_net_0 ),
        .LIFT_SER_CLK           ( LIFT_SER_CLK_net_0 ),
        .LIFT_BRK_OVRD_LED_CTRL ( LIFT_BRK_OVRD_LED_CTRL_net_0 ),
        .FAN_EN                 ( FAN_EN_net_0 ),
        .LIFT_HALL_PWR_EN       ( LIFT_HALL_PWR_EN_net_0 ),
        .SPDIO_RST_N            ( SPDIO_RST_N_net_0 ),
        .SPARE_MON              ( SPARE_MON_net_0 ),
        .DMD_PWR_OK             ( DMD_PWR_OK_net_0 ),
        .GANT_ST_DISB_MON       ( GANT_ST_DISB_MON_net_0 ),
        .LIFT_HW_EN_MON         ( LIFT_HW_EN_MON_net_0 ),
        .LIFT_ST_DISB_MON       ( LIFT_ST_DISB_MON_net_0 ),
        .GNT_HW_EN_MON          ( GNT_HW_EN_MON_net_0 ),
        .GNT_HALL_PWR_EN        ( GNT_HALL_PWR_EN_net_0 ),
        .GNT_BRK_RLS            ( GNT_BRK_RLS_net_0 ),
        .LFT_BRK_RLS            ( LFT_BRK_RLS_net_0 ),
        .LAT_LNG_BRK_RLS        ( LAT_LNG_BRK_RLS_net_0 ),
        .EMOPS_STAT2            ( EMOPS_STAT2_net_0 ),
        .EMOPS_STAT1            ( EMOPS_STAT1_net_0 ),
        .EM_24V_EN              ( EM_24V_EN_net_0 ),
        .GANT_BRK_RLS1          ( GANT_BRK_RLS1_net_0 ),
        .AD_MUX                 ( AD_MUX_net_0 ),
        .AD_SEL                 ( AD_SEL_net_0 ),
        .STS                    ( STS_0 ),
        .GPIO_DO                ( GPIO_0_GPIO_DO ) 
        );

//--------Lift_Motor
Lift_Motor Lift_Motor_0(
        // Inputs
        .LIFT_MOT_RE     ( AdderDecode_0_LIFT_MOT_RE ),
        .LIFT_MOT_WE     ( AdderDecode_0_LIFT_MOT_WE ),
        .OPB_CLK         ( PCI_EMU_TARGET_0_OPB_CLK ),
        .OPB_RST         ( PCI_EMU_TARGET_0_OPB_RST ),
        .SYSCLK          ( SYSCLK ),
        .CLK_200KHZ      ( ClkGen_0_PULSE_200KHZ ),
        .CLK_20KHZ       ( ClkGen_0_PULSE_20KHZ ),
        .CLK_2KHZ        ( ClkGen_0_PULSE_2KHZ ),
        .LIFT_MOT_DI     ( PCI_EMU_TARGET_0_OPB_DO ),
        .LIFT_ADDR       ( PCI_EMU_TARGET_0_OPB_ADDR ),
        // Outputs
        .LIFT_MOT_DRV_EN ( LIFT_MOT_DRV_EN_net_0 ),
        .LIFT_CURR_SAMP  ( LIFT_CURR_SAMP_net_0 ),
        .LIFT_MOT_DO     ( Lift_Motor_0_LIFT_MOT_DO ),
        .LIFT_PWM        ( LIFT_PWM_net_0 ) 
        );

//--------OSCILLATOR_COUNTER
OSCILLATOR_COUNTER OSCILLATOR_COUNTER_0(
        // Inputs
        .OSC_CT_RE ( AdderDecode_0_COUNTER_RE ),
        .OSC_CT_WE ( AdderDecode_0_COUNTER_WE ),
        .OPB_CLK   ( PCI_EMU_TARGET_0_OPB_CLK ),
        .OPB_RST   ( PCI_EMU_TARGET_0_OPB_RST ),
        .SYSCLK    ( ClkGen_0_CLK_2MHZ ),
        .REF_CLK   ( CLK_16KHZ ),
        .OSC_CT_DI ( PCI_EMU_TARGET_0_OPB_DO ),
        .OPB_ADDR  ( PCI_EMU_TARGET_0_OPB_ADDR ),
        // Outputs
        .OSC_CT_DO ( OSCILLATOR_COUNTER_0_OSC_CT_DO ) 
        );

//--------PCI_EMU_TARGET
PCI_EMU_TARGET PCI_EMU_TARGET_0(
        // Inputs
        .PCI_CLK2      ( PCI_CLK2 ),
        .ADDR_DATA_SEL ( ADDR_DATA_SEL ),
        .CS            ( CS ),
        .RD_WR         ( RD_WR ),
        .PCI_RST       ( PCI_RST ),
        .RESET_N       ( RESET_N ),
        .BYTE_SEL      ( BYTE_SEL ),
        .OPB_DI        ( AdderDecode_0_DEC_DO ),
        // Outputs
        .OPB_RE        ( PCI_EMU_TARGET_0_OPB_RE ),
        .OPB_WE        ( PCI_EMU_TARGET_0_OPB_WE ),
        .OPB_CLK       ( PCI_EMU_TARGET_0_OPB_CLK ),
        .OPB_RST       ( PCI_EMU_TARGET_0_OPB_RST ),
        .OPB_DO        ( PCI_EMU_TARGET_0_OPB_DO ),
        .OPB_ADDR      ( PCI_EMU_TARGET_0_OPB_ADDR ),
        // Inouts
        .AD            ( AD ) 
        );

//--------SCRATCH_PAD_REGISTER
SCRATCH_PAD_REGISTER SCRATCH_PAD_REGISTER_0(
        // Inputs
        .OPB_CLK ( PCI_EMU_TARGET_0_OPB_CLK ),
        .OPB_RST ( PCI_EMU_TARGET_0_OPB_RST ),
        .SP1_RE  ( AdderDecode_0_SP1_RE ),
        .SP1_WE  ( AdderDecode_0_SP1_WE ),
        .SP2_RE  ( AdderDecode_0_SP2_RE ),
        .SP2_WE  ( AdderDecode_0_SP2_WE ),
        .SP_DI   ( PCI_EMU_TARGET_0_OPB_DO ),
        // Outputs
        .SP_DO   ( SCRATCH_PAD_REGISTER_0_SP_DO ) 
        );


endmodule
