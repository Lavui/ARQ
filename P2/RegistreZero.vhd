library ieee;
use ieee.std_logic_1164.all;

entity RegistreZero is
	port( Reset: in STD_LOGIC;
			clk: in STD_LOGIC;
			E1: in STD_LOGIC;
			E2: in STD_LOGIC;
			Dout1: out STD_LOGIC_VECTOR(31 downto 0);
			Dout2: out STD_LOGIC_VECTOR(31 downto 0));
end RegistreZero;

architecture Behavioral of RegistreZero is 
begin
	Dout1 <= (others => '0') when E1 = '1' else (others => 'Z');
	Dout2 <= (others => '0') when E2 = '1' else (others => 'Z');
end Behavioral;