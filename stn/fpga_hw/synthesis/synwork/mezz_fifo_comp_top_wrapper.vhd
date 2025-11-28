--
-- Synopsys
-- Vhdl wrapper for top level design, written on Sat Aug 16 12:35:43 2025
--
library ieee;
use ieee.std_logic_1164.all;

entity wrapper_for_mezz_fifo is
   port (
      DATA : in std_logic_vector(3 downto 0);
      RCLOCK : in std_logic;
      RE : in std_logic;
      RESET : in std_logic;
      WCLOCK : in std_logic;
      WE : in std_logic;
      AEMPTY : out std_logic;
      DVLD : out std_logic;
      EMPTY : out std_logic;
      FULL : out std_logic;
      Q : out std_logic_vector(3 downto 0)
   );
end wrapper_for_mezz_fifo;

architecture rtl of wrapper_for_mezz_fifo is

component mezz_fifo
 port (
   DATA : in std_logic_vector (3 downto 0);
   RCLOCK : in std_logic;
   RE : in std_logic;
   RESET : in std_logic;
   WCLOCK : in std_logic;
   WE : in std_logic;
   AEMPTY : out std_logic;
   DVLD : out std_logic;
   EMPTY : out std_logic;
   FULL : out std_logic;
   Q : out std_logic_vector (3 downto 0)
 );
end component;

signal tmp_DATA : std_logic_vector (3 downto 0);
signal tmp_RCLOCK : std_logic;
signal tmp_RE : std_logic;
signal tmp_RESET : std_logic;
signal tmp_WCLOCK : std_logic;
signal tmp_WE : std_logic;
signal tmp_AEMPTY : std_logic;
signal tmp_DVLD : std_logic;
signal tmp_EMPTY : std_logic;
signal tmp_FULL : std_logic;
signal tmp_Q : std_logic_vector (3 downto 0);

begin

tmp_DATA <= DATA;

tmp_RCLOCK <= RCLOCK;

tmp_RE <= RE;

tmp_RESET <= RESET;

tmp_WCLOCK <= WCLOCK;

tmp_WE <= WE;

AEMPTY <= tmp_AEMPTY;

DVLD <= tmp_DVLD;

EMPTY <= tmp_EMPTY;

FULL <= tmp_FULL;

Q <= tmp_Q;



u1:   mezz_fifo port map (
		DATA => tmp_DATA,
		RCLOCK => tmp_RCLOCK,
		RE => tmp_RE,
		RESET => tmp_RESET,
		WCLOCK => tmp_WCLOCK,
		WE => tmp_WE,
		AEMPTY => tmp_AEMPTY,
		DVLD => tmp_DVLD,
		EMPTY => tmp_EMPTY,
		FULL => tmp_FULL,
		Q => tmp_Q
       );
end rtl;
