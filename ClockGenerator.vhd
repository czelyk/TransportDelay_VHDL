library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ClockGenerator is
end entity;


architecture Behavioral of ClockGenerator is
constant clk_period : time := 20 ns;
signal clk : std_logic := '0';

begin
	process
	begin
	clk <= '1';
		wait for clk_period / 2;
		clk <= '0';
		wait for clk_period / 2;
	end process;

end architecture;
