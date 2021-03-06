library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

entity microprocessador2 is
    port (
			Reset : in STD_LOGIC;
			CLK : in STD_LOGIC);
end microprocessador2;


--------------------------------------------------------------------------------------------------

architecture Behavioral of microprocessador2 is
    component ALU32 is --fet
        Port (
            Op1, Op2 : in signed (31 downto 0);
            Control_ALU : in signed (2 downto 0);
            Resultat : out signed (31 downto 0);
            Z : out STD_LOGIC;
            C : out STD_LOGIC);
    end component;

    component UnitatControl is --fet
        Port (
			  co : in STD_LOGIC_VECTOR (5 downto 0);
			  RegDest : out STD_LOGIC;
			  SaltInc : out STD_LOGIC;
			  MemaReg : out STD_LOGIC;
			  LlegMem : out STD_LOGIC;
			  EscrMem : out STD_LOGIC;
			  SaltCon : out STD_LOGIC;
			  FontALU : out STD_LOGIC;
			  ALUOP : out STD_LOGIC_VECTOR(1 downto 0) ;
			  EscrReg : out STD_LOGIC);
    end component;

    component ControlALU is --fet
		Port (
				funcio : in STD_LOGIC_VECTOR (5 downto 0);
				CodiOP : in STD_LOGIC_VECTOR (1 downto 0); -- ALUOP
				Operacio : out signed (2 downto 0) -- Sortida control alu
        );
    end component;
	 
	 
    component sumador is --fet suma1
		Port (
				A, B: in std_logic_vector(31 downto 0);
				S: out std_logic_vector(31 downto 0)
        );
    end component;
	 
    component mux2x1_5bits is --fet mux1
		Port (
			  sel: in std_logic;
			  A, B: in std_logic_vector(4 downto 0);
			  O: out std_logic_vector(4 downto 0)
        );
    end component;
	 
    component mux2x1 is --fet mux2
		Port (
				sel: in std_logic;
				A, B: in std_logic_vector(31 downto 0);
				O: out std_logic_vector(31 downto 0)
        );
    end component;
	 

    component MemInst is --fet
		Port (
				address : in  STD_LOGIC_VECTOR (31 downto 0);
				Instr : out  STD_LOGIC_VECTOR (31 downto 0)
        );
    end component;
	 
    component memData is --fet
		Port (
				clock, MemRead, MemWrite: in std_logic;
				address: in std_logic_vector(7 downto 0);
				write_data: in std_logic_vector(31 downto 0);
				read_data: out std_logic_vector(31 downto 0)
        );
    end component;
	 
    component extSig is
		Port (
			  entrada: in std_logic_vector(15 downto 0);
			  sortida: out std_logic_vector(31 downto 0)
        );
    end component;
	 
    component ComptadorPrograma is
		Port (
				Reset : in STD_LOGIC;
				clk : in STD_LOGIC;
				Din : in STD_LOGIC_VECTOR(31 downto 0);
				Dout : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;
	 
	 
	 component BancRegistres is
		Port (
				Rf1: in STD_LOGIC_VECTOR(4 downto 0);
				Rf2: in STD_LOGIC_VECTOR(4 downto 0);
				Rdest: in STD_LOGIC_VECTOR(4 downto 0);
		  
				Sor1 : out STD_LOGIC_VECTOR(31 downto 0);
				Sor2 : out STD_LOGIC_VECTOR(31 downto 0);
	
				Dades: in STD_LOGIC_VECTOR(31 downto 0);

				Esc : in STD_LOGIC;
				Reset : in STD_LOGIC;

				clk : in STD_LOGIC
        );
    end component;
	
---------------------------------------------------------------------------------------------------------- 
	-- Senyals ALU32
    signal D1 : SIGNED (31 downto 0);
    signal D2 : SIGNED (31 downto 0);
    signal carry : STD_LOGIC;
	signal zero : STD_LOGIC;
	signal adreca : SIGNED (31 downto 0);
	signal contALU : SIGNED (2 downto 0);
	
	-- Senyals UnitatControl
	signal RegDest : STD_LOGIC;
	signal SaltInc : STD_LOGIC;
	signal MemaReg : STD_LOGIC;
	signal LlegMem : STD_LOGIC;
	signal EscrMem : STD_LOGIC;
	signal SaltCon : STD_LOGIC;
	signal FontALU : STD_LOGIC;
	signal ALUOP : STD_LOGIC_VECTOR(1 downto 0) ;
	signal EscrReg : STD_LOGIC;
	 
	-- senyals controlALU
	signal funcio : STD_LOGIC_VECTOR (31 downto 0);
	signal CodiOP : STD_LOGIC_VECTOR (1 downto 0);
	--signal contALU: signed (2 downto 0);

	--suma1 4+Dout
	signal Dout : std_logic_vector(31 downto 0);
	signal S1 : std_logic_vector(31 downto 0);
	signal Const4 : std_logic_vector(31 downto 0) := "00000000000000000000000000000100";
	
	--mux1
	signal om1 : std_logic_vector(4 downto 0);
	--	signal funcio : STD_LOGIC_VECTOR (31 downto 0);

	--MemoriaPrograma
	--	signal Dout : std_logic_vector(31 downto 0);
	--	signal funcio : STD_LOGIC_VECTOR (31 downto 0);

	--ComptadorPrograma
	signal Din : STD_LOGIC_VECTOR(31 downto 0);
	--signal Dout : STD_LOGIC_VECTOR(31 downto 0);
	
	--BancRegistres
	--signal om1: STD_LOGIC_VECTOR(4 downto 0);
	signal sor2 : STD_LOGIC_VECTOR(31 downto 0);
	signal DadaEsc: STD_LOGIC_VECTOR(31 downto 0);
	
	--Extsigne
	signal sExt : std_logic_vector(31 downto 0);
	
	--mux2
	--signal D2: std_logic_vector(31 downto 0);
	
	--MemoriaPrograma
	signal readDat :std_logic_vector(31 downto 0);
	
	--Suma2
	signal S2 : std_logic_vector(31 downto 0);
	signal B2 : std_logic_vector(31 downto 0);

	--mux4
	signal S3 : std_logic_vector(31 downto 0);
	signal selmux4 : std_logic;

	--mux5
	signal B3: std_logic_vector (31 downto 0);
	
    begin
	 
----------------------------------------------------------------------------------------------------------
	 
	selmux4 <= (SaltCon AND (not zero));
	B3 <= ((S1(31 downto 28))&(funcio(25 downto 0) & "00"));
	B2 <= (sExt(29 downto 0) & "00");
	
----------------------------------------------------------------------------------------------------------
	
	ALU: ALU32 port map (
		Op1 => D1,
		Op2 => D2,
		Control_ALU => contALU,
		Resultat => adreca,
		Z => zero,
		C => carry);
		
	UC: UnitatControl port map(
		co => funcio(31 downto 26),
		RegDest => RegDest,
		SaltInc => SaltInc,
		MemaReg => MemaReg,
		LlegMem => LlegMem,
		EscrMem => EscrMem,
		SaltCon => SaltCon,
		FontALU => FontALU,
		ALUOP => ALUOP,
		EscrReg => EscrReg);

	ContrALU: ControlALU port map(
		funcio => funcio(5 downto 0),
		CodiOP => ALUOP,
		Operacio => contALU);
		
   suma1: sumador port map(
		A => Const4,
		B => Dout,
		S => S1);
		
	mux1: mux2x1_5bits port map(
		sel => RegDest,
		A => funcio(20 downto 16),
		B => funcio(15 downto 11),
		O => om1);
		
	PC: ComptadorPrograma port map(
		Reset => Reset,
		clk => CLK,
		Din => Din,
		Dout => Dout);
		
	BancReg: BancRegistres port map(
		Rf1 => funcio(25 downto 21),
		Rf2 => funcio(20 downto 16),
		Rdest => om1,
		signed(Sor1) => D1,
		Sor2 => sor2,
		Dades=> DadaEsc,
		Esc => EscrReg,
		Reset => Reset,
		clk => CLK
	);
	
    ExSig : extSig port map(
		entrada => funcio(15 downto 0),
		sortida => sExt
	);
	 
	 mux2 : mux2x1 port map(
		sel => FontALU,
		A => Sor2,
		B => sExt,
		signed(O) => D2
	);
	
	MemoriaPrograma : MemInst port map(
		address => Dout,
		Instr => funcio
	);
	
	MemDades : memData port map(
		clock => clk,
		write_data => sor2,
		read_data => ReadDat,
		MemRead => LlegMem,
		MemWrite => EscrMem,
		address => std_logic_vector(adreca(7 downto 0))
	);
	
	mux3 : mux2x1 port map(
		sel => MemaReg,
		A => std_logic_vector(adreca),
		B => ReadDat,
		O => DadaEsc
	);
	
	suma2: sumador port map(
		A => S1,
		B => B2,
		S => S2
	);
		
	mux4 : mux2x1 port map(
		sel => selmux4,
		A => S1,
		B => S2,
		O => S3
	);
	
	mux5 : mux2x1 port map(
		sel => SaltInc,
		A => S3,
		B => B3,
		O => Din
	);
	
end architecture;
