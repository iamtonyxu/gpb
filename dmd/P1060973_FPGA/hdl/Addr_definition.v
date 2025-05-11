// Description: Address definition for the system
`define COUNTER_ADDR            32'h00000000        /* COUNTER address */
`define SP1_ADDR                32'h00010000        /* Scratch Pad 1 address */
`define SP2_ADDR                32'h00020000        /* Scratch Pad 2 address */
`define CLOCK_ADDR              32'h00030000        /* CLOCK module address */
`define ILIM_DAC_ADDR           32'h00040000        /* ILIM address */
`define PWR_IF_ADDR             32'h00050000        /* Power IF address */
`define GANTRY_EMOPS_ADDR       32'h00050001        /* Gantry EMOPS address */
`define GANTRY_96V_IF_ADDR      32'h00050002        /* GANTRY 96V IF address */
`define GANTRY_BRAKE_IF_ADDR    32'h00050003        /* GANTRY BRAKE IF address */
`define SPD_DMD_IF_ADDR         32'h00050004        /* SPD DMD IF address */
`define SPD_EMOPS_IF_ADDR       32'h00050005        /* SPD EMOPS IF address */
`define LIFT_MOTOR_SENSOR_IF_ADDR 32'h00050006      /* LIFT MOTOR SENSOR IF address */
`define LIFT_96V_IF_ADDR        32'h00050007        /* LIFT 96V IF address */
`define STAND_IF_ADDR           32'h00050008        /* STAND IF address */
`define SERVICE_PENDANT_IF_ADDR 32'h00050009        /* SERVICE PENDANT IF address */
`define MAINS_LEVEL_IF_ADDR     32'h0005000A        /* MAINS LEVEL IF address */
`define EXT_BRAKE_IF_ADDR       32'h0005000B        /* EXT BRAKE IF address */
`define CCHL_IF_ADDR            32'h0005000C        /* CCHL IF address */
`define ADCSELMUX_IF_ADDR       32'h0005000D        /* ADCSELMUX IF address */
`define DEBUG_IF_ADDR           32'h0005000E        /* DEBUG IF address */
`define GPIO_FREE_IF_ADDR       32'h0005000F        /* GPIO FREE IF address */
`define ADC_ADDR                32'h00060000        /* Analog to Digital converter address */
`define GANTRY_MOT_ADDR         32'h00070000        /* Gantry Motor address */
`define LIFT_MOT_ADDR           32'h00080000        /* Lift Motor address */
`define MSSB_STN_ADDR           32'h00090000        /* MSSB address */
`define MSSB_SRV_ADDR           32'h00091000        /* MSSB address */
`define EEP_ADDR                32'h000B0000        /* EEPROM address */

// Description: Size definition for each sub-system
`define COUNTER_SIZE            32'h00000040        /* COUNTER size */
`define CLOCK_SIZE              32'h00000028        /* CLOCK module size */
`define ILIM_DAC_SIZE           32'h00000020        /* ILIM size */
`define ADC_SIZE                32'h00006000        /* Analog to Digital converter size */
`define GANTRY_MOT_SIZE         32'h00000010        /* Gantry Motor size */
`define LIFT_MOT_SIZE           32'h00000010        /* Lift Motor size */
`define MSSB_SIZE               32'h00000010        /* MSSB size */