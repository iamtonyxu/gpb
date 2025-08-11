// Description: Address definitions for the system
`define SCRATCHPAD_ADDR         32'h0000_0000       // Scratchpad address
`define CLOCK_ADDR              32'h0001_0000       // CLOCK module address
`define COUNTER_ADDR            32'h0002_0000       // COUNTER address
`define GPIO_ADDR               32'h0003_0000       // GPIO input address
`define FPGA_IF_ADDR            32'h0004_0000       // FPGA Interface address
`define ADC_ADDR                32'h0005_0000       // ADC address
`define DAC_ADDR                32'h0006_0000       // DAC address
`define RS422_ADDR              32'h0007_0000       // RS422 address
`define CAN_ADDR                32'h0008_0000       // CAN address

// Description: Size definitions for each sub-system
`define SCRATCHPAD_SIZE         32'h0000_0040       // Scratchpad size
`define CLOCK_SIZE              32'h0000_0028       // CLOCK module size
`define COUNTER_SIZE            32'h0000_0040       // COUNTER size
`define GPIO_SIZE               32'h0000_0040       // GPIO input size
`define FPGA_IF_SIZE            32'h0000_0040       // FPGA IF size
`define ADC_SIZE                32'h0000_6000       // ADC size
`define DAC_SIZE                32'h0000_0040       // DAC size
`define RS422_SIZE              32'h0000_0040       // RS422 size
`define CAN_SIZE                32'h0000_7FFF       // CAN size
