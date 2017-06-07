library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

entity BancRegistres is
    port (
        Rf1: in STD_LOGIC_VECTOR(4 downto 0); -- registres font
        Rf2: in STD_LOGIC_VECTOR(4 downto 0);
        Rdest: in STD_LOGIC_VECTOR(4 downto 0); -- registre destí
		  
        Sor1 : out STD_LOGIC_VECTOR(31 downto 0); -- registres sortida
        Sor2 : out STD_LOGIC_VECTOR(31 downto 0);

        Dades: in STD_LOGIC_VECTOR(31 downto 0); -- registre de Dades
        -- indica entrada informació a escriure sobre Rdest

        Esc : in STD_LOGIC; -- si 1 llegim Dades i escrivim a rdest
        -- captura la dada de Dades i emmagatzema en Rdest
		  Reset : in STD_LOGIC;

        clk : in STD_LOGIC -- sincronitza escriptura en registres
		  );
end BancRegistres;

architecture behav of BancRegistres is
	type matrix is array (31 downto 0) of std_logic_vector(31 downto 0);
	signal bancr: matrix := (others => (others => '0'));
begin
	process(clk)
		begin
		if falling_edge(clk) then
			if Rdest /= "00000" then
				if Esc = '1' then
					bancr(to_integer(unsigned(Rdest))) <= Dades;
				end if;
			end if;
		end if;
	end process;
	Sor1 <= bancr(to_integer(unsigned(Rf1)));
	Sor2 <= bancr(to_integer(unsigned(Rf2)));
end architecture behav;
