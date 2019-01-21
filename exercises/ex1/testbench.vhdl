library ieee;
use ieee.std_logic_1164.all;

entity Testbench is
end entity;

architecture Behavioral of Testbench is
	component Exercise1 is
	port (pulled_high: out std_logic;
		pulled_low: out std_logic;
		high: out std_logic;
		low: out std_logic;
		high_z: out std_logic;
		dont_care: out std_logic);
	end component;

	signal pulled_high, pulled_low, high, low, high_z, dont_care: std_logic;
begin
	exercise: Exercise1 port map(
		pulled_high => pulled_high,
		pulled_low => pulled_low,
		high => high,
		low => low,
		high_z => high_z,
		dont_care => dont_care
	);

	process
	begin
		wait for 1 ns;
		assert pulled_high = 'H' report "Test #1 : recessive high";
		assert pulled_low = 'L' report "Test #2 : recessive low";
		assert high = '1' report "Test #3 : high";
		assert low = '0' report "Test #4 : low";
		assert high_z = 'Z' report "Test #5 : high impedance";
		assert dont_care = 'X' report "Test #6 : don't care";
		wait;
	end process;
end architecture;