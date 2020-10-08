library ieee;
use ieee.std_logic_1164.all;

entity Exercise5 is
	port (a0, b0, cin0: in std_logic;
		a1, b1, cin1 : in std_logic;
		s0, cout0: out std_logic;
		s1, cout1 : out std_logic);
end entity;

architecture Behavioral of Exercise5 is

component fulladder 
...
end component;

begin
	FA1 : fulladder port map (...);
	FA2 : fulladder port map (...);

end architecture;
