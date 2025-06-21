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
`include "Addr_definition.v"

module AdderDecode(
    // OPB signals
    input           OPB_CLK,
    input           OPB_RST,
    input           DEC_RE,
    input           DEC_WE,
    input   [31:0]  DEC_ADDR,
    output  [31:0]  DEC_DO,

    // OPB Output from other modules
    input   [31:0]  OSC_CT_IN,
    input   [31:0]  SP_IN,
    input   [31:0]  CLK_GEN_IN,
    input   [31:0]  ILIM_DAC_IN,
    input   [31:0]  ADC_IN,
    input   [31:0]  GANTRY_MOT_IN,
    input   [31:0]  GANTRY_BRK1_IN,
    input   [31:0]  GANTRY_BRK2_IN,
    input   [31:0]  GANTRY_BRK3_IN,
    input   [31:0]  GANTRY_BRK1_RET_IN,
    input   [31:0]  GANTRY_BRK2_RET_IN,
    input   [31:0]  GANTRY_BRK3_RET_IN,
    input   [31:0]  LIFT_MOT_IN,
    input   [31:0]  MSSB_STN_IN,
    input   [31:0]  MSSB_SRV_IN,
    input   [31:0]  EEP_IN,
    input   [31:0]  GPIO_IN,

    // OPB RE/WE signals
    output          COUNTER_WE,
    output          COUNTER_RE,
    output          SP1_RE,
    output          SP1_WE,
    output          SP2_RE,
    output          SP2_WE,
    output          CLOCK_WE,
    output          CLOCK_RE,
    output          ILIM_DAC_WE,
    output          ILIM_DAC_RE,
    output          ADC_RE,
    output          ADC_WE,
    output          GANTRY_MOT_IF_RE,
    output          GANTRY_MOT_IF_WE,
    output          GANTRY_BRK1_IF_RE,
    output          GANTRY_BRK1_IF_WE,
    output          GANTRY_BRK2_IF_RE,
    output          GANTRY_BRK2_IF_WE,
    output          GANTRY_BRK3_IF_RE,
    output          GANTRY_BRK3_IF_WE,
    output          GANTRY_BRK1_RET_IF_RE,
    output          GANTRY_BRK1_RET_IF_WE,
    output          GANTRY_BRK2_RET_IF_RE,
    output          GANTRY_BRK2_RET_IF_WE,
    output          GANTRY_BRK3_RET_IF_RE,
    output          GANTRY_BRK3_RET_IF_WE,
    output          LIFT_MOT_IF_RE,
    output          LIFT_MOT_IF_WE,
    output          MSSB_STN_RE,
    output          MSSB_STN_WE,
    output          MSSB_SRV_RE,
    output          MSSB_SRV_WE,
    output          EEP_RE,
    output          EEP_WE,

    output          PWR_IF_RE,
    output          PWR_IF_WE,
    output          GANTRY_EMOPS_IF_RE,
    output          GANTRY_EMOPS_IF_WE,
    output          GANTRY_96V_IF_RE,
    output          GANTRY_96V_IF_WE,
    output          GANTRY_BRAKE_IF_RE,
    output          GANTRY_BRAKE_IF_WE,
    output          SPD_DMD_IF_RE,
    output          SPD_DMD_IF_WE,
    output          SPD_EMOPS_IF_RE,
    output          SPD_EMOPS_IF_WE,
    output          LIFT_MOTOR_SENSOR_IF_RE,
    output          LIFT_MOTOR_SENSOR_IF_WE,
    output          LIFT_96V_IF_RE,
    output          LIFT_96V_IF_WE,
    output          STAND_IF_RE,
    output          STAND_IF_WE,
    output          SERVICE_PENDANT_IF_RE,
    output          SERVICE_PENDANT_IF_WE,
    output          MAINS_LEVEL_IF_RE,
    output          MAINS_LEVEL_IF_WE,
    output          EXT_BRAKE_IF_RE,
    output          EXT_BRAKE_IF_WE,
    output          CCHL_IF_RE,
    output          CCHL_IF_WE,
    output          ADCSELMUX_IF_RE,
    output          ADCSELMUX_IF_WE,
    output          DEBUG_IF_RE,
    output          DEBUG_IF_WE,
    output          GPIO_FREE_IF_RE,
    output          GPIO_FREE_IF_WE,
    output          SHUNT_EN_CNT_RE,
    output          SHUNT_EN_CNT_WE
);

    // xxx_RE_d1
    reg COUNTER_RE_d1;
    reg SP1_RE_d1;
    reg SP2_RE_d1;
    reg CLOCK_RE_d1;
    reg ILIM_DAC_RE_d1;
    reg ADC_RE_d1;
    reg GANTRY_MOT_IF_RE_d1;
    reg LIFT_MOT_IF_RE_d1;
    reg GANTRY_BRK1_IF_RE_d1;
    reg GANTRY_BRK2_IF_RE_d1;
    reg GANTRY_BRK3_IF_RE_d1;
    reg GANTRY_BRK1_RET_IF_RE_d1;
    reg GANTRY_BRK2_RET_IF_RE_d1;
    reg GANTRY_BRK3_RET_IF_RE_d1;
    reg MSSB_STN_RE_d1;
    reg MSSB_SRV_RE_d1;
    reg EEP_RE_d1;
    reg PWR_IF_RE_d1;
    reg GANTRY_EMOPS_IF_RE_d1;
    reg GANTRY_96V_IF_RE_d1;
    reg GANTRY_BRAKE_IF_RE_d1;
    reg SPD_DMD_IF_RE_d1;
    reg SPD_EMOPS_IF_RE_d1;
    reg LIFT_MOTOR_SENSOR_IF_RE_d1;
    reg LIFT_96V_IF_RE_d1;
    reg STAND_IF_RE_d1;
    reg SERVICE_PENDANT_IF_RE_d1;
    reg MAINS_LEVEL_IF_RE_d1;
    reg EXT_BRAKE_IF_RE_d1;
    reg CCHL_IF_RE_d1;
    reg ADCSELMUX_IF_RE_d1;
    reg DEBUG_IF_RE_d1;
    reg GPIO_FREE_IF_RE_d1;
    reg SHUNT_EN_CNT_RE_d1;

    // RE/WE signals
    assign COUNTER_RE           = DEC_RE & (DEC_ADDR >= `COUNTER_ADDR) & (DEC_ADDR < (`COUNTER_ADDR + `COUNTER_SIZE));	
    assign COUNTER_WE           = DEC_WE & (DEC_ADDR >= `COUNTER_ADDR) & (DEC_ADDR < (`COUNTER_ADDR + `COUNTER_SIZE));

    assign SP1_RE               = DEC_RE & (DEC_ADDR == `SP1_ADDR);
    assign SP1_WE               = DEC_WE & (DEC_ADDR == `SP1_ADDR);

    assign SP2_RE               = DEC_RE & (DEC_ADDR == `SP2_ADDR);
    assign SP2_WE               = DEC_WE & (DEC_ADDR == `SP2_ADDR);

    assign CLOCK_RE             = DEC_RE & (DEC_ADDR >= `CLOCK_ADDR) & (DEC_ADDR < (`CLOCK_ADDR + `CLOCK_SIZE));
    assign CLOCK_WE             = DEC_WE & (DEC_ADDR >= `CLOCK_ADDR) & (DEC_ADDR < (`CLOCK_ADDR + `CLOCK_SIZE));

    assign ILIM_DAC_RE          = DEC_RE & (DEC_ADDR >= `ILIM_DAC_ADDR) & (DEC_ADDR < (`ILIM_DAC_ADDR + `ILIM_DAC_SIZE));
    assign ILIM_DAC_WE          = DEC_WE & (DEC_ADDR >= `ILIM_DAC_ADDR) & (DEC_ADDR < (`ILIM_DAC_ADDR + `ILIM_DAC_SIZE));

    assign ADC_RE               = DEC_RE & (DEC_ADDR >= `ADC_ADDR) & (DEC_ADDR < (`ADC_ADDR + `ADC_SIZE));
    assign ADC_WE               = DEC_WE & (DEC_ADDR >= `ADC_ADDR) & (DEC_ADDR < (`ADC_ADDR + `ADC_SIZE));

    assign GANTRY_MOT_IF_RE   = DEC_RE & (DEC_ADDR >= `GANTRY_MOT_ADDR) & (DEC_ADDR < (`GANTRY_MOT_ADDR + `GANTRY_MOT_SIZE));
    assign GANTRY_MOT_IF_WE   = DEC_WE & (DEC_ADDR >= `GANTRY_MOT_ADDR) & (DEC_ADDR < (`GANTRY_MOT_ADDR + `GANTRY_MOT_SIZE));

    assign GANTRY_BRK1_IF_RE   = DEC_RE & (DEC_ADDR >= `GANTRY_BRK1_ADDR) & (DEC_ADDR < (`GANTRY_BRK1_ADDR + `GANTRY_MOT_SIZE));
    assign GANTRY_BRK1_IF_WE   = DEC_WE & (DEC_ADDR >= `GANTRY_BRK1_ADDR) & (DEC_ADDR < (`GANTRY_BRK1_ADDR + `GANTRY_MOT_SIZE));

    assign GANTRY_BRK2_IF_RE = DEC_RE & (DEC_ADDR >= `GANTRY_BRK2_ADDR) & (DEC_ADDR < (`GANTRY_BRK2_ADDR + `GANTRY_MOT_SIZE));
    assign GANTRY_BRK2_IF_WE = DEC_WE & (DEC_ADDR >= `GANTRY_BRK2_ADDR) & (DEC_ADDR < (`GANTRY_BRK2_ADDR + `GANTRY_MOT_SIZE));

    assign GANTRY_BRK3_IF_RE = DEC_RE & (DEC_ADDR >= `GANTRY_BRK3_ADDR) & (DEC_ADDR < (`GANTRY_BRK3_ADDR + `GANTRY_MOT_SIZE));
    assign GANTRY_BRK3_IF_WE = DEC_WE & (DEC_ADDR >= `GANTRY_BRK3_ADDR) & (DEC_ADDR < (`GANTRY_BRK3_ADDR + `GANTRY_MOT_SIZE));

    // RE/WE signals for GANTRY_BRK1_RET
    assign GANTRY_BRK1_RET_IF_RE = DEC_RE & (DEC_ADDR >= `GANTRY_BRK1_RET_ADDR) & (DEC_ADDR < (`GANTRY_BRK1_RET_ADDR + `GANTRY_MOT_SIZE));
    assign GANTRY_BRK1_RET_IF_WE = DEC_WE & (DEC_ADDR >= `GANTRY_BRK1_RET_ADDR) & (DEC_ADDR < (`GANTRY_BRK1_RET_ADDR + `GANTRY_MOT_SIZE));

    // RE/WE signals for GANTRY_BRK2_RET
    assign GANTRY_BRK2_RET_IF_RE = DEC_RE & (DEC_ADDR >= `GANTRY_BRK2_RET_ADDR) & (DEC_ADDR < (`GANTRY_BRK2_RET_ADDR + `GANTRY_MOT_SIZE));
    assign GANTRY_BRK2_RET_IF_WE = DEC_WE & (DEC_ADDR >= `GANTRY_BRK2_RET_ADDR) & (DEC_ADDR < (`GANTRY_BRK2_RET_ADDR + `GANTRY_MOT_SIZE));

    // RE/WE signals for GANTRY_BRK3_RET
    assign GANTRY_BRK3_RET_IF_RE = DEC_RE & (DEC_ADDR >= `GANTRY_BRK3_RET_ADDR) & (DEC_ADDR < (`GANTRY_BRK3_RET_ADDR + `GANTRY_MOT_SIZE));
    assign GANTRY_BRK3_RET_IF_WE = DEC_WE & (DEC_ADDR >= `GANTRY_BRK3_RET_ADDR) & (DEC_ADDR < (`GANTRY_BRK3_RET_ADDR + `GANTRY_MOT_SIZE));


    assign LIFT_MOT_IF_RE       = DEC_RE & (DEC_ADDR >= `LIFT_MOT_ADDR) & (DEC_ADDR < (`LIFT_MOT_ADDR + `LIFT_MOT_SIZE));
    assign LIFT_MOT_IF_WE       = DEC_WE & (DEC_ADDR >= `LIFT_MOT_ADDR) & (DEC_ADDR < (`LIFT_MOT_ADDR + `LIFT_MOT_SIZE));

    assign MSSB_STN_RE          = DEC_RE & (DEC_ADDR >= `MSSB_STN_ADDR) & (DEC_ADDR < (`MSSB_STN_ADDR + `MSSB_SIZE));
    assign MSSB_STN_WE          = DEC_WE & (DEC_ADDR >= `MSSB_STN_ADDR) & (DEC_ADDR < (`MSSB_STN_ADDR + `MSSB_SIZE));

    assign MSSB_SRV_RE          = DEC_RE & (DEC_ADDR >= `MSSB_SRV_ADDR) & (DEC_ADDR < (`MSSB_SRV_ADDR + `MSSB_SIZE));
    assign MSSB_SRV_WE          = DEC_WE & (DEC_ADDR >= `MSSB_SRV_ADDR) & (DEC_ADDR < (`MSSB_SRV_ADDR + `MSSB_SIZE));

    assign EEP_RE               = DEC_RE & (DEC_ADDR == `EEP_ADDR);
    assign EEP_WE               = DEC_WE & (DEC_ADDR == `EEP_ADDR);

    assign PWR_IF_RE            = DEC_RE & (DEC_ADDR == `PWR_IF_ADDR);
    assign PWR_IF_WE            = DEC_WE & (DEC_ADDR == `PWR_IF_ADDR);

    assign GANTRY_EMOPS_IF_RE   = DEC_RE & (DEC_ADDR == `GANTRY_EMOPS_ADDR);
    assign GANTRY_EMOPS_IF_WE   = DEC_WE & (DEC_ADDR == `GANTRY_EMOPS_ADDR);

    assign GANTRY_96V_IF_RE     = DEC_RE & (DEC_ADDR == `GANTRY_96V_IF_ADDR);
    assign GANTRY_96V_IF_WE     = DEC_WE & (DEC_ADDR == `GANTRY_96V_IF_ADDR);

    assign GANTRY_BRAKE_IF_RE   = DEC_RE & (DEC_ADDR == `GANTRY_BRAKE_IF_ADDR);
    assign GANTRY_BRAKE_IF_WE   = DEC_WE & (DEC_ADDR == `GANTRY_BRAKE_IF_ADDR);

    assign SPD_DMD_IF_RE        = DEC_RE & (DEC_ADDR == `SPD_DMD_IF_ADDR);
    assign SPD_DMD_IF_WE        = DEC_WE & (DEC_ADDR == `SPD_DMD_IF_ADDR);

    assign SPD_EMOPS_IF_RE      = DEC_RE & (DEC_ADDR == `SPD_EMOPS_IF_ADDR);
    assign SPD_EMOPS_IF_WE      = DEC_WE & (DEC_ADDR == `SPD_EMOPS_IF_ADDR);

    assign LIFT_MOTOR_SENSOR_IF_RE = DEC_RE & (DEC_ADDR == `LIFT_MOTOR_SENSOR_IF_ADDR);
    assign LIFT_MOTOR_SENSOR_IF_WE = DEC_WE & (DEC_ADDR == `LIFT_MOTOR_SENSOR_IF_ADDR);

    assign LIFT_96V_IF_RE       = DEC_RE & (DEC_ADDR == `LIFT_96V_IF_ADDR);
    assign LIFT_96V_IF_WE       = DEC_WE & (DEC_ADDR == `LIFT_96V_IF_ADDR);

    assign STAND_IF_RE          = DEC_RE & (DEC_ADDR == `STAND_IF_ADDR);
    assign STAND_IF_WE          = DEC_WE & (DEC_ADDR == `STAND_IF_ADDR);

    assign SERVICE_PENDANT_IF_RE = DEC_RE & (DEC_ADDR == `SERVICE_PENDANT_IF_ADDR);
    assign SERVICE_PENDANT_IF_WE = DEC_WE & (DEC_ADDR == `SERVICE_PENDANT_IF_ADDR);

    assign MAINS_LEVEL_IF_RE    = DEC_RE & (DEC_ADDR == `MAINS_LEVEL_IF_ADDR);
    assign MAINS_LEVEL_IF_WE    = DEC_WE & (DEC_ADDR == `MAINS_LEVEL_IF_ADDR);

    assign EXT_BRAKE_IF_RE      = DEC_RE & (DEC_ADDR == `EXT_BRAKE_IF_ADDR);
    assign EXT_BRAKE_IF_WE      = DEC_WE & (DEC_ADDR == `EXT_BRAKE_IF_ADDR);

    assign CCHL_IF_RE           = DEC_RE & (DEC_ADDR == `CCHL_IF_ADDR);
    assign CCHL_IF_WE           = DEC_WE & (DEC_ADDR == `CCHL_IF_ADDR);

    assign ADCSELMUX_IF_RE      = DEC_RE & (DEC_ADDR == `ADCSELMUX_IF_ADDR);
    assign ADCSELMUX_IF_WE      = DEC_WE & (DEC_ADDR == `ADCSELMUX_IF_ADDR);

    assign DEBUG_IF_RE          = DEC_RE & (DEC_ADDR == `DEBUG_IF_ADDR);
    assign DEBUG_IF_WE          = DEC_WE & (DEC_ADDR == `DEBUG_IF_ADDR);

    assign GPIO_FREE_IF_RE      = DEC_RE & (DEC_ADDR == `GPIO_FREE_IF_ADDR);
    assign GPIO_FREE_IF_WE      = DEC_WE & (DEC_ADDR == `GPIO_FREE_IF_ADDR);

    assign SHUNT_EN_CNT_RE      = DEC_RE & (DEC_ADDR == `SHUNT_EN_CNT_ADDR);
    assign SHUNT_EN_CNT_WE      = DEC_WE & (DEC_ADDR == `SHUNT_EN_CNT_ADDR);

    // RE_d1 registers
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            COUNTER_RE_d1           <= 0;
            SP1_RE_d1               <= 0;
            SP2_RE_d1               <= 0;
            CLOCK_RE_d1             <= 0;
            ILIM_DAC_RE_d1          <= 0;
            ADC_RE_d1               <= 0;
            GANTRY_MOT_IF_RE_d1     <= 0;
            GANTRY_BRK1_IF_RE_d1    <= 0;
            GANTRY_BRK2_IF_RE_d1    <= 0;
            GANTRY_BRK3_IF_RE_d1    <= 0;
            GANTRY_BRK1_RET_IF_RE_d1 <= 0;
            GANTRY_BRK2_RET_IF_RE_d1 <= 0;
            GANTRY_BRK3_RET_IF_RE_d1 <= 0;
            LIFT_MOT_IF_RE_d1       <= 0;
            MSSB_STN_RE_d1          <= 0;
            MSSB_SRV_RE_d1          <= 0;
            EEP_RE_d1               <= 0;
            PWR_IF_RE_d1            <= 0;
            GANTRY_EMOPS_IF_RE_d1   <= 0;
            GANTRY_96V_IF_RE_d1     <= 0;
            GANTRY_BRAKE_IF_RE_d1   <= 0;
            SPD_DMD_IF_RE_d1        <= 0;
            SPD_EMOPS_IF_RE_d1      <= 0;
            LIFT_MOTOR_SENSOR_IF_RE_d1 <= 0;
            LIFT_96V_IF_RE_d1       <= 0;
            STAND_IF_RE_d1          <= 0;
            SERVICE_PENDANT_IF_RE_d1 <= 0;
            MAINS_LEVEL_IF_RE_d1    <= 0;
            EXT_BRAKE_IF_RE_d1      <= 0;
            CCHL_IF_RE_d1           <= 0;
            ADCSELMUX_IF_RE_d1      <= 0;
            DEBUG_IF_RE_d1          <= 0;
            GPIO_FREE_IF_RE_d1      <= 0;
            SHUNT_EN_CNT_RE_d1      <= 0;
        end else begin
            COUNTER_RE_d1           <= COUNTER_RE;
            SP1_RE_d1               <= SP1_RE;
            SP2_RE_d1               <= SP2_RE;
            CLOCK_RE_d1             <= CLOCK_RE;
            ILIM_DAC_RE_d1          <= ILIM_DAC_RE;
            ADC_RE_d1               <= ADC_RE;
            GANTRY_MOT_IF_RE_d1   <= GANTRY_MOT_IF_RE;
            GANTRY_BRK1_IF_RE_d1    <= GANTRY_BRK1_IF_RE;
            GANTRY_BRK2_IF_RE_d1    <= GANTRY_BRK2_IF_RE;
            GANTRY_BRK3_IF_RE_d1    <= GANTRY_BRK3_IF_RE;
            GANTRY_BRK1_RET_IF_RE_d1 <= GANTRY_BRK1_RET_IF_RE;
            GANTRY_BRK2_RET_IF_RE_d1 <= GANTRY_BRK2_RET_IF_RE;
            GANTRY_BRK3_RET_IF_RE_d1 <= GANTRY_BRK3_RET_IF_RE;
            LIFT_MOT_IF_RE_d1       <= LIFT_MOT_IF_RE;
            MSSB_STN_RE_d1          <= MSSB_STN_RE;
            MSSB_SRV_RE_d1          <= MSSB_SRV_RE;
            EEP_RE_d1               <= EEP_RE;

            PWR_IF_RE_d1            <= PWR_IF_RE;
            GANTRY_EMOPS_IF_RE_d1   <= GANTRY_EMOPS_IF_RE;
            GANTRY_96V_IF_RE_d1     <= GANTRY_96V_IF_RE;
            GANTRY_BRAKE_IF_RE_d1   <= GANTRY_BRAKE_IF_RE;
            SPD_DMD_IF_RE_d1        <= SPD_DMD_IF_RE;
            SPD_EMOPS_IF_RE_d1      <= SPD_EMOPS_IF_RE;
            LIFT_MOTOR_SENSOR_IF_RE_d1 <= LIFT_MOTOR_SENSOR_IF_RE;
            LIFT_96V_IF_RE_d1       <= LIFT_96V_IF_RE;
            STAND_IF_RE_d1          <= STAND_IF_RE;
            SERVICE_PENDANT_IF_RE_d1 <= SERVICE_PENDANT_IF_RE;
            MAINS_LEVEL_IF_RE_d1    <= MAINS_LEVEL_IF_RE;
            EXT_BRAKE_IF_RE_d1      <= EXT_BRAKE_IF_RE;
            CCHL_IF_RE_d1           <= CCHL_IF_RE;
            ADCSELMUX_IF_RE_d1      <= ADCSELMUX_IF_RE;
            DEBUG_IF_RE_d1          <= DEBUG_IF_RE;
            GPIO_FREE_IF_RE_d1      <= GPIO_FREE_IF_RE;
            SHUNT_EN_CNT_RE_d1      <= SHUNT_EN_CNT_RE;
        end
    end

    // DEC_DO
    assign DEC_DO = (COUNTER_RE_d1)              ? OSC_CT_IN       :
                    (SP1_RE_d1)                  ? SP_IN           :
                    (SP2_RE_d1)                  ? SP_IN           :
                    (CLOCK_RE_d1)                ? CLK_GEN_IN      :
                    (ILIM_DAC_RE_d1)             ? ILIM_DAC_IN     :
                    (ADC_RE_d1)                  ? ADC_IN          :
                    (GANTRY_MOT_IF_RE_d1)        ? GANTRY_MOT_IN   :
                    (GANTRY_BRK1_IF_RE_d1)       ? GANTRY_BRK1_IN  :
                    (GANTRY_BRK2_IF_RE_d1)       ? GANTRY_BRK2_IN  :
                    (GANTRY_BRK3_IF_RE_d1)       ? GANTRY_BRK3_IN  :
                    (GANTRY_BRK1_RET_IF_RE_d1)   ? GANTRY_BRK1_RET_IN :
                    (GANTRY_BRK2_RET_IF_RE_d1)   ? GANTRY_BRK2_RET_IN :
                    (GANTRY_BRK3_RET_IF_RE_d1)   ? GANTRY_BRK3_RET_IN :
                    (LIFT_MOT_IF_RE_d1)          ? LIFT_MOT_IN     :
                    (MSSB_STN_RE_d1)             ? MSSB_STN_IN     :
                    (MSSB_SRV_RE_d1)             ? MSSB_SRV_IN     :
                    (EEP_RE_d1)                  ? EEP_IN          :
                    (PWR_IF_RE_d1)               ? GPIO_IN         :
                    (GANTRY_EMOPS_IF_RE_d1)      ? GPIO_IN         :
                    (GANTRY_96V_IF_RE_d1)        ? GPIO_IN         :
                    (GANTRY_BRAKE_IF_RE_d1)      ? GPIO_IN         :
                    (SPD_DMD_IF_RE_d1)           ? GPIO_IN         :
                    (SPD_EMOPS_IF_RE_d1)         ? GPIO_IN         :
                    (LIFT_MOTOR_SENSOR_IF_RE_d1) ? GPIO_IN         :
                    (LIFT_96V_IF_RE_d1)          ? GPIO_IN         :
                    (STAND_IF_RE_d1)             ? GPIO_IN         :
                    (SERVICE_PENDANT_IF_RE_d1)   ? GPIO_IN         :
                    (MAINS_LEVEL_IF_RE_d1)       ? GPIO_IN         :
                    (EXT_BRAKE_IF_RE_d1)         ? GPIO_IN         :
                    (CCHL_IF_RE_d1)              ? GPIO_IN         :
                    (ADCSELMUX_IF_RE_d1)         ? GPIO_IN         :
                    (DEBUG_IF_RE_d1)             ? GPIO_IN         :
                    (GPIO_FREE_IF_RE_d1)         ? GPIO_IN         :
                    (SHUNT_EN_CNT_RE_d1)         ? GPIO_IN         :
                                                  32'bz;

endmodule