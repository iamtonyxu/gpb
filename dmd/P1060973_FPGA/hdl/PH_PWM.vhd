---------------------------------------------------------------------
-- Project:    COMMON
-- Company:    Varian Medical
-- Language:   VHDL
-- File:       PH_PWM.vhd (VHDL Source)
--
-- Description:
-- 3 phase PWM
--
-- History
-- 2011-03-29 KG Changed to use generics instead of common package.
--               Added more conditions to prevent PWM_counter
--               from going out of range.
---------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;



entity PH_PWM is
    Generic
    (
           MOTOR_PWM_PERIODE       : integer := 625;                       -- tCLK * MOTOR_PWM_PERIODE = motor PWM period
           PHASE_SHIFT             : integer := 0;                         -- tCLK * PHASE_SHIFT = phase shift value, valid 0 to (MOTOR_PWM_PERIODE - 1)
           PWM_CNTR_MAX            : integer := 80;                        -- tCLK * PWM_CNTR_MAX = filtering for fault signal
           MAX_CUR_SAMPLE_TIME     : integer := 128;                       -- tCLK * MAX_CUR_SAMPLE_TIME = maximum time in PWM cycle to sample phase A/B current
           ENABLE_CNTR_MAX         : integer := 3;                         -- tSYNC * ENABLE_CNTR_MAX = minimum time after ENABLE is active before fault is allowed
           FAULT_CNTR_MAX          : integer := 3                          -- tCLK * FAULT_CNTR_MAX = minimum time after pwm change before fault is allowed
    );
    Port
    (
           CLK                     : in  std_logic;
           RESET                   : in  std_logic;
           SYNC                    : in  std_logic;                                      -- synchronization pulse
           CLK_EN                  : in  std_logic;                                      -- clock enable
           --T1, T2, T3              : in  integer range 0 to (MOTOR_PWM_PERIODE / 2 - 1); -- phase a, b, c on time
           T1, T2, T3              : in  integer range 0 to (MOTOR_PWM_PERIODE / 2 - 1); -- phase a, b, c on time
           ENABLE                  : in  std_logic;                                      -- driver enable
           PD_FAULT                : in  std_logic;                                      -- hw driver status signal
           PWM                     : out std_logic_vector(3 downto 1);                   -- pwm outputs
           CUR_SL                  : out std_logic;                                      -- current sampling
           FAULT                   : out std_logic;                                      -- driver fault
           half_period_strobe      : out std_logic;
           start_period            : out std_logic
    );
end PH_PWM;


------------------------------------------------------------------
-- Declarations
------------------------------------------------------------------

architecture Behavioral of PH_PWM is

  constant HALF_PWM_PERIODE        : integer := (MOTOR_PWM_PERIODE / 2) - 1;
  signal   PWM_counter             : integer range 0 to HALF_PWM_PERIODE+1;

  signal   ENABLE_CNTR             : integer range 0 to ENABLE_CNTR_MAX;
  signal   PWM_CNTR                : integer range 0 to PWM_CNTR_MAX;
  signal   FAULT_CNTR              : integer range 0 to FAULT_CNTR_MAX;

  signal   sPWM                    : std_logic_vector(3 downto 1);
  signal   PD_FAULT_SYNC           : std_logic;
  signal   ENABLE_SYNC             : std_logic;
  signal   LAST_PWM                : std_logic_vector(3 downto 1);
  signal   LAST_ENABLE_SYNC        : std_logic;

begin

  ------------------------------------------------------------------
  -- PWM
  ------------------------------------------------------------------

  PWM_PROC: process(CLK)

  variable down              : boolean;
  variable pwm_out           : std_logic_vector(3 downto 1);
  variable start_timer       : std_logic_vector(1 downto 0);
  variable start_time        : boolean;

  begin
    if rising_edge(CLK) then
      if (CLK_EN = '1') then
      start_time := start_timer /= "11";

       -- set pwm outputs
      pwm_out := (others => '0');  -- default to low-side fets on
      if not start_time then
        if PWM_counter > (T1) then
          pwm_out(1) := '1';    -- high-side fet on
        end if;
        if PWM_counter >  (T2) then
          pwm_out(2) := '1';    -- high-side fet on
        end if;
        if PWM_counter >  (T3) then
          pwm_out(3) := '1';    -- high-side fet on
        end if;
      end if;

      -- synchronization
      if (SYNC = '1') then
        if PHASE_SHIFT > HALF_PWM_PERIODE then
          PWM_counter <= MOTOR_PWM_PERIODE - 1 - PHASE_SHIFT;
          down := TRUE;
        else
          PWM_counter <= PHASE_SHIFT;
          down := FALSE;
        end if;
        start_timer := start_timer(0) & '1';
      elsif (not down) and ((MOTOR_PWM_PERIODE mod 2) = 0) and (PWM_counter >= HALF_PWM_PERIODE) then
        down := TRUE;
        pwm_out := "111";    -- forced switching for high-side fets
      elsif (not down) and ((MOTOR_PWM_PERIODE mod 2) = 1) and (PWM_counter >= HALF_PWM_PERIODE+1) then
        down := TRUE;
        pwm_out := "111";    -- forced switching for high-side fets
      elsif down       and ((MOTOR_PWM_PERIODE mod 2) = 0) and (PWM_counter = 0) then
        down := FALSE;
      elsif down then
        PWM_counter <= PWM_counter - 1;
      else
        PWM_counter <= PWM_counter + 1;
      end if;

      -- Allow for odd divisors by staying at count zero for only one period if period is odd.
      if ((MOTOR_PWM_PERIODE mod 2) = 1) and PWM_counter = 1 then
          down := FALSE;
      end if;

      -- sample current if lower switches a, b closed
      CUR_SL <= '0';
      if pwm_out(2 downto 1) = "00" and PWM_counter < MAX_CUR_SAMPLE_TIME then
        CUR_SL <= '1';
      end if;

      -- check enable
      if (ENABLE = '0') then
        start_timer := "00";
      end if;

      sPWM <= not pwm_out;  -- PWM outputs are inverted
      end if;
    end if;

  end process PWM_PROC;

  PWM <= sPWM;
  start_period  <=  '1' when (PWM_counter = 0) else '0';

  ---

  pSYNC : process(CLK)
  begin

    if rising_edge(CLK) then
      if (CLK_EN = '1') then
        PD_FAULT_SYNC <= PD_FAULT;
        ENABLE_SYNC <= ENABLE;
      end if;
    end if;

  end process;


  pLAST : process(CLK)
  begin

    if rising_edge(CLK) then
      if (CLK_EN = '1') then
        LAST_PWM <= sPWM;
        LAST_ENABLE_SYNC <= ENABLE_SYNC;
      end if;
    end if;

  end process;


  pCOUNTERS : process(RESET, CLK)
  begin

    -- enable
    if (RESET = '1') then
      ENABLE_CNTR <= ENABLE_CNTR_MAX;
    elsif rising_edge(CLK) then
      if (CLK_EN = '1') then
      if (LAST_ENABLE_SYNC /= ENABLE_SYNC) then
        ENABLE_CNTR <= ENABLE_CNTR_MAX;
      elsif (ENABLE_CNTR > 0) and (SYNC = '1') then
          ENABLE_CNTR <= ENABLE_CNTR - 1;
      end if;
      end if;
    end if;

    -- pwm
    if (RESET = '1') then
      PWM_CNTR <= PWM_CNTR_MAX;
    elsif rising_edge(CLK) then
      if (CLK_EN = '1') then
      if (LAST_PWM /= sPWM) then
        PWM_CNTR <= PWM_CNTR_MAX;
      elsif (PWM_CNTR > 0) then
        PWM_CNTR <= PWM_CNTR - 1;
      end if;
      end if;
    end if;

  end process;


  pFAULT : process(RESET, CLK)
  begin

    if (RESET = '1') then
      FAULT <= '0';
      FAULT_CNTR <= 0;
    elsif rising_edge(CLK) then
      if (CLK_EN = '1') then
      -- default
      FAULT <= '0';

      if(PD_FAULT_SYNC = '1') then
        if (FAULT_CNTR < FAULT_CNTR_MAX) then
          FAULT_CNTR <= FAULT_CNTR + 1;
        elsif (ENABLE_CNTR = 0) and (PWM_CNTR = 0) then
          FAULT <= '1';
        end if;
      else
        FAULT_CNTR <= 0;
      end if;
      end if;

    end if;

  end process;
  
  process(CLK,RESET)
    begin
      if (RESET = '1') then
        half_period_strobe  <=  '0';
      elsif rising_edge(CLK) then
        if (PWM_counter = (HALF_PWM_PERIODE+1)) then
          half_period_strobe  <=  '1';
        else
          half_period_strobe  <=  '0';
        end if;
      end if;
    end process;

end Behavioral;
