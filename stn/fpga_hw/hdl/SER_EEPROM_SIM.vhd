library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SER_EEPROM_SIM is
Port
(
     CS_N           : in      std_logic;
     SCLK           : in      std_logic;
     SI             : in      std_logic;
     SO             : out     std_logic 
);
end SER_EEPROM_SIM;

architecture RTL of SER_EEPROM_SIM is

     type EEPROM_STATE_TYPE is (IDLE, GET_INSTRUCTION, GET_ADDRESS, SEND_DATA, GET_DATA, CHECK_CS_STATE);
     signal EEPROM_STATE           : EEPROM_STATE_TYPE := IDLE;
     
     constant WRITE_INSTRUCTION          : std_logic_vector(7 downto 0) := X"02";
     constant READ_INSTRUCTION           : std_logic_vector(7 downto 0) := X"03";
     constant RESET_WRITE_ENABLE_LATCH   : std_logic_vector(7 downto 0) := X"04";
     constant WRITE_ENABLE_LATCH         : std_logic_vector(7 downto 0) := X"06";
     constant READ_STATUS_INSTRUCTION    : std_logic_vector(7 downto 0) := X"05";
     constant WRITE_STATUS_INSTRUCTION   : std_logic_vector(7 downto 0) := X"01";

     type EEPROM_TYPE is array(8191 downto 0) of std_logic_vector(7 downto 0);
     signal SERIAL_EEPROM          : EEPROM_TYPE;
     
     signal WR_EN_LATCH            : std_logic;
     signal BIT_COUNT              : integer range 0 to 15 := 0;
     signal INSTRUCTION            : std_logic_vector(7 downto 0) := X"00";
     signal RD_DATA                : std_logic_vector(7 downto 0) := X"00";
     signal WR_DATA                : std_logic_vector(7 downto 0) := X"00";
     signal ADDRESS                : std_logic_vector(15 downto 0) := X"0000";
     
     -- (EL 08/05/11) control bits in the EEPROM
     signal WPEN                   : std_logic := '0';      -- Write-Protect Enable
     signal BP0                    : std_logic := '0';      -- Block Protection
     signal BP1                    : std_logic := '0';      -- Block Protection
     signal SO_BUF                 : std_logic;
     signal SO_NEG                 : std_logic;
     
begin

     process (SCLK)
     begin
     
          if rising_edge(SCLK) then
                    SO_BUF <= '1';
                    case EEPROM_STATE is
                         when IDLE =>
                                   if CS_N = '0' then
                                        EEPROM_STATE <= GET_INSTRUCTION;
                                        INSTRUCTION <= INSTRUCTION(6 downto 0) & SI;
                                        BIT_COUNT <= 0;
                                        --WR_EN_LATCH <= '0';
                                   end if;
                         
                         when GET_INSTRUCTION =>
                                   if CS_N = '0' then
                                        if BIT_COUNT < 6 then
                                             -- shift in 7 bits in this loop
                                             INSTRUCTION <= INSTRUCTION(6 downto 0) & SI;
                                             BIT_COUNT <= BIT_COUNT + 1;
                                        else
                                             -- this is the 8 th bit
                                             if (INSTRUCTION(6 downto 0) & SI) = WRITE_ENABLE_LATCH then
                                                  -- (EL 08/05/11) go to IDLE after the last bit of the instruction is received at the interface
                                                  EEPROM_STATE <= IDLE;
                                                  WR_EN_LATCH <= '1';
                                                  
                                             -- (EL 08/05/11) instruction to reset the write enable latch
                                             elsif (INSTRUCTION(6 downto 0) & SI) = RESET_WRITE_ENABLE_LATCH then
                                                  EEPROM_STATE <= IDLE;
                                                  WR_EN_LATCH <= '0';

                                             elsif (INSTRUCTION(6 downto 0) & SI) = READ_INSTRUCTION or (INSTRUCTION(6 downto 0) & SI) = WRITE_INSTRUCTION then           
                                                  EEPROM_STATE <= GET_ADDRESS;
                                             
                                             elsif (INSTRUCTION(6 downto 0) & SI) = READ_STATUS_INSTRUCTION then
                                                  BIT_COUNT <= 0;
                                                  EEPROM_STATE <= SEND_DATA;
                                                  SO_BUF <= '1';
                                                  -- (EL 08/05/11) Read Status Register
                                                  -- [7]     WPEN (Write-Protect Enable)
                                                  -- [6:4]   undefined
                                                  -- [3]     BP1 (Block Protection)
                                                  -- [2]     BP0 (Block Protection)
                                                  -- [1]     WEL (Write Enable Latch) - read-only
                                                  -- [0]     WIP (Write-In-Process) - read-only
                                                  SO_BUF <= WPEN;
                                                  RD_DATA <= "000" & BP1 & BP0 & WR_EN_LATCH & '0' & '0';                                             
                                                                                               
                                             -- (EL 08/05/11) instruction to write the status register
                                             elsif (INSTRUCTION(6 downto 0) & SI) = WRITE_STATUS_INSTRUCTION then
                                                  BIT_COUNT <= 0;
                                                  EEPROM_STATE <= GET_DATA;
                                             else
                                                  EEPROM_STATE <= IDLE;
                                             end if;
                                             
                                             INSTRUCTION <= INSTRUCTION(6 downto 0) & SI;
                                             BIT_COUNT <= 0;
                                                       
                                             
                                        end if;
                                   else
                                        EEPROM_STATE <= IDLE;
                                   end if;

                         -- get 16 bit address         
                         when GET_ADDRESS =>
                                   if CS_N = '0' then
                                        if BIT_COUNT <= 14 then
                                             ADDRESS <= ADDRESS(14 downto 0) & SI;
                                             BIT_COUNT <= BIT_COUNT + 1;
                                        else
                                             ADDRESS <= ADDRESS(14 downto 0) & SI;
                                             BIT_COUNT <= 0;
                                             
                                             if INSTRUCTION = READ_INSTRUCTION then
                                                  EEPROM_STATE <= SEND_DATA;
                                                  SO_BUF <= SERIAL_EEPROM(conv_integer(ADDRESS(11 downto 0) & SI))(7);
                                                  RD_DATA <= SERIAL_EEPROM(conv_integer(ADDRESS(11 downto 0) & SI))(6 downto 0) & '0';
                                             else
                                                  EEPROM_STATE <= GET_DATA;
                                             end if;
                                        end if;
                                   else
                                        EEPROM_STATE <= IDLE;
                                   end if;
                                   
                         when SEND_DATA =>
                                   if CS_N = '0' then
                                        if BIT_COUNT < 7 then
                                             -- if BIT_COUNT = 0 then
                                                  -- SO_BUF <= SERIAL_EEPROM(conv_integer(ADDRESS(12 downto 0)))(7);
                                                  -- RD_DATA <= SERIAL_EEPROM(conv_integer(ADDRESS(12 downto 0)))(6 downto 0) & '0';
                                             -- else
                                             SO_BUF <= RD_DATA(7);
                                             RD_DATA <= RD_DATA(6 downto 0) & '0';
                                             --end if;
                                             BIT_COUNT <= BIT_COUNT + 1;
                                        else
                                             SO_BUF <= RD_DATA(7);
                                             RD_DATA <= RD_DATA(6 downto 0) & '0';
                                             BIT_COUNT <= 0;
                                             EEPROM_STATE <= IDLE;
                                        end if;
                                   else
                                        EEPROM_STATE <= IDLE;
                                   end if;
                                   
                         when GET_DATA =>
                                   if CS_N = '0' then
                                        if BIT_COUNT < 7 then
                                             WR_DATA <= WR_DATA(6 downto 0) & SI;
                                             BIT_COUNT <= BIT_COUNT + 1;
                                        else
                                             BIT_COUNT <= 0;
                                             -- (EL 08/05/11) write to the status register if the instruction is WRITE_EEPROM_STATUS_REG
                                             --   else write to the EEPROM data
                                             if (INSTRUCTION = WRITE_STATUS_INSTRUCTION) then
                                                  WPEN <= WR_DATA(6);
                                                  BP1 <= WR_DATA(2);
                                                  BP0 <= WR_DATA(1);
                                             elsif WR_EN_LATCH = '1' then
                                                  SERIAL_EEPROM(conv_integer(ADDRESS(12 downto 0))) <= WR_DATA(6 downto 0) & SI;
--                                                  WR_EN_LATCH <= '0';
                                             end if;
                                             EEPROM_STATE <= IDLE;
                                        end if;
                                   else
                                        EEPROM_STATE <= IDLE;
                                   end if;
                                   
                         when CHECK_CS_STATE =>
                                   if CS_N = '1' then
                                        WR_EN_LATCH <= '1';
                                        EEPROM_STATE <= IDLE;
                                   else
                                        EEPROM_STATE <= IDLE;
                                   end if;
                         
                         when others =>
                                   EEPROM_STATE <= IDLE;
                                   
                    end case;
          end if;
     end process;        
     
     -- According to the datasheet (page 3), the Output Valid from Clock Low is 475 ns (worst case) from the negative edge of SCLK
     process (SCLK)
     begin
          if (falling_edge(SCLK)) then
               SO_NEG <= SO_BUF;
          end if;
     end process;
     
     SO <= SO_NEG after 230 ns;
     
end RTL;

