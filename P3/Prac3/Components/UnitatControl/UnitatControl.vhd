library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

entity UnitatControl is
 Port (
  co : in STD_LOGIC_VECTOR (5 downto 0);
  --z : in STD_LOGIC; -- colocarem el flag z i c fora de la Unitat de Control tal com esta a l'esquema
  --c : in STD_LOGIC;
  RegDest : out STD_LOGIC;
  SaltInc : out STD_LOGIC;
  MemaReg : out STD_LOGIC;
  LlegMem : out STD_LOGIC;
  EscrMem : out STD_LOGIC;
  SaltCon : out STD_LOGIC;
  FontALU : out STD_LOGIC;
  ALUOP : out STD_LOGIC_VECTOR(1 downto 0) ;
  EscrReg : out STD_LOGIC
 );
end UnitatControl;



architecture behav of UnitatControl is
begin
 process (co)
 begin
  case co is
   when "000000" =>  --Tipus R -> add, sub, and, or, nop fet
    RegDest <= '1';
    SaltInc <= '0';
    MemaReg <= '0';
    LlegMem <= '0';
    EscrMem <= '0';
    SaltCon <= '0';
    FontALU <= '0';
    ALUOP  <= "10";
    EscrReg <= '1';
    
   when "001000" =>  --Tipus I -> addi fet
    RegDest <= '0';
    SaltInc <= '0';
    MemaReg <= '0';
    LlegMem <= '0';
    EscrMem <= '0';
    SaltCon <= '0';
    FontALU <= '1';
    ALUOP  <= "00";
    EscrReg <= '1';
    
   when "100011" =>  --Tipus I -> lw fet
    RegDest <= '0';
    SaltInc <= '0';
    MemaReg <= '1';
    LlegMem <= '1';
    EscrMem <= '0';
    SaltCon <= '0';
    FontALU <= '1';
    ALUOP  <= "00";
    EscrReg <= '1';
    
   when "101011" =>  --Tipus I -> sw fet
    RegDest <= '0';
    SaltInc <= '0';
    MemaReg <= '0';
    LlegMem <= '0';
    EscrMem <= '1';
    SaltCon <= '0';
    FontALU <= '1';
    ALUOP  <= "00";
    EscrReg <= '0';
    
   when "000101" =>  --Tipus I -> bne fet
    RegDest <= '0';
    SaltInc <= '0';
    MemaReg <= '0';
    LlegMem <= '0';
    EscrMem <= '0';
    SaltCon <= '1';
    FontALU <= '0';
    ALUOP  <= "01";
    EscrReg <= '1';

   when "001010" =>  --Tipus I -> slti fet
    RegDest <= '0';
    SaltInc <= '0';
    MemaReg <= '0';
    LlegMem <= '0';
    EscrMem <= '0';
    SaltCon <= '0';
    FontALU <= '1';
    ALUOP  <= "11";
    EscrReg <= '1';

   when "000010" =>  --Tipus J -> J fet
    RegDest <= '0';
    SaltInc <= '1';
    MemaReg <= '0';
    LlegMem <= '0';
    EscrMem <= '0';
    SaltCon <= '0';
    FontALU <= '0';
    ALUOP  <= "00";
    EscrReg <= '0';
   when others =>
    RegDest <= '0';
    SaltInc <= '0';
    MemaReg <= '0';
    LlegMem <= '0';
    EscrMem <= '0';
    SaltCon <= '0';
    FontALU <= '0';
    ALUOP  <= "00";
    EscrReg <= '0';
  end case;
 end process;
end behav;