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