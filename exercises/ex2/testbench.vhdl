library ieee;
use ieee.std_logic_1164.all;

entity Testbench is
end entity;

architecture Behavioral of Testbench is
	component Exercise2 is
	port (a: in std_logic;
		b: in std_logic;
		o: out std_logic);
	end component;

	signal a, b, o: std_logic;
begin
	exercise: Exercise2 port map(
		a => a,
		b => b,
		o => o
	);

	process
	begin
		a <= '0';
		b <= '0';
		wait for 1 ns;
		assert o = '0' report "Test #1 : A=0 B=0";

		a <= '1';
		b <= '0';
		wait for 1 ns;
		assert o = '1' report "Test #2 : A=1 B=0";

		a <= '0';
		b <= '1';
		wait for 1 ns;
		assert o = '0' report "Test #3 : A=0 B=1";

		a <= '1';
		b <= '1';
		wait for 1 ns;
		assert o = '0' report "Test #4 : A=1 B=1";

		wait;
	end process;
end architecture;