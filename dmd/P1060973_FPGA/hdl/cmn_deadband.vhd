---------------------------------------------------------------------
-- Project:    HET
-- Company:    Varian Medical Systems
-- File:       cmn_deadband.vhd
--
-- Designer:   K. Greenberg
--
-- Description:
--
--    Create a deadband region for a pair of differential signals in applications where the
--    external motor driver does not include a deadband mechanism.
--
--    The deadband region effectively delays the high-going signal from going high until its
--    low-going counterpart has been low for the duration of the deadband time.
--
--    The deadband duration is defined by the DEADBAND_TIME generic.
--    deadband_duration = DEADBAND_TIME * CLK.period
--    e.g. If the CLK is 25 MHz and DEADBAND_TIME = 10, deadband_duration = 10 * 40 ns = 400 ns
--
--    Note: There is also an overall delay of 3 CLK cycles.
--
--    Example: DEADBAND_TIME = 2
--                _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   _   
--    CLK       _| |_| |_| |_| |_| |_| |_| |_| |_| |_| |_| |_| |_| |_| |_| |_| |_| |_| |_| |_
--
--                    _______________________________________
--    PWMH_IN   _____|                                       |_______________________________
--              _____                                         _______________________________
--    PWML_IN        |_______________________________________|
--
--                                        _______________________________
--    PWMH_OUT   ________________________|                               |___________________
--               ________________                                                 ___________
--    PWML_OUT                   |_______________________________________________|
--
--                          ---> |   2   |<---                      ---> |   2   |<---
--
----------------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity CMN_DEADBAND is
     generic
     (
          DEADBAND_TIME  : integer := 4
     );
     port
     (
          RESET          : in      std_logic;
          CLK            : in      std_logic;

          PWMH_IN        : in      std_logic;
          PWML_IN        : in      std_logic;

          CLK_EN         : in      std_logic;
          PWMH_OUT       : out     std_logic;
          PWML_OUT       : out     std_logic
     );
end CMN_DEADBAND;

architecture RTL of CMN_DEADBAND is

     type DB_STATE_TYPE is
          (
               DB_STATE_00,
               DB_STATE_01,
               DB_STATE_10,
               DB_STATE_01_WAIT,
               DB_STATE_10_WAIT
          );

     signal    DB_STATE            : DB_STATE_TYPE;

     constant  DEADBAND_CNTR_MAX   : integer := DEADBAND_TIME-1;
     signal    DEADBAND_CNTR       : integer range 0 to DEADBAND_CNTR_MAX;

     signal    DESIRED_PWM         : std_logic_vector(1 downto 0);
     signal    ACTUAL_PWM          : std_logic_vector(1 downto 0);

begin

     PWMH_OUT <= ACTUAL_PWM(1);
     PWMl_OUT <= ACTUAL_PWM(0);

     pDB_STATE : process (RESET, CLK)
     begin

          if (RESET = '1') then
               DB_STATE      <= DB_STATE_00;
               DEADBAND_CNTR <= 0;
               DESIRED_PWM   <= "00";
               ACTUAL_PWM    <= "00";
          elsif (rising_edge(CLK)) then
               if (CLK_EN = '1') then

               -- sync states just to be sure
               DESIRED_PWM <= PWMH_IN & PWML_IN;

               case DB_STATE is

                    when DB_STATE_00 =>
                         if    (DESIRED_PWM = "01") then
                              DB_STATE <= DB_STATE_01;
                         elsif (DESIRED_PWM = "10") then
                              DB_STATE <= DB_STATE_10;
                         end if;
                         ACTUAL_PWM <= "00";

                    when DB_STATE_01 =>
                         if (DESIRED_PWM /= "01") then
                              DB_STATE <= DB_STATE_01_WAIT;
                         end if;
                         DEADBAND_CNTR <= DEADBAND_CNTR_MAX;
                         ACTUAL_PWM    <= "01";

                    when DB_STATE_10 =>
                         if (DESIRED_PWM /= "10") then
                              DB_STATE <= DB_STATE_10_WAIT;
                         end if;
                         DEADBAND_CNTR <= DEADBAND_CNTR_MAX;
                         ACTUAL_PWM    <= "10";

                    -- in this state, outputs will be 0 to impose deadtime
                    when DB_STATE_01_WAIT =>
                         if    (DESIRED_PWM = "01") then
                              DB_STATE <= DB_STATE_01;
                         elsif (DEADBAND_CNTR /= 0) then
                              DEADBAND_CNTR <= DEADBAND_CNTR - 1;
                         elsif (DESIRED_PWM = "10") then
                              DB_STATE <= DB_STATE_10;
                         else
                              DB_STATE <= DB_STATE_00;
                         end if;
                         ACTUAL_PWM <= "00";

                    -- in this state, outputs will be 0 to impose deadtime
                    when DB_STATE_10_WAIT =>
                         if    (DESIRED_PWM = "10") then
                              DB_STATE <= DB_STATE_10;
                         elsif (DEADBAND_CNTR /= 0) then
                              DEADBAND_CNTR <= DEADBAND_CNTR - 1;
                         elsif (DESIRED_PWM = "01") then
                              DB_STATE <= DB_STATE_01;
                         else
                              DB_STATE <= DB_STATE_00;
                         end if;
                         ACTUAL_PWM <= "00";

               end case;
               end if;

          end if;

     end process;

end RTL;



