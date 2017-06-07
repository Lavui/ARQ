-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "03/22/2017 10:36:41"
                                                            
-- Vhdl Test Bench template for design  :  RegSortida3Estats
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY RegSortida3Estats_vhd_tst IS
END RegSortida3Estats_vhd_tst;
ARCHITECTURE RegSortida3Estats_arch OF RegSortida3Estats_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL Din : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Dout1 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Dout2 : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL E1 : STD_LOGIC;
SIGNAL E2 : STD_LOGIC;
SIGNAL Reset : STD_LOGIC;
SIGNAL WE : STD_LOGIC;
COMPONENT RegSortida3Estats
	PORT (
	clk : IN STD_LOGIC;
	Din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	Dout1 : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	Dout2 : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	E1 : IN STD_LOGIC;
	E2 : IN STD_LOGIC;
	Reset : IN STD_LOGIC;
	WE : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : RegSortida3Estats
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	Din => Din,
	Dout1 => Dout1,
	Dout2 => Dout2,
	E1 => E1,
	E2 => E2,
	Reset => Reset,
	WE => WE
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init; 

clock : PROCESS BEGIN
 clk <= '0'; WAIT FOR 50 ns;
 CLK <= '1'; WAIT FOR 50 ns;
end process clock;  
                                          
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN       
	Reset <= '1';
	wait for 100 ns;
	
	WE    <= '1';
	Din   <= "00000000000000000000000000000100";
	E1    <= '1';
	E2   	<= '0';     

	wait for 100 ns;
	Reset <= '0';
	wait for 100 ns;
	
	WE    <= '1';
	Din   <= "00000000000000000000000000000110";
	E1    <= '0';
	E2   	<= '1';    

	wait for 100 ns;
	WE    <= '0';
	Din   <= "00000000000000000000000000001111";
	E1    <= '1';
	E2   	<= '1';    

	wait for 100 ns;
	
	wait for 100 ns;
	WE    <= '1';
	Din   <= "00000000000000000000000000000111";
	E1    <= '1';
	E2   	<= '1';    

	wait for 100 ns;
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END RegSortida3Estats_arch;
