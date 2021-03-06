library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

entity ControlALU is
	Port (
		funcio : in STD_LOGIC_VECTOR (5 downto 0);
		CodiOP : in STD_LOGIC_VECTOR (1 downto 0); -- ALUOP
		Operacio : out signed (2 downto 0) -- Sortida control alu
	);
end ControlALU;



architecture behav of ControlALU is
begin
	process (funcio,CodiOP)
	variable Control: signed(2 downto 0);
	begin
		Control(0) := ((funcio(3) OR funcio(0)) AND CodiOP(1));
		Control(1) := ((NOT funcio(2)) OR (NOT CodiOP(1)));
		Control(2) := ((funcio(1) AND CodiOP(1)) OR codiOP(0));
		
		Operacio <= Control(2 downto 0);
	end process;
end behav;