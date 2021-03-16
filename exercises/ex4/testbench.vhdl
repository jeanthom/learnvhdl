library ieee;
use ieee.std_logic_1164.all;

entity Testbench is
end entity;

architecture Behavioral of Testbench is
	component Exercise4 is
		port (a: in std_logic;
			b: in std_logic;
			cin : in std_logic;
			s: out std_logic;
			cout: out std_logic);
	end component;

	signal a, b, cin, s, cout: std_logic;
begin
	exercise: Exercise4
	 port map(
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

		a <= '0';
		b <= '0';
		cin <= '1';
		wait for 1 ns;
		assert s = '1' AND cout = '0' report "Test #2 : A=0 B=0 Cin=1";

		a <= '0';
		b <= '1';
		cin <= '0';
		wait for 1 ns;
		assert s = '1' AND cout = '0' report "Test #3 : A=0 B=1 Cin=0";

		a <= '0';
		b <= '1';
		cin <= '1';
		wait for 1 ns;
		assert s = '0' AND cout = '1' report "Test #4 : A=0 B=1 Cin=1";

		a <= '1';
		b <= '0';
		cin <= '0';
		wait for 1 ns;
		assert s = '1' AND cout = '0' report "Test #5 : A=1 B=0 Cin=0";

		a <= '1';
		b <= '0';
		cin <= '1';
		wait for 1 ns;
		assert s = '0' AND cout = '1' report "Test #6 : A=1 B=0 Cin=1";

		a <= '1';
		b <= '1';
		cin <= '0';
		wait for 1 ns;
		assert s = '0' AND cout = '1' report "Test #7 : A=1 B=1 Cin=0";

		a <= '1';
		b <= '1';
		cin <= '1';
		wait for 1 ns;
		assert s = '1' AND cout = '1' report "Test #8 : A=1 B=1 Cin=1";


		wait;
	end process;
end architecture;
