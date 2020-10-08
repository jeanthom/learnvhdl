library ieee;
use ieee.std_logic_1164.all;

entity Testbench is
end entity;

architecture Behavioral of Testbench is

	component Exercise5 is
	port (a0, b0, cin0: in std_logic;
		a1, b1, cin1 : in std_logic;
		s0, cout0: out std_logic;
		s1, cout1 : out std_logic);
	end component;

	signal  : std_logic;

begin
	exercise: Exercise5 port map(
		a => a,
		b => b,
		cin => cin,
		s => s,
		cout => cout
	);

	process
	begin
		a <= '0';
		b <= '0';
		cin <= '0';
		wait for 1 ns;
		assert s = '0' AND cout = '0' report "Test #1 : A=0 B=0 Cin=0";

		wait;
	end process;
end architecture;
