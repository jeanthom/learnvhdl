library ieee;
use ieee.std_logic_1164.all;

entity Exercise1 is
	port (pulled_high: out std_logic;
		pulled_low: out std_logic;
		high: out std_logic;
		low: out std_logic;
		high_z: out std_logic;
		dont_care: out std_logic);
end entity;

architecture Behavioral of Exercise1 is
begin
	-- We have completed the first one for you here:
	pulled_high <= 'H';
end architecture;
