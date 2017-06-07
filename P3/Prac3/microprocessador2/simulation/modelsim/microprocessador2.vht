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
-- Generated on "04/24/2017 17:49:16"
                                                            
-- Vhdl Test Bench template for design  :  microprocessador2
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY microprocessador2_vhd_tst IS
END microprocessador2_vhd_tst;
ARCHITECTURE microprocessador2_arch OF microprocessador2_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL Reset : STD_LOGIC;
COMPONENT microprocessador2
	PORT (
	CLK : IN STD_LOGIC;
	Reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : microprocessador2
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
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
END microprocessador2_arch;
