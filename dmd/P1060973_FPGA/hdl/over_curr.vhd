---------------------------------------------------------------------
-- Project:    COL-CONT
-- Company:    Varian Medical Systems
-- File:       over_curr.vhd
--
-- Description:
--   monitors over-current bit from motor channel, shuts off channel if current is too high
--    Adopted from CCH-CONT.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

library work;

entity OVER_CURR is
    Port  (
      -- inputs
      CLK           : in  std_logic;
      RESET         : in  std_logic;
      CLK_ENAB      : in  std_logic;
      OVER_CURR_IN  : in  std_logic;
      DATA_WR_FROM_PCI  : in std_logic_vector(31 downto 0); -- Accept the whole word, use what we want...
      DATA_WR_ENABLE    : in std_logic;     -- 1 to enable write
      -- outputs
      FAULT             : out std_logic;
      DATA_RD_FROM_PCI  : out std_logic_vector(31 downto 0) -- Return the whole word, zeros for unused bits.
    );
end OVER_CURR;

architecture BEHAVIORAL of OVER_CURR is

    constant OC_TIME_REG_WIDTH    : integer   :=  12;
    constant OC_CTRL_BITS         : integer   :=  3;
    -- OC_CTRL_REG bit locations
    constant OC_FAULT_STATE_BIT   : integer   :=  0;    -- R/W: fault status independent of mask, write 1 to clear
    constant OC_MASK_BIT          : integer   :=  1;    -- R/W: Set to 1 to prevent fault from stopping PWM
    constant OC_OVER_CURR_REAL_T  : integer   :=  2;    -- RD-ONLY: fault status real time
    constant OC_TIME_BIT          : integer   := 16;    -- Starting bit for time register
    constant OC_RESET_CNTR_BIT    : integer   := 28;    -- Counter location for resetting faults

    signal OVER_CURR_IN_SYNC    : std_logic;
    signal FAULT_RESET          : std_logic;
    signal OVER_CURR_MASK       : std_logic;
    signal sFAULT               : std_logic;

    signal OC_MONITOR_REG   : std_logic_vector(OC_TIME_REG_WIDTH-1 downto 0);
    signal OC_TIMER         : std_logic_vector(OC_MONITOR_REG'range);
    signal OC_RESET_CNTR    : std_logic_vector(1 downto 0);

begin

    -- synchronize the asynchronous over current inputs, clock 20us delayed input
    pOVER_CURR_SYNC : process(CLK,RESET)
    begin
        if RESET = '1' then
            OVER_CURR_IN_SYNC <= '0';
        elsif (rising_edge(CLK)) then
            OVER_CURR_IN_SYNC <= OVER_CURR_IN;
        end if;
    end process;

    -- write data
    -- This process defines the bit locations for write data:
    pOVER_CURR_FILTER : process(CLK,RESET)
    begin
        if RESET = '1' then
            FAULT_RESET    <= '1';
            OVER_CURR_MASK <= '0';
            OC_MONITOR_REG <= (others => '0');
            OC_RESET_CNTR  <= (others => '0');
        elsif (rising_edge(CLK)) then
            FAULT_RESET    <= '0';  -- This is only true for one clock
            if DATA_WR_ENABLE = '1' then
                OVER_CURR_MASK <= DATA_WR_FROM_PCI(OC_MASK_BIT);
                OC_MONITOR_REG <= DATA_WR_FROM_PCI(OC_TIME_REG_WIDTH-1+OC_TIME_BIT downto OC_TIME_BIT);   -- Time in upper word
                OC_RESET_CNTR  <= DATA_WR_FROM_PCI(OC_RESET_CNTR_BIT+1 downto OC_RESET_CNTR_BIT);
                if OC_RESET_CNTR /= DATA_WR_FROM_PCI(OC_RESET_CNTR_BIT+1 downto OC_RESET_CNTR_BIT) then
                    FAULT_RESET <= '1'; -- Reset faults whenever counter changes
                end if;
            end if;
        end if;   -- CLK
    end process;

    -- read data
    pREAD_DATA : process(sFAULT, OVER_CURR_MASK, OC_MONITOR_REG, OVER_CURR_IN_SYNC, OC_RESET_CNTR)
    begin
        DATA_RD_FROM_PCI <= (others => '0');    -- Default all unused bits to zero to save mux space on read
        DATA_RD_FROM_PCI(OC_FAULT_STATE_BIT) <= sFAULT;
        DATA_RD_FROM_PCI(OC_MASK_BIT)        <= OVER_CURR_MASK;
        DATA_RD_FROM_PCI(OC_OVER_CURR_REAL_T) <= OVER_CURR_IN_SYNC;
        DATA_RD_FROM_PCI(OC_TIME_REG_WIDTH-1+OC_TIME_BIT downto OC_TIME_BIT) <= OC_MONITOR_REG;   -- Time in upper word

        DATA_RD_FROM_PCI(OC_RESET_CNTR_BIT+1 downto OC_RESET_CNTR_BIT) <= OC_RESET_CNTR;
    end process;

    FAULT <= sFAULT and not(OVER_CURR_MASK);

    -- over current state machine
    pOVER_CURR_CTRL : process (CLK, RESET)
    begin
        if (RESET = '1') then
            sFAULT   <= '0';
            OC_TIMER <= (others => '0');

        elsif (rising_edge(CLK)) then
            if sFAULT = '0' then      -- driver on, normal operation
                if OVER_CURR_IN_SYNC = '0' then
                    OC_TIMER <= OC_MONITOR_REG;   -- Reset timeout
                elsif (CLK_ENAB = '1') then
                    OC_TIMER <= OC_TIMER - 1; -- decrement timer when in overcurrent
                end if;   -- OVER_CURR_IN_SYNC

                if OC_TIMER = 1 then
                    sFAULT <= '1';
                end if;
            else      -- timeout reached, shut driver off, await reset
                OC_TIMER <= OC_MONITOR_REG;
                if (FAULT_RESET = '1' and OVER_CURR_IN_SYNC = '0') then
                    sFAULT <= '0';
                end if;
            end if;
        end if;
    end process;

end BEHAVIORAL;


