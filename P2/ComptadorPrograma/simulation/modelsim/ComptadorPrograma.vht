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
-- Generated on "04/25/2017 16:44:11"
                                                            
-- Vhdl Test Bench template for design  :  ComptadorPrograma
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ComptadorPrograma_vhd_tst IS
END ComptadorPrograma_vhd_tst;
ARCHITECTURE ComptadorPrograma_arch OF ComptadorPrograma_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL Din : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Dout : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Reset : STD_LOGIC;
COMPONENT ComptadorPrograma
	PORT (
	clk : IN STD_LOGIC;
	Din : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	Dout : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	Reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ComptadorPrograma
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	Din => Din,
	Dout => Dout,
	Reset => Reset
	);
clock : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
	clk <= '0';
	wait for 50 ns;
	clk <= '1';
	wait for 50 ns;                                                     
END PROCESS clock;  
                                         
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
	reset <= '1';
	wait for 120 ns;
	reset <= '0';
	wait for 3200 ns;
WAIT;                                                        
END PROCESS always;                                                      
END ComptadorPrograma_arch;
