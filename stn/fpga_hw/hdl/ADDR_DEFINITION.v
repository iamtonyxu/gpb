// Description: Address definitions for the system
`define SCRATCHPAD_ADDR         32'h0000_0000       // Scratchpad address
`define CLOCK_ADDR              32'h0001_0000       // CLOCK module address
`define COUNTER1_ADDR           32'h0002_0000       // COUNTER1 address
`define COUNTER2_ADDR           32'h0002_1000       // COUNTER2 address
`define GPIO_ADDR               32'h0003_0000       // GPIO input address
`define APP_ADDR                32'h0004_0000       // Application Interface address
`define EEPROM_ADDR             32'h0005_0000       // EEPROM Interface address
`define PHY_ADDR                32'h0006_0000       // PHY Interface address

// Description: Size definitions for each sub-system
`define SCRATCHPAD_SIZE         32'h0000_0040       // Scratchpad size
`define CLOCK_SIZE              32'h0000_0028       // CLOCK module size
`define COUNTER_SIZE            32'h0000_0040       // COUNTER size
`define GPIO_SIZE               32'h0000_0040       // GPIO input size
`define APP_SIZE                32'h0000_0040       // APP IF size
`define EEPROM_SIZE             32'h0000_0040       // EEPROM IF size
`define PHY_SIZE                32'h0000_0040       // PHY IF size