library ieee;
use ieee.std_logic_1164.all;

entity fulladder is
	port (a: in std_logic;
		b: in std_logic;
		cin : in std_logic; --carry input
		s: out std_logic;
	    cout: out std_logic); --carry output
end entity;

architecture Behavioral of fulladder is

	signal carry1 : std_logic; 
	signal carry2 : std_logic;
	signal s1 : std_logic;

begin
	s1 <= a XOR b;
	s <= s1 XOR cin;
	carry1 <= a AND b;
	carry2 <= s1 AND cin;
	cout <= carry1 OR carry2;
end architecture;
