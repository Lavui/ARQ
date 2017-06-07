LIBRARY ieee;
USE ieee.std_logic_1164.all; --RECORDAR: no diferencia majúscules de minúscules
use ieee.numeric_std.all; --en qualsevol de les comandes vhdl

entity ALU32 is
    port (
            Op1, Op2 : in signed (31 downto 0);
            Control_ALU : in signed (2 downto 0);
            Resultat : out signed (31 downto 0);
            Z : out STD_LOGIC;
            C : out STD_LOGIC);
end ALU32;

architecture behavior of ALU32 is
begin
    process (Control_ALU, Op1, Op2) is
        variable result: signed(32 downto 0);

    begin
        case Control_ALU is
				when "000" => result := ('0' & Op1) AND ('0' & Op2); --and
				when "001" => result := ('0' & Op1) OR ('0' & Op2); --or
            when "010" => result := ('0' & Op1) + ('0' & Op2); --sum
            when "110" => result := ('0' & Op1) - ('0' & Op2); --rest
				when "111" => 	if (('0' & Op1) < ('0' & Op2)) then	--Condicional
										result := '0' & x"00000001"; 
									else
										result := '0' & x"00000000"; 
									end if;
            when others => result := ('0' & x"00000000");
    end case;

    if(result(31 downto 0) = x"00000000") then
        Z <= '1';
    else
        Z <= '0';
    end if;
    C <= result(32);
	 resultat <= result(31 downto 0);
    end process;
end architecture;

