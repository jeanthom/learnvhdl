library ieee;
use ieee.std_logic_1164.all;

entity Exercise5 is
	port(a, b, cin: in std_logic;
		s, cout: out std_logic
		);
end entity;

architecture Behavioral of Exercise5 is

	component fulladder is
	...
	end component;

begin
	FA: ...;

end architecture;
