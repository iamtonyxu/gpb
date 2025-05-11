---------------------------------------------------------------------
-- Project:    HET
-- Company:    Varian Medical Systems
-- File:       cmn_debouncer.vhd
--
-- Description:
--
--    Filter out spurious transitions during level changes.
--    
--    1. Debounce incoming signal on selected edge(s).
--       - Generics DEBOUNCE_TIME_LTOH/_HTOL determine debounce duration.
--       - Specifying 0 selects no debouncing.
--    2. Allow bypass of debouncing for simulation efficiency.
--
---------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity cmn_debouncer is
Generic
(
     DEBOUNCE_TIME_LTOH    : integer := 0;  -- based on clocks with clk_en high, 0 = bypass
     DEBOUNCE_TIME_HTOL    : integer := 0   -- based on clocks with clk_en high, 0 = bypass
);
Port
(
     clk                   : in  std_logic;
     reset                 : in  std_logic;
     clk_en                : in  std_logic;
     bypass                : in  std_logic;
     sig_in                : in  std_logic;
     sig_out               : out std_logic
);
end cmn_debouncer;

architecture rtl of cmn_debouncer is

     signal    sync_sig_in             : std_logic;
     signal    debounce_cntr           : integer;
     signal    deb_sig_out             : std_logic;

begin
     
     sig_out <= deb_sig_out;

     p_DEBOUNCE : process(reset, clk)
     begin
          if (reset = '1') then
               deb_sig_out   <= '0';
               sync_sig_in   <= '0';
               debounce_cntr <= 0;
          elsif rising_edge(clk) then
               -- synchronize async input to clock
               sync_sig_in   <= sig_in;

               if (deb_sig_out = '1') then
                    --------------------------------------------------------------------------------------------------------------
                    -- debounce 1->0 transition.
                    --------------------------------------------------------------------------------------------------------------
                    if (sync_sig_in = '0') then
                         -- out is 1 and in is 0, see if 0 for required time
                         if DEBOUNCE_TIME_HTOL = 0 or bypass = '1' then
                              -- bypass debouncer
                              deb_sig_out <= '0';
                         else
                              -- debounce
                              if (clk_en = '1') then
                                   if (debounce_cntr /= 0) then               -- wait for required time
                                        debounce_cntr <= debounce_cntr - 1;
                                   else                                       -- stayed 0 for required time, set out to 0
                                        deb_sig_out <= '0';
                                        debounce_cntr <= DEBOUNCE_TIME_LTOH;  -- reset counter for next 0->1 transition
                                   end if;
                              end if;
                         end if;
                    else
                         -- out is 1 and in is 1, keep 1 and reset counter to wait for next transition
                         debounce_cntr <= DEBOUNCE_TIME_HTOL;
                    end if;
               else
                    --------------------------------------------------------------------------------------------------------------
                    -- Debounce 0->1 transition.
                    --------------------------------------------------------------------------------------------------------------
                    if (sync_sig_in = '1') then
                         -- out is 0 and in is 1, see if 1 for required time
                         if DEBOUNCE_TIME_LTOH = 0 or bypass = '1' then
                              -- bypass debouncer
                              deb_sig_out <= '1';
                         else
                              -- debounce
                              if (clk_en = '1') then
                                   if (debounce_cntr /= 0) then               -- wait for required time
                                        debounce_cntr <= debounce_cntr - 1;
                                   else                                       -- stayed 1 for required time, set out to 1
                                        deb_sig_out <= '1';
                                        debounce_cntr <= DEBOUNCE_TIME_LTOH;  -- reset counter for next 1->0 transition
                                   end if;
                              end if;
                         end if;
                    else
                         -- out is 0 and in is 0, keep 0 and reset counter to wait for next transition
                         debounce_cntr <= DEBOUNCE_TIME_LTOH;
                    end if;
                              
               end if;

          end if;

     end process;

end rtl;

