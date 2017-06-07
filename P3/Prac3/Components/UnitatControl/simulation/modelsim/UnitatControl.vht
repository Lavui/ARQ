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
-- Generated on "04/05/2017 11:47:09"
                                                            
-- Vhdl Test Bench template for design  :  UnitatControl
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY UnitatControl_vhd_tst IS
END UnitatControl_vhd_tst;
ARCHITECTURE UnitatControl_arch OF UnitatControl_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ALUOP : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL co : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL EscrMem : STD_LOGIC;
SIGNAL EscrReg : STD_LOGIC;
SIGNAL FontALU : STD_LOGIC;
SIGNAL LlegMem : STD_LOGIC;
SIGNAL MemaReg : STD_LOGIC;
SIGNAL RegDest : STD_LOGIC;
SIGNAL SaltCon : STD_LOGIC;
SIGNAL SaltInc : STD_LOGIC;
COMPONENT UnitatControl
	PORT (
	ALUOP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	co : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	EscrMem : OUT STD_LOGIC;
	EscrReg : OUT STD_LOGIC;
	FontALU : OUT STD_LOGIC;
	LlegMem : OUT STD_LOGIC;
	MemaReg : OUT STD_LOGIC;
	RegDest : OUT STD_LOGIC;
	SaltCon : OUT STD_LOGIC;
	SaltInc : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : UnitatControl
	PORT MAP (
-- list connections between master ports and signals
	ALUOP => ALUOP,
	co => co,
	EscrMem => EscrMem,
	EscrReg => EscrReg,
	FontALU => FontALU,
	LlegMem => LlegMem,
	MemaReg => MemaReg,
	RegDest => RegDest,
	SaltCon => SaltCon,
	SaltInc => SaltInc
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
	 wait for 100 ns;
	 co <= "000000"; --Add
	 wait for 100 ns;
	 co <= "100011"; --lw
	 wait for 100 ns;
	 co <= "000100"; --brne
	 
 
WAIT;                                                        
END PROCESS always;                                          
END UnitatControl_arch;
