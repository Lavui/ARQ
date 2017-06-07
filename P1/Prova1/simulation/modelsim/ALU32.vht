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
-- Generated on "03/06/2017 18:49:06"
                                                            
-- Vhdl Test Bench template for design  :  ALU32
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                
use ieee.numeric_std.all; --en qualsevol de les comandes vhdl

ENTITY ALU32_vhd_tst IS
END ALU32_vhd_tst;
ARCHITECTURE ALU32_arch OF ALU32_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL C : STD_LOGIC;
SIGNAL Control_ALU : Signed(2 DOWNTO 0);
SIGNAL Op1 : signed(31 DOWNTO 0);
SIGNAL Op2 : signed(31 DOWNTO 0);
SIGNAL Resultat : Signed(31 DOWNTO 0);
SIGNAL Z : STD_LOGIC;
COMPONENT ALU32
	PORT (
	C : OUT STD_LOGIC;
	Control_ALU : IN signed(2 DOWNTO 0);
	Op1 : IN signed(31 DOWNTO 0);
	Op2 : IN signed(31 DOWNTO 0);
	Resultat : OUT signed(31 DOWNTO 0);
	Z : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ALU32
	PORT MAP (
-- list connections between master ports and signals
	C => C,
	Control_ALU => Control_ALU,
	Op1 => Op1,
	Op2 => Op2,
	Resultat => Resultat,
	Z => Z
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
		  
		  		  
		  Op1 <= x"00000002";
		  Op2 <= x"00000002";
		  Control_ALU <= "011"; --mul 1
		  wait for 1 us;
		  Op1 <= x"00000001";
		  Op2 <= x"0000000E";
		  Control_ALU <= "011"; --mul 2
		  wait for 1 us;
		  
		  Op1 <= x"00000000";
		  Op2 <= x"00000099";
		  Control_ALU <= "011"; --mul 3
		  wait for 1 us;
		  Op1 <= x"0000000F";
		  Op2 <= x"000000FF";
		  Control_ALU <= "011"; --mul 4
		  wait for 1 us;
		  
		  
		  Op1 <= x"00000010";
		  Op2 <= x"00000009";
		  Control_ALU <= "000"; --and 1
		  wait for 1 us;
		  Op1 <= x"000000FF";
		  Op2 <= x"00000003";
		  Control_ALU <= "000"; --and 2
		  wait for 1 us;

		  Op1 <= x"0000009D";
		  Op2 <= x"00000002";
		  Control_ALU <= "010"; --sum 1
		  wait for 1 us;
		  Op1 <= x"FFFFFFFF";
		  Op2 <= x"00000FCB";
		  Control_ALU <= "010"; --sum 2 -> carry
		  wait for 1 us;
		  Op1 <= x"00000001";
		  Op2 <= x"FFFFFFFF";
		  Control_ALU <= "010"; --sum 3 -> carry + Z
		  wait for 1 us;
		  
		  Op1 <= x"0000000F";
		  Op2 <= x"00000003";
		  Control_ALU <= "110"; --rest 1
		  wait for 1 us;
		  Op1 <= x"00000002";
		  Op2 <= x"0000000C";
		  Control_ALU <= "110"; --rest 2 -> carry
		  wait for 1 us;
		  Op1 <= x"00000015";
		  Op2 <= x"00000015";
		  Control_ALU <= "110"; --rest 3 -> Z
		  wait for 1 us;
		  
		  Op1 <= x"00000FFF";
		  Op2 <= x"000000FF";
		  Control_ALU <= "111"; --condicional 1 -> op1>op2 = false (0)
		  wait for 1 us;
		  Op1 <= x"00000088";
		  Op2 <= x"00000A00";
		  Control_ALU <= "111"; --condicional 2 -> op1<op2 = true (1)
		  wait for 1 us;
		  Op1 <= x"00000288";
		  Op2 <= x"00000288";
		  Control_ALU <= "111"; --condicional 3 -> op1==op2 = false (0)
		  wait for 1 us;
		  
WAIT;                                                        
END PROCESS always;                                          
END ALU32_arch;