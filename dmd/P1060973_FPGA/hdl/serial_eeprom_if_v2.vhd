---------------------------------------------------------------------
-- Project:    DMD FPGA Test
-- Company:    Jabil
-- Language:   VHDL
-- File:       serial_eeprom_if_v2.vhd (VHDL Source)
--
-- Description:
--   This module handles the interface to the serial eeprom with page write/read
--   capability. The serial eeprom is Microchip 25LC256, which has 32-byte page size.
--   Supports both byte and page write/read operations.
--
--   Procedures for page write/read:
--   1. Page Write:
--      a. Send page address, wr_address  = {eeprom_page_num, "00000"}
--      b. Write data to page, eeprom_page_wrdata(255 downto 0)
--      c. Issue page WREN instruction: eeprom_page_seq = '1', eeprom_inst = "01"
--      d. Issue eeprom access instruction: eeprom_start = '1'
--   2. Page Read:
--      a. Read data from page, eeprom_page_rddata(255 downto 0)
--      b. Send page address, rd_address  = {eeprom_page_num, "00000"}
--      c. Issue page READ instruction: eeprom_page_seq = '1', eeprom_inst = "00"
--      d. Issue eeprom access instruction: eeprom_start = '1'
--
--   Procedures for byte write/read:
--   1. Byte Write:
--      a. Send byte address, eeprom_addr(15 downto 0)
--      b. Write data to byte, eeprom_wrdata(7 downto 0)
--      c. Issue byte WREN instruction: eeprom_page_seq = '0', eeprom_inst = "01"
--      d. Issue eeprom access instruction: eeprom_start = '1'
--   2. Byte Read:
--      a. Read data from byte, eeprom_rddata(7 downto 0)
--      b. Send byte address, rd_address  = {eeprom_addr(15 downto 0)}
--      c. Issue byte READ instruction: eeprom_page_seq = '0', eeprom_inst = "00"
--      d. Issue eeprom access instruction: eeprom_start = '1'
--
-- History
-- v1.00  10/10/25  Yalong Xu       Implement page write/read function
---------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity serial_eeprom_if_v2 is
     Port
     (
          reset               : in      std_logic;
          clk                 : in      std_logic;
          strobe_1us          : in      std_logic;

          -- for page write/read
          eeprom_page_seq     : in      std_logic;  -- 1: page write/read, 0: byte write/read
          eeprom_page_wrdata  : in      std_logic_vector(255 downto 0);
          eeprom_page_rddata  : out     std_logic_vector(255 downto 0);
          eeprom_page_num     : in      std_logic_vector(7 downto 0);  -- 0 to 255 pages

          -- for byte write/read
          eeprom_addr         : in      std_logic_vector(15 downto 0);
          eeprom_wrdata       : in      std_logic_vector(7 downto 0);
          eeprom_rddata       : out     std_logic_vector(7 downto 0);

          -- control signals
          eeprom_start        : in      std_logic;
          eeprom_done         : out     std_logic;
          eeprom_inst         : in      std_logic_vector(3 downto 0);
          eeprom_en           : in      std_logic;

          eep_sdo             : in      std_logic;
          eep_sdi             : out     std_logic;
          eep_sclk            : out     std_logic;
          eep_csn             : out     std_logic
     );
end serial_eeprom_if_v2;

architecture RTL of serial_eeprom_if_v2 is

     type eeprom_cycle_state_TYPE is (  IDLE,
                                        EEPROM_READ_START,
                                        EEPROM_STATUS_READ_START,
                                        EEPROM_WREN_START,
                                        EEPROM_WRITE_START,
                                        EEPROM_SET_CS,
                                        EEPROM_SEND_INSTRUCTION,
                                        EEPROM_SEND_ADDRESS,
                                        EEPROM_WRITE_DATA,
                                        EEPROM_READ_DATA,
                                        EEPROM_NEGATE_CS,
                                        EEPROM_STATE_DONE
                                   );
                                   
     signal eeprom_cycle_state                    : eeprom_cycle_state_TYPE := IDLE;

     -- constant definitions
     -- eeprom page size is 32 bytes
     constant PAGE_SIZE                           : integer := 32;

     constant READ_INSTRUCTION                    : std_logic_vector(7 downto 0) := X"03";
     constant WRITE_INSTRUCTION                   : std_logic_vector(7 downto 0) := X"02";
     constant WREN_INSTRUCTION                    : std_logic_vector(7 downto 0) := X"06";
     constant RDSR_INSTRUCTION                    : std_logic_vector(7 downto 0) := X"05";
     
     constant TYPE_READ                           : std_logic_vector(1 downto 0) := "00";

     signal eeprom_cycle_type                     : std_logic_vector(1 downto 0);    
     signal eeprom_addr_reg                       : std_logic_vector(15 downto 0);
     signal eeprom_wrdata_reg                     : std_logic_vector(7 downto 0);
     signal eeprom_rddata_reg                     : std_logic_vector(7 downto 0);

     signal sclk                                  : std_logic;
     signal SDI                                   : std_logic;
     signal eeprom_cs_n                           : std_logic;
     signal TYPE_DATA                             : std_logic_vector(7 downto 0);
     signal sTYPE_DATA                            : std_logic_vector(7 downto 0);
     signal bit_cntr                              : integer range 0 to 16 := 0;
     
     -- Page operation signals
     signal page_mode                             : std_logic;
     signal page_byte_cntr                        : integer range 0 to 31 := 0;
     signal page_wrdata_reg                       : std_logic_vector(255 downto 0);
     signal page_rddata_reg                       : std_logic_vector(255 downto 0);
     signal page_addr_base                        : std_logic_vector(15 downto 0);

begin

     proc_EEPROM_CYCLE : process (RESET, CLK)
     begin
     
          if RESET = '1' then
               eeprom_cycle_state <= IDLE;
               eeprom_cs_n <= '1';
               sclk <= '0';
               eeprom_done <= '0';
               eeprom_cycle_type   <= "00";
               SDI <= '0';
               TYPE_DATA <= READ_INSTRUCTION;
               sTYPE_DATA <= READ_INSTRUCTION;
               bit_cntr <= 0;
               eeprom_rddata_reg <= "00000000";
               eeprom_addr_reg   <= (others => '0');
               eeprom_wrdata_reg <= (others => '0');
               -- Page operation reset
               page_mode <= '0';
               page_byte_cntr <= 0;
               page_wrdata_reg <= (others => '0');
               page_rddata_reg <= (others => '0');
               page_addr_base <= (others => '0');

          elsif rising_edge(CLK) then
          
               eeprom_done <= '0';
               
               case eeprom_cycle_state is

                    when IDLE =>

                         if eeprom_start = '1' and eeprom_en = '1' then

                              -- Store page mode flag
                              page_mode <= eeprom_page_seq;
                              page_byte_cntr <= 0;
                              
                              if eeprom_page_seq = '1' then
                                   -- Page mode: calculate base address from page number
                                   -- Each page is 32 bytes, so lower 5 bits of address are 0
                                   page_addr_base <= "000" & eeprom_page_num & "00000";
                                   page_wrdata_reg <= eeprom_page_wrdata;
                                   page_rddata_reg <= (others => '0');
                              else
                                   -- Byte mode: use provided address
                                   page_addr_base <= eeprom_addr;
                              end if;

                              if eeprom_inst(1 downto 0) = "00" then
                                   eeprom_cycle_state <= EEPROM_READ_START;
                              elsif eeprom_inst(1 downto 0) = "10" then
                                   eeprom_cycle_state <= EEPROM_STATUS_READ_START;
                              else
                                   eeprom_cycle_state <= EEPROM_WREN_START;
                              end if;
                              sclk <= '1';
                              
                              eeprom_cycle_type   <= eeprom_inst(1 downto 0);
                              eeprom_addr_reg     <= eeprom_addr;
                              
                         end if;   
                         eeprom_cs_n <= '1';
               
                    -- start read process
                    when EEPROM_READ_START =>
                         TYPE_DATA <= READ_INSTRUCTION;
                         sTYPE_DATA <= READ_INSTRUCTION;
                         eeprom_cycle_state <= EEPROM_SET_CS;
                         bit_cntr <= 7;
                         eeprom_cs_n <= '1';
                         -- Set address for page/byte mode
                         if page_mode = '1' then
                              eeprom_addr_reg <= page_addr_base;
                         end if;
                         
                    when EEPROM_STATUS_READ_START =>
                         TYPE_DATA <= RDSR_INSTRUCTION;
                         sTYPE_DATA <= RDSR_INSTRUCTION;
                         eeprom_cycle_state <= EEPROM_SET_CS;
                         bit_cntr <= 7;
                         eeprom_cs_n <= '1';
                         
                    -- start write process by issuing wr_en_latch instruction   
                    when EEPROM_WREN_START =>     
                         TYPE_DATA <= WREN_INSTRUCTION;     
                         sTYPE_DATA <= WREN_INSTRUCTION;    
                         eeprom_cycle_state <= EEPROM_SET_CS;
                         bit_cntr <= 7;
                         eeprom_cs_n <= '1';
                         
                    -- actual write process
                    when EEPROM_WRITE_START =>
                         TYPE_DATA <= WRITE_INSTRUCTION;    
                         sTYPE_DATA <= WRITE_INSTRUCTION;   
                         eeprom_cycle_state <= EEPROM_SET_CS;
                         bit_cntr <= 7;
                         eeprom_cs_n <= '1';
                         -- Set address for page/byte mode
                         if page_mode = '1' then
                              eeprom_addr_reg <= page_addr_base;
                         end if;
                    
                    -- set chip select            
                    when EEPROM_SET_CS =>
                         if strobe_1us = '1' then
                              eeprom_cs_n <= '0';
                              eeprom_cycle_state <= EEPROM_SEND_INSTRUCTION;
                         end if;   
                    
                    -- send the instruction to Serial EEPROM
                    when EEPROM_SEND_INSTRUCTION =>
                         
                         if strobe_1us = '1' then
                              if sclk = '1' then 
                                   SDI <= TYPE_DATA(7);
                                   TYPE_DATA <= TYPE_DATA(6 downto 0) & '0';
                                   sclk <= '0';
                              else
                                   sclk <= '1';
                                   if bit_cntr = 0 then
                                        if sTYPE_DATA = WREN_INSTRUCTION then
                                             eeprom_cycle_state <= EEPROM_NEGATE_CS;
                                        elsif sTYPE_DATA = RDSR_INSTRUCTION then
                                             eeprom_cycle_state <= EEPROM_READ_DATA;
                                             bit_cntr <= 7; 
                                        else
                                             eeprom_cycle_state <= EEPROM_SEND_ADDRESS;
                                             bit_cntr <= 15;     
                                        end if;
                                   else
                                        bit_cntr <= bit_cntr - 1;
                                   end if;
                              end if;
                         end if;

                    when EEPROM_SEND_ADDRESS =>
                         
                         if strobe_1us = '1' then
                              if sclk = '1' then 
                                   SDI <= eeprom_addr_reg(15);
                                   eeprom_addr_reg <= eeprom_addr_reg(14 downto 0) & '0';
                                   sclk <= '0';
                              else
                                   sclk <= '1';
                                   if bit_cntr = 0 then
                                        if eeprom_cycle_type = TYPE_READ then
                                             eeprom_cycle_state <= EEPROM_READ_DATA;
                                        else
                                             eeprom_cycle_state <= EEPROM_WRITE_DATA;
                                             -- Prepare first byte for writing
                                             if page_mode = '1' then
                                                  eeprom_wrdata_reg <= page_wrdata_reg(7 downto 0);
                                             else
                                                  eeprom_wrdata_reg <= eeprom_wrdata(7 downto 0);
                                             end if;
                                        end if;
                                        bit_cntr <= 7;
                                   else
                                        bit_cntr <= bit_cntr - 1;
                                   end if;
                              end if;
                         end if;                       

                    when EEPROM_WRITE_DATA =>
                         
                         if strobe_1us = '1' then
                              if sclk = '1' then 
                                   SDI <= eeprom_wrdata_reg(7);
                                   eeprom_wrdata_reg <= eeprom_wrdata_reg(6 downto 0) & '0';
                                   sclk <= '0';
                              else
                                   sclk <= '1';
                                   if bit_cntr = 0 then
                                        -- Page mode: check if more bytes to write
                                        if page_mode = '1' then
                                             if page_byte_cntr < PAGE_SIZE - 1 then
                                                  page_byte_cntr <= page_byte_cntr + 1;
                                                  bit_cntr <= 7;
                                                  -- Prepare next byte from page data
                                                  -- Shift page_wrdata_reg to get next byte
                                                  page_wrdata_reg <= X"00" & page_wrdata_reg(255 downto 8);
                                                  eeprom_wrdata_reg <= page_wrdata_reg(15 downto 8);
                                             else
                                                  -- All 32 bytes written
                                                  eeprom_cycle_state <= EEPROM_NEGATE_CS;
                                             end if;
                                        else
                                             -- Byte mode: single byte written
                                             eeprom_cycle_state <= EEPROM_NEGATE_CS;
                                        end if;
                                   else
                                        bit_cntr <= bit_cntr - 1;
                                   end if;
                              end if;
                         end if;                       

                    when EEPROM_READ_DATA =>
                         
                         if strobe_1us = '1' then
                              if sclk = '1' then 
                                   sclk <= '0';
                              else
                                   sclk <= '1';
                                   eeprom_rddata_reg <= eeprom_rddata_reg(6 downto 0) & eep_sdo;
                                   
                                   if bit_cntr = 0 then
                                        -- Page mode: check if more bytes to read
                                        if page_mode = '1' then
                                             -- Store current byte in page data register
                                             case page_byte_cntr is
                                                  when 0  => page_rddata_reg(7 downto 0) <= eeprom_rddata_reg(6 downto 0) & eep_sdo;
                                                  when 1  => page_rddata_reg(15 downto 8) <= eeprom_rddata_reg(6 downto 0) & eep_sdo;
                                                  when 2  => page_rddata_reg(23 downto 16) <= eeprom_rddata_reg(6 downto 0) & eep_sdo;
                                                  when 3  => page_rddata_reg(31 downto 24) <= eeprom_rddata_reg(6 downto 0) & eep_sdo;
                                                  when 4  => page_rddata_reg(39 downto 32) <= eeprom_rddata_reg(6 downto 0) & eep_sdo;
                                                  when 5  => page_rddata_reg(47 downto 40) <= eeprom_rddata_reg(6 downto 0) & eep_sdo;
                                                  when 6  => page_rddata_reg(55 downto 48) <= eeprom_rddata_reg(6 downto 0) & eep_sdo;
                                                  when 7  => page_rddata_reg(63 downto 56) <= eeprom_rddata_reg(6 downto 0) & eep_sdo;
                                                  when 8  => page_rddata_reg(71 downto 64) <= eeprom_rddata_reg(6 downto 0) & eep_sdo;
                                                  when 9  => page_rddata_reg(79 downto 72) <= eeprom_rddata_reg(6 downto 0) & eep_sdo;
                                                  when 10 => page_rddata_reg(87 downto 80) <= eeprom_rddata_reg(6 downto 0) & eep_sdo;
                                                  when 11 => page_rddata_reg(95 downto 88) <= eeprom_rddata_reg(6 downto 0) & eep_sdo;
                                                  when 12 => page_rddata_reg(103 downto 96) <= eeprom_rddata_reg(6 downto 0) & eep_sdo;
                                                  when 13 => page_rddata_reg(111 downto 104) <= eeprom_rddata_reg(6 downto 0) & eep_sdo;
                                                  when 14 => page_rddata_reg(119 downto 112) <= eeprom_rddata_reg(6 downto 0) & eep_sdo;
                                                  when 15 => page_rddata_reg(127 downto 120) <= eeprom_rddata_reg(6 downto 0) & eep_sdo;
                                                  when 16 => page_rddata_reg(135 downto 128) <= eeprom_rddata_reg(6 downto 0) & eep_sdo;
                                                  when 17 => page_rddata_reg(143 downto 136) <= eeprom_rddata_reg(6 downto 0) & eep_sdo;
                                                  when 18 => page_rddata_reg(151 downto 144) <= eeprom_rddata_reg(6 downto 0) & eep_sdo;
                                                  when 19 => page_rddata_reg(159 downto 152) <= eeprom_rddata_reg(6 downto 0) & eep_sdo;
                                                  when 20 => page_rddata_reg(167 downto 160) <= eeprom_rddata_reg(6 downto 0) & eep_sdo;
                                                  when 21 => page_rddata_reg(175 downto 168) <= eeprom_rddata_reg(6 downto 0) & eep_sdo;
                                                  when 22 => page_rddata_reg(183 downto 176) <= eeprom_rddata_reg(6 downto 0) & eep_sdo;
                                                  when 23 => page_rddata_reg(191 downto 184) <= eeprom_rddata_reg(6 downto 0) & eep_sdo;
                                                  when 24 => page_rddata_reg(199 downto 192) <= eeprom_rddata_reg(6 downto 0) & eep_sdo;
                                                  when 25 => page_rddata_reg(207 downto 200) <= eeprom_rddata_reg(6 downto 0) & eep_sdo;
                                                  when 26 => page_rddata_reg(215 downto 208) <= eeprom_rddata_reg(6 downto 0) & eep_sdo;
                                                  when 27 => page_rddata_reg(223 downto 216) <= eeprom_rddata_reg(6 downto 0) & eep_sdo;
                                                  when 28 => page_rddata_reg(231 downto 224) <= eeprom_rddata_reg(6 downto 0) & eep_sdo;
                                                  when 29 => page_rddata_reg(239 downto 232) <= eeprom_rddata_reg(6 downto 0) & eep_sdo;
                                                  when 30 => page_rddata_reg(247 downto 240) <= eeprom_rddata_reg(6 downto 0) & eep_sdo;
                                                  when 31 => page_rddata_reg(255 downto 248) <= eeprom_rddata_reg(6 downto 0) & eep_sdo;
                                                  when others => null;
                                             end case;
                                             
                                             if page_byte_cntr < PAGE_SIZE - 1 then
                                                  page_byte_cntr <= page_byte_cntr + 1;
                                                  bit_cntr <= 7;
                                             else
                                                  -- All 32 bytes read
                                                  eeprom_cycle_state <= EEPROM_NEGATE_CS;
                                             end if;
                                        else
                                             -- Byte mode: single byte read
                                             bit_cntr <= 7;
                                             eeprom_cycle_state <= EEPROM_NEGATE_CS;
                                        end if;
                                   else
                                        bit_cntr <= bit_cntr - 1;
                                   end if;
                              end if;
                         end if;                       
                         
                    when EEPROM_NEGATE_CS =>
                         
                         if strobe_1us = '1' then
                              if sclk = '1' then
                                   sclk <= '0';
                                   eeprom_cs_n <= '1';
                              else
                                   sclk <= '1';
                                   if sTYPE_DATA = WREN_INSTRUCTION then
                                        eeprom_cycle_state <= EEPROM_WRITE_START;
                                   else
                                        eeprom_cycle_state <= EEPROM_STATE_DONE;
                                   end if;
                              end if;
                         end if;
                    
                    when EEPROM_STATE_DONE =>
                         eeprom_cycle_state <= IDLE;
                         eeprom_done <= '1';
                         
                    when others =>
                         eeprom_cycle_state <= IDLE;
                    
               end case;
                    
          end if;
     end process;
     
     eep_sdi <= SDI;
     eep_csn <= eeprom_cs_n;
     eep_sclk <= sclk;
     eeprom_rddata <= eeprom_rddata_reg;
     eeprom_page_rddata <= page_rddata_reg;

end RTL;