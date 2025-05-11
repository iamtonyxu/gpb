---------------------------------------------------------------------
-- Project:    Common Library
-- Company:    Varian Medical
-- Language:   VHDL
-- File:       cmn_pwm.vhd (VHDL Source)
--
-- Description:
-- 3 phase rotation PWM and 1 phase brake PWM
-- MOTOR_PWM_PERIODE = CLK_RATE_MHZ * 25 * RESOLUTION
-- MOTOR_PWM_PERIODE = 25 * 25 * 1 = 625(10'h231)
-- mot_pwm_param01 = 10'h000 ~ 10'h231
-- mot_pwm_param23 = 10'h000 ~ 10'h231
-- mot_pwm_param45 = 10'h000 ~ 10'h231
-- brk_pwm_param   = 10'h000 ~ 10'h231
-- History
--
---------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity cmn_pwm is
Generic (
     CLK_RATE_MHZ                : integer := 25;
     RESOLUTION                  : integer := 1;
     PHASE_SHIFT                 : integer := 0;
     MAX_CUR_SAMPLE_TIME         : integer := 128;
     ENABLE_CNTR_MAX             : integer := 3;
     FAULT_CNTR_MAX              : integer := 3;
     DEADBAND_TIME               : integer := 5;
     DEBOUNCE_TIME               : integer := 8
);
Port (
     reset             : in  std_logic;                       -- reset
     clk               : in  std_logic;                       -- clock
     sync              : in  std_logic;                       -- synchronization pulse
     pulse_200us       : in  std_logic;                       -- the 200 us pulse for the servo
     mot_pwm           : out std_logic_vector(5 downto 0);    -- pwm outputs motor 1
     brk_pwm           : out std_logic_vector(1 downto 0);    -- brake
     mot_en_out        : out std_logic;
     brk_en_out        : out std_logic;
     mot_over_curr     : in  std_logic;                       -- motor overcurrent detected (before filtered)
     brk_over_curr     : in  std_logic;                       -- brake overcurrent detected (before filtered)
     mot_pwm_param01   : in  std_logic_vector(9 downto 0);    -- parameter for PWM bits 0 & 1
     mot_pwm_param23   : in  std_logic_vector(9 downto 0);    -- parameter for PWM bits 2 & 3
     mot_pwm_param45   : in  std_logic_vector(9 downto 0);    -- parameter for PWM bits 4 & 5
     brk_pwm_param     : in  std_logic_vector(9 downto 0);    -- parameter for brake PWM (bits 0 & 1)
     mot_en_in         : in  std_logic;
     brk_en_in         : in  std_logic;
     mel_ctrl          : in  std_logic;
     start_pwm_period_out : out std_logic
);
end cmn_pwm;

------------------------------------------------------------------
-- Declarations
------------------------------------------------------------------

architecture rtl of cmn_pwm is
    
     signal   enable                : std_logic_vector(6 downto 0);   -- 3 Lw Jaw a, 4 Lw Jaw b, 5 Rot brk, 6 Jaw Brk
     signal   pd_pwm6_out           : std_logic_vector(2 downto 1);
     signal   pd_pwm6_out_n         : std_logic;
     signal   en_pd_pwm6_out        : std_logic_vector(2 downto 1);
     signal   not_used              : std_logic;
     
     signal   mot_pwm_raw           : std_logic_vector(2 downto 0);
     signal   mot_pwm_raw_n         : std_logic_vector(2 downto 0);
     signal   brk_pwm_raw           : std_logic;
     signal   brk_pwm_raw_n         : std_logic;
     signal   filt_mot_over_curr    : std_logic;
     signal   filt_brk_over_curr    : std_logic;
     signal   unused2               : std_logic;
     signal   unused3               : std_logic;
     signal   valid_brk_pwm_param   : std_logic_vector(9 downto 0);
     signal   valid_mot_pwm_param01 : std_logic_vector(9 downto 0);
     signal   valid_mot_pwm_param23 : std_logic_vector(9 downto 0);
     signal   valid_mot_pwm_param45 : std_logic_vector(9 downto 0);
     signal   start_pwm_period      : std_logic;
     signal   sync_mot_pwm_param01  : std_logic_vector(9 downto 0);
     signal   sync_mot_pwm_param23  : std_logic_vector(9 downto 0);
     signal   sync_mot_pwm_param45  : std_logic_vector(9 downto 0);

     constant MOT_PWM_MAX           : integer := CLK_RATE_MHZ * 25 * RESOLUTION / 2 - 1;
     constant BRK_PWM_MAX           : integer := CLK_RATE_MHZ * 25 / 2 - 1;
     constant PWM_CNTR_MAX          : integer := CLK_RATE_MHZ*32/10;    -- 255 * 12.5ns = 3.2us filtering for fault signal
     
begin

     i_mot_filt : entity work.cmn_debouncer
     generic map
     (
          DEBOUNCE_TIME_LTOH  =>  DEBOUNCE_TIME,
          DEBOUNCE_TIME_HTOL  =>  DEBOUNCE_TIME
     )
     port map
     (
          clk                 => clk,
          reset               => reset,
          clk_en              => '1',
          bypass              => '0',
          sig_in              => mot_over_curr,
          sig_out             => filt_mot_over_curr
     );

     i_brk_filt : entity work.cmn_debouncer
     generic map
     (
          DEBOUNCE_TIME_LTOH  =>  DEBOUNCE_TIME,
          DEBOUNCE_TIME_HTOL  =>  DEBOUNCE_TIME
     )
     port map
     (
          clk                 => clk,
          reset               => reset,
          clk_en              => '1',
          bypass              => '0',
          sig_in              => brk_over_curr,
          sig_out             => filt_brk_over_curr
     );


     ------------------------------------------------------------------
     -- PWM generation for motor
     ------------------------------------------------------------------
     i_mot_pwm: entity work.PH_PWM
     generic map (
          MOTOR_PWM_PERIODE   => CLK_RATE_MHZ * 25 * RESOLUTION,
          PHASE_SHIFT         => PHASE_SHIFT,
          PWM_CNTR_MAX        => PWM_CNTR_MAX,
          MAX_CUR_SAMPLE_TIME => MAX_CUR_SAMPLE_TIME,
          ENABLE_CNTR_MAX     => ENABLE_CNTR_MAX,
          FAULT_CNTR_MAX      => FAULT_CNTR_MAX
     )
     port map
     (
          clk                 => clk,
          reset               => reset,
          sync                => sync,
          clk_en              => '1',
          t1                  => conv_integer(sync_mot_pwm_param01),
          t2                  => conv_integer(sync_mot_pwm_param23),
          t3                  => conv_integer(sync_mot_pwm_param45),
          enable              => mot_en_in,
          pd_fault            => '0',             -- there is no fault signal from pwm driver
          pwm                 => mot_pwm_raw,
          cur_sl              => open,            -- there is no switch
          fault               => open,            -- no fault output needed     
          start_period        => start_pwm_period
     );

     -- - limit the motor & brake PWM parameter to the maximum valid value
     -- - latch in the value only in the next 200 us servo period whose beginning is indicated by the "pulse_200us".
     p_pwm_val : process (reset, clk) begin
         if (reset = '1') then
             valid_mot_pwm_param01 <= (others => '0');
             valid_mot_pwm_param23 <= (others => '0');
             valid_mot_pwm_param45 <= (others => '0');
         elsif (rising_edge(clk)) then
             if (pulse_200us = '1') then
                 -- limit the motor PWM parameter to the maximum valid value
                 if (conv_integer(mot_pwm_param01) > MOT_PWM_MAX) then
                     valid_mot_pwm_param01 <= conv_std_logic_vector(MOT_PWM_MAX, 10);
                 else
                     valid_mot_pwm_param01 <= mot_pwm_param01;
                 end if;
                 if (conv_integer(mot_pwm_param23) > MOT_PWM_MAX) then
                     valid_mot_pwm_param23 <= conv_std_logic_vector(MOT_PWM_MAX, 10);
                 else
                     valid_mot_pwm_param23 <= mot_pwm_param23;
                 end if;
                 if (conv_integer(mot_pwm_param45) > MOT_PWM_MAX) then
                     valid_mot_pwm_param45 <= conv_std_logic_vector(MOT_PWM_MAX, 10);
                 else
                     valid_mot_pwm_param45 <= mot_pwm_param45;
                 end if;
             end if;
         end if;
     end process;
     
     process(clk,reset)
       begin
         if (reset = '1') then
           sync_mot_pwm_param01 <= (others => '0');
           sync_mot_pwm_param23 <= (others => '0');
           sync_mot_pwm_param45 <= (others => '0');
         elsif rising_edge(clk) then
           if (start_pwm_period = '1') then
             sync_mot_pwm_param01 <= valid_mot_pwm_param01;
             sync_mot_pwm_param23 <= valid_mot_pwm_param23;
             sync_mot_pwm_param45 <= valid_mot_pwm_param45;
           end if;
         end if;
       end process;
       
     start_pwm_period_out  <=  start_pwm_period;
       
     mot_pwm_raw_n <= not mot_pwm_raw;
     
     gen_dead_band_col_pwm : for i in 1 to 3 generate
          i_mot_deadband : entity work.CMN_DEADBAND
          generic map
          (
               DEADBAND_TIME => DEADBAND_TIME
          )
          port map
          (
               reset          => reset,
               clk            => clk,
               clk_en         => '1',
          
               pwmh_in        => mot_pwm_raw(i-1),
               pwml_in        => mot_pwm_raw_n(i-1),
          
               pwmh_out       => mot_pwm((i-1)*2),
               pwml_out       => mot_pwm(((i-1)*2)+1)
          );
     end generate;
     
     
     ------------------------------------------------------------------
     -- PWM generation for brake
     ------------------------------------------------------------------
     i_brk_pwm: entity work.PH_PWM
     generic map (
          MOTOR_PWM_PERIODE   => CLK_RATE_MHZ * 25,
          PHASE_SHIFT         => 0,
          PWM_CNTR_MAX        => PWM_CNTR_MAX,
          MAX_CUR_SAMPLE_TIME => MAX_CUR_SAMPLE_TIME,
          ENABLE_CNTR_MAX     => ENABLE_CNTR_MAX,
          FAULT_CNTR_MAX      => FAULT_CNTR_MAX
     )
     port map
     (
          clk                 => clk,
          reset               => reset,
          sync                => sync,
          clk_en              => '1',
          t1                  => conv_integer(valid_brk_pwm_param),
          t2                  => conv_integer(valid_brk_pwm_param),
          t3                  => conv_integer(valid_brk_pwm_param),
          enable              => brk_en_in,
          pd_fault            => '0',      
          pwm(1)              => brk_pwm_raw,
          pwm(2)              => unused2,
          pwm(3)              => unused3,
          cur_sl              => open,     
          fault               => open
     );     

     -- brake pwm is inverted
     brk_pwm_raw_n  <= not brk_pwm_raw;
     
     -- limit the brake PWM parameter to the maximum valid value
     valid_brk_pwm_param   <= conv_std_logic_vector(BRK_PWM_MAX, 10) when (conv_integer(brk_pwm_param) > BRK_PWM_MAX) else brk_pwm_param;

     i_brk_deadband : entity work.CMN_DEADBAND
     generic map
     (
          DEADBAND_TIME => DEADBAND_TIME
     )
     port map
     (
          reset          => reset,
          clk            => clk,
          clk_en         => '1',
          
          pwmh_in        => brk_pwm_raw,
          pwml_in        => brk_pwm_raw_n,
          
          pwmh_out       => brk_pwm(0),
          pwml_out       => brk_pwm(1)
     );
     

     ------------------------------------------------------------------
     -- Enable
     ------------------------------------------------------------------

     -- enable output
     mot_en_out      <= mot_en_in and mel_ctrl and not filt_mot_over_curr;    -- motor
     brk_en_out      <= brk_en_in and mel_ctrl and not filt_brk_over_curr;    -- brake

end rtl;

