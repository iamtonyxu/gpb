///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: Jabil
//
// File: GPIO.v
//
// Description: 
//
// GPIO Wrapper for the OPB interface. This module handles the GPIO signals for various subsystems
//
// Targeted device: <Family> <Die> <Package>
// Author: Yalong Xu
//
/////////////////////////////////////////////////////////////////////////////////////////////////// 
`timescale 1ns / 100ps
module GPIO (
    // OPB Interface
    input               OPB_CLK,
    input               OPB_RST,
    input   [31:0]      OPB_DI,
    output  reg [31:0]  OPB_DO,

    // OPB RE/WE Signals
    input               PWR_IF_RE,
    input               PWR_IF_WE,
    input               GANTRY_EMOPS_IF_RE,
    input               GANTRY_EMOPS_IF_WE,
    input               GANTRY_96V_IF_RE,
    input               GANTRY_96V_IF_WE,
    input               GANTRY_BRAKE_IF_RE,
    input               GANTRY_BRAKE_IF_WE,
    input               SPD_DMD_IF_RE,
    input               SPD_DMD_IF_WE,
    input               SPD_EMOPS_IF_RE,
    input               SPD_EMOPS_IF_WE,
    input               LIFT_MOTOR_SENSOR_IF_RE,
    input               LIFT_MOTOR_SENSOR_IF_WE,
    input               LIFT_96V_IF_RE,
    input               LIFT_96V_IF_WE,
    input               STAND_IF_RE,
    input               STAND_IF_WE,
    input               SERVICE_PENDANT_IF_RE,
    input               SERVICE_PENDANT_IF_WE,
    input               MAINS_LEVEL_IF_RE,
    input               MAINS_LEVEL_IF_WE,
    input               EXT_BRAKE_IF_RE,
    input               EXT_BRAKE_IF_WE,
    input               CCHL_IF_RE,
    input               CCHL_IF_WE,
    input               ADCSELMUX_IF_RE,
    input               ADCSELMUX_IF_WE,
    input               DEBUG_IF_RE,
    input               DEBUG_IF_WE,
    input               GPIO_FREE_IF_RE,
    input               GPIO_FREE_IF_WE,

    // POWER_IF
    output              FAN_EN,
    output              P12V_ISO_EN,
    input               P24V_GOOD_N,
    input               FAN_FAIL_N,

    // GANTRY_EMOPS_IF
    output              P24V_GNT_EMOPS_EN,
    output              GNT_EMOPS_EN,
    input               P24V_GNT_EMOPS_PG,
    input               P12V_ACT_DIODE_ON_N,

    // GANTRY_96V_IF
    output              GNT_MOT_PWR_EN,
    output              GNT_BRK_PWR_EN,
    output              GNT_SHUNT_EN,
    input               OC_V_GNT_MOT_DRV,
    input               OC_V_GNT_BRK_DRV,
    input               GNT_MOT_PWR_FLT_N,
    input               GNT_BRK_PWR_FLT_N,
    input               GNT_EMOPS_OV_L,
    input               P5V_ISO_MON_GNT,
    input               GNT_SHUNT_ON,
    input               P5V_ISO_MON_LFT,

    // GANTRY_BRAKE_IF
    output              GNT_BRK_EXT_EN,
    output              GNT_BRK_SW_MON,
    input               PWM_BRK_EXT_FAULT,
    input               GNT_BRK1_FB_N,
    input               GNT_BRK2_FB_N,
    input               GNT_BRK3_FB_N,

    // SPD_DMD_IF
    output              GNT_HW_EN_MON,
    output              LFT_ST_DISB_MON,
    output              LFT_HW_EN_MON,
    output              GNT_ST_DISB_MON,
    output              DMD_PWR_OK,
    output              SPARE_MON,
    input               SPDIO_FLT_N,
    input               SPD2_24V_STATUS_N,
    input               LFT_ST_DISB,
    input               LFT_HW_EN_N,
    input               GNT_ST_DISB,
    input               GNT_HW_EN_N,

    // SPD_EMOPS_IF
    output              EMOPS_STAT1,
    output              EMOPS_STAT2,
    output              LFT_ROT_BRK_RLS,
    output              LAT_LNG_BRK_RLS,
    output              SRVC_CCH_GNT_N,
    output              EM_CCH_24V_EN,
    input               EM_DOWN_LIMIT,
    input               EM_UP_LIMIT,
    input               CCH_LFT_MOT_EN_N,
    input               CCH_LFT_DWN_N,
    input               CCH_LAT_LNG_FLOAT_N,
    input               EMO_GOOD_N,
    input               SITE_24V_PWR_OK_N,
    input               SPD_EMOPS_FLT_N,

    // LIFT_MOTOR_SENSOR_IF
    output              LFT_HALL_PWR_EN_N,
    input               LFT_HALL_PWR_OK,
    input               LFT_HALL_SNS1_N,
    input               LFT_HALL_SNS2_N,
    input               LFT_HALL_SNS3_N,

    // LIFT_96V_IF
    output              P24V_LFT_EMOPS_EN,
    output              LFT_SHUNT_EN,
    output              LFT_EMOPS_EN,
    output              LFT_MOT_PWR_EN,
    input               P24V_LFT_EMOPS_PG,
    input               OC_V_LFT_MOT_DRV,
    input               LFT_SHUNT_ON,
    input               LFT_EMOPS_OV_L,
    input               LFT_MOT_PWR_FLT_N,

    // STAND_IF
    output              EXOPS_GNT_24V_EN,
    input               GNT_CCW_LIMIT,
    input               GNT_CW_LIMIT,

    // SERVICE_PENDANT_IF
    output              PAN_24V_SW,

    // MAINS_LEVEL_IF
    input               MAINS_LEVEL_FB,

    // EXT_BRAKE_IF
    output              EXT_BRK1_DRV_EN,
    output              EXT_BRK2_DRV_EN,
    output              EXT_BRK3_DRV_EN,

    // CCHL_IF
    output              LFT_SER_CLK,
    output              LFT_SER_SYNC,
    output              LFT_SER_DATA0,
    output              LFT_SER_DATA1,
    input               LFT_SERIO_FLT_N,
    input               LFT_MTN_EN_N,
    input               LFT_SER_PAGE_SEL_N,
    input               LFT_DOWN_LIMIT,
    input               LFT_UP_LIMIT,

    // ADCSELMUX_IF
    output              AD_SEL0,
    output              AD_SEL1,
    output              AD_SEL2,
    output              AD_MUX1_N,
    output              AD_MUX2_N,
    output              AD_MUX3_N,
    output              AD_MUX4_N,
    output              AD_MUX5_N,

    // DEBUG_IF
    output              DBUG_MISO, // J11-3
    input               DBUG_MOSI, // J11-5
    input               DBUG_CS_N, // J11-7
    input               DBUG_SCLK, // J11-1
    input               DBUG_ACTIVE, // J11-9

    // GPIO_FREE_IF
    output              GPIO2, // TP99
    output              GPIO3, // TP97
    output              GPIO5  // TP98
);

    /* GPIO Registers */
    // Bit 15:0 are for GPIO output, and set unused bits as 0 
    // Bit 31:16 are for GPIO input, and set unused bits as 0
    reg [31:0]  POWER_IF_REG;
    reg [31:0]  GANTRY_EMOPS_IF_REG;
    reg [31:0]  GANTRY_96V_IF_REG;
    reg [31:0]  GANTRY_BRAKE_IF_REG;
    reg [31:0]  SPD_DMD_IF_REG;
    reg [31:0]  SPD_EMOPS_IF_REG;
    reg [31:0]  LIFT_MOTOR_SENSOR_IF_REG;
    reg [31:0]  LIFT_96V_IF_REG;
    reg [31:0]  STAND_IF_REG;
    reg [31:0]  SERVICE_PENDANT_IF_REG;
    reg [31:0]  MAINS_LEVEL_IF_REG;
    reg [31:0]  EXT_BRAKE_IF_REG;
    reg [31:0]  CCHL_IF_REG;
    reg [31:0]  ADCSELMUX_IF_REG;
    reg [31:0]  DEBUG_IF_REG;
    reg [31:0]  GPIO_FREE_IF_REG;

    // GPIO Outputs
    assign FAN_EN               = POWER_IF_REG[0];
    assign P12V_ISO_EN          = POWER_IF_REG[1];

    assign P24V_GNT_EMOPS_EN    = GANTRY_EMOPS_IF_REG[0];
    assign GNT_EMOPS_EN         = GANTRY_EMOPS_IF_REG[1];

    assign GNT_MOT_PWR_EN       = GANTRY_96V_IF_REG[0];
    assign GNT_BRK_PWR_EN       = GANTRY_96V_IF_REG[1];
    assign GNT_SHUNT_EN         = GANTRY_96V_IF_REG[2];

    assign GNT_BRK_EXT_EN       = GANTRY_BRAKE_IF_REG[0];
    assign GNT_BRK_SW_MON       = GANTRY_BRAKE_IF_REG[1];

    assign GNT_HW_EN_MON        = SPD_DMD_IF_REG[0];
    assign LFT_ST_DISB_MON      = SPD_DMD_IF_REG[1];
    assign LFT_HW_EN_MON        = SPD_DMD_IF_REG[2];
    assign GNT_ST_DISB_MON      = SPD_DMD_IF_REG[3];
    assign DMD_PWR_OK           = SPD_DMD_IF_REG[4];
    assign SPARE_MON            = SPD_DMD_IF_REG[5];

    assign EMOPS_STAT1          = SPD_EMOPS_IF_REG[0];
    assign EMOPS_STAT2          = SPD_EMOPS_IF_REG[1];
    assign LFT_ROT_BRK_RLS      = SPD_EMOPS_IF_REG[2];
    assign LAT_LNG_BRK_RLS      = SPD_EMOPS_IF_REG[3];
    assign SRVC_CCH_GNT_N       = SPD_EMOPS_IF_REG[4];
    assign EM_CCH_24V_EN        = SPD_EMOPS_IF_REG[5];

    assign LFT_HALL_PWR_EN_N    = LIFT_MOTOR_SENSOR_IF_REG[0];

    assign P24V_LFT_EMOPS_EN    = LIFT_96V_IF_REG[0];
    assign LFT_SHUNT_EN         = LIFT_96V_IF_REG[1];
    assign LFT_EMOPS_EN         = LIFT_96V_IF_REG[2];
    assign LFT_MOT_PWR_EN       = LIFT_96V_IF_REG[3];

    assign EXOPS_GNT_24V_EN     = STAND_IF_REG[0];

    assign PAN_24V_SW           = SERVICE_PENDANT_IF_REG[0];

    assign EXT_BRK1_DRV_EN      = EXT_BRAKE_IF_REG[0];
    assign EXT_BRK2_DRV_EN      = EXT_BRAKE_IF_REG[1];
    assign EXT_BRK3_DRV_EN      = EXT_BRAKE_IF_REG[2];

    assign LFT_SER_CLK          = CCHL_IF_REG[0];
    assign LFT_SER_SYNC         = CCHL_IF_REG[1];
    assign LFT_SER_DATA0        = CCHL_IF_REG[2];
    assign LFT_SER_DATA1        = CCHL_IF_REG[3];

    assign AD_SEL0              = ADCSELMUX_IF_REG[0];
    assign AD_SEL1              = ADCSELMUX_IF_REG[1];
    assign AD_SEL2              = ADCSELMUX_IF_REG[2];
    assign AD_MUX1_N            = (ADCSELMUX_IF_REG[7:3] == 5'b11110) ? 1'b0 : 1'b1; // AD_MUX1_N is active low
    assign AD_MUX2_N            = (ADCSELMUX_IF_REG[7:3] == 5'b11101) ? 1'b0 : 1'b1; // AD_MUX2_N is active low
    assign AD_MUX3_N            = (ADCSELMUX_IF_REG[7:3] == 5'b11011) ? 1'b0 : 1'b1; // AD_MUX3_N is active low
    assign AD_MUX4_N            = (ADCSELMUX_IF_REG[7:3] == 5'b10111) ? 1'b0 : 1'b1; // AD_MUX4_N is active low
    assign AD_MUX5_N            = (ADCSELMUX_IF_REG[7:3] == 5'b01111) ? 1'b0 : 1'b1; // AD_MUX5_N is active low

    assign DBUG_MISO            = DEBUG_IF_REG[0];

    assign GPIO2                = GPIO_FREE_IF_REG[0];
    assign GPIO3                = GPIO_FREE_IF_REG[1];
    assign GPIO5                = GPIO_FREE_IF_REG[2];

    /* GPIO Write */
    // POWER_IF_REG
    always @(negedge OPB_CLK or posedge OPB_RST) begin
        if(OPB_RST) begin
            POWER_IF_REG <= 32'b0;
        end 
        else if(PWR_IF_WE) begin
            POWER_IF_REG[15:0] <= OPB_DI[15:0];
        end else begin
            POWER_IF_REG[16] <= P24V_GOOD_N;
            POWER_IF_REG[17] <= FAN_FAIL_N;
        end
    end

    // GANTRY_EMOPS_IF_REG
    always @(negedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            GANTRY_EMOPS_IF_REG <= 32'b0;
        end else if (GANTRY_EMOPS_IF_WE) begin
            GANTRY_EMOPS_IF_REG[15:0] <= OPB_DI[15:0];
        end else begin
            GANTRY_EMOPS_IF_REG[16] <= P24V_GNT_EMOPS_PG;
            GANTRY_EMOPS_IF_REG[17] <= P12V_ACT_DIODE_ON_N;
        end
    end

    // GANTRY_96V_IF_REG
    always @(negedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            GANTRY_96V_IF_REG <= 32'b0;
        end else if (GANTRY_96V_IF_WE) begin
            GANTRY_96V_IF_REG[15:0] <= OPB_DI[15:0];
        end else begin
            GANTRY_96V_IF_REG[16] <= OC_V_GNT_MOT_DRV;
            GANTRY_96V_IF_REG[17] <= OC_V_GNT_BRK_DRV;
            GANTRY_96V_IF_REG[18] <= GNT_MOT_PWR_FLT_N;
            GANTRY_96V_IF_REG[19] <= GNT_BRK_PWR_FLT_N;
            GANTRY_96V_IF_REG[20] <= GNT_EMOPS_OV_L;
            GANTRY_96V_IF_REG[21] <= P5V_ISO_MON_GNT;
            GANTRY_96V_IF_REG[22] <= GNT_SHUNT_ON;
            GANTRY_96V_IF_REG[23] <= P5V_ISO_MON_LFT;
        end
    end

    // GANTRY_BRAKE_IF_REG
    always @(negedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            GANTRY_BRAKE_IF_REG <= 32'b0;
        end else if (GANTRY_BRAKE_IF_WE) begin
            GANTRY_BRAKE_IF_REG[15:0] <= OPB_DI[15:0];
        end else begin
            GANTRY_BRAKE_IF_REG[16] <= PWM_BRK_EXT_FAULT;
            GANTRY_BRAKE_IF_REG[17] <= GNT_BRK1_FB_N;
            GANTRY_BRAKE_IF_REG[18] <= GNT_BRK2_FB_N;
            GANTRY_BRAKE_IF_REG[19] <= GNT_BRK3_FB_N;
        end
    end

    // SPD_DMD_IF_REG
    always @(negedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            SPD_DMD_IF_REG <= 32'b0;
        end else if (SPD_DMD_IF_WE) begin
            SPD_DMD_IF_REG[15:0] <= OPB_DI[15:0];
        end else begin
            SPD_DMD_IF_REG[16] <= SPDIO_FLT_N;
            SPD_DMD_IF_REG[17] <= SPD2_24V_STATUS_N;
            SPD_DMD_IF_REG[18] <= LFT_ST_DISB;
            SPD_DMD_IF_REG[19] <= LFT_HW_EN_N;
            SPD_DMD_IF_REG[20] <= GNT_ST_DISB;
            SPD_DMD_IF_REG[21] <= GNT_HW_EN_N;
        end
    end

    // SPD_EMOPS_IF_REG
    always @(negedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            SPD_EMOPS_IF_REG <= 32'h10; // Set SRVC_CCH_GNT_N default as 1
        end else if (SPD_EMOPS_IF_WE) begin
            SPD_EMOPS_IF_REG[15:0] <= OPB_DI[15:0];
        end else begin
            SPD_EMOPS_IF_REG[16] <= EM_DOWN_LIMIT;
            SPD_EMOPS_IF_REG[17] <= EM_UP_LIMIT;
            SPD_EMOPS_IF_REG[18] <= CCH_LFT_MOT_EN_N;
            SPD_EMOPS_IF_REG[19] <= CCH_LFT_DWN_N;
            SPD_EMOPS_IF_REG[20] <= CCH_LAT_LNG_FLOAT_N;
            SPD_EMOPS_IF_REG[21] <= EMO_GOOD_N;
            SPD_EMOPS_IF_REG[22] <= SITE_24V_PWR_OK_N;
            SPD_EMOPS_IF_REG[23] <= SPD_EMOPS_FLT_N;
        end
    end

    // LIFT_MOTOR_SENSOR_IF_REG
    always @(negedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            LIFT_MOTOR_SENSOR_IF_REG <= 32'h01; // Set LFT_HALL_PWR_EN_N default as 1
        end else if (LIFT_MOTOR_SENSOR_IF_WE) begin
            LIFT_MOTOR_SENSOR_IF_REG[15:0] <= OPB_DI[15:0];
        end else begin
            LIFT_MOTOR_SENSOR_IF_REG[16] <= LFT_HALL_PWR_OK;
            LIFT_MOTOR_SENSOR_IF_REG[17] <= LFT_HALL_SNS1_N;
            LIFT_MOTOR_SENSOR_IF_REG[18] <= LFT_HALL_SNS2_N;
            LIFT_MOTOR_SENSOR_IF_REG[19] <= LFT_HALL_SNS3_N;
        end
    end

    // LIFT_96V_IF_REG
    always @(negedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            LIFT_96V_IF_REG <= 32'b0;
        end else if (LIFT_96V_IF_WE) begin
            LIFT_96V_IF_REG[15:0] <= OPB_DI[15:0];
        end else begin
            LIFT_96V_IF_REG[16] <= P24V_LFT_EMOPS_PG;
            LIFT_96V_IF_REG[17] <= OC_V_LFT_MOT_DRV;
            LIFT_96V_IF_REG[18] <= LFT_SHUNT_ON;
            LIFT_96V_IF_REG[19] <= LFT_EMOPS_OV_L;
            LIFT_96V_IF_REG[20] <= LFT_MOT_PWR_FLT_N;
        end
    end

    // STAND_IF_REG
    always @(negedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            STAND_IF_REG <= 32'b0;
        end else if (STAND_IF_WE) begin
            STAND_IF_REG[15:0] <= OPB_DI[15:0];
        end else begin
            STAND_IF_REG[16] <= GNT_CCW_LIMIT;
            STAND_IF_REG[17] <= GNT_CW_LIMIT;
        end
    end

    // SERVICE_PENDANT_IF_REG
    always @(negedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            SERVICE_PENDANT_IF_REG <= 32'b0;
        end else if (SERVICE_PENDANT_IF_WE) begin
            SERVICE_PENDANT_IF_REG[15:0] <= OPB_DI[15:0];
        end
    end

    // MAINS_LEVEL_IF_REG
    always @(negedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            MAINS_LEVEL_IF_REG <= 32'b0;
        end else if (MAINS_LEVEL_IF_WE) begin
            MAINS_LEVEL_IF_REG[15:0] <= OPB_DI[15:0];
        end else begin
            MAINS_LEVEL_IF_REG[16] <= MAINS_LEVEL_FB;
        end
    end

    // EXT_BRAKE_IF_REG
    always @(negedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            EXT_BRAKE_IF_REG <= 32'b0;
        end else if (EXT_BRAKE_IF_WE) begin
            EXT_BRAKE_IF_REG[15:0] <= OPB_DI[15:0];
        end
    end

    // CCHL_IF_REG
    always @(negedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            CCHL_IF_REG <= 32'b0;
        end else if (CCHL_IF_WE) begin
            CCHL_IF_REG[15:0] <= OPB_DI[15:0];
        end else begin
            CCHL_IF_REG[16] <= LFT_SERIO_FLT_N;
            CCHL_IF_REG[17] <= LFT_MTN_EN_N;
            CCHL_IF_REG[18] <= LFT_SER_PAGE_SEL_N;
            CCHL_IF_REG[19] <= LFT_DOWN_LIMIT;
            CCHL_IF_REG[20] <= LFT_UP_LIMIT;
        end
    end

    // ADCSELMUX_IF_REG
    always @(negedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            ADCSELMUX_IF_REG <= 32'h000000F8;
        end else if (ADCSELMUX_IF_WE) begin
            ADCSELMUX_IF_REG[15:0] <= OPB_DI[15:0];
        end
    end

    // DEBUG_IF_REG
    always @(negedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            DEBUG_IF_REG <= 32'b0;
        end else if (DEBUG_IF_WE) begin
            DEBUG_IF_REG[15:0] <= OPB_DI[15:0];
        end else begin
            DEBUG_IF_REG[16] <= DBUG_MOSI;
            DEBUG_IF_REG[17] <= DBUG_CS_N;
            DEBUG_IF_REG[18] <= DBUG_SCLK;
            DEBUG_IF_REG[19] <= DBUG_ACTIVE;
        end
    end

    // GPIO_FREE_IF_REG
    always @(negedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            GPIO_FREE_IF_REG <= 32'b0;
        end else if (GPIO_FREE_IF_WE) begin
            GPIO_FREE_IF_REG[15:0] <= OPB_DI[15:0];
        end
    end

    // OPB Read
    always @(posedge OPB_CLK or posedge OPB_RST) begin
        if (OPB_RST) begin
            OPB_DO <= 32'b0;
        end else begin
            if (PWR_IF_RE) begin
                OPB_DO <= POWER_IF_REG;
            end else if (GANTRY_EMOPS_IF_RE) begin
                OPB_DO <= GANTRY_EMOPS_IF_REG;
            end else if (GANTRY_96V_IF_RE) begin
                OPB_DO <= GANTRY_96V_IF_REG;
            end else if (GANTRY_BRAKE_IF_RE) begin
                OPB_DO <= GANTRY_BRAKE_IF_REG;
            end else if (SPD_DMD_IF_RE) begin
                OPB_DO <= SPD_DMD_IF_REG;
            end else if (SPD_EMOPS_IF_RE) begin
                OPB_DO <= SPD_EMOPS_IF_REG;
            end else if (LIFT_MOTOR_SENSOR_IF_RE) begin
                OPB_DO <= LIFT_MOTOR_SENSOR_IF_REG;
            end else if (LIFT_96V_IF_RE) begin
                OPB_DO <= LIFT_96V_IF_REG;
            end else if (STAND_IF_RE) begin
                OPB_DO <= STAND_IF_REG;
            end else if (SERVICE_PENDANT_IF_RE) begin
                OPB_DO <= SERVICE_PENDANT_IF_REG;
            end else if (MAINS_LEVEL_IF_RE) begin
                OPB_DO <= MAINS_LEVEL_IF_REG;
            end else if (EXT_BRAKE_IF_RE) begin
                OPB_DO <= EXT_BRAKE_IF_REG;
            end else if (CCHL_IF_RE) begin
                OPB_DO <= CCHL_IF_REG;
            end else if (ADCSELMUX_IF_RE) begin
                OPB_DO <= ADCSELMUX_IF_REG;
            end else if (DEBUG_IF_RE) begin
                OPB_DO <= DEBUG_IF_REG;
            end else if (GPIO_FREE_IF_RE) begin
                OPB_DO <= GPIO_FREE_IF_REG;
            end else begin
                OPB_DO <= 32'b0;
            end
        end
    end

endmodule




