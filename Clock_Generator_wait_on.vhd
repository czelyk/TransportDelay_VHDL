library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Clock_Generator_wait_on is
    Port ( clk : out STD_LOGIC);
end Clock_Generator_wait_on;

architecture Behavioral of Clock_Generator_wait_on is
begin
    process
    begin
        clk <= '0';  -- Set initial value
        wait for 5 ns;  -- Wait for 5 ns (half period for 100 MHz clock)
        clk <= '1';  -- Set clock to high
        wait for 5 ns;  -- Wait for another 5 ns (half period)
        clk <= '0';  -- Set clock to low
        wait for 5 ns;  -- Wait for the remaining half period
    end process;
end Behavioral;

