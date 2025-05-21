library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PH_PWM_SIMPLE is
    Port (
        CLK     : in  std_logic;                -- clock input, 25MHz
        RESET   : in  std_logic;                -- reset input
        ENABLE  : in  std_logic;                -- driver enable
        PWM     : out std_logic_vector(2 downto 0) -- pwm outputs, 333.33Hz, duty cycle 50%
    );
end PH_PWM_SIMPLE;

architecture Behavioral of PH_PWM_SIMPLE is

    constant PWM_PERIOD      : integer := 75000; -- 25MHz / 333.33Hz = 75,000
    constant PWM_DUTY_CYCLE  : integer := PWM_PERIOD / 2; -- 50% duty cycle
    constant PHASE_SHIFT     : integer := PWM_PERIOD / 3; -- 25,000

    signal counter1   : integer range 0 to PWM_DUTY_CYCLE := 0;
    signal counter2   : integer range 0 to PWM_DUTY_CYCLE := PHASE_SHIFT;
    signal counter3   : integer range 0 to PWM_DUTY_CYCLE := PHASE_SHIFT;
    signal direction1 : std_logic := '0'; -- 0 = up, 1 = down
    signal direction2 : std_logic := '1';
    signal direction3 : std_logic := '0';
    signal pwm_out    : std_logic_vector(2 downto 0) := (others => '0');

begin

    -- Counter1 process
    process(CLK, RESET)
    begin
        if RESET = '1' then
            direction1 <= '0';
            counter1   <= 0;
        elsif rising_edge(CLK) then
            if ENABLE = '1' then
                if direction1 = '0' then
                    if counter1 < PWM_DUTY_CYCLE then
                        counter1 <= counter1 + 1;
                    else
                        direction1 <= '1';
                        counter1   <= counter1 - 1;
                    end if;
                else
                    if counter1 > 0 then
                        counter1 <= counter1 - 1;
                    else
                        direction1 <= '0';
                        counter1   <= counter1 + 1;
                    end if;
                end if;
            end if;
        end if;
    end process;

    -- Counter2 process
    process(CLK, RESET)
    begin
        if RESET = '1' then
            direction2 <= '1';
            counter2   <= PHASE_SHIFT;
        elsif rising_edge(CLK) then
            if ENABLE = '1' then
                if direction2 = '0' then
                    if counter2 < PWM_DUTY_CYCLE then
                        counter2 <= counter2 + 1;
                    else
                        direction2 <= '1';
                        counter2   <= counter2 - 1;
                    end if;
                else
                    if counter2 > 0 then
                        counter2 <= counter2 - 1;
                    else
                        direction2 <= '0';
                        counter2   <= counter2 + 1;
                    end if;
                end if;
            end if;
        end if;
    end process;

    -- Counter3 process
    process(CLK, RESET)
    begin
        if RESET = '1' then
            direction3 <= '0';
            counter3   <= PHASE_SHIFT;
        elsif rising_edge(CLK) then
            if ENABLE = '1' then
                if direction3 = '0' then
                    if counter3 < PWM_DUTY_CYCLE then
                        counter3 <= counter3 + 1;
                    else
                        direction3 <= '1';
                        counter3   <= counter3 - 1;
                    end if;
                else
                    if counter3 > 0 then
                        counter3 <= counter3 - 1;
                    else
                        direction3 <= '0';
                        counter3   <= counter3 + 1;
                    end if;
                end if;
            end if;
        end if;
    end process;

    -- PWM output logic
    process(CLK, RESET)
    begin
        if RESET = '1' then
            pwm_out <= (others => '0');
        elsif rising_edge(CLK) then
            if ENABLE = '1' then
                pwm_out(0) <= direction1;
                pwm_out(1) <= direction2;
                pwm_out(2) <= direction3;
            else
                pwm_out <= (others => '0');
            end if;
        end if;
    end process;

    PWM <= pwm_out;

end Behavioral;