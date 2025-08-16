-- serial_mii.vhd


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;



entity SERIAL_MII is
     Port
     (
          RESET               : in      std_logic;
          CLK                 : in      std_logic;

          CSW                 : in      std_logic;
          WRITE_DATA          : in      std_logic_vector (31 downto 0);
          READ_DATA           : out     std_logic_vector (31 downto 0);

          MDIO_OUT            : out     std_logic;
          MDIO_IN             : in      std_logic;
          MDIO_ENABLE         : out     std_logic;
          MDC                 : out     std_logic
     );
end SERIAL_MII;


architecture BEHAVIORAL of SERIAL_MII is

     signal    SERIAL_MII_PHY_ADDR                : std_logic_vector(4 downto 0);
     signal    SERIAL_MII_REG_ADDR                : std_logic_vector(4 downto 0);
     signal    SERIAL_MII_CYCLE_TYPE              : std_logic;

     constant  SERIAL_MII_CLK_CNTR_VALUE          : integer                          := 20;
     constant  SERIAL_MII_CLK_CNTR_MAX            : integer                          := SERIAL_MII_CLK_CNTR_VALUE - 1;
     signal    SERIAL_MII_CLK_CNTR                : integer                          range 0 to SERIAL_MII_CLK_CNTR_MAX;
     constant  SERIAL_MII_CLK_CNTR_SHIFT          : integer                          := 10;
     constant  SERIAL_MII_CLK_CNTR_READ           : integer                          := 0;

     signal    SERIAL_MII_CLK                     : std_logic;

     constant  SERIAL_MII_CYCLE_TYPE_READ         : std_logic                        := '0';
     --constant  SERIAL_MII_CYCLE_TYPE_WRITE        : std_logic                        := '1';

     signal    SERIAL_MII_CYCLE_DONE              : std_logic;

     constant  SERIAL_MII_START                   : std_logic_vector(1 downto 0) :=  "01";
     constant  SERIAL_MII_OPCODE_READ             : std_logic_vector(1 downto 0) :=  "10";
     constant  SERIAL_MII_OPCODE_WRITE            : std_logic_vector(1 downto 0) :=  "01";
     constant  SERIAL_MII_TA                      : std_logic_vector(1 downto 0) :=  "10";

     signal    SERIAL_MII_READ_DATA               : std_logic_vector(15 downto 0);
     signal    SERIAL_MII_READ_DATA_TEMP          : std_logic_vector(15 downto 0);

     type      SERIAL_MII_CYCLE_STATE_TYPE        is
                                                  (
                                                       SERIAL_MII_CYCLE_STATE_HOME,
                                                       SERIAL_MII_CYCLE_STATE_WAIT_SHIFT,
                                                       SERIAL_MII_CYCLE_STATE_SHIFT,
                                                       SERIAL_MII_CYCLE_STATE_DONE
                                                  );
     signal    SERIAL_MII_CYCLE_STATE             : SERIAL_MII_CYCLE_STATE_TYPE;

     signal    SERIAL_MII_SHIFT                   : std_logic_vector(31 downto 0);
     constant  SERIAL_MII_SHIFT_COUNTER_MAX       : integer := 31;
     signal    SERIAL_MII_SHIFT_COUNTER           : integer range 0 to SERIAL_MII_SHIFT_COUNTER_MAX;
     signal    SERIAL_MII_OUTPUT_EN               : std_logic;

     --constant off_SERIAL_MII_CYCLE_CMD_STS        : std_logic_vector(7 downto 0) := X"00";
     --constant off_SERIAL_MII_TEST                 : std_logic_vector(7 downto 0) := X"04";
     
     
begin



     -- write data registers
     pWRITE_DATA : process (CLK, RESET)
     begin

          if (RESET = '1') then
               SERIAL_MII_PHY_ADDR      <= (others => '0');
               SERIAL_MII_REG_ADDR      <= (others => '0');
               SERIAL_MII_CYCLE_TYPE    <= SERIAL_MII_CYCLE_TYPE_READ;
          elsif (rising_edge (CLK)) then

               if (CSW = '1') then
                    SERIAL_MII_PHY_ADDR      <= "000" & WRITE_DATA(17 downto 16);
                    SERIAL_MII_REG_ADDR      <= WRITE_DATA(22 downto 18);
                    SERIAL_MII_CYCLE_TYPE    <= WRITE_DATA(23);
               end if;
               
          end if;

     end process;


     -- read data registers
     
     READ_DATA(15 downto 0)   <= SERIAL_MII_READ_DATA;
     READ_DATA(17 downto 16)  <= SERIAL_MII_PHY_ADDR(1 downto 0);
     READ_DATA(22 downto 18)  <= SERIAL_MII_REG_ADDR;
     READ_DATA(23)            <= SERIAL_MII_CYCLE_TYPE;
     READ_DATA(24)            <= SERIAL_MII_CYCLE_DONE;
     READ_DATA(31 downto 25)  <= (others => '0');


     -- create a clock enable for the serial MII interface
     pSERIAL_MII_CLK : process (RESET, CLK)
     begin


          if (RESET = '1') then
               SERIAL_MII_CLK_CNTR   <= SERIAL_MII_CLK_CNTR_MAX;
               SERIAL_MII_CLK        <= '0';
          elsif ( rising_edge(CLK) ) then

               -- count from max to 0, then back to max
               if (SERIAL_MII_CLK_CNTR /= 0) then
                    SERIAL_MII_CLK_CNTR   <= SERIAL_MII_CLK_CNTR - 1;
               else
                    SERIAL_MII_CLK_CNTR   <= SERIAL_MII_CLK_CNTR_MAX;
               end if;

               -- control clock
               if    (SERIAL_MII_CLK_CNTR = 10) then
                    SERIAL_MII_CLK <= '0';
               elsif (SERIAL_MII_CLK_CNTR = 0) then
                    SERIAL_MII_CLK <= '1';
               end if;

          end if;

     end process;



     -- create a state machine to handle the serial management interface
     pSERIAL_MII_CYCLE : process (RESET, CLK)


     begin

          if (RESET = '1') then
               SERIAL_MII_CYCLE_STATE        <= SERIAL_MII_CYCLE_STATE_HOME;
               SERIAL_MII_SHIFT_COUNTER      <= SERIAL_MII_SHIFT_COUNTER_MAX;
               SERIAL_MII_OUTPUT_EN          <= '0';
               SERIAL_MII_CYCLE_DONE         <= '0';
               SERIAL_MII_READ_DATA          <= (others => '0');
               SERIAL_MII_READ_DATA_TEMP     <= (others => '0');
               SERIAL_MII_SHIFT              <= (others => '0');
          elsif ( rising_edge(CLK) ) then

               -- defaults
               SERIAL_MII_CYCLE_DONE    <= '0';
               
               case SERIAL_MII_CYCLE_STATE is

                    when SERIAL_MII_CYCLE_STATE_HOME =>

                         SERIAL_MII_OUTPUT_EN     <= '0';
                         SERIAL_MII_SHIFT_COUNTER <= SERIAL_MII_SHIFT_COUNTER_MAX;

                         if (CSW = '1') then

                              -- assemble the shift register
                              SERIAL_MII_SHIFT(31 downto 30) <= SERIAL_MII_START;

                              if (WRITE_DATA(23) = SERIAL_MII_CYCLE_TYPE_READ) then
                                   SERIAL_MII_SHIFT(29 downto 28) <= SERIAL_MII_OPCODE_READ;
                              else
                                   SERIAL_MII_SHIFT(29 downto 28) <= SERIAL_MII_OPCODE_WRITE;
                              end if;

                              SERIAL_MII_SHIFT(27 downto 23) <= "000" & WRITE_DATA(17 downto 16);
                              SERIAL_MII_SHIFT(22 downto 18) <= WRITE_DATA(22 downto 18);
                              SERIAL_MII_SHIFT(17 downto 16) <= SERIAL_MII_TA;
                              SERIAL_MII_SHIFT(15 downto  0) <= WRITE_DATA(15 downto 0);

                              
                              SERIAL_MII_CYCLE_STATE   <= SERIAL_MII_CYCLE_STATE_WAIT_SHIFT;

                         end if;

                    when SERIAL_MII_CYCLE_STATE_WAIT_SHIFT =>

                         if (SERIAL_MII_CLK_CNTR = SERIAL_MII_CLK_CNTR_SHIFT) then
                              SERIAL_MII_OUTPUT_EN   <= '1';
                              SERIAL_MII_CYCLE_STATE <= SERIAL_MII_CYCLE_STATE_SHIFT;
                         end if;

                    when SERIAL_MII_CYCLE_STATE_SHIFT =>

                         if (SERIAL_MII_CLK_CNTR = SERIAL_MII_CLK_CNTR_SHIFT) then

                              if   (SERIAL_MII_SHIFT_COUNTER = 18) and (SERIAL_MII_CYCLE_TYPE = SERIAL_MII_CYCLE_TYPE_READ) then  -- at 18 if read, must get off bus
                                   SERIAL_MII_OUTPUT_EN   <= '0';
                                   SERIAL_MII_SHIFT_COUNTER <= SERIAL_MII_SHIFT_COUNTER - 1;    -- shift left
                                   SERIAL_MII_SHIFT <= SERIAL_MII_SHIFT(30 downto 0) & '0';
                              elsif (SERIAL_MII_SHIFT_COUNTER = 0) then                                                           -- at 0, regardless of cycle type, must get off the bus
                                   SERIAL_MII_OUTPUT_EN   <= '0';
                              else
                                   SERIAL_MII_SHIFT_COUNTER <= SERIAL_MII_SHIFT_COUNTER - 1;

                                   SERIAL_MII_SHIFT <= SERIAL_MII_SHIFT(30 downto 0) & '0';    -- shift left
                              end if;

                         end if;

                         -- shift in read data
                         if (SERIAL_MII_CYCLE_TYPE = SERIAL_MII_CYCLE_TYPE_READ) then
                              if   (SERIAL_MII_SHIFT_COUNTER < 16) and (SERIAL_MII_CLK_CNTR = SERIAL_MII_CLK_CNTR_READ) then  -- at 15 through 0, read data
                                   SERIAL_MII_READ_DATA_TEMP <=  SERIAL_MII_READ_DATA_TEMP(14 downto 0)& MDIO_IN;
                              end if;
                         end if;

                         -- go to the state SERIAL_MII_CYCLE_STATE_DONE, if the shifting is done
                         if (SERIAL_MII_SHIFT_COUNTER = 0) then
                              if (SERIAL_MII_CYCLE_TYPE = SERIAL_MII_CYCLE_TYPE_READ) and (SERIAL_MII_CLK_CNTR = SERIAL_MII_CLK_CNTR_READ) then
                                   SERIAL_MII_CYCLE_STATE <= SERIAL_MII_CYCLE_STATE_DONE;
                              elsif (SERIAL_MII_CLK_CNTR = SERIAL_MII_CLK_CNTR_SHIFT) then
                                   SERIAL_MII_CYCLE_STATE <= SERIAL_MII_CYCLE_STATE_DONE;
                              end if;
                         end if;

                    when SERIAL_MII_CYCLE_STATE_DONE =>
                         SERIAL_MII_CYCLE_DONE    <= '1';
                         SERIAL_MII_READ_DATA     <= SERIAL_MII_READ_DATA_TEMP;
                         SERIAL_MII_CYCLE_STATE   <= SERIAL_MII_CYCLE_STATE_HOME;
                         
                    when others =>
                         SERIAL_MII_CYCLE_STATE   <= SERIAL_MII_CYCLE_STATE_HOME;

               end case;

          end if;




     end process;

     MDIO_ENABLE    <= SERIAL_MII_OUTPUT_EN;
     MDIO_OUT       <= SERIAL_MII_SHIFT(31);
     MDC            <= SERIAL_MII_CLK;

end BEHAVIORAL;

