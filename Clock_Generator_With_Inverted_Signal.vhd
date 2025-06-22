library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Clock_Generator_With_Inverted_Signal is
end Clock_Generator_With_Inverted_Signal;

architecture Behavioral of Clock_Generator_With_Inverted_Signal is
    signal clk : std_logic := '0'; -- Main clock signal
    signal signal1 : std_logic; -- Inverted clock signal
    constant clk_period : time := 50 ns; -- 20 MHz clock period
begin
    -- Process to generate the clock signal
    Clock_Process: process
    begin
        clk <= '0';
        wait for clk_period / 2; -- Low for half-period
        clk <= '1';
        wait for clk_period / 2; -- High for half-period
    end process;

    -- Inverted clock signal
    signal1 <= not clk; -- signal1 is always the inverse of clk

end Behavioral;

