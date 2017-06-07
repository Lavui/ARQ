library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

entity BancRegistres is
    port (
        Rf1: STD_LOGIC_VECTOR(4 downto 0); -- registres font
        Rf2: STD_LOGIC_VECTOR(4 downto 0);
        Rdest: STD_LOGIC_VECTOR(4 downto 0); -- registre destí
		  
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


architecture Behavioral of BancRegistres is -- comportament del B.R.
    component RegSortida3Estats is
        Port (
            E1    : in STD_LOGIC; -- identifiquen bus sortida
            E2    : in STD_LOGIC;
            Din   : in STD_LOGIC_VECTOR (31 downto 0); -- ídem Dades

            Dout1 : out STD_LOGIC_VECTOR (31 downto 0); -- camí de Dades
            Dout2 : out STD_LOGIC_VECTOR (31 downto 0); 

            WE    : in STD_LOGIC; -- habilita escriptura en algun dels registres

            Reset : in STD_LOGIC;

            clk   : in STD_LOGIC -- definit en flanc de baixada
        );
    end component;

    component RegistreZero is
        Port (
            E1    : in STD_LOGIC; -- identifiquen bus sortida
            E2    : in STD_LOGIC;
            Dout1 : out STD_LOGIC_VECTOR (31 downto 0); -- camí de Dades
            Dout2 : out STD_LOGIC_VECTOR (31 downto 0); 
            Reset : in STD_LOGIC;
            clk   : in STD_LOGIC -- definit en flanc de baixada
        );
    end component;
    -- si es fa el registre de forma comportamental dins de la definició d'arquitectura no farà falta la definició del component
    component Descodificador5 is
		Port (
            Habilitacio: in STD_LOGIC;
            Ent : in STD_LOGIC_VECTOR (4 downto 0);
            Sort : out STD_LOGIC_VECTOR (31 downto 0)
        );
    end component;
    signal RegSel1: STD_LOGIC_VECTOR (31 downto 0);
    signal RegSel2: STD_LOGIC_VECTOR (31 downto 0);
    signal RegEsc: STD_LOGIC_VECTOR(31 downto 0);
    begin
    dec1: Descodificador5 port map (Habilitacio => '1', Ent => Rf1, Sort => RegSel1);
    dec2: Descodificador5 port map (Habilitacio => '1', Ent => Rf2, Sort => RegSel2);
    dec3: Descodificador5 port map (Habilitacio => esc, Ent => Rdest, Sort => RegEsc);
	
	 reg0: RegistreZero port map (Reset => Reset, clk =>clk, E1 => RegSel1(0), E2 => RegSel2(0), Dout1 => Sor1, Dout2 => Sor2);
	 reg1: RegSortida3Estats port map (Reset => Reset, clk =>clk, WE=>RegEsc(1), Din => Dades, E1 => RegSel1(1), E2 => RegSel2(1), Dout1 => Sor1, Dout2 => Sor2);
	 reg2: RegSortida3Estats port map (Reset => Reset, clk =>clk, WE=>RegEsc(2), Din => Dades, E1 => RegSel1(2), E2 => RegSel2(2), Dout1 => Sor1, Dout2 => Sor2);
	 reg3: RegSortida3Estats port map (Reset => Reset, clk =>clk, WE=>RegEsc(3), Din => Dades, E1 => RegSel1(3), E2 => RegSel2(3), Dout1 => Sor1, Dout2 => Sor2);
	 reg4: RegSortida3Estats port map (Reset => Reset, clk =>clk, WE=>RegEsc(4), Din => Dades, E1 => RegSel1(4), E2 => RegSel2(4), Dout1 => Sor1, Dout2 => Sor2);
	 reg5: RegSortida3Estats port map (Reset => Reset, clk =>clk, WE=>RegEsc(5), Din => Dades, E1 => RegSel1(5), E2 => RegSel2(5), Dout1 => Sor1, Dout2 => Sor2);
	 reg6: RegSortida3Estats port map (Reset => Reset, clk =>clk, WE=>RegEsc(6), Din => Dades, E1 => RegSel1(6), E2 => RegSel2(6), Dout1 => Sor1, Dout2 => Sor2);
	 reg7: RegSortida3Estats port map (Reset => Reset, clk =>clk, WE=>RegEsc(7), Din => Dades, E1 => RegSel1(7), E2 => RegSel2(7), Dout1 => Sor1, Dout2 => Sor2);
	 reg8: RegSortida3Estats port map (Reset => Reset, clk =>clk, WE=>RegEsc(8), Din => Dades, E1 => RegSel1(8), E2 => RegSel2(8), Dout1 => Sor1, Dout2 => Sor2);
	 reg9: RegSortida3Estats port map (Reset => Reset, clk =>clk, WE=>RegEsc(9), Din => Dades, E1 => RegSel1(9), E2 => RegSel2(9), Dout1 => Sor1, Dout2 => Sor2);
	 reg10: RegSortida3Estats port map (Reset => Reset, clk =>clk, WE=>RegEsc(10), Din => Dades, E1 => RegSel1(10), E2 => RegSel2(10), Dout1 => Sor1, Dout2 => Sor2);
	 reg11: RegSortida3Estats port map (Reset => Reset, clk =>clk, WE=>RegEsc(11), Din => Dades, E1 => RegSel1(11), E2 => RegSel2(11), Dout1 => Sor1, Dout2 => Sor2);
	 reg12: RegSortida3Estats port map (Reset => Reset, clk =>clk, WE=>RegEsc(12), Din => Dades, E1 => RegSel1(12), E2 => RegSel2(12), Dout1 => Sor1, Dout2 => Sor2);
	 reg13: RegSortida3Estats port map (Reset => Reset, clk =>clk, WE=>RegEsc(13), Din => Dades, E1 => RegSel1(13), E2 => RegSel2(13), Dout1 => Sor1, Dout2 => Sor2);
	 reg14: RegSortida3Estats port map (Reset => Reset, clk =>clk, WE=>RegEsc(14), Din => Dades, E1 => RegSel1(14), E2 => RegSel2(14), Dout1 => Sor1, Dout2 => Sor2);
	 reg15: RegSortida3Estats port map (Reset => Reset, clk =>clk, WE=>RegEsc(15), Din => Dades, E1 => RegSel1(15), E2 => RegSel2(15), Dout1 => Sor1, Dout2 => Sor2);
	 reg16: RegSortida3Estats port map (Reset => Reset, clk =>clk, WE=>RegEsc(16), Din => Dades, E1 => RegSel1(16), E2 => RegSel2(16), Dout1 => Sor1, Dout2 => Sor2);
	 reg17: RegSortida3Estats port map (Reset => Reset, clk =>clk, WE=>RegEsc(17), Din => Dades, E1 => RegSel1(17), E2 => RegSel2(17), Dout1 => Sor1, Dout2 => Sor2);
	 reg18: RegSortida3Estats port map (Reset => Reset, clk =>clk, WE=>RegEsc(18), Din => Dades, E1 => RegSel1(18), E2 => RegSel2(18), Dout1 => Sor1, Dout2 => Sor2);
	 reg19: RegSortida3Estats port map (Reset => Reset, clk =>clk, WE=>RegEsc(19), Din => Dades, E1 => RegSel1(19), E2 => RegSel2(19), Dout1 => Sor1, Dout2 => Sor2);
	 reg20: RegSortida3Estats port map (Reset => Reset, clk =>clk, WE=>RegEsc(20), Din => Dades, E1 => RegSel1(20), E2 => RegSel2(20), Dout1 => Sor1, Dout2 => Sor2);
	 reg21: RegSortida3Estats port map (Reset => Reset, clk =>clk, WE=>RegEsc(21), Din => Dades, E1 => RegSel1(21), E2 => RegSel2(21), Dout1 => Sor1, Dout2 => Sor2);
	 reg22: RegSortida3Estats port map (Reset => Reset, clk =>clk, WE=>RegEsc(22), Din => Dades, E1 => RegSel1(22), E2 => RegSel2(22), Dout1 => Sor1, Dout2 => Sor2);
	 reg23: RegSortida3Estats port map (Reset => Reset, clk =>clk, WE=>RegEsc(23), Din => Dades, E1 => RegSel1(23), E2 => RegSel2(23), Dout1 => Sor1, Dout2 => Sor2);
	 reg24: RegSortida3Estats port map (Reset => Reset, clk =>clk, WE=>RegEsc(24), Din => Dades, E1 => RegSel1(24), E2 => RegSel2(24), Dout1 => Sor1, Dout2 => Sor2);
	 reg25: RegSortida3Estats port map (Reset => Reset, clk =>clk, WE=>RegEsc(25), Din => Dades, E1 => RegSel1(25), E2 => RegSel2(25), Dout1 => Sor1, Dout2 => Sor2);
	 reg26: RegSortida3Estats port map (Reset => Reset, clk =>clk, WE=>RegEsc(26), Din => Dades, E1 => RegSel1(26), E2 => RegSel2(26), Dout1 => Sor1, Dout2 => Sor2);
	 reg27: RegSortida3Estats port map (Reset => Reset, clk =>clk, WE=>RegEsc(27), Din => Dades, E1 => RegSel1(27), E2 => RegSel2(27), Dout1 => Sor1, Dout2 => Sor2);
	 reg28: RegSortida3Estats port map (Reset => Reset, clk =>clk, WE=>RegEsc(28), Din => Dades, E1 => RegSel1(28), E2 => RegSel2(28), Dout1 => Sor1, Dout2 => Sor2);
	 reg29: RegSortida3Estats port map (Reset => Reset, clk =>clk, WE=>RegEsc(29), Din => Dades, E1 => RegSel1(29), E2 => RegSel2(29), Dout1 => Sor1, Dout2 => Sor2);
	 reg30: RegSortida3Estats port map (Reset => Reset, clk =>clk, WE=>RegEsc(30), Din => Dades, E1 => RegSel1(30), E2 => RegSel2(30), Dout1 => Sor1, Dout2 => Sor2);
	 reg31: RegSortida3Estats port map (Reset => Reset, clk =>clk, WE=>RegEsc(31), Din => Dades, E1 => RegSel1(31), E2 => RegSel2(31), Dout1 => Sor1, Dout2 => Sor2);
end architecture;
