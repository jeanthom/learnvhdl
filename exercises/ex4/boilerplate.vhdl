library ieee;
use ieee.std_logic_1164.all;

entity Exercise4 is
	port (a: in std_logic;
		b: in std_logic;
		cin : in std_logic; --carry input
		s: out std_logic;
	    cout: out std_logic); --carry output
end entity;

architecture Behavioral of Exercise4 is

	signal carry1 : std_logic; 
	signal carry2 : std_logic;
	signal s1 : std_logic;

begin
	s1 <= ...;
	s <= ...;
	carry1 <= ...;
	carry2 <= ...;
	cout <= ...;
end architecture;
