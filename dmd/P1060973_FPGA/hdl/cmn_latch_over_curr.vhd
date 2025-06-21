---------------------------------------------------------------------
-- Project:    COMMON
-- Company:    Varian Medical
-- Language:   VHDL
-- File:       cmn_latch_over_curr.vhd (VHDL Source)
--
-- Description:
-- Latch Over Current status
--
-- History
-- 2014-03-11 VY Updated to use as a common module
---------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity cmn_latch_over_curr is
    generic
    (
           NO_OF_OCS               : integer := 2                          -- Number of Over-current signals coming in
    );
    port
    (
           clk                     : in  std_logic;
           reset                   : in  std_logic;
           oc_in                   : in  std_logic_vector(NO_OF_OCS-1 downto 0);         -- over current input(s), assuming low to high
           sw_clr_oc_latch         : in  std_logic_vector(NO_OF_OCS-1 downto 0);         -- software clear(s)
           pwm_enable              : in  std_logic;                                      -- PWM enable
           latch_oc                : out std_logic_vector(NO_OF_OCS-1 downto 0);         -- latch Over current status
           overcurr_fault          : out std_logic                                       -- driver fault
    );
end cmn_latch_over_curr;


------------------------------------------------------------------
-- Declarations
------------------------------------------------------------------

architecture behavioral of cmn_latch_over_curr is

  signal   deb_oc_in               : std_logic_vector(NO_OF_OCS-1 downto 0);
  signal   deb_oc_in_d1            : std_logic_vector(NO_OF_OCS-1 downto 0);
  signal   deb_rising_oc           : std_logic_vector(NO_OF_OCS-1 downto 0);
  signal   int_latch_oc            : std_logic_vector(NO_OF_OCS-1 downto 0);

  function or_reduce( V: std_logic_vector )
      return std_ulogic is
      variable result: std_ulogic;
    begin
      for i in V'range loop
        if i = V'left then
          result := V(i);
        else
          result := result OR V(i);
        end if;
        exit when result = '1';
      end loop;
      return result;
    end or_reduce;
    
begin
    
     gen_debounce: for i in 0 to (NO_OF_OCS-1) generate
     i_debounce_ovr_current: entity work.cmn_debouncer
     generic map
     (
          DEBOUNCE_TIME_LTOH  => 10,
          DEBOUNCE_TIME_HTOL  => 0
     )
     port map
     (
          clk                 => clk,
          reset               => reset,
          clk_en              => '1',
          bypass              => '0',
          sig_in              => oc_in(i),
          sig_out             => deb_oc_in(i)
     );
     end generate;
     
     process(clk,reset)
       begin
         if (reset = '1') then
           deb_oc_in_d1  <=  (others => '0');
         elsif rising_edge(clk) then
           deb_oc_in_d1  <=  deb_oc_in;
         end if;
       end process;
     
     process(deb_oc_in,deb_oc_in_d1)
       begin
         for i in 0 to (NO_OF_OCS-1) loop
           deb_rising_oc  <=  deb_oc_in and not(deb_oc_in_d1);
         end loop;
       end process;
          
     process(clk,reset)
       begin
         if (reset = '1') then
           int_latch_oc  <=  (others => '0');
         elsif rising_edge(clk) then
           for i in 0 to (NO_OF_OCS-1) loop
             if (deb_rising_oc(i) = '1') then
               int_latch_oc(i)  <=  '1';
             elsif ((sw_clr_oc_latch(i) = '1') and (pwm_enable = '0')) then
               int_latch_oc(i)  <=  '0';
             end if;
           end loop;
         end if;
       end process;

     latch_oc                 <=  int_latch_oc;
     
     overcurr_fault           <=  or_reduce(int_latch_oc);

end behavioral;
