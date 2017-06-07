library ieee;
use ieee.std_logic_1164.all;

entity RegSortida3Estats is
    port(
        Reset : in STD_LOGIC;
        clk   : in STD_LOGIC;
        WE    : in STD_LOGIC;
        Din   : in STD_LOGIC_VECTOR(31 downto 0);
        E1    : in STD_LOGIC;
        E2    : in STD_LOGIC;
        Dout1 : out STD_LOGIC_VECTOR(31 downto 0);
        Dout2 : out STD_LOGIC_VECTOR(31 downto 0)
    );
end RegSortida3Estats;

architecture Behavioral of RegSortida3Estats is
    component Registre is
        port(
            Reset  : in STD_LOGIC;
            clk    : in STD_LOGIC;
            Enable : in STD_LOGIC;
            Din    : in STD_LOGIC_VECTOR(31 downto 0);
            Dout   : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;

    signal SortidaReg: STD_LOGIC_VECTOR(31 downto 0);
    begin
    reg: Registre port map (
        Reset  => Reset,
        clk    => clk,
        Enable => WE,
        Din    => Din,
        Dout   => SortidaReg);
		  
        Dout1  <= SortidaReg when E1 = '1' else (others => 'Z');
        Dout2  <= SortidaReg when E2 = '1' else (others => 'Z');
end Behavioral;
