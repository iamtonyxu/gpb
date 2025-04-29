---------------------------------------------------------------------
-- Project:    MSSB-Hdw
-- Company:    Varian Medical
-- Language:   VHDL
-- File:       serial_eeprom_if.vhd (VHDL Source)
--
-- Description:
--   This module handles the interface to the serial eeprom.
--   This was originally meant to be used in conjunction with MSSB.
--   However, since this is not a prerequisite to its use, it
--   has been renamed to sound more general.
--
--   This provides a translation between the user (parallel) and the
--   EEPROM (serial).
--
-- History
-- V0.01  07/10/12  Edmund Leung    Initial version
-- V0.02  2016Jul20 Rich Chew       Renamed, and added explanation
-- v1.00  04/29/25  Yalong Xu       Add comments, and run test
---------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;


entity serial_eeprom_if is
     Port
     (
          reset               : in      std_logic;
          clk                 : in      std_logic;
          strobe_1us          : in      std_logic;

          eeprom_start        : in      std_logic;
          eeprom_addr         : in      std_logic_vector(15 downto 0);
          eeprom_wrdata       : in      std_logic_vector(7 downto 0);
          eeprom_rddata       : out     std_logic_vector(7 downto 0);
          eeprom_done         : out     std_logic;
          eeprom_inst         : in      std_logic_vector(3 downto 0);
          eeprom_en           : in      std_logic;

          eep_sdo             : in      std_logic;
          eep_sdi             : out     std_logic;
          eep_sclk            : out     std_logic;
          eep_csn             : out     std_logic
     );
end serial_eeprom_if;


architecture RTL of serial_eeprom_if is

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

     constant READ_INSTRUCTION                    : std_logic_vector(7 downto 0) := X"03";
     constant WRITE_INSTRUCTION                   : std_logic_vector(7 downto 0) := X"02";
     constant WREN_INSTRUCTION                    : std_logic_vector(7 downto 0) := X"06";
     constant RDSR_INSTRUCTION                    : std_logic_vector(7 downto 0) := X"05";
     --constant WRSR_INSTRUCTION                  : std_logic_vector(7 downto 0) := X"01";
     
     --constant TYPE_READ                              : std_logic := '0';
     constant TYPE_READ                           : std_logic_vector(1 downto 0) := "00";
     --constant TYPE_WRITE                             : std_logic := '1';
     --constant TYPE_WRITE                             : std_logic_vector(1 downto 0) := "01";

     --signal eeprom_cycle_type                        : std_logic;   
     signal eeprom_cycle_type                     : std_logic_vector(1 downto 0);    
     signal eeprom_addr_reg                       : std_logic_vector(15 downto 0);
     signal eeprom_wrdata_reg                     : std_logic_vector(7 downto 0);
     signal eeprom_rddata_reg                     : std_logic_vector(7 downto 0);
     --signal EEPROM_CYCLE_GO                     : std_logic;   

     signal sclk                                  : std_logic;
     signal SDI                                   : std_logic;
     signal eeprom_cs_n                           : std_logic;
     signal TYPE_DATA                             : std_logic_vector(7 downto 0);
     signal sTYPE_DATA                            : std_logic_vector(7 downto 0);
     signal bit_cntr                              : integer range 0 to 16 := 0;
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

          elsif rising_edge(CLK) then
          
               eeprom_done <= '0';
               --SDI <= '1';
               
               case eeprom_cycle_state is

                    when IDLE =>

                         if eeprom_start = '1' and eeprom_en = '1' then

                              if eeprom_inst(1 downto 0) = "00" then
                                   eeprom_cycle_state <= EEPROM_READ_START;
                              elsif eeprom_inst(1 downto 0) = "10" then
                                   eeprom_cycle_state <= EEPROM_STATUS_READ_START;
                              else
                                   eeprom_cycle_state <= EEPROM_WREN_START;
                              end if;
                              sclk <= '1';        -- set a proper starting point for state machine
                              
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
                         
                    -- actual write proces
                    when EEPROM_WRITE_START =>
                         TYPE_DATA <= WRITE_INSTRUCTION;    
                         sTYPE_DATA <= WRITE_INSTRUCTION;   
                         eeprom_cycle_state <= EEPROM_SET_CS;
                         bit_cntr <= 7;
                         eeprom_cs_n <= '1';
                    
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
                                        -- the write access begins with a WREN instruction and it needs to be terminated with a CS negation
                                        if sTYPE_DATA = WREN_INSTRUCTION then
                                             eeprom_cycle_state <= EEPROM_NEGATE_CS;
                                        -- if everything else, send the address
                                        elsif sTYPE_DATA = RDSR_INSTRUCTION then
                                             eeprom_cycle_state <= EEPROM_READ_DATA;
                                             bit_cntr <= 7; 
                                        else
                                             eeprom_cycle_state <= EEPROM_SEND_ADDRESS;
                                             -- next is sending address which is 16 bit address
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
                                        else --eeprom_cycle_type = TYPE_WRITE then
                                             eeprom_cycle_state <= EEPROM_WRITE_DATA;
                                             eeprom_wrdata_reg  <= eeprom_wrdata(7 downto 0);
                                        end if;
                                        
                                        bit_cntr <= 7;                          -- 8 bit data
                                   else
                                        bit_cntr <= bit_cntr - 1;
                                   end if;
                              end if;
                         end if;                       

                         
                    when EEPROM_WRITE_DATA =>
                         
                         -- shift in the write data
                         if strobe_1us = '1' then
                              if sclk = '1' then 
                                   SDI <= eeprom_wrdata_reg(7);
                                   eeprom_wrdata_reg <= eeprom_wrdata_reg(6 downto 0) & '0';
                                   sclk <= '0';
                              else
                                   sclk <= '1';
                                   if bit_cntr = 0 then
                                        eeprom_cycle_state <= EEPROM_NEGATE_CS;
                                        bit_cntr <= 7;                          -- 8 bit data
                                   else
                                        bit_cntr <= bit_cntr - 1;
                                   end if;
                              end if;
                         end if;                       

                         
                    when EEPROM_READ_DATA =>
                         -- shift out the read data
                         if strobe_1us = '1' then
                              if sclk = '1' then 
                                   sclk <= '0';
                              else
                                   sclk <= '1';
                                   eeprom_rddata_reg <= eeprom_rddata_reg(6 downto 0) & eep_sdo;          -- MSB is shifted out first  
                                   
                                   if bit_cntr = 0 then
                                        bit_cntr <= 7;
                                        eeprom_cycle_state <= EEPROM_NEGATE_CS;
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
                                   -- if it was a wr-en-latch instruction, next is actual write process
                                   if sTYPE_DATA = WREN_INSTRUCTION then
                                        eeprom_cycle_state <= EEPROM_WRITE_START;
                                   else
                                        eeprom_cycle_state <= EEPROM_STATE_DONE;
                                   end if;
                              end if;
                         end if;
                    
                    when EEPROM_STATE_DONE =>
                         -- if read/write is finished, raise "DONE" flag.
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

end RTL;

