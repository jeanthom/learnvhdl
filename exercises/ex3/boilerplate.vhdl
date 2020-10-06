library ieee;
use ieee.std_logic_1164.all;

entity Exercise3 is
	port (a: in std_logic;
		b: in std_logic;
		s: out std_logic;
	    cout: out std_logic); --carry output
end entity;

architecture Behavioral of Exercise3 is
begin
	s <= ...;
	cout <= ...;
end architecture;
