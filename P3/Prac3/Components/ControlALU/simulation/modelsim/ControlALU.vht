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
-- Generated on "04/18/2017 17:19:04"
                                                            
-- Vhdl Test Bench template for design  :  ControlALU
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ControlALU_vhd_tst IS
END ControlALU_vhd_tst;
ARCHITECTURE ControlALU_arch OF ControlALU_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CodiOP : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL funcio : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL Operacio : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT ControlALU
	PORT (
	CodiOP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	funcio : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	Operacio : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ControlALU
	PORT MAP (
-- list connections between master ports and signals
	CodiOP => CodiOP,
	funcio => funcio,
	Operacio => Operacio
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
	CodiOP <= "00";
	funcio <= "000000";
	wait for 100 ns; -- 010
	
	CodiOP <= "01";
	funcio <= "000000";
	wait for 100 ns; -- 110
	
	CodiOP <= "10";
	funcio <= "000000";
	wait for 100 ns; --010
	
	CodiOP <= "10";
	funcio <= "000010";
	wait for 100 ns; --110
	
	CodiOP <= "10";
	funcio <= "000100";
	wait for 100 ns; --000
	
	CodiOP <= "10";
	funcio <= "000101";
	wait for 100 ns; --001
	
	CodiOP <= "10";
	funcio <= "001010";
	wait for 100 ns; --111
	
WAIT;                                                        
END PROCESS always;                                          
END ControlALU_arch;
