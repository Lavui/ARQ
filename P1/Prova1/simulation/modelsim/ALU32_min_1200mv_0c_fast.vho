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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "05/10/2017 16:41:08"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALU32 IS
    PORT (
	Op1 : IN IEEE.NUMERIC_STD.signed(31 DOWNTO 0);
	Op2 : IN IEEE.NUMERIC_STD.signed(31 DOWNTO 0);
	Control_ALU : IN IEEE.NUMERIC_STD.signed(2 DOWNTO 0);
	Resultat : OUT IEEE.NUMERIC_STD.signed(31 DOWNTO 0);
	Z : OUT std_logic;
	C : OUT std_logic
	);
END ALU32;

-- Design Ports Information
-- Resultat[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultat[1]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultat[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultat[3]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultat[4]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultat[5]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultat[6]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultat[7]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultat[8]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultat[9]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultat[10]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultat[11]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultat[12]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultat[13]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultat[14]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultat[15]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultat[16]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultat[17]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultat[18]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultat[19]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultat[20]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultat[21]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultat[22]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultat[23]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultat[24]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultat[25]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultat[26]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultat[27]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultat[28]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultat[29]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultat[30]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Resultat[31]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op2[0]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op1[0]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Control_ALU[0]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Control_ALU[1]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Control_ALU[2]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op1[31]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op2[31]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op1[30]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op2[30]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op1[29]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op2[29]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op1[28]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op2[28]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op1[27]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op2[27]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op1[26]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op2[26]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op1[25]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op2[25]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op1[24]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op2[24]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op1[23]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op2[23]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op1[22]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op2[22]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op1[21]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op2[21]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op1[20]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op2[20]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op1[19]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op2[19]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op1[18]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op2[18]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op1[17]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op2[17]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op1[16]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op2[16]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op1[15]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op2[15]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op1[14]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op2[14]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op1[13]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op2[13]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op1[12]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op2[12]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op1[11]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op2[11]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op1[10]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op2[10]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op1[9]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op2[9]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op1[8]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op2[8]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op1[7]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op2[7]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op1[6]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op2[6]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op1[5]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op2[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op1[4]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op2[4]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op1[3]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op2[3]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op1[2]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op2[2]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op1[1]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Op2[1]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU32 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Op1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Op2 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Control_ALU : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Resultat : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Z : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out4_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out4_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out6_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out6_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult3_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult3_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult3_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult5_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult5_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult5_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT33\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT34\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT35\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT25\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT26\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT27\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT28\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT29\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT30\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT31\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT25\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT26\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT27\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT28\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT29\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT30\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT31\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~3\ : std_logic;
SIGNAL \Resultat[0]~output_o\ : std_logic;
SIGNAL \Resultat[1]~output_o\ : std_logic;
SIGNAL \Resultat[2]~output_o\ : std_logic;
SIGNAL \Resultat[3]~output_o\ : std_logic;
SIGNAL \Resultat[4]~output_o\ : std_logic;
SIGNAL \Resultat[5]~output_o\ : std_logic;
SIGNAL \Resultat[6]~output_o\ : std_logic;
SIGNAL \Resultat[7]~output_o\ : std_logic;
SIGNAL \Resultat[8]~output_o\ : std_logic;
SIGNAL \Resultat[9]~output_o\ : std_logic;
SIGNAL \Resultat[10]~output_o\ : std_logic;
SIGNAL \Resultat[11]~output_o\ : std_logic;
SIGNAL \Resultat[12]~output_o\ : std_logic;
SIGNAL \Resultat[13]~output_o\ : std_logic;
SIGNAL \Resultat[14]~output_o\ : std_logic;
SIGNAL \Resultat[15]~output_o\ : std_logic;
SIGNAL \Resultat[16]~output_o\ : std_logic;
SIGNAL \Resultat[17]~output_o\ : std_logic;
SIGNAL \Resultat[18]~output_o\ : std_logic;
SIGNAL \Resultat[19]~output_o\ : std_logic;
SIGNAL \Resultat[20]~output_o\ : std_logic;
SIGNAL \Resultat[21]~output_o\ : std_logic;
SIGNAL \Resultat[22]~output_o\ : std_logic;
SIGNAL \Resultat[23]~output_o\ : std_logic;
SIGNAL \Resultat[24]~output_o\ : std_logic;
SIGNAL \Resultat[25]~output_o\ : std_logic;
SIGNAL \Resultat[26]~output_o\ : std_logic;
SIGNAL \Resultat[27]~output_o\ : std_logic;
SIGNAL \Resultat[28]~output_o\ : std_logic;
SIGNAL \Resultat[29]~output_o\ : std_logic;
SIGNAL \Resultat[30]~output_o\ : std_logic;
SIGNAL \Resultat[31]~output_o\ : std_logic;
SIGNAL \Z~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \Control_ALU[1]~input_o\ : std_logic;
SIGNAL \Op1[0]~input_o\ : std_logic;
SIGNAL \Control_ALU[0]~input_o\ : std_logic;
SIGNAL \Op2[0]~input_o\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Control_ALU[2]~input_o\ : std_logic;
SIGNAL \Op1[1]~input_o\ : std_logic;
SIGNAL \Op1[2]~input_o\ : std_logic;
SIGNAL \Op1[3]~input_o\ : std_logic;
SIGNAL \Op1[4]~input_o\ : std_logic;
SIGNAL \Op1[5]~input_o\ : std_logic;
SIGNAL \Op1[6]~input_o\ : std_logic;
SIGNAL \Op1[7]~input_o\ : std_logic;
SIGNAL \Op1[8]~input_o\ : std_logic;
SIGNAL \Op1[9]~input_o\ : std_logic;
SIGNAL \Op1[10]~input_o\ : std_logic;
SIGNAL \Op1[11]~input_o\ : std_logic;
SIGNAL \Op1[12]~input_o\ : std_logic;
SIGNAL \Op1[13]~input_o\ : std_logic;
SIGNAL \Op1[14]~input_o\ : std_logic;
SIGNAL \Op1[15]~input_o\ : std_logic;
SIGNAL \Op1[16]~input_o\ : std_logic;
SIGNAL \Op1[17]~input_o\ : std_logic;
SIGNAL \Op2[1]~input_o\ : std_logic;
SIGNAL \Op2[2]~input_o\ : std_logic;
SIGNAL \Op2[3]~input_o\ : std_logic;
SIGNAL \Op2[4]~input_o\ : std_logic;
SIGNAL \Op2[5]~input_o\ : std_logic;
SIGNAL \Op2[6]~input_o\ : std_logic;
SIGNAL \Op2[7]~input_o\ : std_logic;
SIGNAL \Op2[8]~input_o\ : std_logic;
SIGNAL \Op2[9]~input_o\ : std_logic;
SIGNAL \Op2[10]~input_o\ : std_logic;
SIGNAL \Op2[11]~input_o\ : std_logic;
SIGNAL \Op2[12]~input_o\ : std_logic;
SIGNAL \Op2[13]~input_o\ : std_logic;
SIGNAL \Op2[14]~input_o\ : std_logic;
SIGNAL \Op2[15]~input_o\ : std_logic;
SIGNAL \Op2[16]~input_o\ : std_logic;
SIGNAL \Op2[17]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT32\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT33\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT34\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT35\ : std_logic;
SIGNAL \Op2[31]~input_o\ : std_logic;
SIGNAL \Op1[31]~input_o\ : std_logic;
SIGNAL \Op1[30]~input_o\ : std_logic;
SIGNAL \Op2[30]~input_o\ : std_logic;
SIGNAL \Op2[29]~input_o\ : std_logic;
SIGNAL \Op1[29]~input_o\ : std_logic;
SIGNAL \Op1[28]~input_o\ : std_logic;
SIGNAL \Op2[28]~input_o\ : std_logic;
SIGNAL \Op1[27]~input_o\ : std_logic;
SIGNAL \Op2[27]~input_o\ : std_logic;
SIGNAL \Op2[26]~input_o\ : std_logic;
SIGNAL \Op1[26]~input_o\ : std_logic;
SIGNAL \Op2[25]~input_o\ : std_logic;
SIGNAL \Op1[25]~input_o\ : std_logic;
SIGNAL \Op1[24]~input_o\ : std_logic;
SIGNAL \Op2[24]~input_o\ : std_logic;
SIGNAL \Op2[23]~input_o\ : std_logic;
SIGNAL \Op1[23]~input_o\ : std_logic;
SIGNAL \Op2[22]~input_o\ : std_logic;
SIGNAL \Op1[22]~input_o\ : std_logic;
SIGNAL \Op1[21]~input_o\ : std_logic;
SIGNAL \Op2[21]~input_o\ : std_logic;
SIGNAL \Op2[20]~input_o\ : std_logic;
SIGNAL \Op1[20]~input_o\ : std_logic;
SIGNAL \Op1[19]~input_o\ : std_logic;
SIGNAL \Op2[19]~input_o\ : std_logic;
SIGNAL \Op1[18]~input_o\ : std_logic;
SIGNAL \Op2[18]~input_o\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~19_cout\ : std_logic;
SIGNAL \LessThan0~21_cout\ : std_logic;
SIGNAL \LessThan0~23_cout\ : std_logic;
SIGNAL \LessThan0~25_cout\ : std_logic;
SIGNAL \LessThan0~27_cout\ : std_logic;
SIGNAL \LessThan0~29_cout\ : std_logic;
SIGNAL \LessThan0~31_cout\ : std_logic;
SIGNAL \LessThan0~33_cout\ : std_logic;
SIGNAL \LessThan0~35_cout\ : std_logic;
SIGNAL \LessThan0~37_cout\ : std_logic;
SIGNAL \LessThan0~39_cout\ : std_logic;
SIGNAL \LessThan0~41_cout\ : std_logic;
SIGNAL \LessThan0~43_cout\ : std_logic;
SIGNAL \LessThan0~45_cout\ : std_logic;
SIGNAL \LessThan0~47_cout\ : std_logic;
SIGNAL \LessThan0~49_cout\ : std_logic;
SIGNAL \LessThan0~51_cout\ : std_logic;
SIGNAL \LessThan0~53_cout\ : std_logic;
SIGNAL \LessThan0~55_cout\ : std_logic;
SIGNAL \LessThan0~57_cout\ : std_logic;
SIGNAL \LessThan0~59_cout\ : std_logic;
SIGNAL \LessThan0~61_cout\ : std_logic;
SIGNAL \LessThan0~62_combout\ : std_logic;
SIGNAL \Mux32~2_combout\ : std_logic;
SIGNAL \Mux32~3_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_cout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux31~combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux28~combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~combout\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add0~28\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~combout\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~combout\ : std_logic;
SIGNAL \Add0~41_combout\ : std_logic;
SIGNAL \Add0~40\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~combout\ : std_logic;
SIGNAL \Add0~47_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~combout\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~51_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~combout\ : std_logic;
SIGNAL \Add0~53_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT25\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT26\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT27\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT28\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT29\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT30\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~DATAOUT31\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult3~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT16\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT17\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT18\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT25\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT26\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT27\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT28\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT29\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT30\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~DATAOUT31\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult5~3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~57_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~1\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Add0~59_combout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~combout\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~63_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~3\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~5\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~64\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~combout\ : std_logic;
SIGNAL \Add0~68_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~69_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~7\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~combout\ : std_logic;
SIGNAL \Add0~71_combout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~72_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~9\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~11\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~12_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~11\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \Add0~74_combout\ : std_logic;
SIGNAL \Add0~73\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~13\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~14_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~13\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \Add0~77_combout\ : std_logic;
SIGNAL \Add0~76\ : std_logic;
SIGNAL \Add0~78_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~15\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~16_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~15\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~79\ : std_logic;
SIGNAL \Add0~81_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~17\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~18_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~17\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \Add0~83_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~84_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~19\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~20_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~19\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \Add0~86_combout\ : std_logic;
SIGNAL \Add0~85\ : std_logic;
SIGNAL \Add0~87_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~21\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~22_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~21\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \Add0~89_combout\ : std_logic;
SIGNAL \Add0~88\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~23\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~24_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~23\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \Add0~92_combout\ : std_logic;
SIGNAL \Add0~91\ : std_logic;
SIGNAL \Add0~93_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~25\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~26_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~25\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~96_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Add0~97\ : std_logic;
SIGNAL \Add0~98_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out6~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out4~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~27\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~28_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT32\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~27\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|w569w\ : std_logic_vector(64 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Op1 <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(Op1);
ww_Op2 <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(Op2);
ww_Control_ALU <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(Control_ALU);
Resultat <= IEEE.NUMERIC_STD.SIGNED(ww_Resultat);
Z <= ww_Z;
C <= ww_C;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult1~DATAOUT35\ & \Mult0|auto_generated|mac_mult1~DATAOUT34\ & \Mult0|auto_generated|mac_mult1~DATAOUT33\ & \Mult0|auto_generated|mac_mult1~DATAOUT32\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT31\ & \Mult0|auto_generated|mac_mult1~DATAOUT30\ & \Mult0|auto_generated|mac_mult1~DATAOUT29\ & \Mult0|auto_generated|mac_mult1~DATAOUT28\ & \Mult0|auto_generated|mac_mult1~DATAOUT27\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT26\ & \Mult0|auto_generated|mac_mult1~DATAOUT25\ & \Mult0|auto_generated|mac_mult1~DATAOUT24\ & \Mult0|auto_generated|mac_mult1~DATAOUT23\ & \Mult0|auto_generated|mac_mult1~DATAOUT22\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT21\ & \Mult0|auto_generated|mac_mult1~DATAOUT20\ & \Mult0|auto_generated|mac_mult1~DATAOUT19\ & \Mult0|auto_generated|mac_mult1~DATAOUT18\ & \Mult0|auto_generated|mac_mult1~DATAOUT17\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT16\ & \Mult0|auto_generated|mac_mult1~DATAOUT15\ & \Mult0|auto_generated|mac_mult1~DATAOUT14\ & \Mult0|auto_generated|mac_mult1~DATAOUT13\ & \Mult0|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT11\ & \Mult0|auto_generated|mac_mult1~DATAOUT10\ & \Mult0|auto_generated|mac_mult1~DATAOUT9\ & \Mult0|auto_generated|mac_mult1~DATAOUT8\ & \Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT6\ & \Mult0|auto_generated|mac_mult1~DATAOUT5\ & \Mult0|auto_generated|mac_mult1~DATAOUT4\ & \Mult0|auto_generated|mac_mult1~DATAOUT3\ & \Mult0|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT1\ & \Mult0|auto_generated|mac_mult1~dataout\);

\Mult0|auto_generated|w569w\(0) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult0|auto_generated|w569w\(1) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult0|auto_generated|w569w\(2) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult0|auto_generated|w569w\(3) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult0|auto_generated|w569w\(4) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult0|auto_generated|w569w\(5) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult0|auto_generated|w569w\(6) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult0|auto_generated|w569w\(7) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult0|auto_generated|w569w\(8) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult0|auto_generated|w569w\(9) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult0|auto_generated|w569w\(10) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult0|auto_generated|w569w\(11) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult0|auto_generated|w569w\(12) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult0|auto_generated|w569w\(13) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult0|auto_generated|w569w\(14) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult0|auto_generated|w569w\(15) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult0|auto_generated|w569w\(16) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult0|auto_generated|w569w\(17) <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_out2~DATAOUT18\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_out2~DATAOUT19\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_out2~DATAOUT20\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_out2~DATAOUT21\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_out2~DATAOUT22\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_out2~DATAOUT23\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_out2~DATAOUT24\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_out2~DATAOUT25\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_out2~DATAOUT26\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_out2~DATAOUT27\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_out2~DATAOUT28\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_out2~DATAOUT29\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_out2~DATAOUT30\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_out2~DATAOUT31\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_out2~DATAOUT32\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_out2~DATAOUT33\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_out2~DATAOUT34\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_out2~DATAOUT35\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_out4_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult3~DATAOUT31\ & \Mult0|auto_generated|mac_mult3~DATAOUT30\ & \Mult0|auto_generated|mac_mult3~DATAOUT29\ & \Mult0|auto_generated|mac_mult3~DATAOUT28\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT27\ & \Mult0|auto_generated|mac_mult3~DATAOUT26\ & \Mult0|auto_generated|mac_mult3~DATAOUT25\ & \Mult0|auto_generated|mac_mult3~DATAOUT24\ & \Mult0|auto_generated|mac_mult3~DATAOUT23\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT22\ & \Mult0|auto_generated|mac_mult3~DATAOUT21\ & \Mult0|auto_generated|mac_mult3~DATAOUT20\ & \Mult0|auto_generated|mac_mult3~DATAOUT19\ & \Mult0|auto_generated|mac_mult3~DATAOUT18\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT17\ & \Mult0|auto_generated|mac_mult3~DATAOUT16\ & \Mult0|auto_generated|mac_mult3~DATAOUT15\ & \Mult0|auto_generated|mac_mult3~DATAOUT14\ & \Mult0|auto_generated|mac_mult3~DATAOUT13\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT12\ & \Mult0|auto_generated|mac_mult3~DATAOUT11\ & \Mult0|auto_generated|mac_mult3~DATAOUT10\ & \Mult0|auto_generated|mac_mult3~DATAOUT9\ & \Mult0|auto_generated|mac_mult3~DATAOUT8\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT7\ & \Mult0|auto_generated|mac_mult3~DATAOUT6\ & \Mult0|auto_generated|mac_mult3~DATAOUT5\ & \Mult0|auto_generated|mac_mult3~DATAOUT4\ & \Mult0|auto_generated|mac_mult3~DATAOUT3\ & 
\Mult0|auto_generated|mac_mult3~DATAOUT2\ & \Mult0|auto_generated|mac_mult3~DATAOUT1\ & \Mult0|auto_generated|mac_mult3~dataout\ & \Mult0|auto_generated|mac_mult3~3\ & \Mult0|auto_generated|mac_mult3~2\ & \Mult0|auto_generated|mac_mult3~1\ & 
\Mult0|auto_generated|mac_mult3~0\);

\Mult0|auto_generated|mac_out4~0\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out4~1\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out4~2\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out4~3\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out4~dataout\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_out4~DATAOUT1\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_out4~DATAOUT2\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_out4~DATAOUT3\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_out4~DATAOUT4\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_out4~DATAOUT5\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_out4~DATAOUT6\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_out4~DATAOUT7\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_out4~DATAOUT8\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_out4~DATAOUT9\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_out4~DATAOUT10\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_out4~DATAOUT11\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_out4~DATAOUT12\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_out4~DATAOUT13\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_out4~DATAOUT14\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_out4~DATAOUT15\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_out4~DATAOUT16\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_out4~DATAOUT17\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_out4~DATAOUT18\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_out4~DATAOUT19\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_out4~DATAOUT20\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_out4~DATAOUT21\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_out4~DATAOUT22\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_out4~DATAOUT23\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_out4~DATAOUT24\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_out4~DATAOUT25\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_out4~DATAOUT26\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_out4~DATAOUT27\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_out4~DATAOUT28\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_out4~DATAOUT29\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_out4~DATAOUT30\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_out4~DATAOUT31\ <= \Mult0|auto_generated|mac_out4_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_out6_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult5~DATAOUT31\ & \Mult0|auto_generated|mac_mult5~DATAOUT30\ & \Mult0|auto_generated|mac_mult5~DATAOUT29\ & \Mult0|auto_generated|mac_mult5~DATAOUT28\ & 
\Mult0|auto_generated|mac_mult5~DATAOUT27\ & \Mult0|auto_generated|mac_mult5~DATAOUT26\ & \Mult0|auto_generated|mac_mult5~DATAOUT25\ & \Mult0|auto_generated|mac_mult5~DATAOUT24\ & \Mult0|auto_generated|mac_mult5~DATAOUT23\ & 
\Mult0|auto_generated|mac_mult5~DATAOUT22\ & \Mult0|auto_generated|mac_mult5~DATAOUT21\ & \Mult0|auto_generated|mac_mult5~DATAOUT20\ & \Mult0|auto_generated|mac_mult5~DATAOUT19\ & \Mult0|auto_generated|mac_mult5~DATAOUT18\ & 
\Mult0|auto_generated|mac_mult5~DATAOUT17\ & \Mult0|auto_generated|mac_mult5~DATAOUT16\ & \Mult0|auto_generated|mac_mult5~DATAOUT15\ & \Mult0|auto_generated|mac_mult5~DATAOUT14\ & \Mult0|auto_generated|mac_mult5~DATAOUT13\ & 
\Mult0|auto_generated|mac_mult5~DATAOUT12\ & \Mult0|auto_generated|mac_mult5~DATAOUT11\ & \Mult0|auto_generated|mac_mult5~DATAOUT10\ & \Mult0|auto_generated|mac_mult5~DATAOUT9\ & \Mult0|auto_generated|mac_mult5~DATAOUT8\ & 
\Mult0|auto_generated|mac_mult5~DATAOUT7\ & \Mult0|auto_generated|mac_mult5~DATAOUT6\ & \Mult0|auto_generated|mac_mult5~DATAOUT5\ & \Mult0|auto_generated|mac_mult5~DATAOUT4\ & \Mult0|auto_generated|mac_mult5~DATAOUT3\ & 
\Mult0|auto_generated|mac_mult5~DATAOUT2\ & \Mult0|auto_generated|mac_mult5~DATAOUT1\ & \Mult0|auto_generated|mac_mult5~dataout\ & \Mult0|auto_generated|mac_mult5~3\ & \Mult0|auto_generated|mac_mult5~2\ & \Mult0|auto_generated|mac_mult5~1\ & 
\Mult0|auto_generated|mac_mult5~0\);

\Mult0|auto_generated|mac_out6~0\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out6~1\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out6~2\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out6~3\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out6~dataout\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_out6~DATAOUT1\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_out6~DATAOUT2\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_out6~DATAOUT3\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_out6~DATAOUT4\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_out6~DATAOUT5\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_out6~DATAOUT6\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_out6~DATAOUT7\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_out6~DATAOUT8\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_out6~DATAOUT9\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_out6~DATAOUT10\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_out6~DATAOUT11\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_out6~DATAOUT12\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_out6~DATAOUT13\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_out6~DATAOUT14\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_out6~DATAOUT15\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_out6~DATAOUT16\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_out6~DATAOUT17\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_out6~DATAOUT18\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_out6~DATAOUT19\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_out6~DATAOUT20\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_out6~DATAOUT21\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_out6~DATAOUT22\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_out6~DATAOUT23\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_out6~DATAOUT24\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_out6~DATAOUT25\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_out6~DATAOUT26\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_out6~DATAOUT27\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_out6~DATAOUT28\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_out6~DATAOUT29\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_out6~DATAOUT30\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_out6~DATAOUT31\ <= \Mult0|auto_generated|mac_out6_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\Op1[17]~input_o\ & \Op1[16]~input_o\ & \Op1[15]~input_o\ & \Op1[14]~input_o\ & \Op1[13]~input_o\ & \Op1[12]~input_o\ & \Op1[11]~input_o\ & \Op1[10]~input_o\ & \Op1[9]~input_o\ & \Op1[8]~input_o\ & 
\Op1[7]~input_o\ & \Op1[6]~input_o\ & \Op1[5]~input_o\ & \Op1[4]~input_o\ & \Op1[3]~input_o\ & \Op1[2]~input_o\ & \Op1[1]~input_o\ & \Op1[0]~input_o\);

\Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\Op2[17]~input_o\ & \Op2[16]~input_o\ & \Op2[15]~input_o\ & \Op2[14]~input_o\ & \Op2[13]~input_o\ & \Op2[12]~input_o\ & \Op2[11]~input_o\ & \Op2[10]~input_o\ & \Op2[9]~input_o\ & \Op2[8]~input_o\ & 
\Op2[7]~input_o\ & \Op2[6]~input_o\ & \Op2[5]~input_o\ & \Op2[4]~input_o\ & \Op2[3]~input_o\ & \Op2[2]~input_o\ & \Op2[1]~input_o\ & \Op2[0]~input_o\);

\Mult0|auto_generated|mac_mult1~dataout\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_mult1~DATAOUT28\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_mult1~DATAOUT29\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_mult1~DATAOUT30\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_mult1~DATAOUT31\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_mult1~DATAOUT32\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_mult1~DATAOUT33\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_mult1~DATAOUT34\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_mult1~DATAOUT35\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_mult3_DATAA_bus\ <= (\Op1[17]~input_o\ & \Op1[16]~input_o\ & \Op1[15]~input_o\ & \Op1[14]~input_o\ & \Op1[13]~input_o\ & \Op1[12]~input_o\ & \Op1[11]~input_o\ & \Op1[10]~input_o\ & \Op1[9]~input_o\ & \Op1[8]~input_o\ & 
\Op1[7]~input_o\ & \Op1[6]~input_o\ & \Op1[5]~input_o\ & \Op1[4]~input_o\ & \Op1[3]~input_o\ & \Op1[2]~input_o\ & \Op1[1]~input_o\ & \Op1[0]~input_o\);

\Mult0|auto_generated|mac_mult3_DATAB_bus\ <= (\Op2[31]~input_o\ & \Op2[30]~input_o\ & \Op2[29]~input_o\ & \Op2[28]~input_o\ & \Op2[27]~input_o\ & \Op2[26]~input_o\ & \Op2[25]~input_o\ & \Op2[24]~input_o\ & \Op2[23]~input_o\ & \Op2[22]~input_o\ & 
\Op2[21]~input_o\ & \Op2[20]~input_o\ & \Op2[19]~input_o\ & \Op2[18]~input_o\ & gnd & gnd & gnd & gnd);

\Mult0|auto_generated|mac_mult3~0\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult3~1\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult3~2\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult3~3\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult3~dataout\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult3~DATAOUT1\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult3~DATAOUT2\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult3~DATAOUT3\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult3~DATAOUT4\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult3~DATAOUT5\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult3~DATAOUT6\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult3~DATAOUT7\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult3~DATAOUT8\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult3~DATAOUT9\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult3~DATAOUT10\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult3~DATAOUT11\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult3~DATAOUT12\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult3~DATAOUT13\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_mult3~DATAOUT14\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_mult3~DATAOUT15\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_mult3~DATAOUT16\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_mult3~DATAOUT17\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_mult3~DATAOUT18\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_mult3~DATAOUT19\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_mult3~DATAOUT20\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_mult3~DATAOUT21\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_mult3~DATAOUT22\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_mult3~DATAOUT23\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_mult3~DATAOUT24\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_mult3~DATAOUT25\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_mult3~DATAOUT26\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_mult3~DATAOUT27\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_mult3~DATAOUT28\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_mult3~DATAOUT29\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_mult3~DATAOUT30\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_mult3~DATAOUT31\ <= \Mult0|auto_generated|mac_mult3_DATAOUT_bus\(35);

\Mult0|auto_generated|mac_mult5_DATAA_bus\ <= (\Op2[17]~input_o\ & \Op2[16]~input_o\ & \Op2[15]~input_o\ & \Op2[14]~input_o\ & \Op2[13]~input_o\ & \Op2[12]~input_o\ & \Op2[11]~input_o\ & \Op2[10]~input_o\ & \Op2[9]~input_o\ & \Op2[8]~input_o\ & 
\Op2[7]~input_o\ & \Op2[6]~input_o\ & \Op2[5]~input_o\ & \Op2[4]~input_o\ & \Op2[3]~input_o\ & \Op2[2]~input_o\ & \Op2[1]~input_o\ & \Op2[0]~input_o\);

\Mult0|auto_generated|mac_mult5_DATAB_bus\ <= (\Op1[31]~input_o\ & \Op1[30]~input_o\ & \Op1[29]~input_o\ & \Op1[28]~input_o\ & \Op1[27]~input_o\ & \Op1[26]~input_o\ & \Op1[25]~input_o\ & \Op1[24]~input_o\ & \Op1[23]~input_o\ & \Op1[22]~input_o\ & 
\Op1[21]~input_o\ & \Op1[20]~input_o\ & \Op1[19]~input_o\ & \Op1[18]~input_o\ & gnd & gnd & gnd & gnd);

\Mult0|auto_generated|mac_mult5~0\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult5~1\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult5~2\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult5~3\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult5~dataout\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult5~DATAOUT1\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult5~DATAOUT2\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult5~DATAOUT3\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult5~DATAOUT4\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult5~DATAOUT5\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult5~DATAOUT6\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult5~DATAOUT7\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult5~DATAOUT8\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult5~DATAOUT9\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult5~DATAOUT10\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult5~DATAOUT11\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult5~DATAOUT12\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult5~DATAOUT13\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(17);
\Mult0|auto_generated|mac_mult5~DATAOUT14\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(18);
\Mult0|auto_generated|mac_mult5~DATAOUT15\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(19);
\Mult0|auto_generated|mac_mult5~DATAOUT16\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(20);
\Mult0|auto_generated|mac_mult5~DATAOUT17\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(21);
\Mult0|auto_generated|mac_mult5~DATAOUT18\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(22);
\Mult0|auto_generated|mac_mult5~DATAOUT19\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(23);
\Mult0|auto_generated|mac_mult5~DATAOUT20\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(24);
\Mult0|auto_generated|mac_mult5~DATAOUT21\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(25);
\Mult0|auto_generated|mac_mult5~DATAOUT22\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(26);
\Mult0|auto_generated|mac_mult5~DATAOUT23\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(27);
\Mult0|auto_generated|mac_mult5~DATAOUT24\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(28);
\Mult0|auto_generated|mac_mult5~DATAOUT25\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(29);
\Mult0|auto_generated|mac_mult5~DATAOUT26\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(30);
\Mult0|auto_generated|mac_mult5~DATAOUT27\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(31);
\Mult0|auto_generated|mac_mult5~DATAOUT28\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(32);
\Mult0|auto_generated|mac_mult5~DATAOUT29\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(33);
\Mult0|auto_generated|mac_mult5~DATAOUT30\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(34);
\Mult0|auto_generated|mac_mult5~DATAOUT31\ <= \Mult0|auto_generated|mac_mult5_DATAOUT_bus\(35);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y34_N9
\Resultat[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux32~1_combout\,
	devoe => ww_devoe,
	o => \Resultat[0]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\Resultat[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~combout\,
	devoe => ww_devoe,
	o => \Resultat[1]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\Resultat[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~combout\,
	devoe => ww_devoe,
	o => \Resultat[2]~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\Resultat[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~combout\,
	devoe => ww_devoe,
	o => \Resultat[3]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\Resultat[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~combout\,
	devoe => ww_devoe,
	o => \Resultat[4]~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\Resultat[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~combout\,
	devoe => ww_devoe,
	o => \Resultat[5]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\Resultat[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~combout\,
	devoe => ww_devoe,
	o => \Resultat[6]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\Resultat[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~combout\,
	devoe => ww_devoe,
	o => \Resultat[7]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\Resultat[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~combout\,
	devoe => ww_devoe,
	o => \Resultat[8]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\Resultat[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~combout\,
	devoe => ww_devoe,
	o => \Resultat[9]~output_o\);

-- Location: IOOBUF_X53_Y6_N23
\Resultat[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~combout\,
	devoe => ww_devoe,
	o => \Resultat[10]~output_o\);

-- Location: IOOBUF_X47_Y0_N23
\Resultat[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~combout\,
	devoe => ww_devoe,
	o => \Resultat[11]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\Resultat[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~combout\,
	devoe => ww_devoe,
	o => \Resultat[12]~output_o\);

-- Location: IOOBUF_X53_Y16_N9
\Resultat[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~combout\,
	devoe => ww_devoe,
	o => \Resultat[13]~output_o\);

-- Location: IOOBUF_X53_Y14_N2
\Resultat[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~combout\,
	devoe => ww_devoe,
	o => \Resultat[14]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\Resultat[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~combout\,
	devoe => ww_devoe,
	o => \Resultat[15]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\Resultat[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~combout\,
	devoe => ww_devoe,
	o => \Resultat[16]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\Resultat[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~combout\,
	devoe => ww_devoe,
	o => \Resultat[17]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\Resultat[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~combout\,
	devoe => ww_devoe,
	o => \Resultat[18]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\Resultat[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~combout\,
	devoe => ww_devoe,
	o => \Resultat[19]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\Resultat[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~combout\,
	devoe => ww_devoe,
	o => \Resultat[20]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\Resultat[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~combout\,
	devoe => ww_devoe,
	o => \Resultat[21]~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\Resultat[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~combout\,
	devoe => ww_devoe,
	o => \Resultat[22]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\Resultat[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~combout\,
	devoe => ww_devoe,
	o => \Resultat[23]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\Resultat[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~combout\,
	devoe => ww_devoe,
	o => \Resultat[24]~output_o\);

-- Location: IOOBUF_X53_Y20_N23
\Resultat[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~combout\,
	devoe => ww_devoe,
	o => \Resultat[25]~output_o\);

-- Location: IOOBUF_X53_Y8_N23
\Resultat[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~combout\,
	devoe => ww_devoe,
	o => \Resultat[26]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\Resultat[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~combout\,
	devoe => ww_devoe,
	o => \Resultat[27]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\Resultat[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~combout\,
	devoe => ww_devoe,
	o => \Resultat[28]~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\Resultat[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~combout\,
	devoe => ww_devoe,
	o => \Resultat[29]~output_o\);

-- Location: IOOBUF_X53_Y9_N9
\Resultat[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~combout\,
	devoe => ww_devoe,
	o => \Resultat[30]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\Resultat[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~combout\,
	devoe => ww_devoe,
	o => \Resultat[31]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\Z~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~10_combout\,
	devoe => ww_devoe,
	o => \Z~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\C~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~2_combout\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOIBUF_X45_Y0_N22
\Control_ALU[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Control_ALU(1),
	o => \Control_ALU[1]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\Op1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op1(0),
	o => \Op1[0]~input_o\);

-- Location: IOIBUF_X53_Y15_N8
\Control_ALU[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Control_ALU(0),
	o => \Control_ALU[0]~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\Op2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op2(0),
	o => \Op2[0]~input_o\);

-- Location: LCCOMB_X26_Y7_N16
\Mux32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (!\Control_ALU[1]~input_o\ & ((\Op1[0]~input_o\ & ((\Control_ALU[0]~input_o\) # (\Op2[0]~input_o\))) # (!\Op1[0]~input_o\ & (\Control_ALU[0]~input_o\ & \Op2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[0]~input_o\,
	datab => \Control_ALU[0]~input_o\,
	datac => \Op2[0]~input_o\,
	datad => \Control_ALU[1]~input_o\,
	combout => \Mux32~0_combout\);

-- Location: IOIBUF_X36_Y0_N8
\Control_ALU[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Control_ALU(2),
	o => \Control_ALU[2]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\Op1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op1(1),
	o => \Op1[1]~input_o\);

-- Location: IOIBUF_X16_Y34_N15
\Op1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op1(2),
	o => \Op1[2]~input_o\);

-- Location: IOIBUF_X0_Y11_N1
\Op1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op1(3),
	o => \Op1[3]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\Op1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op1(4),
	o => \Op1[4]~input_o\);

-- Location: IOIBUF_X53_Y10_N15
\Op1[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op1(5),
	o => \Op1[5]~input_o\);

-- Location: IOIBUF_X14_Y34_N15
\Op1[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op1(6),
	o => \Op1[6]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\Op1[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op1(7),
	o => \Op1[7]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\Op1[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op1(8),
	o => \Op1[8]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\Op1[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op1(9),
	o => \Op1[9]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\Op1[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op1(10),
	o => \Op1[10]~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\Op1[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op1(11),
	o => \Op1[11]~input_o\);

-- Location: IOIBUF_X23_Y34_N22
\Op1[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op1(12),
	o => \Op1[12]~input_o\);

-- Location: IOIBUF_X53_Y11_N8
\Op1[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op1(13),
	o => \Op1[13]~input_o\);

-- Location: IOIBUF_X0_Y15_N1
\Op1[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op1(14),
	o => \Op1[14]~input_o\);

-- Location: IOIBUF_X0_Y4_N15
\Op1[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op1(15),
	o => \Op1[15]~input_o\);

-- Location: IOIBUF_X53_Y9_N22
\Op1[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op1(16),
	o => \Op1[16]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\Op1[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op1(17),
	o => \Op1[17]~input_o\);

-- Location: IOIBUF_X18_Y34_N1
\Op2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op2(1),
	o => \Op2[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N22
\Op2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op2(2),
	o => \Op2[2]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\Op2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op2(3),
	o => \Op2[3]~input_o\);

-- Location: IOIBUF_X25_Y0_N15
\Op2[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op2(4),
	o => \Op2[4]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\Op2[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op2(5),
	o => \Op2[5]~input_o\);

-- Location: IOIBUF_X16_Y34_N1
\Op2[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op2(6),
	o => \Op2[6]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\Op2[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op2(7),
	o => \Op2[7]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\Op2[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op2(8),
	o => \Op2[8]~input_o\);

-- Location: IOIBUF_X20_Y34_N15
\Op2[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op2(9),
	o => \Op2[9]~input_o\);

-- Location: IOIBUF_X9_Y34_N22
\Op2[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op2(10),
	o => \Op2[10]~input_o\);

-- Location: IOIBUF_X0_Y16_N22
\Op2[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op2(11),
	o => \Op2[11]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\Op2[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op2(12),
	o => \Op2[12]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\Op2[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op2(13),
	o => \Op2[13]~input_o\);

-- Location: IOIBUF_X0_Y5_N22
\Op2[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op2(14),
	o => \Op2[14]~input_o\);

-- Location: IOIBUF_X7_Y34_N15
\Op2[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op2(15),
	o => \Op2[15]~input_o\);

-- Location: IOIBUF_X18_Y34_N22
\Op2[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op2(16),
	o => \Op2[16]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\Op2[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op2(17),
	o => \Op2[17]~input_o\);

-- Location: DSPMULT_X13_Y8_N0
\Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	dataa => \Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X13_Y8_N2
\Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: IOIBUF_X9_Y34_N8
\Op2[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op2(31),
	o => \Op2[31]~input_o\);

-- Location: IOIBUF_X14_Y0_N15
\Op1[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op1(31),
	o => \Op1[31]~input_o\);

-- Location: IOIBUF_X53_Y9_N15
\Op1[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op1(30),
	o => \Op1[30]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\Op2[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op2(30),
	o => \Op2[30]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\Op2[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op2(29),
	o => \Op2[29]~input_o\);

-- Location: IOIBUF_X7_Y34_N1
\Op1[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op1(29),
	o => \Op1[29]~input_o\);

-- Location: IOIBUF_X14_Y34_N22
\Op1[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op1(28),
	o => \Op1[28]~input_o\);

-- Location: IOIBUF_X53_Y11_N1
\Op2[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op2(28),
	o => \Op2[28]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\Op1[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op1(27),
	o => \Op1[27]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\Op2[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op2(27),
	o => \Op2[27]~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\Op2[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op2(26),
	o => \Op2[26]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\Op1[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op1(26),
	o => \Op1[26]~input_o\);

-- Location: IOIBUF_X23_Y34_N15
\Op2[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op2(25),
	o => \Op2[25]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\Op1[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op1(25),
	o => \Op1[25]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\Op1[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op1(24),
	o => \Op1[24]~input_o\);

-- Location: IOIBUF_X53_Y14_N8
\Op2[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op2(24),
	o => \Op2[24]~input_o\);

-- Location: IOIBUF_X27_Y0_N22
\Op2[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op2(23),
	o => \Op2[23]~input_o\);

-- Location: IOIBUF_X16_Y34_N8
\Op1[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op1(23),
	o => \Op1[23]~input_o\);

-- Location: IOIBUF_X0_Y12_N8
\Op2[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op2(22),
	o => \Op2[22]~input_o\);

-- Location: IOIBUF_X27_Y0_N15
\Op1[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op1(22),
	o => \Op1[22]~input_o\);

-- Location: IOIBUF_X27_Y0_N8
\Op1[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op1(21),
	o => \Op1[21]~input_o\);

-- Location: IOIBUF_X27_Y0_N1
\Op2[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op2(21),
	o => \Op2[21]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\Op2[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op2(20),
	o => \Op2[20]~input_o\);

-- Location: IOIBUF_X53_Y7_N8
\Op1[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op1(20),
	o => \Op1[20]~input_o\);

-- Location: IOIBUF_X36_Y0_N22
\Op1[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op1(19),
	o => \Op1[19]~input_o\);

-- Location: IOIBUF_X11_Y34_N1
\Op2[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op2(19),
	o => \Op2[19]~input_o\);

-- Location: IOIBUF_X43_Y0_N22
\Op1[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op1(18),
	o => \Op1[18]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\Op2[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Op2(18),
	o => \Op2[18]~input_o\);

-- Location: LCCOMB_X20_Y8_N0
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((\Op2[0]~input_o\ & !\Op1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op2[0]~input_o\,
	datab => \Op1[0]~input_o\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X20_Y8_N2
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\Op1[1]~input_o\ & ((!\LessThan0~1_cout\) # (!\Op2[1]~input_o\))) # (!\Op1[1]~input_o\ & (!\Op2[1]~input_o\ & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[1]~input_o\,
	datab => \Op2[1]~input_o\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X20_Y8_N4
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\Op1[2]~input_o\ & (\Op2[2]~input_o\ & !\LessThan0~3_cout\)) # (!\Op1[2]~input_o\ & ((\Op2[2]~input_o\) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[2]~input_o\,
	datab => \Op2[2]~input_o\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X20_Y8_N6
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\Op2[3]~input_o\ & (\Op1[3]~input_o\ & !\LessThan0~5_cout\)) # (!\Op2[3]~input_o\ & ((\Op1[3]~input_o\) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op2[3]~input_o\,
	datab => \Op1[3]~input_o\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X20_Y8_N8
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\Op1[4]~input_o\ & (\Op2[4]~input_o\ & !\LessThan0~7_cout\)) # (!\Op1[4]~input_o\ & ((\Op2[4]~input_o\) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[4]~input_o\,
	datab => \Op2[4]~input_o\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X20_Y8_N10
\LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\Op1[5]~input_o\ & ((!\LessThan0~9_cout\) # (!\Op2[5]~input_o\))) # (!\Op1[5]~input_o\ & (!\Op2[5]~input_o\ & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[5]~input_o\,
	datab => \Op2[5]~input_o\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X20_Y8_N12
\LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\Op2[6]~input_o\ & ((!\LessThan0~11_cout\) # (!\Op1[6]~input_o\))) # (!\Op2[6]~input_o\ & (!\Op1[6]~input_o\ & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op2[6]~input_o\,
	datab => \Op1[6]~input_o\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X20_Y8_N14
\LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((\Op1[7]~input_o\ & ((!\LessThan0~13_cout\) # (!\Op2[7]~input_o\))) # (!\Op1[7]~input_o\ & (!\Op2[7]~input_o\ & !\LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[7]~input_o\,
	datab => \Op2[7]~input_o\,
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X20_Y8_N16
\LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((\Op1[8]~input_o\ & (\Op2[8]~input_o\ & !\LessThan0~15_cout\)) # (!\Op1[8]~input_o\ & ((\Op2[8]~input_o\) # (!\LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[8]~input_o\,
	datab => \Op2[8]~input_o\,
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X20_Y8_N18
\LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((\Op2[9]~input_o\ & (\Op1[9]~input_o\ & !\LessThan0~17_cout\)) # (!\Op2[9]~input_o\ & ((\Op1[9]~input_o\) # (!\LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op2[9]~input_o\,
	datab => \Op1[9]~input_o\,
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X20_Y8_N20
\LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((\Op1[10]~input_o\ & (\Op2[10]~input_o\ & !\LessThan0~19_cout\)) # (!\Op1[10]~input_o\ & ((\Op2[10]~input_o\) # (!\LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[10]~input_o\,
	datab => \Op2[10]~input_o\,
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

-- Location: LCCOMB_X20_Y8_N22
\LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((\Op2[11]~input_o\ & (\Op1[11]~input_o\ & !\LessThan0~21_cout\)) # (!\Op2[11]~input_o\ & ((\Op1[11]~input_o\) # (!\LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op2[11]~input_o\,
	datab => \Op1[11]~input_o\,
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

-- Location: LCCOMB_X20_Y8_N24
\LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((\Op2[12]~input_o\ & ((!\LessThan0~23_cout\) # (!\Op1[12]~input_o\))) # (!\Op2[12]~input_o\ & (!\Op1[12]~input_o\ & !\LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op2[12]~input_o\,
	datab => \Op1[12]~input_o\,
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

-- Location: LCCOMB_X20_Y8_N26
\LessThan0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~27_cout\ = CARRY((\Op1[13]~input_o\ & ((!\LessThan0~25_cout\) # (!\Op2[13]~input_o\))) # (!\Op1[13]~input_o\ & (!\Op2[13]~input_o\ & !\LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[13]~input_o\,
	datab => \Op2[13]~input_o\,
	datad => VCC,
	cin => \LessThan0~25_cout\,
	cout => \LessThan0~27_cout\);

-- Location: LCCOMB_X20_Y8_N28
\LessThan0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~29_cout\ = CARRY((\Op2[14]~input_o\ & ((!\LessThan0~27_cout\) # (!\Op1[14]~input_o\))) # (!\Op2[14]~input_o\ & (!\Op1[14]~input_o\ & !\LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op2[14]~input_o\,
	datab => \Op1[14]~input_o\,
	datad => VCC,
	cin => \LessThan0~27_cout\,
	cout => \LessThan0~29_cout\);

-- Location: LCCOMB_X20_Y8_N30
\LessThan0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~31_cout\ = CARRY((\Op1[15]~input_o\ & ((!\LessThan0~29_cout\) # (!\Op2[15]~input_o\))) # (!\Op1[15]~input_o\ & (!\Op2[15]~input_o\ & !\LessThan0~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[15]~input_o\,
	datab => \Op2[15]~input_o\,
	datad => VCC,
	cin => \LessThan0~29_cout\,
	cout => \LessThan0~31_cout\);

-- Location: LCCOMB_X20_Y7_N0
\LessThan0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~33_cout\ = CARRY((\Op2[16]~input_o\ & ((!\LessThan0~31_cout\) # (!\Op1[16]~input_o\))) # (!\Op2[16]~input_o\ & (!\Op1[16]~input_o\ & !\LessThan0~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op2[16]~input_o\,
	datab => \Op1[16]~input_o\,
	datad => VCC,
	cin => \LessThan0~31_cout\,
	cout => \LessThan0~33_cout\);

-- Location: LCCOMB_X20_Y7_N2
\LessThan0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~35_cout\ = CARRY((\Op2[17]~input_o\ & (\Op1[17]~input_o\ & !\LessThan0~33_cout\)) # (!\Op2[17]~input_o\ & ((\Op1[17]~input_o\) # (!\LessThan0~33_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op2[17]~input_o\,
	datab => \Op1[17]~input_o\,
	datad => VCC,
	cin => \LessThan0~33_cout\,
	cout => \LessThan0~35_cout\);

-- Location: LCCOMB_X20_Y7_N4
\LessThan0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~37_cout\ = CARRY((\Op1[18]~input_o\ & (\Op2[18]~input_o\ & !\LessThan0~35_cout\)) # (!\Op1[18]~input_o\ & ((\Op2[18]~input_o\) # (!\LessThan0~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[18]~input_o\,
	datab => \Op2[18]~input_o\,
	datad => VCC,
	cin => \LessThan0~35_cout\,
	cout => \LessThan0~37_cout\);

-- Location: LCCOMB_X20_Y7_N6
\LessThan0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~39_cout\ = CARRY((\Op1[19]~input_o\ & ((!\LessThan0~37_cout\) # (!\Op2[19]~input_o\))) # (!\Op1[19]~input_o\ & (!\Op2[19]~input_o\ & !\LessThan0~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[19]~input_o\,
	datab => \Op2[19]~input_o\,
	datad => VCC,
	cin => \LessThan0~37_cout\,
	cout => \LessThan0~39_cout\);

-- Location: LCCOMB_X20_Y7_N8
\LessThan0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~41_cout\ = CARRY((\Op2[20]~input_o\ & ((!\LessThan0~39_cout\) # (!\Op1[20]~input_o\))) # (!\Op2[20]~input_o\ & (!\Op1[20]~input_o\ & !\LessThan0~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op2[20]~input_o\,
	datab => \Op1[20]~input_o\,
	datad => VCC,
	cin => \LessThan0~39_cout\,
	cout => \LessThan0~41_cout\);

-- Location: LCCOMB_X20_Y7_N10
\LessThan0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~43_cout\ = CARRY((\Op1[21]~input_o\ & ((!\LessThan0~41_cout\) # (!\Op2[21]~input_o\))) # (!\Op1[21]~input_o\ & (!\Op2[21]~input_o\ & !\LessThan0~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[21]~input_o\,
	datab => \Op2[21]~input_o\,
	datad => VCC,
	cin => \LessThan0~41_cout\,
	cout => \LessThan0~43_cout\);

-- Location: LCCOMB_X20_Y7_N12
\LessThan0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~45_cout\ = CARRY((\Op2[22]~input_o\ & ((!\LessThan0~43_cout\) # (!\Op1[22]~input_o\))) # (!\Op2[22]~input_o\ & (!\Op1[22]~input_o\ & !\LessThan0~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op2[22]~input_o\,
	datab => \Op1[22]~input_o\,
	datad => VCC,
	cin => \LessThan0~43_cout\,
	cout => \LessThan0~45_cout\);

-- Location: LCCOMB_X20_Y7_N14
\LessThan0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~47_cout\ = CARRY((\Op2[23]~input_o\ & (\Op1[23]~input_o\ & !\LessThan0~45_cout\)) # (!\Op2[23]~input_o\ & ((\Op1[23]~input_o\) # (!\LessThan0~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op2[23]~input_o\,
	datab => \Op1[23]~input_o\,
	datad => VCC,
	cin => \LessThan0~45_cout\,
	cout => \LessThan0~47_cout\);

-- Location: LCCOMB_X20_Y7_N16
\LessThan0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~49_cout\ = CARRY((\Op1[24]~input_o\ & (\Op2[24]~input_o\ & !\LessThan0~47_cout\)) # (!\Op1[24]~input_o\ & ((\Op2[24]~input_o\) # (!\LessThan0~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[24]~input_o\,
	datab => \Op2[24]~input_o\,
	datad => VCC,
	cin => \LessThan0~47_cout\,
	cout => \LessThan0~49_cout\);

-- Location: LCCOMB_X20_Y7_N18
\LessThan0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~51_cout\ = CARRY((\Op2[25]~input_o\ & (\Op1[25]~input_o\ & !\LessThan0~49_cout\)) # (!\Op2[25]~input_o\ & ((\Op1[25]~input_o\) # (!\LessThan0~49_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op2[25]~input_o\,
	datab => \Op1[25]~input_o\,
	datad => VCC,
	cin => \LessThan0~49_cout\,
	cout => \LessThan0~51_cout\);

-- Location: LCCOMB_X20_Y7_N20
\LessThan0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~53_cout\ = CARRY((\Op2[26]~input_o\ & ((!\LessThan0~51_cout\) # (!\Op1[26]~input_o\))) # (!\Op2[26]~input_o\ & (!\Op1[26]~input_o\ & !\LessThan0~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op2[26]~input_o\,
	datab => \Op1[26]~input_o\,
	datad => VCC,
	cin => \LessThan0~51_cout\,
	cout => \LessThan0~53_cout\);

-- Location: LCCOMB_X20_Y7_N22
\LessThan0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~55_cout\ = CARRY((\Op1[27]~input_o\ & ((!\LessThan0~53_cout\) # (!\Op2[27]~input_o\))) # (!\Op1[27]~input_o\ & (!\Op2[27]~input_o\ & !\LessThan0~53_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[27]~input_o\,
	datab => \Op2[27]~input_o\,
	datad => VCC,
	cin => \LessThan0~53_cout\,
	cout => \LessThan0~55_cout\);

-- Location: LCCOMB_X20_Y7_N24
\LessThan0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~57_cout\ = CARRY((\Op1[28]~input_o\ & (\Op2[28]~input_o\ & !\LessThan0~55_cout\)) # (!\Op1[28]~input_o\ & ((\Op2[28]~input_o\) # (!\LessThan0~55_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[28]~input_o\,
	datab => \Op2[28]~input_o\,
	datad => VCC,
	cin => \LessThan0~55_cout\,
	cout => \LessThan0~57_cout\);

-- Location: LCCOMB_X20_Y7_N26
\LessThan0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~59_cout\ = CARRY((\Op2[29]~input_o\ & (\Op1[29]~input_o\ & !\LessThan0~57_cout\)) # (!\Op2[29]~input_o\ & ((\Op1[29]~input_o\) # (!\LessThan0~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op2[29]~input_o\,
	datab => \Op1[29]~input_o\,
	datad => VCC,
	cin => \LessThan0~57_cout\,
	cout => \LessThan0~59_cout\);

-- Location: LCCOMB_X20_Y7_N28
\LessThan0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~61_cout\ = CARRY((\Op1[30]~input_o\ & (\Op2[30]~input_o\ & !\LessThan0~59_cout\)) # (!\Op1[30]~input_o\ & ((\Op2[30]~input_o\) # (!\LessThan0~59_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[30]~input_o\,
	datab => \Op2[30]~input_o\,
	datad => VCC,
	cin => \LessThan0~59_cout\,
	cout => \LessThan0~61_cout\);

-- Location: LCCOMB_X20_Y7_N30
\LessThan0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~62_combout\ = (\Op2[31]~input_o\ & ((\LessThan0~61_cout\) # (!\Op1[31]~input_o\))) # (!\Op2[31]~input_o\ & (\LessThan0~61_cout\ & !\Op1[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op2[31]~input_o\,
	datad => \Op1[31]~input_o\,
	cin => \LessThan0~61_cout\,
	combout => \LessThan0~62_combout\);

-- Location: LCCOMB_X26_Y7_N24
\Mux32~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~2_combout\ = (\Control_ALU[0]~input_o\ & ((\Control_ALU[2]~input_o\ & ((\LessThan0~62_combout\))) # (!\Control_ALU[2]~input_o\ & (\Mult0|auto_generated|w569w\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control_ALU[2]~input_o\,
	datab => \Mult0|auto_generated|w569w\(0),
	datac => \Control_ALU[0]~input_o\,
	datad => \LessThan0~62_combout\,
	combout => \Mux32~2_combout\);

-- Location: LCCOMB_X26_Y7_N2
\Mux32~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~3_combout\ = (\Control_ALU[1]~input_o\ & ((\Mux32~2_combout\) # ((\Mux32~0_combout\ & !\Control_ALU[2]~input_o\)))) # (!\Control_ALU[1]~input_o\ & (\Mux32~0_combout\ & (!\Control_ALU[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control_ALU[1]~input_o\,
	datab => \Mux32~0_combout\,
	datac => \Control_ALU[2]~input_o\,
	datad => \Mux32~2_combout\,
	combout => \Mux32~3_combout\);

-- Location: LCCOMB_X26_Y7_N10
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \Op2[0]~input_o\ $ (\Control_ALU[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op2[0]~input_o\,
	datac => \Control_ALU[2]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X27_Y7_N14
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_cout\ = CARRY(\Control_ALU[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control_ALU[2]~input_o\,
	datad => VCC,
	cout => \Add0~2_cout\);

-- Location: LCCOMB_X27_Y7_N16
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\Add0~0_combout\ & ((\Op1[0]~input_o\ & (\Add0~2_cout\ & VCC)) # (!\Op1[0]~input_o\ & (!\Add0~2_cout\)))) # (!\Add0~0_combout\ & ((\Op1[0]~input_o\ & (!\Add0~2_cout\)) # (!\Op1[0]~input_o\ & ((\Add0~2_cout\) # (GND)))))
-- \Add0~4\ = CARRY((\Add0~0_combout\ & (!\Op1[0]~input_o\ & !\Add0~2_cout\)) # (!\Add0~0_combout\ & ((!\Add0~2_cout\) # (!\Op1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Op1[0]~input_o\,
	datad => VCC,
	cin => \Add0~2_cout\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: LCCOMB_X26_Y7_N20
\Mux32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = (\Mux32~3_combout\) # ((\Add0~3_combout\ & (!\Control_ALU[0]~input_o\ & \Control_ALU[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~3_combout\,
	datab => \Add0~3_combout\,
	datac => \Control_ALU[0]~input_o\,
	datad => \Control_ALU[1]~input_o\,
	combout => \Mux32~1_combout\);

-- Location: LCCOMB_X26_Y7_N26
\Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\Control_ALU[2]~input_o\) # (\Control_ALU[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Control_ALU[2]~input_o\,
	datad => \Control_ALU[1]~input_o\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X26_Y7_N0
\Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\Control_ALU[1]~input_o\ & (!\Control_ALU[0]~input_o\)) # (!\Control_ALU[1]~input_o\ & (\Control_ALU[0]~input_o\ & !\Control_ALU[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control_ALU[1]~input_o\,
	datab => \Control_ALU[0]~input_o\,
	datac => \Control_ALU[2]~input_o\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X26_Y7_N6
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\Control_ALU[1]~input_o\ & ((!\Control_ALU[2]~input_o\) # (!\Control_ALU[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control_ALU[1]~input_o\,
	datab => \Control_ALU[0]~input_o\,
	datac => \Control_ALU[2]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X27_Y7_N8
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = \Control_ALU[2]~input_o\ $ (\Op2[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Control_ALU[2]~input_o\,
	datad => \Op2[1]~input_o\,
	combout => \Add0~5_combout\);

-- Location: LCCOMB_X27_Y7_N18
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = ((\Op1[1]~input_o\ $ (\Add0~5_combout\ $ (!\Add0~4\)))) # (GND)
-- \Add0~7\ = CARRY((\Op1[1]~input_o\ & ((\Add0~5_combout\) # (!\Add0~4\))) # (!\Op1[1]~input_o\ & (\Add0~5_combout\ & !\Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[1]~input_o\,
	datab => \Add0~5_combout\,
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X26_Y8_N24
\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\Mux14~1_combout\ & (((\Add0~6_combout\) # (!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (\Mult0|auto_generated|w569w\(1) & (\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mult0|auto_generated|w569w\(1),
	datac => \Mux14~0_combout\,
	datad => \Add0~6_combout\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X26_Y8_N26
Mux31 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~combout\ = (\Op1[1]~input_o\ & ((\Mux31~0_combout\) # ((\Op2[1]~input_o\ & !\Mux14~2_combout\)))) # (!\Op1[1]~input_o\ & (\Mux31~0_combout\ & ((\Op2[1]~input_o\) # (\Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[1]~input_o\,
	datab => \Op2[1]~input_o\,
	datac => \Mux14~2_combout\,
	datad => \Mux31~0_combout\,
	combout => \Mux31~combout\);

-- Location: LCCOMB_X27_Y7_N10
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \Control_ALU[2]~input_o\ $ (\Op2[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Control_ALU[2]~input_o\,
	datad => \Op2[2]~input_o\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X27_Y7_N20
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\Add0~8_combout\ & ((\Op1[2]~input_o\ & (\Add0~7\ & VCC)) # (!\Op1[2]~input_o\ & (!\Add0~7\)))) # (!\Add0~8_combout\ & ((\Op1[2]~input_o\ & (!\Add0~7\)) # (!\Op1[2]~input_o\ & ((\Add0~7\) # (GND)))))
-- \Add0~10\ = CARRY((\Add0~8_combout\ & (!\Op1[2]~input_o\ & !\Add0~7\)) # (!\Add0~8_combout\ & ((!\Add0~7\) # (!\Op1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Op1[2]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X26_Y8_N4
\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\Mux14~1_combout\ & (((\Add0~9_combout\) # (!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (\Mult0|auto_generated|w569w\(2) & (\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mult0|auto_generated|w569w\(2),
	datac => \Mux14~0_combout\,
	datad => \Add0~9_combout\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X26_Y8_N22
Mux30 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~combout\ = (\Op1[2]~input_o\ & ((\Mux30~0_combout\) # ((!\Mux14~2_combout\ & \Op2[2]~input_o\)))) # (!\Op1[2]~input_o\ & (\Mux30~0_combout\ & ((\Mux14~2_combout\) # (\Op2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[2]~input_o\,
	datab => \Mux30~0_combout\,
	datac => \Mux14~2_combout\,
	datad => \Op2[2]~input_o\,
	combout => \Mux30~combout\);

-- Location: LCCOMB_X27_Y7_N4
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = \Op2[3]~input_o\ $ (\Control_ALU[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op2[3]~input_o\,
	datac => \Control_ALU[2]~input_o\,
	combout => \Add0~11_combout\);

-- Location: LCCOMB_X27_Y7_N22
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\Op1[3]~input_o\ $ (\Add0~11_combout\ $ (!\Add0~10\)))) # (GND)
-- \Add0~13\ = CARRY((\Op1[3]~input_o\ & ((\Add0~11_combout\) # (!\Add0~10\))) # (!\Op1[3]~input_o\ & (\Add0~11_combout\ & !\Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[3]~input_o\,
	datab => \Add0~11_combout\,
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X26_Y8_N16
\Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\Mux14~1_combout\ & (((\Add0~12_combout\) # (!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (\Mult0|auto_generated|w569w\(3) & (\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mult0|auto_generated|w569w\(3),
	datac => \Mux14~0_combout\,
	datad => \Add0~12_combout\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X26_Y8_N2
Mux29 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~combout\ = (\Op2[3]~input_o\ & ((\Mux29~0_combout\) # ((\Op1[3]~input_o\ & !\Mux14~2_combout\)))) # (!\Op2[3]~input_o\ & (\Mux29~0_combout\ & ((\Op1[3]~input_o\) # (\Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op2[3]~input_o\,
	datab => \Op1[3]~input_o\,
	datac => \Mux14~2_combout\,
	datad => \Mux29~0_combout\,
	combout => \Mux29~combout\);

-- Location: LCCOMB_X26_Y7_N12
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \Control_ALU[2]~input_o\ $ (\Op2[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Control_ALU[2]~input_o\,
	datad => \Op2[4]~input_o\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X27_Y7_N24
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\Add0~14_combout\ & ((\Op1[4]~input_o\ & (\Add0~13\ & VCC)) # (!\Op1[4]~input_o\ & (!\Add0~13\)))) # (!\Add0~14_combout\ & ((\Op1[4]~input_o\ & (!\Add0~13\)) # (!\Op1[4]~input_o\ & ((\Add0~13\) # (GND)))))
-- \Add0~16\ = CARRY((\Add0~14_combout\ & (!\Op1[4]~input_o\ & !\Add0~13\)) # (!\Add0~14_combout\ & ((!\Add0~13\) # (!\Op1[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Op1[4]~input_o\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: LCCOMB_X26_Y8_N28
\Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\Mux14~1_combout\ & (((\Add0~15_combout\) # (!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (\Mult0|auto_generated|w569w\(4) & (\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mult0|auto_generated|w569w\(4),
	datac => \Mux14~0_combout\,
	datad => \Add0~15_combout\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X26_Y8_N14
Mux28 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~combout\ = (\Op2[4]~input_o\ & ((\Mux28~0_combout\) # ((!\Mux14~2_combout\ & \Op1[4]~input_o\)))) # (!\Op2[4]~input_o\ & (\Mux28~0_combout\ & ((\Mux14~2_combout\) # (\Op1[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op2[4]~input_o\,
	datab => \Mux28~0_combout\,
	datac => \Mux14~2_combout\,
	datad => \Op1[4]~input_o\,
	combout => \Mux28~combout\);

-- Location: LCCOMB_X27_Y7_N6
\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = \Op2[5]~input_o\ $ (\Control_ALU[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op2[5]~input_o\,
	datac => \Control_ALU[2]~input_o\,
	combout => \Add0~17_combout\);

-- Location: LCCOMB_X27_Y7_N26
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = ((\Op1[5]~input_o\ $ (\Add0~17_combout\ $ (!\Add0~16\)))) # (GND)
-- \Add0~19\ = CARRY((\Op1[5]~input_o\ & ((\Add0~17_combout\) # (!\Add0~16\))) # (!\Op1[5]~input_o\ & (\Add0~17_combout\ & !\Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[5]~input_o\,
	datab => \Add0~17_combout\,
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X26_Y8_N0
\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\Mux14~1_combout\ & ((\Add0~18_combout\) # ((!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (((\Mux14~0_combout\ & \Mult0|auto_generated|w569w\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Add0~18_combout\,
	datac => \Mux14~0_combout\,
	datad => \Mult0|auto_generated|w569w\(5),
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X26_Y8_N18
Mux27 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~combout\ = (\Mux14~2_combout\ & (((\Mux27~0_combout\)))) # (!\Mux14~2_combout\ & ((\Op2[5]~input_o\ & ((\Op1[5]~input_o\) # (\Mux27~0_combout\))) # (!\Op2[5]~input_o\ & (\Op1[5]~input_o\ & \Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~2_combout\,
	datab => \Op2[5]~input_o\,
	datac => \Op1[5]~input_o\,
	datad => \Mux27~0_combout\,
	combout => \Mux27~combout\);

-- Location: LCCOMB_X27_Y7_N0
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = \Op2[6]~input_o\ $ (\Control_ALU[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Op2[6]~input_o\,
	datac => \Control_ALU[2]~input_o\,
	combout => \Add0~20_combout\);

-- Location: LCCOMB_X27_Y7_N28
\Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\Op1[6]~input_o\ & ((\Add0~20_combout\ & (\Add0~19\ & VCC)) # (!\Add0~20_combout\ & (!\Add0~19\)))) # (!\Op1[6]~input_o\ & ((\Add0~20_combout\ & (!\Add0~19\)) # (!\Add0~20_combout\ & ((\Add0~19\) # (GND)))))
-- \Add0~22\ = CARRY((\Op1[6]~input_o\ & (!\Add0~20_combout\ & !\Add0~19\)) # (!\Op1[6]~input_o\ & ((!\Add0~19\) # (!\Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[6]~input_o\,
	datab => \Add0~20_combout\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

-- Location: LCCOMB_X26_Y8_N12
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\Mux14~1_combout\ & (((\Add0~21_combout\) # (!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (\Mult0|auto_generated|w569w\(6) & (\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mult0|auto_generated|w569w\(6),
	datac => \Mux14~0_combout\,
	datad => \Add0~21_combout\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X26_Y8_N30
Mux26 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~combout\ = (\Op2[6]~input_o\ & ((\Mux26~0_combout\) # ((\Op1[6]~input_o\ & !\Mux14~2_combout\)))) # (!\Op2[6]~input_o\ & (\Mux26~0_combout\ & ((\Op1[6]~input_o\) # (\Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op2[6]~input_o\,
	datab => \Op1[6]~input_o\,
	datac => \Mux14~2_combout\,
	datad => \Mux26~0_combout\,
	combout => \Mux26~combout\);

-- Location: LCCOMB_X27_Y7_N2
\Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = \Op2[7]~input_o\ $ (\Control_ALU[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Op2[7]~input_o\,
	datac => \Control_ALU[2]~input_o\,
	combout => \Add0~23_combout\);

-- Location: LCCOMB_X27_Y7_N30
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((\Op1[7]~input_o\ $ (\Add0~23_combout\ $ (!\Add0~22\)))) # (GND)
-- \Add0~25\ = CARRY((\Op1[7]~input_o\ & ((\Add0~23_combout\) # (!\Add0~22\))) # (!\Op1[7]~input_o\ & (\Add0~23_combout\ & !\Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[7]~input_o\,
	datab => \Add0~23_combout\,
	datad => VCC,
	cin => \Add0~22\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X25_Y6_N0
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\Mux14~0_combout\ & ((\Mux14~1_combout\ & (\Add0~24_combout\)) # (!\Mux14~1_combout\ & ((\Mult0|auto_generated|w569w\(7)))))) # (!\Mux14~0_combout\ & (((\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datab => \Mux14~0_combout\,
	datac => \Mult0|auto_generated|w569w\(7),
	datad => \Mux14~1_combout\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X25_Y6_N26
Mux25 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~combout\ = (\Op1[7]~input_o\ & ((\Mux25~0_combout\) # ((\Op2[7]~input_o\ & !\Mux14~2_combout\)))) # (!\Op1[7]~input_o\ & (\Mux25~0_combout\ & ((\Op2[7]~input_o\) # (\Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[7]~input_o\,
	datab => \Op2[7]~input_o\,
	datac => \Mux14~2_combout\,
	datad => \Mux25~0_combout\,
	combout => \Mux25~combout\);

-- Location: LCCOMB_X26_Y7_N30
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = \Op2[8]~input_o\ $ (\Control_ALU[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op2[8]~input_o\,
	datac => \Control_ALU[2]~input_o\,
	combout => \Add0~26_combout\);

-- Location: LCCOMB_X27_Y6_N0
\Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (\Op1[8]~input_o\ & ((\Add0~26_combout\ & (\Add0~25\ & VCC)) # (!\Add0~26_combout\ & (!\Add0~25\)))) # (!\Op1[8]~input_o\ & ((\Add0~26_combout\ & (!\Add0~25\)) # (!\Add0~26_combout\ & ((\Add0~25\) # (GND)))))
-- \Add0~28\ = CARRY((\Op1[8]~input_o\ & (!\Add0~26_combout\ & !\Add0~25\)) # (!\Op1[8]~input_o\ & ((!\Add0~25\) # (!\Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[8]~input_o\,
	datab => \Add0~26_combout\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~27_combout\,
	cout => \Add0~28\);

-- Location: LCCOMB_X26_Y7_N8
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\Mux14~1_combout\ & (((\Add0~27_combout\) # (!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (\Mult0|auto_generated|w569w\(8) & (\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mult0|auto_generated|w569w\(8),
	datac => \Mux14~0_combout\,
	datad => \Add0~27_combout\,
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X26_Y7_N18
Mux24 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~combout\ = (\Op2[8]~input_o\ & ((\Mux24~0_combout\) # ((!\Mux14~2_combout\ & \Op1[8]~input_o\)))) # (!\Op2[8]~input_o\ & (\Mux24~0_combout\ & ((\Mux14~2_combout\) # (\Op1[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op2[8]~input_o\,
	datab => \Mux24~0_combout\,
	datac => \Mux14~2_combout\,
	datad => \Op1[8]~input_o\,
	combout => \Mux24~combout\);

-- Location: LCCOMB_X26_Y6_N16
\Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = \Op2[9]~input_o\ $ (\Control_ALU[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Op2[9]~input_o\,
	datad => \Control_ALU[2]~input_o\,
	combout => \Add0~29_combout\);

-- Location: LCCOMB_X27_Y6_N2
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = ((\Add0~29_combout\ $ (\Op1[9]~input_o\ $ (!\Add0~28\)))) # (GND)
-- \Add0~31\ = CARRY((\Add0~29_combout\ & ((\Op1[9]~input_o\) # (!\Add0~28\))) # (!\Add0~29_combout\ & (\Op1[9]~input_o\ & !\Add0~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~29_combout\,
	datab => \Op1[9]~input_o\,
	datad => VCC,
	cin => \Add0~28\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X26_Y6_N10
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\Mux14~1_combout\ & (((\Add0~30_combout\) # (!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (\Mult0|auto_generated|w569w\(9) & (\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|w569w\(9),
	datab => \Mux14~1_combout\,
	datac => \Mux14~0_combout\,
	datad => \Add0~30_combout\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X26_Y6_N4
Mux23 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~combout\ = (\Op1[9]~input_o\ & ((\Mux23~0_combout\) # ((!\Mux14~2_combout\ & \Op2[9]~input_o\)))) # (!\Op1[9]~input_o\ & (\Mux23~0_combout\ & ((\Mux14~2_combout\) # (\Op2[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[9]~input_o\,
	datab => \Mux14~2_combout\,
	datac => \Op2[9]~input_o\,
	datad => \Mux23~0_combout\,
	combout => \Mux23~combout\);

-- Location: LCCOMB_X26_Y6_N22
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = \Op2[10]~input_o\ $ (\Control_ALU[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Op2[10]~input_o\,
	datad => \Control_ALU[2]~input_o\,
	combout => \Add0~32_combout\);

-- Location: LCCOMB_X27_Y6_N4
\Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (\Op1[10]~input_o\ & ((\Add0~32_combout\ & (\Add0~31\ & VCC)) # (!\Add0~32_combout\ & (!\Add0~31\)))) # (!\Op1[10]~input_o\ & ((\Add0~32_combout\ & (!\Add0~31\)) # (!\Add0~32_combout\ & ((\Add0~31\) # (GND)))))
-- \Add0~34\ = CARRY((\Op1[10]~input_o\ & (!\Add0~32_combout\ & !\Add0~31\)) # (!\Op1[10]~input_o\ & ((!\Add0~31\) # (!\Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[10]~input_o\,
	datab => \Add0~32_combout\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~33_combout\,
	cout => \Add0~34\);

-- Location: LCCOMB_X26_Y6_N0
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\Mux14~1_combout\ & (((\Add0~33_combout\) # (!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (\Mult0|auto_generated|w569w\(10) & (\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|w569w\(10),
	datab => \Mux14~1_combout\,
	datac => \Mux14~0_combout\,
	datad => \Add0~33_combout\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X26_Y6_N26
Mux22 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~combout\ = (\Op1[10]~input_o\ & ((\Mux22~0_combout\) # ((\Op2[10]~input_o\ & !\Mux14~2_combout\)))) # (!\Op1[10]~input_o\ & (\Mux22~0_combout\ & ((\Op2[10]~input_o\) # (\Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[10]~input_o\,
	datab => \Mux22~0_combout\,
	datac => \Op2[10]~input_o\,
	datad => \Mux14~2_combout\,
	combout => \Mux22~combout\);

-- Location: LCCOMB_X26_Y6_N12
\Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = \Op2[11]~input_o\ $ (\Control_ALU[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Op2[11]~input_o\,
	datad => \Control_ALU[2]~input_o\,
	combout => \Add0~35_combout\);

-- Location: LCCOMB_X27_Y6_N6
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = ((\Add0~35_combout\ $ (\Op1[11]~input_o\ $ (!\Add0~34\)))) # (GND)
-- \Add0~37\ = CARRY((\Add0~35_combout\ & ((\Op1[11]~input_o\) # (!\Add0~34\))) # (!\Add0~35_combout\ & (\Op1[11]~input_o\ & !\Add0~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~35_combout\,
	datab => \Op1[11]~input_o\,
	datad => VCC,
	cin => \Add0~34\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X26_Y6_N14
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\Mux14~0_combout\ & ((\Mux14~1_combout\ & (\Add0~36_combout\)) # (!\Mux14~1_combout\ & ((\Mult0|auto_generated|w569w\(11)))))) # (!\Mux14~0_combout\ & (((\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datab => \Mult0|auto_generated|w569w\(11),
	datac => \Mux14~0_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X26_Y6_N8
Mux21 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~combout\ = (\Op1[11]~input_o\ & ((\Mux21~0_combout\) # ((\Op2[11]~input_o\ & !\Mux14~2_combout\)))) # (!\Op1[11]~input_o\ & (\Mux21~0_combout\ & ((\Op2[11]~input_o\) # (\Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[11]~input_o\,
	datab => \Op2[11]~input_o\,
	datac => \Mux21~0_combout\,
	datad => \Mux14~2_combout\,
	combout => \Mux21~combout\);

-- Location: LCCOMB_X26_Y6_N2
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = \Op2[12]~input_o\ $ (\Control_ALU[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Op2[12]~input_o\,
	datad => \Control_ALU[2]~input_o\,
	combout => \Add0~38_combout\);

-- Location: LCCOMB_X27_Y6_N8
\Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = (\Add0~38_combout\ & ((\Op1[12]~input_o\ & (\Add0~37\ & VCC)) # (!\Op1[12]~input_o\ & (!\Add0~37\)))) # (!\Add0~38_combout\ & ((\Op1[12]~input_o\ & (!\Add0~37\)) # (!\Op1[12]~input_o\ & ((\Add0~37\) # (GND)))))
-- \Add0~40\ = CARRY((\Add0~38_combout\ & (!\Op1[12]~input_o\ & !\Add0~37\)) # (!\Add0~38_combout\ & ((!\Add0~37\) # (!\Op1[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datab => \Op1[12]~input_o\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~39_combout\,
	cout => \Add0~40\);

-- Location: LCCOMB_X26_Y6_N28
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\Mux14~0_combout\ & ((\Mux14~1_combout\ & ((\Add0~39_combout\))) # (!\Mux14~1_combout\ & (\Mult0|auto_generated|w569w\(12))))) # (!\Mux14~0_combout\ & (((\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|w569w\(12),
	datab => \Add0~39_combout\,
	datac => \Mux14~0_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X26_Y6_N6
Mux20 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~combout\ = (\Op1[12]~input_o\ & ((\Mux20~0_combout\) # ((\Op2[12]~input_o\ & !\Mux14~2_combout\)))) # (!\Op1[12]~input_o\ & (\Mux20~0_combout\ & ((\Op2[12]~input_o\) # (\Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[12]~input_o\,
	datab => \Mux20~0_combout\,
	datac => \Op2[12]~input_o\,
	datad => \Mux14~2_combout\,
	combout => \Mux20~combout\);

-- Location: LCCOMB_X25_Y6_N4
\Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~41_combout\ = \Op2[13]~input_o\ $ (\Control_ALU[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Op2[13]~input_o\,
	datad => \Control_ALU[2]~input_o\,
	combout => \Add0~41_combout\);

-- Location: LCCOMB_X27_Y6_N10
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = ((\Op1[13]~input_o\ $ (\Add0~41_combout\ $ (!\Add0~40\)))) # (GND)
-- \Add0~43\ = CARRY((\Op1[13]~input_o\ & ((\Add0~41_combout\) # (!\Add0~40\))) # (!\Op1[13]~input_o\ & (\Add0~41_combout\ & !\Add0~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[13]~input_o\,
	datab => \Add0~41_combout\,
	datad => VCC,
	cin => \Add0~40\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X25_Y6_N22
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\Mux14~1_combout\ & (((\Add0~42_combout\) # (!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (\Mult0|auto_generated|w569w\(13) & ((\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|w569w\(13),
	datab => \Mux14~1_combout\,
	datac => \Add0~42_combout\,
	datad => \Mux14~0_combout\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X25_Y6_N24
Mux19 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~combout\ = (\Mux19~0_combout\ & ((\Op2[13]~input_o\) # ((\Mux14~2_combout\) # (\Op1[13]~input_o\)))) # (!\Mux19~0_combout\ & (\Op2[13]~input_o\ & (!\Mux14~2_combout\ & \Op1[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => \Op2[13]~input_o\,
	datac => \Mux14~2_combout\,
	datad => \Op1[13]~input_o\,
	combout => \Mux19~combout\);

-- Location: LCCOMB_X25_Y6_N2
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = \Op2[14]~input_o\ $ (\Control_ALU[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Op2[14]~input_o\,
	datad => \Control_ALU[2]~input_o\,
	combout => \Add0~44_combout\);

-- Location: LCCOMB_X27_Y6_N12
\Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~45_combout\ = (\Add0~44_combout\ & ((\Op1[14]~input_o\ & (\Add0~43\ & VCC)) # (!\Op1[14]~input_o\ & (!\Add0~43\)))) # (!\Add0~44_combout\ & ((\Op1[14]~input_o\ & (!\Add0~43\)) # (!\Op1[14]~input_o\ & ((\Add0~43\) # (GND)))))
-- \Add0~46\ = CARRY((\Add0~44_combout\ & (!\Op1[14]~input_o\ & !\Add0~43\)) # (!\Add0~44_combout\ & ((!\Add0~43\) # (!\Op1[14]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datab => \Op1[14]~input_o\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~45_combout\,
	cout => \Add0~46\);

-- Location: LCCOMB_X25_Y6_N28
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\Mux14~1_combout\ & ((\Add0~45_combout\) # ((!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (((\Mult0|auto_generated|w569w\(14) & \Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~45_combout\,
	datab => \Mux14~1_combout\,
	datac => \Mult0|auto_generated|w569w\(14),
	datad => \Mux14~0_combout\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X25_Y6_N14
Mux18 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~combout\ = (\Op2[14]~input_o\ & ((\Mux18~0_combout\) # ((\Op1[14]~input_o\ & !\Mux14~2_combout\)))) # (!\Op2[14]~input_o\ & (\Mux18~0_combout\ & ((\Op1[14]~input_o\) # (\Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op2[14]~input_o\,
	datab => \Op1[14]~input_o\,
	datac => \Mux14~2_combout\,
	datad => \Mux18~0_combout\,
	combout => \Mux18~combout\);

-- Location: LCCOMB_X25_Y6_N16
\Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~47_combout\ = \Op2[15]~input_o\ $ (\Control_ALU[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Op2[15]~input_o\,
	datad => \Control_ALU[2]~input_o\,
	combout => \Add0~47_combout\);

-- Location: LCCOMB_X27_Y6_N14
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = ((\Add0~47_combout\ $ (\Op1[15]~input_o\ $ (!\Add0~46\)))) # (GND)
-- \Add0~49\ = CARRY((\Add0~47_combout\ & ((\Op1[15]~input_o\) # (!\Add0~46\))) # (!\Add0~47_combout\ & (\Op1[15]~input_o\ & !\Add0~46\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~47_combout\,
	datab => \Op1[15]~input_o\,
	datad => VCC,
	cin => \Add0~46\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X26_Y6_N24
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\Mux14~0_combout\ & ((\Mux14~1_combout\ & ((\Add0~48_combout\))) # (!\Mux14~1_combout\ & (\Mult0|auto_generated|w569w\(15))))) # (!\Mux14~0_combout\ & (((\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Mult0|auto_generated|w569w\(15),
	datac => \Add0~48_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X25_Y6_N18
Mux17 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~combout\ = (\Mux14~2_combout\ & (((\Mux17~0_combout\)))) # (!\Mux14~2_combout\ & ((\Op2[15]~input_o\ & ((\Op1[15]~input_o\) # (\Mux17~0_combout\))) # (!\Op2[15]~input_o\ & (\Op1[15]~input_o\ & \Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~2_combout\,
	datab => \Op2[15]~input_o\,
	datac => \Op1[15]~input_o\,
	datad => \Mux17~0_combout\,
	combout => \Mux17~combout\);

-- Location: LCCOMB_X25_Y6_N12
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = \Op2[16]~input_o\ $ (\Control_ALU[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Op2[16]~input_o\,
	datad => \Control_ALU[2]~input_o\,
	combout => \Add0~50_combout\);

-- Location: LCCOMB_X27_Y6_N16
\Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~51_combout\ = (\Add0~50_combout\ & ((\Op1[16]~input_o\ & (\Add0~49\ & VCC)) # (!\Op1[16]~input_o\ & (!\Add0~49\)))) # (!\Add0~50_combout\ & ((\Op1[16]~input_o\ & (!\Add0~49\)) # (!\Op1[16]~input_o\ & ((\Add0~49\) # (GND)))))
-- \Add0~52\ = CARRY((\Add0~50_combout\ & (!\Op1[16]~input_o\ & !\Add0~49\)) # (!\Add0~50_combout\ & ((!\Add0~49\) # (!\Op1[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~50_combout\,
	datab => \Op1[16]~input_o\,
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~51_combout\,
	cout => \Add0~52\);

-- Location: LCCOMB_X25_Y6_N30
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\Mux14~1_combout\ & (((\Add0~51_combout\)) # (!\Mux14~0_combout\))) # (!\Mux14~1_combout\ & (\Mux14~0_combout\ & (\Mult0|auto_generated|w569w\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux14~0_combout\,
	datac => \Mult0|auto_generated|w569w\(16),
	datad => \Add0~51_combout\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X25_Y6_N8
Mux16 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~combout\ = (\Op2[16]~input_o\ & ((\Mux16~0_combout\) # ((!\Mux14~2_combout\ & \Op1[16]~input_o\)))) # (!\Op2[16]~input_o\ & (\Mux16~0_combout\ & ((\Mux14~2_combout\) # (\Op1[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op2[16]~input_o\,
	datab => \Mux16~0_combout\,
	datac => \Mux14~2_combout\,
	datad => \Op1[16]~input_o\,
	combout => \Mux16~combout\);

-- Location: LCCOMB_X27_Y4_N16
\Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~53_combout\ = \Op2[17]~input_o\ $ (\Control_ALU[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op2[17]~input_o\,
	datad => \Control_ALU[2]~input_o\,
	combout => \Add0~53_combout\);

-- Location: LCCOMB_X27_Y6_N18
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = ((\Op1[17]~input_o\ $ (\Add0~53_combout\ $ (!\Add0~52\)))) # (GND)
-- \Add0~55\ = CARRY((\Op1[17]~input_o\ & ((\Add0~53_combout\) # (!\Add0~52\))) # (!\Op1[17]~input_o\ & (\Add0~53_combout\ & !\Add0~52\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[17]~input_o\,
	datab => \Add0~53_combout\,
	datad => VCC,
	cin => \Add0~52\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X28_Y6_N16
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\Mux14~0_combout\ & ((\Mux14~1_combout\ & (\Add0~54_combout\)) # (!\Mux14~1_combout\ & ((\Mult0|auto_generated|w569w\(17)))))) # (!\Mux14~0_combout\ & (((\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Add0~54_combout\,
	datac => \Mult0|auto_generated|w569w\(17),
	datad => \Mux14~1_combout\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X27_Y4_N18
Mux15 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~combout\ = (\Op2[17]~input_o\ & ((\Mux15~0_combout\) # ((!\Mux14~2_combout\ & \Op1[17]~input_o\)))) # (!\Op2[17]~input_o\ & (\Mux15~0_combout\ & ((\Mux14~2_combout\) # (\Op1[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op2[17]~input_o\,
	datab => \Mux14~2_combout\,
	datac => \Op1[17]~input_o\,
	datad => \Mux15~0_combout\,
	combout => \Mux15~combout\);

-- Location: DSPMULT_X13_Y7_N0
\Mult0|auto_generated|mac_mult3\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => VCC,
	dataa => \Mult0|auto_generated|mac_mult3_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult3_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult3_DATAOUT_bus\);

-- Location: DSPOUT_X13_Y7_N2
\Mult0|auto_generated|mac_out4\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out4_DATAOUT_bus\);

-- Location: DSPMULT_X13_Y6_N0
\Mult0|auto_generated|mac_mult5\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 18,
	datab_clock => "none",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => VCC,
	dataa => \Mult0|auto_generated|mac_mult5_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult5_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult5_DATAOUT_bus\);

-- Location: DSPOUT_X13_Y6_N2
\Mult0|auto_generated|mac_out6\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out6_DATAOUT_bus\);

-- Location: LCCOMB_X14_Y7_N2
\Mult0|auto_generated|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_2~0_combout\ = (\Mult0|auto_generated|mac_out4~dataout\ & (\Mult0|auto_generated|mac_out6~dataout\ $ (VCC))) # (!\Mult0|auto_generated|mac_out4~dataout\ & (\Mult0|auto_generated|mac_out6~dataout\ & VCC))
-- \Mult0|auto_generated|op_2~1\ = CARRY((\Mult0|auto_generated|mac_out4~dataout\ & \Mult0|auto_generated|mac_out6~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~dataout\,
	datab => \Mult0|auto_generated|mac_out6~dataout\,
	datad => VCC,
	combout => \Mult0|auto_generated|op_2~0_combout\,
	cout => \Mult0|auto_generated|op_2~1\);

-- Location: LCCOMB_X14_Y8_N2
\Mult0|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~0_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT18\ & (\Mult0|auto_generated|op_2~0_combout\ $ (VCC))) # (!\Mult0|auto_generated|mac_out2~DATAOUT18\ & (\Mult0|auto_generated|op_2~0_combout\ & VCC))
-- \Mult0|auto_generated|op_1~1\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT18\ & \Mult0|auto_generated|op_2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT18\,
	datab => \Mult0|auto_generated|op_2~0_combout\,
	datad => VCC,
	combout => \Mult0|auto_generated|op_1~0_combout\,
	cout => \Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X27_Y4_N28
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = \Control_ALU[2]~input_o\ $ (\Op2[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control_ALU[2]~input_o\,
	datad => \Op2[18]~input_o\,
	combout => \Add0~56_combout\);

-- Location: LCCOMB_X27_Y6_N20
\Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~57_combout\ = (\Add0~56_combout\ & ((\Op1[18]~input_o\ & (\Add0~55\ & VCC)) # (!\Op1[18]~input_o\ & (!\Add0~55\)))) # (!\Add0~56_combout\ & ((\Op1[18]~input_o\ & (!\Add0~55\)) # (!\Op1[18]~input_o\ & ((\Add0~55\) # (GND)))))
-- \Add0~58\ = CARRY((\Add0~56_combout\ & (!\Op1[18]~input_o\ & !\Add0~55\)) # (!\Add0~56_combout\ & ((!\Add0~55\) # (!\Op1[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~56_combout\,
	datab => \Op1[18]~input_o\,
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~57_combout\,
	cout => \Add0~58\);

-- Location: LCCOMB_X28_Y6_N2
\Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\Mux14~0_combout\ & ((\Mux14~1_combout\ & ((\Add0~57_combout\))) # (!\Mux14~1_combout\ & (\Mult0|auto_generated|op_1~0_combout\)))) # (!\Mux14~0_combout\ & (((\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Mult0|auto_generated|op_1~0_combout\,
	datac => \Add0~57_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X27_Y4_N30
Mux14 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~combout\ = (\Mux14~3_combout\ & ((\Mux14~2_combout\) # ((\Op1[18]~input_o\) # (\Op2[18]~input_o\)))) # (!\Mux14~3_combout\ & (!\Mux14~2_combout\ & (\Op1[18]~input_o\ & \Op2[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~3_combout\,
	datab => \Mux14~2_combout\,
	datac => \Op1[18]~input_o\,
	datad => \Op2[18]~input_o\,
	combout => \Mux14~combout\);

-- Location: LCCOMB_X14_Y7_N4
\Mult0|auto_generated|op_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_2~2_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT1\ & ((\Mult0|auto_generated|mac_out6~DATAOUT1\ & (\Mult0|auto_generated|op_2~1\ & VCC)) # (!\Mult0|auto_generated|mac_out6~DATAOUT1\ & (!\Mult0|auto_generated|op_2~1\)))) # 
-- (!\Mult0|auto_generated|mac_out4~DATAOUT1\ & ((\Mult0|auto_generated|mac_out6~DATAOUT1\ & (!\Mult0|auto_generated|op_2~1\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT1\ & ((\Mult0|auto_generated|op_2~1\) # (GND)))))
-- \Mult0|auto_generated|op_2~3\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT1\ & (!\Mult0|auto_generated|mac_out6~DATAOUT1\ & !\Mult0|auto_generated|op_2~1\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT1\ & ((!\Mult0|auto_generated|op_2~1\) # 
-- (!\Mult0|auto_generated|mac_out6~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT1\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT1\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_2~1\,
	combout => \Mult0|auto_generated|op_2~2_combout\,
	cout => \Mult0|auto_generated|op_2~3\);

-- Location: LCCOMB_X14_Y8_N4
\Mult0|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~2_combout\ = (\Mult0|auto_generated|op_2~2_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT19\ & (\Mult0|auto_generated|op_1~1\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT19\ & (!\Mult0|auto_generated|op_1~1\)))) # 
-- (!\Mult0|auto_generated|op_2~2_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT19\ & (!\Mult0|auto_generated|op_1~1\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT19\ & ((\Mult0|auto_generated|op_1~1\) # (GND)))))
-- \Mult0|auto_generated|op_1~3\ = CARRY((\Mult0|auto_generated|op_2~2_combout\ & (!\Mult0|auto_generated|mac_out2~DATAOUT19\ & !\Mult0|auto_generated|op_1~1\)) # (!\Mult0|auto_generated|op_2~2_combout\ & ((!\Mult0|auto_generated|op_1~1\) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_2~2_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~1\,
	combout => \Mult0|auto_generated|op_1~2_combout\,
	cout => \Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X27_Y4_N24
\Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~59_combout\ = \Op2[19]~input_o\ $ (\Control_ALU[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Op2[19]~input_o\,
	datad => \Control_ALU[2]~input_o\,
	combout => \Add0~59_combout\);

-- Location: LCCOMB_X27_Y6_N22
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = ((\Op1[19]~input_o\ $ (\Add0~59_combout\ $ (!\Add0~58\)))) # (GND)
-- \Add0~61\ = CARRY((\Op1[19]~input_o\ & ((\Add0~59_combout\) # (!\Add0~58\))) # (!\Op1[19]~input_o\ & (\Add0~59_combout\ & !\Add0~58\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[19]~input_o\,
	datab => \Add0~59_combout\,
	datad => VCC,
	cin => \Add0~58\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X26_Y6_N18
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\Mux14~1_combout\ & (((\Add0~60_combout\) # (!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (\Mult0|auto_generated|op_1~2_combout\ & (\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~2_combout\,
	datab => \Mux14~1_combout\,
	datac => \Mux14~0_combout\,
	datad => \Add0~60_combout\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X27_Y4_N26
Mux13 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~combout\ = (\Mux13~0_combout\ & ((\Op2[19]~input_o\) # ((\Op1[19]~input_o\) # (\Mux14~2_combout\)))) # (!\Mux13~0_combout\ & (\Op2[19]~input_o\ & (\Op1[19]~input_o\ & !\Mux14~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~0_combout\,
	datab => \Op2[19]~input_o\,
	datac => \Op1[19]~input_o\,
	datad => \Mux14~2_combout\,
	combout => \Mux13~combout\);

-- Location: LCCOMB_X27_Y4_N12
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \Control_ALU[2]~input_o\ $ (\Op2[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control_ALU[2]~input_o\,
	datad => \Op2[20]~input_o\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X27_Y6_N24
\Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~63_combout\ = (\Op1[20]~input_o\ & ((\Add0~62_combout\ & (\Add0~61\ & VCC)) # (!\Add0~62_combout\ & (!\Add0~61\)))) # (!\Op1[20]~input_o\ & ((\Add0~62_combout\ & (!\Add0~61\)) # (!\Add0~62_combout\ & ((\Add0~61\) # (GND)))))
-- \Add0~64\ = CARRY((\Op1[20]~input_o\ & (!\Add0~62_combout\ & !\Add0~61\)) # (!\Op1[20]~input_o\ & ((!\Add0~61\) # (!\Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[20]~input_o\,
	datab => \Add0~62_combout\,
	datad => VCC,
	cin => \Add0~61\,
	combout => \Add0~63_combout\,
	cout => \Add0~64\);

-- Location: LCCOMB_X14_Y7_N6
\Mult0|auto_generated|op_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_2~4_combout\ = ((\Mult0|auto_generated|mac_out6~DATAOUT2\ $ (\Mult0|auto_generated|mac_out4~DATAOUT2\ $ (!\Mult0|auto_generated|op_2~3\)))) # (GND)
-- \Mult0|auto_generated|op_2~5\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT2\ & ((\Mult0|auto_generated|mac_out4~DATAOUT2\) # (!\Mult0|auto_generated|op_2~3\))) # (!\Mult0|auto_generated|mac_out6~DATAOUT2\ & (\Mult0|auto_generated|mac_out4~DATAOUT2\ & 
-- !\Mult0|auto_generated|op_2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT2\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT2\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_2~3\,
	combout => \Mult0|auto_generated|op_2~4_combout\,
	cout => \Mult0|auto_generated|op_2~5\);

-- Location: LCCOMB_X14_Y8_N6
\Mult0|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~4_combout\ = ((\Mult0|auto_generated|op_2~4_combout\ $ (\Mult0|auto_generated|mac_out2~DATAOUT20\ $ (!\Mult0|auto_generated|op_1~3\)))) # (GND)
-- \Mult0|auto_generated|op_1~5\ = CARRY((\Mult0|auto_generated|op_2~4_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT20\) # (!\Mult0|auto_generated|op_1~3\))) # (!\Mult0|auto_generated|op_2~4_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT20\ & 
-- !\Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_2~4_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~3\,
	combout => \Mult0|auto_generated|op_1~4_combout\,
	cout => \Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X26_Y8_N8
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\Mux14~1_combout\ & ((\Add0~63_combout\) # ((!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (((\Mux14~0_combout\ & \Mult0|auto_generated|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Add0~63_combout\,
	datac => \Mux14~0_combout\,
	datad => \Mult0|auto_generated|op_1~4_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X27_Y4_N6
Mux12 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~combout\ = (\Op2[20]~input_o\ & ((\Mux12~0_combout\) # ((!\Mux14~2_combout\ & \Op1[20]~input_o\)))) # (!\Op2[20]~input_o\ & (\Mux12~0_combout\ & ((\Mux14~2_combout\) # (\Op1[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op2[20]~input_o\,
	datab => \Mux14~2_combout\,
	datac => \Mux12~0_combout\,
	datad => \Op1[20]~input_o\,
	combout => \Mux12~combout\);

-- Location: LCCOMB_X14_Y7_N8
\Mult0|auto_generated|op_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_2~6_combout\ = (\Mult0|auto_generated|mac_out6~DATAOUT3\ & ((\Mult0|auto_generated|mac_out4~DATAOUT3\ & (\Mult0|auto_generated|op_2~5\ & VCC)) # (!\Mult0|auto_generated|mac_out4~DATAOUT3\ & (!\Mult0|auto_generated|op_2~5\)))) # 
-- (!\Mult0|auto_generated|mac_out6~DATAOUT3\ & ((\Mult0|auto_generated|mac_out4~DATAOUT3\ & (!\Mult0|auto_generated|op_2~5\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT3\ & ((\Mult0|auto_generated|op_2~5\) # (GND)))))
-- \Mult0|auto_generated|op_2~7\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT3\ & (!\Mult0|auto_generated|mac_out4~DATAOUT3\ & !\Mult0|auto_generated|op_2~5\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT3\ & ((!\Mult0|auto_generated|op_2~5\) # 
-- (!\Mult0|auto_generated|mac_out4~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT3\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT3\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_2~5\,
	combout => \Mult0|auto_generated|op_2~6_combout\,
	cout => \Mult0|auto_generated|op_2~7\);

-- Location: LCCOMB_X14_Y8_N8
\Mult0|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~6_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT21\ & ((\Mult0|auto_generated|op_2~6_combout\ & (\Mult0|auto_generated|op_1~5\ & VCC)) # (!\Mult0|auto_generated|op_2~6_combout\ & (!\Mult0|auto_generated|op_1~5\)))) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT21\ & ((\Mult0|auto_generated|op_2~6_combout\ & (!\Mult0|auto_generated|op_1~5\)) # (!\Mult0|auto_generated|op_2~6_combout\ & ((\Mult0|auto_generated|op_1~5\) # (GND)))))
-- \Mult0|auto_generated|op_1~7\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT21\ & (!\Mult0|auto_generated|op_2~6_combout\ & !\Mult0|auto_generated|op_1~5\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT21\ & ((!\Mult0|auto_generated|op_1~5\) # 
-- (!\Mult0|auto_generated|op_2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT21\,
	datab => \Mult0|auto_generated|op_2~6_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~5\,
	combout => \Mult0|auto_generated|op_1~6_combout\,
	cout => \Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X28_Y6_N20
\Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~65_combout\ = \Op2[21]~input_o\ $ (\Control_ALU[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op2[21]~input_o\,
	datac => \Control_ALU[2]~input_o\,
	combout => \Add0~65_combout\);

-- Location: LCCOMB_X27_Y6_N26
\Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~66_combout\ = ((\Add0~65_combout\ $ (\Op1[21]~input_o\ $ (!\Add0~64\)))) # (GND)
-- \Add0~67\ = CARRY((\Add0~65_combout\ & ((\Op1[21]~input_o\) # (!\Add0~64\))) # (!\Add0~65_combout\ & (\Op1[21]~input_o\ & !\Add0~64\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~65_combout\,
	datab => \Op1[21]~input_o\,
	datad => VCC,
	cin => \Add0~64\,
	combout => \Add0~66_combout\,
	cout => \Add0~67\);

-- Location: LCCOMB_X28_Y6_N14
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\Mux14~1_combout\ & (((\Add0~66_combout\) # (!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (\Mult0|auto_generated|op_1~6_combout\ & ((\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mult0|auto_generated|op_1~6_combout\,
	datac => \Add0~66_combout\,
	datad => \Mux14~0_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X28_Y6_N0
Mux11 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~combout\ = (\Op2[21]~input_o\ & ((\Mux11~0_combout\) # ((\Op1[21]~input_o\ & !\Mux14~2_combout\)))) # (!\Op2[21]~input_o\ & (\Mux11~0_combout\ & ((\Op1[21]~input_o\) # (\Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op2[21]~input_o\,
	datab => \Op1[21]~input_o\,
	datac => \Mux14~2_combout\,
	datad => \Mux11~0_combout\,
	combout => \Mux11~combout\);

-- Location: LCCOMB_X28_Y6_N26
\Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~68_combout\ = \Control_ALU[2]~input_o\ $ (\Op2[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control_ALU[2]~input_o\,
	datad => \Op2[22]~input_o\,
	combout => \Add0~68_combout\);

-- Location: LCCOMB_X27_Y6_N28
\Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~69_combout\ = (\Op1[22]~input_o\ & ((\Add0~68_combout\ & (\Add0~67\ & VCC)) # (!\Add0~68_combout\ & (!\Add0~67\)))) # (!\Op1[22]~input_o\ & ((\Add0~68_combout\ & (!\Add0~67\)) # (!\Add0~68_combout\ & ((\Add0~67\) # (GND)))))
-- \Add0~70\ = CARRY((\Op1[22]~input_o\ & (!\Add0~68_combout\ & !\Add0~67\)) # (!\Op1[22]~input_o\ & ((!\Add0~67\) # (!\Add0~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[22]~input_o\,
	datab => \Add0~68_combout\,
	datad => VCC,
	cin => \Add0~67\,
	combout => \Add0~69_combout\,
	cout => \Add0~70\);

-- Location: LCCOMB_X14_Y7_N10
\Mult0|auto_generated|op_2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_2~8_combout\ = ((\Mult0|auto_generated|mac_out4~DATAOUT4\ $ (\Mult0|auto_generated|mac_out6~DATAOUT4\ $ (!\Mult0|auto_generated|op_2~7\)))) # (GND)
-- \Mult0|auto_generated|op_2~9\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT4\ & ((\Mult0|auto_generated|mac_out6~DATAOUT4\) # (!\Mult0|auto_generated|op_2~7\))) # (!\Mult0|auto_generated|mac_out4~DATAOUT4\ & (\Mult0|auto_generated|mac_out6~DATAOUT4\ & 
-- !\Mult0|auto_generated|op_2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT4\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT4\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_2~7\,
	combout => \Mult0|auto_generated|op_2~8_combout\,
	cout => \Mult0|auto_generated|op_2~9\);

-- Location: LCCOMB_X14_Y8_N10
\Mult0|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~8_combout\ = ((\Mult0|auto_generated|mac_out2~DATAOUT22\ $ (\Mult0|auto_generated|op_2~8_combout\ $ (!\Mult0|auto_generated|op_1~7\)))) # (GND)
-- \Mult0|auto_generated|op_1~9\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT22\ & ((\Mult0|auto_generated|op_2~8_combout\) # (!\Mult0|auto_generated|op_1~7\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT22\ & (\Mult0|auto_generated|op_2~8_combout\ & 
-- !\Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT22\,
	datab => \Mult0|auto_generated|op_2~8_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~7\,
	combout => \Mult0|auto_generated|op_1~8_combout\,
	cout => \Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X28_Y6_N28
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\Mux14~0_combout\ & ((\Mux14~1_combout\ & (\Add0~69_combout\)) # (!\Mux14~1_combout\ & ((\Mult0|auto_generated|op_1~8_combout\))))) # (!\Mux14~0_combout\ & (((\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Add0~69_combout\,
	datac => \Mult0|auto_generated|op_1~8_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X28_Y6_N6
Mux10 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~combout\ = (\Mux14~2_combout\ & (\Mux10~0_combout\)) # (!\Mux14~2_combout\ & ((\Mux10~0_combout\ & ((\Op1[22]~input_o\) # (\Op2[22]~input_o\))) # (!\Mux10~0_combout\ & (\Op1[22]~input_o\ & \Op2[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~2_combout\,
	datab => \Mux10~0_combout\,
	datac => \Op1[22]~input_o\,
	datad => \Op2[22]~input_o\,
	combout => \Mux10~combout\);

-- Location: LCCOMB_X28_Y6_N8
\Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~71_combout\ = \Control_ALU[2]~input_o\ $ (\Op2[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control_ALU[2]~input_o\,
	datac => \Op2[23]~input_o\,
	combout => \Add0~71_combout\);

-- Location: LCCOMB_X27_Y6_N30
\Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~72_combout\ = ((\Op1[23]~input_o\ $ (\Add0~71_combout\ $ (!\Add0~70\)))) # (GND)
-- \Add0~73\ = CARRY((\Op1[23]~input_o\ & ((\Add0~71_combout\) # (!\Add0~70\))) # (!\Op1[23]~input_o\ & (\Add0~71_combout\ & !\Add0~70\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[23]~input_o\,
	datab => \Add0~71_combout\,
	datad => VCC,
	cin => \Add0~70\,
	combout => \Add0~72_combout\,
	cout => \Add0~73\);

-- Location: LCCOMB_X14_Y7_N12
\Mult0|auto_generated|op_2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_2~10_combout\ = (\Mult0|auto_generated|mac_out6~DATAOUT5\ & ((\Mult0|auto_generated|mac_out4~DATAOUT5\ & (\Mult0|auto_generated|op_2~9\ & VCC)) # (!\Mult0|auto_generated|mac_out4~DATAOUT5\ & (!\Mult0|auto_generated|op_2~9\)))) # 
-- (!\Mult0|auto_generated|mac_out6~DATAOUT5\ & ((\Mult0|auto_generated|mac_out4~DATAOUT5\ & (!\Mult0|auto_generated|op_2~9\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT5\ & ((\Mult0|auto_generated|op_2~9\) # (GND)))))
-- \Mult0|auto_generated|op_2~11\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT5\ & (!\Mult0|auto_generated|mac_out4~DATAOUT5\ & !\Mult0|auto_generated|op_2~9\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT5\ & ((!\Mult0|auto_generated|op_2~9\) # 
-- (!\Mult0|auto_generated|mac_out4~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT5\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT5\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_2~9\,
	combout => \Mult0|auto_generated|op_2~10_combout\,
	cout => \Mult0|auto_generated|op_2~11\);

-- Location: LCCOMB_X14_Y8_N12
\Mult0|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~10_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT23\ & ((\Mult0|auto_generated|op_2~10_combout\ & (\Mult0|auto_generated|op_1~9\ & VCC)) # (!\Mult0|auto_generated|op_2~10_combout\ & (!\Mult0|auto_generated|op_1~9\)))) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT23\ & ((\Mult0|auto_generated|op_2~10_combout\ & (!\Mult0|auto_generated|op_1~9\)) # (!\Mult0|auto_generated|op_2~10_combout\ & ((\Mult0|auto_generated|op_1~9\) # (GND)))))
-- \Mult0|auto_generated|op_1~11\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT23\ & (!\Mult0|auto_generated|op_2~10_combout\ & !\Mult0|auto_generated|op_1~9\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT23\ & ((!\Mult0|auto_generated|op_1~9\) # 
-- (!\Mult0|auto_generated|op_2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT23\,
	datab => \Mult0|auto_generated|op_2~10_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~9\,
	combout => \Mult0|auto_generated|op_1~10_combout\,
	cout => \Mult0|auto_generated|op_1~11\);

-- Location: LCCOMB_X28_Y6_N18
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\Mux14~0_combout\ & ((\Mux14~1_combout\ & (\Add0~72_combout\)) # (!\Mux14~1_combout\ & ((\Mult0|auto_generated|op_1~10_combout\))))) # (!\Mux14~0_combout\ & (((\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \Add0~72_combout\,
	datac => \Mult0|auto_generated|op_1~10_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X28_Y6_N12
Mux9 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~combout\ = (\Mux14~2_combout\ & (((\Mux9~0_combout\)))) # (!\Mux14~2_combout\ & ((\Op1[23]~input_o\ & ((\Op2[23]~input_o\) # (\Mux9~0_combout\))) # (!\Op1[23]~input_o\ & (\Op2[23]~input_o\ & \Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~2_combout\,
	datab => \Op1[23]~input_o\,
	datac => \Op2[23]~input_o\,
	datad => \Mux9~0_combout\,
	combout => \Mux9~combout\);

-- Location: LCCOMB_X14_Y7_N14
\Mult0|auto_generated|op_2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_2~12_combout\ = ((\Mult0|auto_generated|mac_out6~DATAOUT6\ $ (\Mult0|auto_generated|mac_out4~DATAOUT6\ $ (!\Mult0|auto_generated|op_2~11\)))) # (GND)
-- \Mult0|auto_generated|op_2~13\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT6\ & ((\Mult0|auto_generated|mac_out4~DATAOUT6\) # (!\Mult0|auto_generated|op_2~11\))) # (!\Mult0|auto_generated|mac_out6~DATAOUT6\ & (\Mult0|auto_generated|mac_out4~DATAOUT6\ & 
-- !\Mult0|auto_generated|op_2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT6\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT6\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_2~11\,
	combout => \Mult0|auto_generated|op_2~12_combout\,
	cout => \Mult0|auto_generated|op_2~13\);

-- Location: LCCOMB_X14_Y8_N14
\Mult0|auto_generated|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~12_combout\ = ((\Mult0|auto_generated|mac_out2~DATAOUT24\ $ (\Mult0|auto_generated|op_2~12_combout\ $ (!\Mult0|auto_generated|op_1~11\)))) # (GND)
-- \Mult0|auto_generated|op_1~13\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT24\ & ((\Mult0|auto_generated|op_2~12_combout\) # (!\Mult0|auto_generated|op_1~11\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT24\ & (\Mult0|auto_generated|op_2~12_combout\ & 
-- !\Mult0|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT24\,
	datab => \Mult0|auto_generated|op_2~12_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~11\,
	combout => \Mult0|auto_generated|op_1~12_combout\,
	cout => \Mult0|auto_generated|op_1~13\);

-- Location: LCCOMB_X28_Y6_N30
\Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~74_combout\ = \Control_ALU[2]~input_o\ $ (\Op2[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control_ALU[2]~input_o\,
	datac => \Op2[24]~input_o\,
	combout => \Add0~74_combout\);

-- Location: LCCOMB_X27_Y5_N0
\Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~75_combout\ = (\Op1[24]~input_o\ & ((\Add0~74_combout\ & (\Add0~73\ & VCC)) # (!\Add0~74_combout\ & (!\Add0~73\)))) # (!\Op1[24]~input_o\ & ((\Add0~74_combout\ & (!\Add0~73\)) # (!\Add0~74_combout\ & ((\Add0~73\) # (GND)))))
-- \Add0~76\ = CARRY((\Op1[24]~input_o\ & (!\Add0~74_combout\ & !\Add0~73\)) # (!\Op1[24]~input_o\ & ((!\Add0~73\) # (!\Add0~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[24]~input_o\,
	datab => \Add0~74_combout\,
	datad => VCC,
	cin => \Add0~73\,
	combout => \Add0~75_combout\,
	cout => \Add0~76\);

-- Location: LCCOMB_X28_Y6_N24
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\Mux14~1_combout\ & (((\Add0~75_combout\) # (!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (\Mult0|auto_generated|op_1~12_combout\ & ((\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mult0|auto_generated|op_1~12_combout\,
	datac => \Add0~75_combout\,
	datad => \Mux14~0_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X28_Y6_N10
Mux8 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~combout\ = (\Mux14~2_combout\ & (((\Mux8~0_combout\)))) # (!\Mux14~2_combout\ & ((\Op1[24]~input_o\ & ((\Op2[24]~input_o\) # (\Mux8~0_combout\))) # (!\Op1[24]~input_o\ & (\Op2[24]~input_o\ & \Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~2_combout\,
	datab => \Op1[24]~input_o\,
	datac => \Op2[24]~input_o\,
	datad => \Mux8~0_combout\,
	combout => \Mux8~combout\);

-- Location: LCCOMB_X14_Y7_N16
\Mult0|auto_generated|op_2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_2~14_combout\ = (\Mult0|auto_generated|mac_out4~DATAOUT7\ & ((\Mult0|auto_generated|mac_out6~DATAOUT7\ & (\Mult0|auto_generated|op_2~13\ & VCC)) # (!\Mult0|auto_generated|mac_out6~DATAOUT7\ & (!\Mult0|auto_generated|op_2~13\)))) # 
-- (!\Mult0|auto_generated|mac_out4~DATAOUT7\ & ((\Mult0|auto_generated|mac_out6~DATAOUT7\ & (!\Mult0|auto_generated|op_2~13\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT7\ & ((\Mult0|auto_generated|op_2~13\) # (GND)))))
-- \Mult0|auto_generated|op_2~15\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT7\ & (!\Mult0|auto_generated|mac_out6~DATAOUT7\ & !\Mult0|auto_generated|op_2~13\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT7\ & ((!\Mult0|auto_generated|op_2~13\) # 
-- (!\Mult0|auto_generated|mac_out6~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT7\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT7\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_2~13\,
	combout => \Mult0|auto_generated|op_2~14_combout\,
	cout => \Mult0|auto_generated|op_2~15\);

-- Location: LCCOMB_X14_Y8_N16
\Mult0|auto_generated|op_1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~14_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT25\ & ((\Mult0|auto_generated|op_2~14_combout\ & (\Mult0|auto_generated|op_1~13\ & VCC)) # (!\Mult0|auto_generated|op_2~14_combout\ & (!\Mult0|auto_generated|op_1~13\)))) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT25\ & ((\Mult0|auto_generated|op_2~14_combout\ & (!\Mult0|auto_generated|op_1~13\)) # (!\Mult0|auto_generated|op_2~14_combout\ & ((\Mult0|auto_generated|op_1~13\) # (GND)))))
-- \Mult0|auto_generated|op_1~15\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT25\ & (!\Mult0|auto_generated|op_2~14_combout\ & !\Mult0|auto_generated|op_1~13\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT25\ & ((!\Mult0|auto_generated|op_1~13\) # 
-- (!\Mult0|auto_generated|op_2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT25\,
	datab => \Mult0|auto_generated|op_2~14_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~13\,
	combout => \Mult0|auto_generated|op_1~14_combout\,
	cout => \Mult0|auto_generated|op_1~15\);

-- Location: LCCOMB_X27_Y8_N0
\Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~77_combout\ = \Op2[25]~input_o\ $ (\Control_ALU[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Op2[25]~input_o\,
	datac => \Control_ALU[2]~input_o\,
	combout => \Add0~77_combout\);

-- Location: LCCOMB_X27_Y5_N2
\Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~78_combout\ = ((\Op1[25]~input_o\ $ (\Add0~77_combout\ $ (!\Add0~76\)))) # (GND)
-- \Add0~79\ = CARRY((\Op1[25]~input_o\ & ((\Add0~77_combout\) # (!\Add0~76\))) # (!\Op1[25]~input_o\ & (\Add0~77_combout\ & !\Add0~76\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[25]~input_o\,
	datab => \Add0~77_combout\,
	datad => VCC,
	cin => \Add0~76\,
	combout => \Add0~78_combout\,
	cout => \Add0~79\);

-- Location: LCCOMB_X27_Y8_N2
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\Mux14~1_combout\ & (((\Add0~78_combout\)) # (!\Mux14~0_combout\))) # (!\Mux14~1_combout\ & (\Mux14~0_combout\ & (\Mult0|auto_generated|op_1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux14~0_combout\,
	datac => \Mult0|auto_generated|op_1~14_combout\,
	datad => \Add0~78_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X27_Y8_N12
Mux7 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~combout\ = (\Mux14~2_combout\ & (((\Mux7~0_combout\)))) # (!\Mux14~2_combout\ & ((\Op2[25]~input_o\ & ((\Op1[25]~input_o\) # (\Mux7~0_combout\))) # (!\Op2[25]~input_o\ & (\Op1[25]~input_o\ & \Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~2_combout\,
	datab => \Op2[25]~input_o\,
	datac => \Op1[25]~input_o\,
	datad => \Mux7~0_combout\,
	combout => \Mux7~combout\);

-- Location: LCCOMB_X14_Y7_N18
\Mult0|auto_generated|op_2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_2~16_combout\ = ((\Mult0|auto_generated|mac_out6~DATAOUT8\ $ (\Mult0|auto_generated|mac_out4~DATAOUT8\ $ (!\Mult0|auto_generated|op_2~15\)))) # (GND)
-- \Mult0|auto_generated|op_2~17\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT8\ & ((\Mult0|auto_generated|mac_out4~DATAOUT8\) # (!\Mult0|auto_generated|op_2~15\))) # (!\Mult0|auto_generated|mac_out6~DATAOUT8\ & (\Mult0|auto_generated|mac_out4~DATAOUT8\ & 
-- !\Mult0|auto_generated|op_2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT8\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT8\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_2~15\,
	combout => \Mult0|auto_generated|op_2~16_combout\,
	cout => \Mult0|auto_generated|op_2~17\);

-- Location: LCCOMB_X14_Y8_N18
\Mult0|auto_generated|op_1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~16_combout\ = ((\Mult0|auto_generated|op_2~16_combout\ $ (\Mult0|auto_generated|mac_out2~DATAOUT26\ $ (!\Mult0|auto_generated|op_1~15\)))) # (GND)
-- \Mult0|auto_generated|op_1~17\ = CARRY((\Mult0|auto_generated|op_2~16_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT26\) # (!\Mult0|auto_generated|op_1~15\))) # (!\Mult0|auto_generated|op_2~16_combout\ & (\Mult0|auto_generated|mac_out2~DATAOUT26\ & 
-- !\Mult0|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_2~16_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT26\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~15\,
	combout => \Mult0|auto_generated|op_1~16_combout\,
	cout => \Mult0|auto_generated|op_1~17\);

-- Location: LCCOMB_X27_Y5_N18
\Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~80_combout\ = \Op2[26]~input_o\ $ (\Control_ALU[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Op2[26]~input_o\,
	datad => \Control_ALU[2]~input_o\,
	combout => \Add0~80_combout\);

-- Location: LCCOMB_X27_Y5_N4
\Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~81_combout\ = (\Op1[26]~input_o\ & ((\Add0~80_combout\ & (\Add0~79\ & VCC)) # (!\Add0~80_combout\ & (!\Add0~79\)))) # (!\Op1[26]~input_o\ & ((\Add0~80_combout\ & (!\Add0~79\)) # (!\Add0~80_combout\ & ((\Add0~79\) # (GND)))))
-- \Add0~82\ = CARRY((\Op1[26]~input_o\ & (!\Add0~80_combout\ & !\Add0~79\)) # (!\Op1[26]~input_o\ & ((!\Add0~79\) # (!\Add0~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[26]~input_o\,
	datab => \Add0~80_combout\,
	datad => VCC,
	cin => \Add0~79\,
	combout => \Add0~81_combout\,
	cout => \Add0~82\);

-- Location: LCCOMB_X27_Y5_N28
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mux14~0_combout\ & ((\Mux14~1_combout\ & ((\Add0~81_combout\))) # (!\Mux14~1_combout\ & (\Mult0|auto_generated|op_1~16_combout\)))) # (!\Mux14~0_combout\ & (((\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~16_combout\,
	datab => \Add0~81_combout\,
	datac => \Mux14~0_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X27_Y5_N30
Mux6 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~combout\ = (\Op2[26]~input_o\ & ((\Mux6~0_combout\) # ((\Op1[26]~input_o\ & !\Mux14~2_combout\)))) # (!\Op2[26]~input_o\ & (\Mux6~0_combout\ & ((\Op1[26]~input_o\) # (\Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op2[26]~input_o\,
	datab => \Op1[26]~input_o\,
	datac => \Mux14~2_combout\,
	datad => \Mux6~0_combout\,
	combout => \Mux6~combout\);

-- Location: LCCOMB_X14_Y7_N20
\Mult0|auto_generated|op_2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_2~18_combout\ = (\Mult0|auto_generated|mac_out6~DATAOUT9\ & ((\Mult0|auto_generated|mac_out4~DATAOUT9\ & (\Mult0|auto_generated|op_2~17\ & VCC)) # (!\Mult0|auto_generated|mac_out4~DATAOUT9\ & (!\Mult0|auto_generated|op_2~17\)))) # 
-- (!\Mult0|auto_generated|mac_out6~DATAOUT9\ & ((\Mult0|auto_generated|mac_out4~DATAOUT9\ & (!\Mult0|auto_generated|op_2~17\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT9\ & ((\Mult0|auto_generated|op_2~17\) # (GND)))))
-- \Mult0|auto_generated|op_2~19\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT9\ & (!\Mult0|auto_generated|mac_out4~DATAOUT9\ & !\Mult0|auto_generated|op_2~17\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT9\ & ((!\Mult0|auto_generated|op_2~17\) # 
-- (!\Mult0|auto_generated|mac_out4~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT9\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT9\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_2~17\,
	combout => \Mult0|auto_generated|op_2~18_combout\,
	cout => \Mult0|auto_generated|op_2~19\);

-- Location: LCCOMB_X14_Y8_N20
\Mult0|auto_generated|op_1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~18_combout\ = (\Mult0|auto_generated|op_2~18_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT27\ & (\Mult0|auto_generated|op_1~17\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT27\ & (!\Mult0|auto_generated|op_1~17\)))) # 
-- (!\Mult0|auto_generated|op_2~18_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT27\ & (!\Mult0|auto_generated|op_1~17\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT27\ & ((\Mult0|auto_generated|op_1~17\) # (GND)))))
-- \Mult0|auto_generated|op_1~19\ = CARRY((\Mult0|auto_generated|op_2~18_combout\ & (!\Mult0|auto_generated|mac_out2~DATAOUT27\ & !\Mult0|auto_generated|op_1~17\)) # (!\Mult0|auto_generated|op_2~18_combout\ & ((!\Mult0|auto_generated|op_1~17\) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_2~18_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT27\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~17\,
	combout => \Mult0|auto_generated|op_1~18_combout\,
	cout => \Mult0|auto_generated|op_1~19\);

-- Location: LCCOMB_X27_Y4_N0
\Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~83_combout\ = \Control_ALU[2]~input_o\ $ (\Op2[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Control_ALU[2]~input_o\,
	datad => \Op2[27]~input_o\,
	combout => \Add0~83_combout\);

-- Location: LCCOMB_X27_Y5_N6
\Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~84_combout\ = ((\Op1[27]~input_o\ $ (\Add0~83_combout\ $ (!\Add0~82\)))) # (GND)
-- \Add0~85\ = CARRY((\Op1[27]~input_o\ & ((\Add0~83_combout\) # (!\Add0~82\))) # (!\Op1[27]~input_o\ & (\Add0~83_combout\ & !\Add0~82\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[27]~input_o\,
	datab => \Add0~83_combout\,
	datad => VCC,
	cin => \Add0~82\,
	combout => \Add0~84_combout\,
	cout => \Add0~85\);

-- Location: LCCOMB_X27_Y5_N24
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mux14~1_combout\ & (((\Add0~84_combout\) # (!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (\Mult0|auto_generated|op_1~18_combout\ & (\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mult0|auto_generated|op_1~18_combout\,
	datac => \Mux14~0_combout\,
	datad => \Add0~84_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X27_Y4_N2
Mux5 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~combout\ = (\Mux5~0_combout\ & ((\Mux14~2_combout\) # ((\Op1[27]~input_o\) # (\Op2[27]~input_o\)))) # (!\Mux5~0_combout\ & (!\Mux14~2_combout\ & (\Op1[27]~input_o\ & \Op2[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \Mux14~2_combout\,
	datac => \Op1[27]~input_o\,
	datad => \Op2[27]~input_o\,
	combout => \Mux5~combout\);

-- Location: LCCOMB_X14_Y7_N22
\Mult0|auto_generated|op_2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_2~20_combout\ = ((\Mult0|auto_generated|mac_out4~DATAOUT10\ $ (\Mult0|auto_generated|mac_out6~DATAOUT10\ $ (!\Mult0|auto_generated|op_2~19\)))) # (GND)
-- \Mult0|auto_generated|op_2~21\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT10\ & ((\Mult0|auto_generated|mac_out6~DATAOUT10\) # (!\Mult0|auto_generated|op_2~19\))) # (!\Mult0|auto_generated|mac_out4~DATAOUT10\ & 
-- (\Mult0|auto_generated|mac_out6~DATAOUT10\ & !\Mult0|auto_generated|op_2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT10\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT10\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_2~19\,
	combout => \Mult0|auto_generated|op_2~20_combout\,
	cout => \Mult0|auto_generated|op_2~21\);

-- Location: LCCOMB_X14_Y8_N22
\Mult0|auto_generated|op_1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~20_combout\ = ((\Mult0|auto_generated|mac_out2~DATAOUT28\ $ (\Mult0|auto_generated|op_2~20_combout\ $ (!\Mult0|auto_generated|op_1~19\)))) # (GND)
-- \Mult0|auto_generated|op_1~21\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT28\ & ((\Mult0|auto_generated|op_2~20_combout\) # (!\Mult0|auto_generated|op_1~19\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT28\ & (\Mult0|auto_generated|op_2~20_combout\ & 
-- !\Mult0|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT28\,
	datab => \Mult0|auto_generated|op_2~20_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~19\,
	combout => \Mult0|auto_generated|op_1~20_combout\,
	cout => \Mult0|auto_generated|op_1~21\);

-- Location: LCCOMB_X27_Y8_N14
\Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~86_combout\ = \Control_ALU[2]~input_o\ $ (\Op2[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Control_ALU[2]~input_o\,
	datad => \Op2[28]~input_o\,
	combout => \Add0~86_combout\);

-- Location: LCCOMB_X27_Y5_N8
\Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~87_combout\ = (\Op1[28]~input_o\ & ((\Add0~86_combout\ & (\Add0~85\ & VCC)) # (!\Add0~86_combout\ & (!\Add0~85\)))) # (!\Op1[28]~input_o\ & ((\Add0~86_combout\ & (!\Add0~85\)) # (!\Add0~86_combout\ & ((\Add0~85\) # (GND)))))
-- \Add0~88\ = CARRY((\Op1[28]~input_o\ & (!\Add0~86_combout\ & !\Add0~85\)) # (!\Op1[28]~input_o\ & ((!\Add0~85\) # (!\Add0~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[28]~input_o\,
	datab => \Add0~86_combout\,
	datad => VCC,
	cin => \Add0~85\,
	combout => \Add0~87_combout\,
	cout => \Add0~88\);

-- Location: LCCOMB_X27_Y8_N8
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Mux14~0_combout\ & ((\Mux14~1_combout\ & ((\Add0~87_combout\))) # (!\Mux14~1_combout\ & (\Mult0|auto_generated|op_1~20_combout\)))) # (!\Mux14~0_combout\ & (((\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~20_combout\,
	datab => \Mux14~0_combout\,
	datac => \Add0~87_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X27_Y8_N10
Mux4 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~combout\ = (\Mux14~2_combout\ & (\Mux4~0_combout\)) # (!\Mux14~2_combout\ & ((\Mux4~0_combout\ & ((\Op1[28]~input_o\) # (\Op2[28]~input_o\))) # (!\Mux4~0_combout\ & (\Op1[28]~input_o\ & \Op2[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~2_combout\,
	datab => \Mux4~0_combout\,
	datac => \Op1[28]~input_o\,
	datad => \Op2[28]~input_o\,
	combout => \Mux4~combout\);

-- Location: LCCOMB_X14_Y7_N24
\Mult0|auto_generated|op_2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_2~22_combout\ = (\Mult0|auto_generated|mac_out6~DATAOUT11\ & ((\Mult0|auto_generated|mac_out4~DATAOUT11\ & (\Mult0|auto_generated|op_2~21\ & VCC)) # (!\Mult0|auto_generated|mac_out4~DATAOUT11\ & 
-- (!\Mult0|auto_generated|op_2~21\)))) # (!\Mult0|auto_generated|mac_out6~DATAOUT11\ & ((\Mult0|auto_generated|mac_out4~DATAOUT11\ & (!\Mult0|auto_generated|op_2~21\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT11\ & ((\Mult0|auto_generated|op_2~21\) # 
-- (GND)))))
-- \Mult0|auto_generated|op_2~23\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT11\ & (!\Mult0|auto_generated|mac_out4~DATAOUT11\ & !\Mult0|auto_generated|op_2~21\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT11\ & ((!\Mult0|auto_generated|op_2~21\) # 
-- (!\Mult0|auto_generated|mac_out4~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT11\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT11\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_2~21\,
	combout => \Mult0|auto_generated|op_2~22_combout\,
	cout => \Mult0|auto_generated|op_2~23\);

-- Location: LCCOMB_X14_Y8_N24
\Mult0|auto_generated|op_1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~22_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT29\ & ((\Mult0|auto_generated|op_2~22_combout\ & (\Mult0|auto_generated|op_1~21\ & VCC)) # (!\Mult0|auto_generated|op_2~22_combout\ & (!\Mult0|auto_generated|op_1~21\)))) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT29\ & ((\Mult0|auto_generated|op_2~22_combout\ & (!\Mult0|auto_generated|op_1~21\)) # (!\Mult0|auto_generated|op_2~22_combout\ & ((\Mult0|auto_generated|op_1~21\) # (GND)))))
-- \Mult0|auto_generated|op_1~23\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT29\ & (!\Mult0|auto_generated|op_2~22_combout\ & !\Mult0|auto_generated|op_1~21\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT29\ & ((!\Mult0|auto_generated|op_1~21\) # 
-- (!\Mult0|auto_generated|op_2~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT29\,
	datab => \Mult0|auto_generated|op_2~22_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~21\,
	combout => \Mult0|auto_generated|op_1~22_combout\,
	cout => \Mult0|auto_generated|op_1~23\);

-- Location: LCCOMB_X27_Y8_N4
\Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~89_combout\ = \Control_ALU[2]~input_o\ $ (\Op2[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Control_ALU[2]~input_o\,
	datad => \Op2[29]~input_o\,
	combout => \Add0~89_combout\);

-- Location: LCCOMB_X27_Y5_N10
\Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~90_combout\ = ((\Op1[29]~input_o\ $ (\Add0~89_combout\ $ (!\Add0~88\)))) # (GND)
-- \Add0~91\ = CARRY((\Op1[29]~input_o\ & ((\Add0~89_combout\) # (!\Add0~88\))) # (!\Op1[29]~input_o\ & (\Add0~89_combout\ & !\Add0~88\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[29]~input_o\,
	datab => \Add0~89_combout\,
	datad => VCC,
	cin => \Add0~88\,
	combout => \Add0~90_combout\,
	cout => \Add0~91\);

-- Location: LCCOMB_X27_Y8_N30
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mux14~0_combout\ & ((\Mux14~1_combout\ & ((\Add0~90_combout\))) # (!\Mux14~1_combout\ & (\Mult0|auto_generated|op_1~22_combout\)))) # (!\Mux14~0_combout\ & (((\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~22_combout\,
	datab => \Mux14~0_combout\,
	datac => \Add0~90_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X27_Y8_N24
Mux3 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~combout\ = (\Op1[29]~input_o\ & ((\Mux3~0_combout\) # ((\Op2[29]~input_o\ & !\Mux14~2_combout\)))) # (!\Op1[29]~input_o\ & (\Mux3~0_combout\ & ((\Op2[29]~input_o\) # (\Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[29]~input_o\,
	datab => \Op2[29]~input_o\,
	datac => \Mux3~0_combout\,
	datad => \Mux14~2_combout\,
	combout => \Mux3~combout\);

-- Location: LCCOMB_X14_Y7_N26
\Mult0|auto_generated|op_2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_2~24_combout\ = ((\Mult0|auto_generated|mac_out4~DATAOUT12\ $ (\Mult0|auto_generated|mac_out6~DATAOUT12\ $ (!\Mult0|auto_generated|op_2~23\)))) # (GND)
-- \Mult0|auto_generated|op_2~25\ = CARRY((\Mult0|auto_generated|mac_out4~DATAOUT12\ & ((\Mult0|auto_generated|mac_out6~DATAOUT12\) # (!\Mult0|auto_generated|op_2~23\))) # (!\Mult0|auto_generated|mac_out4~DATAOUT12\ & 
-- (\Mult0|auto_generated|mac_out6~DATAOUT12\ & !\Mult0|auto_generated|op_2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out4~DATAOUT12\,
	datab => \Mult0|auto_generated|mac_out6~DATAOUT12\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_2~23\,
	combout => \Mult0|auto_generated|op_2~24_combout\,
	cout => \Mult0|auto_generated|op_2~25\);

-- Location: LCCOMB_X14_Y8_N26
\Mult0|auto_generated|op_1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~24_combout\ = ((\Mult0|auto_generated|mac_out2~DATAOUT30\ $ (\Mult0|auto_generated|op_2~24_combout\ $ (!\Mult0|auto_generated|op_1~23\)))) # (GND)
-- \Mult0|auto_generated|op_1~25\ = CARRY((\Mult0|auto_generated|mac_out2~DATAOUT30\ & ((\Mult0|auto_generated|op_2~24_combout\) # (!\Mult0|auto_generated|op_1~23\))) # (!\Mult0|auto_generated|mac_out2~DATAOUT30\ & (\Mult0|auto_generated|op_2~24_combout\ & 
-- !\Mult0|auto_generated|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT30\,
	datab => \Mult0|auto_generated|op_2~24_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~23\,
	combout => \Mult0|auto_generated|op_1~24_combout\,
	cout => \Mult0|auto_generated|op_1~25\);

-- Location: LCCOMB_X27_Y5_N26
\Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~92_combout\ = \Op2[30]~input_o\ $ (\Control_ALU[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op2[30]~input_o\,
	datad => \Control_ALU[2]~input_o\,
	combout => \Add0~92_combout\);

-- Location: LCCOMB_X27_Y5_N12
\Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~93_combout\ = (\Op1[30]~input_o\ & ((\Add0~92_combout\ & (\Add0~91\ & VCC)) # (!\Add0~92_combout\ & (!\Add0~91\)))) # (!\Op1[30]~input_o\ & ((\Add0~92_combout\ & (!\Add0~91\)) # (!\Add0~92_combout\ & ((\Add0~91\) # (GND)))))
-- \Add0~94\ = CARRY((\Op1[30]~input_o\ & (!\Add0~92_combout\ & !\Add0~91\)) # (!\Op1[30]~input_o\ & ((!\Add0~91\) # (!\Add0~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[30]~input_o\,
	datab => \Add0~92_combout\,
	datad => VCC,
	cin => \Add0~91\,
	combout => \Add0~93_combout\,
	cout => \Add0~94\);

-- Location: LCCOMB_X27_Y5_N20
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Mux14~1_combout\ & (((\Add0~93_combout\) # (!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (\Mult0|auto_generated|op_1~24_combout\ & (\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mult0|auto_generated|op_1~24_combout\,
	datac => \Mux14~0_combout\,
	datad => \Add0~93_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X27_Y5_N22
Mux2 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~combout\ = (\Op1[30]~input_o\ & ((\Mux2~0_combout\) # ((!\Mux14~2_combout\ & \Op2[30]~input_o\)))) # (!\Op1[30]~input_o\ & (\Mux2~0_combout\ & ((\Mux14~2_combout\) # (\Op2[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[30]~input_o\,
	datab => \Mux2~0_combout\,
	datac => \Mux14~2_combout\,
	datad => \Op2[30]~input_o\,
	combout => \Mux2~combout\);

-- Location: LCCOMB_X14_Y7_N28
\Mult0|auto_generated|op_2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_2~26_combout\ = (\Mult0|auto_generated|mac_out6~DATAOUT13\ & ((\Mult0|auto_generated|mac_out4~DATAOUT13\ & (\Mult0|auto_generated|op_2~25\ & VCC)) # (!\Mult0|auto_generated|mac_out4~DATAOUT13\ & 
-- (!\Mult0|auto_generated|op_2~25\)))) # (!\Mult0|auto_generated|mac_out6~DATAOUT13\ & ((\Mult0|auto_generated|mac_out4~DATAOUT13\ & (!\Mult0|auto_generated|op_2~25\)) # (!\Mult0|auto_generated|mac_out4~DATAOUT13\ & ((\Mult0|auto_generated|op_2~25\) # 
-- (GND)))))
-- \Mult0|auto_generated|op_2~27\ = CARRY((\Mult0|auto_generated|mac_out6~DATAOUT13\ & (!\Mult0|auto_generated|mac_out4~DATAOUT13\ & !\Mult0|auto_generated|op_2~25\)) # (!\Mult0|auto_generated|mac_out6~DATAOUT13\ & ((!\Mult0|auto_generated|op_2~25\) # 
-- (!\Mult0|auto_generated|mac_out4~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out6~DATAOUT13\,
	datab => \Mult0|auto_generated|mac_out4~DATAOUT13\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_2~25\,
	combout => \Mult0|auto_generated|op_2~26_combout\,
	cout => \Mult0|auto_generated|op_2~27\);

-- Location: LCCOMB_X14_Y8_N28
\Mult0|auto_generated|op_1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~26_combout\ = (\Mult0|auto_generated|op_2~26_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT31\ & (\Mult0|auto_generated|op_1~25\ & VCC)) # (!\Mult0|auto_generated|mac_out2~DATAOUT31\ & (!\Mult0|auto_generated|op_1~25\)))) # 
-- (!\Mult0|auto_generated|op_2~26_combout\ & ((\Mult0|auto_generated|mac_out2~DATAOUT31\ & (!\Mult0|auto_generated|op_1~25\)) # (!\Mult0|auto_generated|mac_out2~DATAOUT31\ & ((\Mult0|auto_generated|op_1~25\) # (GND)))))
-- \Mult0|auto_generated|op_1~27\ = CARRY((\Mult0|auto_generated|op_2~26_combout\ & (!\Mult0|auto_generated|mac_out2~DATAOUT31\ & !\Mult0|auto_generated|op_1~25\)) # (!\Mult0|auto_generated|op_2~26_combout\ & ((!\Mult0|auto_generated|op_1~25\) # 
-- (!\Mult0|auto_generated|mac_out2~DATAOUT31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_2~26_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT31\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~25\,
	combout => \Mult0|auto_generated|op_1~26_combout\,
	cout => \Mult0|auto_generated|op_1~27\);

-- Location: LCCOMB_X27_Y8_N18
\Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~95_combout\ = \Op2[31]~input_o\ $ (\Control_ALU[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op2[31]~input_o\,
	datac => \Control_ALU[2]~input_o\,
	combout => \Add0~95_combout\);

-- Location: LCCOMB_X27_Y5_N14
\Add0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~96_combout\ = ((\Op1[31]~input_o\ $ (\Add0~95_combout\ $ (!\Add0~94\)))) # (GND)
-- \Add0~97\ = CARRY((\Op1[31]~input_o\ & ((\Add0~95_combout\) # (!\Add0~94\))) # (!\Op1[31]~input_o\ & (\Add0~95_combout\ & !\Add0~94\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Op1[31]~input_o\,
	datab => \Add0~95_combout\,
	datad => VCC,
	cin => \Add0~94\,
	combout => \Add0~96_combout\,
	cout => \Add0~97\);

-- Location: LCCOMB_X27_Y8_N28
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Mux14~1_combout\ & (((\Add0~96_combout\) # (!\Mux14~0_combout\)))) # (!\Mux14~1_combout\ & (\Mult0|auto_generated|op_1~26_combout\ & ((\Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mult0|auto_generated|op_1~26_combout\,
	datac => \Add0~96_combout\,
	datad => \Mux14~0_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X27_Y8_N22
Mux1 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~combout\ = (\Op2[31]~input_o\ & ((\Mux1~0_combout\) # ((\Op1[31]~input_o\ & !\Mux14~2_combout\)))) # (!\Op2[31]~input_o\ & (\Mux1~0_combout\ & ((\Op1[31]~input_o\) # (\Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Op2[31]~input_o\,
	datab => \Mux1~0_combout\,
	datac => \Op1[31]~input_o\,
	datad => \Mux14~2_combout\,
	combout => \Mux1~combout\);

-- Location: LCCOMB_X26_Y6_N20
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\Mux22~combout\ & (!\Mux21~combout\ & (!\Mux23~combout\ & !\Mux20~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~combout\,
	datab => \Mux21~combout\,
	datac => \Mux23~combout\,
	datad => \Mux20~combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X25_Y6_N20
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~8_combout\ & (!\Mux17~combout\ & (!\Mux18~combout\ & !\Mux19~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datab => \Mux17~combout\,
	datac => \Mux18~combout\,
	datad => \Mux19~combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X27_Y4_N20
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Mux14~combout\ & (!\Mux15~combout\ & (!\Mux13~combout\ & !\Mux12~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~combout\,
	datab => \Mux15~combout\,
	datac => \Mux13~combout\,
	datad => \Mux12~combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X27_Y8_N16
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Mux4~combout\ & (!\Mux6~combout\ & (!\Mux5~combout\ & !\Mux7~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~combout\,
	datab => \Mux6~combout\,
	datac => \Mux5~combout\,
	datad => \Mux7~combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X27_Y8_N26
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\Mux1~combout\ & (!\Mux2~combout\ & (!\Mux24~combout\ & !\Mux3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~combout\,
	datab => \Mux2~combout\,
	datac => \Mux24~combout\,
	datad => \Mux3~combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X28_Y6_N4
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\Mux8~combout\ & (!\Mux11~combout\ & (!\Mux9~combout\ & !\Mux10~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~combout\,
	datab => \Mux11~combout\,
	datac => \Mux9~combout\,
	datad => \Mux10~combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X27_Y8_N20
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~2_combout\ & (\Equal0~3_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X26_Y8_N20
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\Mux26~combout\ & !\Mux27~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux26~combout\,
	datad => \Mux27~combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X26_Y8_N10
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\Mux30~combout\ & (!\Mux28~combout\ & (!\Mux31~combout\ & !\Mux29~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~combout\,
	datab => \Mux28~combout\,
	datac => \Mux31~combout\,
	datad => \Mux29~combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X25_Y6_N10
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\Mux25~combout\ & (\Equal0~6_combout\ & (!\Mux16~combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~combout\,
	datab => \Equal0~6_combout\,
	datac => \Mux16~combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X25_Y6_N6
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (!\Mux32~1_combout\ & (\Equal0~9_combout\ & (\Equal0~4_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~1_combout\,
	datab => \Equal0~9_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X27_Y5_N16
\Add0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~98_combout\ = \Add0~97\ $ (\Control_ALU[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Control_ALU[2]~input_o\,
	cin => \Add0~97\,
	combout => \Add0~98_combout\);

-- Location: LCCOMB_X14_Y7_N30
\Mult0|auto_generated|op_2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_2~28_combout\ = \Mult0|auto_generated|mac_out6~DATAOUT14\ $ (\Mult0|auto_generated|op_2~27\ $ (!\Mult0|auto_generated|mac_out4~DATAOUT14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|mac_out6~DATAOUT14\,
	datad => \Mult0|auto_generated|mac_out4~DATAOUT14\,
	cin => \Mult0|auto_generated|op_2~27\,
	combout => \Mult0|auto_generated|op_2~28_combout\);

-- Location: LCCOMB_X14_Y8_N30
\Mult0|auto_generated|op_1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~28_combout\ = \Mult0|auto_generated|op_2~28_combout\ $ (\Mult0|auto_generated|mac_out2~DATAOUT32\ $ (!\Mult0|auto_generated|op_1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_2~28_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT32\,
	cin => \Mult0|auto_generated|op_1~27\,
	combout => \Mult0|auto_generated|op_1~28_combout\);

-- Location: LCCOMB_X26_Y7_N14
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\Mult0|auto_generated|op_1~28_combout\ & (\Control_ALU[0]~input_o\ & (!\Control_ALU[2]~input_o\ & \Control_ALU[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~28_combout\,
	datab => \Control_ALU[0]~input_o\,
	datac => \Control_ALU[2]~input_o\,
	datad => \Control_ALU[1]~input_o\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X26_Y7_N28
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\Mux0~3_combout\) # ((\Control_ALU[1]~input_o\ & (\Add0~98_combout\ & !\Control_ALU[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Control_ALU[1]~input_o\,
	datab => \Add0~98_combout\,
	datac => \Control_ALU[0]~input_o\,
	datad => \Mux0~3_combout\,
	combout => \Mux0~2_combout\);

ww_Resultat(0) <= \Resultat[0]~output_o\;

ww_Resultat(1) <= \Resultat[1]~output_o\;

ww_Resultat(2) <= \Resultat[2]~output_o\;

ww_Resultat(3) <= \Resultat[3]~output_o\;

ww_Resultat(4) <= \Resultat[4]~output_o\;

ww_Resultat(5) <= \Resultat[5]~output_o\;

ww_Resultat(6) <= \Resultat[6]~output_o\;

ww_Resultat(7) <= \Resultat[7]~output_o\;

ww_Resultat(8) <= \Resultat[8]~output_o\;

ww_Resultat(9) <= \Resultat[9]~output_o\;

ww_Resultat(10) <= \Resultat[10]~output_o\;

ww_Resultat(11) <= \Resultat[11]~output_o\;

ww_Resultat(12) <= \Resultat[12]~output_o\;

ww_Resultat(13) <= \Resultat[13]~output_o\;

ww_Resultat(14) <= \Resultat[14]~output_o\;

ww_Resultat(15) <= \Resultat[15]~output_o\;

ww_Resultat(16) <= \Resultat[16]~output_o\;

ww_Resultat(17) <= \Resultat[17]~output_o\;

ww_Resultat(18) <= \Resultat[18]~output_o\;

ww_Resultat(19) <= \Resultat[19]~output_o\;

ww_Resultat(20) <= \Resultat[20]~output_o\;

ww_Resultat(21) <= \Resultat[21]~output_o\;

ww_Resultat(22) <= \Resultat[22]~output_o\;

ww_Resultat(23) <= \Resultat[23]~output_o\;

ww_Resultat(24) <= \Resultat[24]~output_o\;

ww_Resultat(25) <= \Resultat[25]~output_o\;

ww_Resultat(26) <= \Resultat[26]~output_o\;

ww_Resultat(27) <= \Resultat[27]~output_o\;

ww_Resultat(28) <= \Resultat[28]~output_o\;

ww_Resultat(29) <= \Resultat[29]~output_o\;

ww_Resultat(30) <= \Resultat[30]~output_o\;

ww_Resultat(31) <= \Resultat[31]~output_o\;

ww_Z <= \Z~output_o\;

ww_C <= \C~output_o\;
END structure;


