library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Signals_vs_Variable is
end entity;

architecture Behavioral of Signals_vs_Variable is
    signal clk : std_logic := '0';  -- Clock signal
    signal sig1 : integer := 0;    -- Signal for 0-initialized
    variable var1 : integer := 0;  -- Variable for 0-initialized
begin
    -- Clock process to generate clock with a 20ns period (50 MHz)
    clk_process: process
    begin
        clk <= '0';
        wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
    end process;

    -- Process to increment the variable and signal on the rising edge of the clock
    process(clk)
    begin
        if rising_edge(clk) then
            -- Increment the signal and variable
            var1 := var1 + 1;
            sig1 <= sig1 + 1;
            
            -- Display the current values of var1 and sig1
            report "var1 = " & integer'image(var1) & " sig1 = " & integer'image(sig1);
        end if;
    end process;
end architecture;

