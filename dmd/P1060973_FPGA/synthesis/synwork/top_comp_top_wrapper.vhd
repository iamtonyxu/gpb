--
-- Synopsys
-- Vhdl wrapper for top level design, written on Sun May 25 18:05:21 2025
--
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity wrapper_for_work_cmn_uart_rtl_false_115200_100000000_1_BAUD_RATECLOCK_FREQUENCY is
   port (
      CLOCK : in std_logic;
      RESET : in std_logic;
      uart_active : in std_logic;
      DATA_STREAM_IN : in std_logic_vector(7 downto 0);
      DATA_STREAM_IN_STB : in std_logic;
      DATA_STREAM_IN_ACK : out std_logic;
      next_command_ready : out std_logic;
      DATA_STREAM_OUT : out std_logic_vector(7 downto 0);
      DATA_STREAM_OUT_STB : out std_logic;
      DATA_STREAM_OUT_ACK : in std_logic;
      TX : out std_logic;
      RX : in std_logic;
      debug_uart_phy : out std_logic_vector(1 downto 0)
   );
end wrapper_for_work_cmn_uart_rtl_false_115200_100000000_1_BAUD_RATECLOCK_FREQUENCY;

architecture rtl of wrapper_for_work_cmn_uart_rtl_false_115200_100000000_1_BAUD_RATECLOCK_FREQUENCY is

component work_cmn_uart_rtl_false_115200_100000000_1_BAUD_RATECLOCK_FREQUENCY
 port (
   CLOCK : in std_logic;
   RESET : in std_logic;
   uart_active : in std_logic;
   DATA_STREAM_IN : in std_logic_vector (7 downto 0);
   DATA_STREAM_IN_STB : in std_logic;
   DATA_STREAM_IN_ACK : out std_logic;
   next_command_ready : out std_logic;
   DATA_STREAM_OUT : out std_logic_vector (7 downto 0);
   DATA_STREAM_OUT_STB : out std_logic;
   DATA_STREAM_OUT_ACK : in std_logic;
   TX : out std_logic;
   RX : in std_logic;
   debug_uart_phy : out std_logic_vector (1 downto 0)
 );
end component;

signal tmp_CLOCK : std_logic;
signal tmp_RESET : std_logic;
signal tmp_uart_active : std_logic;
signal tmp_DATA_STREAM_IN : std_logic_vector (7 downto 0);
signal tmp_DATA_STREAM_IN_STB : std_logic;
signal tmp_DATA_STREAM_IN_ACK : std_logic;
signal tmp_next_command_ready : std_logic;
signal tmp_DATA_STREAM_OUT : std_logic_vector (7 downto 0);
signal tmp_DATA_STREAM_OUT_STB : std_logic;
signal tmp_DATA_STREAM_OUT_ACK : std_logic;
signal tmp_TX : std_logic;
signal tmp_RX : std_logic;
signal tmp_debug_uart_phy : std_logic_vector (1 downto 0);

begin

tmp_CLOCK <= CLOCK;

tmp_RESET <= RESET;

tmp_uart_active <= uart_active;

tmp_DATA_STREAM_IN <= DATA_STREAM_IN;

tmp_DATA_STREAM_IN_STB <= DATA_STREAM_IN_STB;

DATA_STREAM_IN_ACK <= tmp_DATA_STREAM_IN_ACK;

next_command_ready <= tmp_next_command_ready;

DATA_STREAM_OUT <= tmp_DATA_STREAM_OUT;

DATA_STREAM_OUT_STB <= tmp_DATA_STREAM_OUT_STB;

tmp_DATA_STREAM_OUT_ACK <= DATA_STREAM_OUT_ACK;

TX <= tmp_TX;

tmp_RX <= RX;

debug_uart_phy <= tmp_debug_uart_phy;



u1:   work_cmn_uart_rtl_false_115200_100000000_1_BAUD_RATECLOCK_FREQUENCY port map (
		CLOCK => tmp_CLOCK,
		RESET => tmp_RESET,
		uart_active => tmp_uart_active,
		DATA_STREAM_IN => tmp_DATA_STREAM_IN,
		DATA_STREAM_IN_STB => tmp_DATA_STREAM_IN_STB,
		DATA_STREAM_IN_ACK => tmp_DATA_STREAM_IN_ACK,
		next_command_ready => tmp_next_command_ready,
		DATA_STREAM_OUT => tmp_DATA_STREAM_OUT,
		DATA_STREAM_OUT_STB => tmp_DATA_STREAM_OUT_STB,
		DATA_STREAM_OUT_ACK => tmp_DATA_STREAM_OUT_ACK,
		TX => tmp_TX,
		RX => tmp_RX,
		debug_uart_phy => tmp_debug_uart_phy
       );
end rtl;
