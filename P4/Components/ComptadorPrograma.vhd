library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ComptadorPrograma is
	Port(Reset : in STD_LOGIC;
		clk : in STD_LOGIC;
		Din : in STD_LOGIC_VECTOR(31 downto 0);
		Dout : out STD_LOGIC_VECTOR(31 downto 0));
end ComptadorPrograma;

architecture ArqPC of ComptadorPrograma is
	signal ContingutPC : STD_LOGIC_VECTOR(31 downto 0);
	begin
		process(clk,reset)
		begin
			if rising_edge (clk) then
				if(reset = '1') then
					ContingutPC <= (others => '0');
				else
					ContingutPC <= Din;
				end if;
			end if;
		end process;
	Dout <=  ContingutPC;
end ArqPC;
