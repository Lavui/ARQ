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

-- DATE "03/22/2017 10:36:32"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	RegSortida3Estats IS
    PORT (
	Reset : IN std_logic;
	clk : IN std_logic;
	WE : IN std_logic;
	Din : IN std_logic_vector(31 DOWNTO 0);
	E1 : IN std_logic;
	E2 : IN std_logic;
	Dout1 : BUFFER std_logic_vector(31 DOWNTO 0);
	Dout2 : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END RegSortida3Estats;

-- Design Ports Information
-- Dout1[0]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout1[1]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout1[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout1[3]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout1[4]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout1[5]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout1[6]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout1[7]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout1[8]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout1[9]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout1[10]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout1[11]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout1[12]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout1[13]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout1[14]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout1[15]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout1[16]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout1[17]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout1[18]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout1[19]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout1[20]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout1[21]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout1[22]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout1[23]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout1[24]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout1[25]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout1[26]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout1[27]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout1[28]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout1[29]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout1[30]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout1[31]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[0]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[2]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[3]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[4]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[5]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[6]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[7]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[8]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[9]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[10]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[11]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[12]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[13]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[14]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[15]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[16]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[17]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[18]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[19]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[20]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[21]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[22]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[23]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[24]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[25]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[26]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[27]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[28]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[29]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[30]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Dout2[31]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E1	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E2	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WE	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[1]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[3]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[4]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[6]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[7]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[8]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[9]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[10]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[11]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[12]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[13]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[14]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[15]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[16]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[17]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[18]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[19]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[20]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[21]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[22]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[23]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[24]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[25]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[26]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[27]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[28]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[29]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[30]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Din[31]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF RegSortida3Estats IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_WE : std_logic;
SIGNAL ww_Din : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_E1 : std_logic;
SIGNAL ww_E2 : std_logic;
SIGNAL ww_Dout1 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Dout2 : std_logic_vector(31 DOWNTO 0);
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Dout1[0]~output_o\ : std_logic;
SIGNAL \Dout1[1]~output_o\ : std_logic;
SIGNAL \Dout1[2]~output_o\ : std_logic;
SIGNAL \Dout1[3]~output_o\ : std_logic;
SIGNAL \Dout1[4]~output_o\ : std_logic;
SIGNAL \Dout1[5]~output_o\ : std_logic;
SIGNAL \Dout1[6]~output_o\ : std_logic;
SIGNAL \Dout1[7]~output_o\ : std_logic;
SIGNAL \Dout1[8]~output_o\ : std_logic;
SIGNAL \Dout1[9]~output_o\ : std_logic;
SIGNAL \Dout1[10]~output_o\ : std_logic;
SIGNAL \Dout1[11]~output_o\ : std_logic;
SIGNAL \Dout1[12]~output_o\ : std_logic;
SIGNAL \Dout1[13]~output_o\ : std_logic;
SIGNAL \Dout1[14]~output_o\ : std_logic;
SIGNAL \Dout1[15]~output_o\ : std_logic;
SIGNAL \Dout1[16]~output_o\ : std_logic;
SIGNAL \Dout1[17]~output_o\ : std_logic;
SIGNAL \Dout1[18]~output_o\ : std_logic;
SIGNAL \Dout1[19]~output_o\ : std_logic;
SIGNAL \Dout1[20]~output_o\ : std_logic;
SIGNAL \Dout1[21]~output_o\ : std_logic;
SIGNAL \Dout1[22]~output_o\ : std_logic;
SIGNAL \Dout1[23]~output_o\ : std_logic;
SIGNAL \Dout1[24]~output_o\ : std_logic;
SIGNAL \Dout1[25]~output_o\ : std_logic;
SIGNAL \Dout1[26]~output_o\ : std_logic;
SIGNAL \Dout1[27]~output_o\ : std_logic;
SIGNAL \Dout1[28]~output_o\ : std_logic;
SIGNAL \Dout1[29]~output_o\ : std_logic;
SIGNAL \Dout1[30]~output_o\ : std_logic;
SIGNAL \Dout1[31]~output_o\ : std_logic;
SIGNAL \Dout2[0]~output_o\ : std_logic;
SIGNAL \Dout2[1]~output_o\ : std_logic;
SIGNAL \Dout2[2]~output_o\ : std_logic;
SIGNAL \Dout2[3]~output_o\ : std_logic;
SIGNAL \Dout2[4]~output_o\ : std_logic;
SIGNAL \Dout2[5]~output_o\ : std_logic;
SIGNAL \Dout2[6]~output_o\ : std_logic;
SIGNAL \Dout2[7]~output_o\ : std_logic;
SIGNAL \Dout2[8]~output_o\ : std_logic;
SIGNAL \Dout2[9]~output_o\ : std_logic;
SIGNAL \Dout2[10]~output_o\ : std_logic;
SIGNAL \Dout2[11]~output_o\ : std_logic;
SIGNAL \Dout2[12]~output_o\ : std_logic;
SIGNAL \Dout2[13]~output_o\ : std_logic;
SIGNAL \Dout2[14]~output_o\ : std_logic;
SIGNAL \Dout2[15]~output_o\ : std_logic;
SIGNAL \Dout2[16]~output_o\ : std_logic;
SIGNAL \Dout2[17]~output_o\ : std_logic;
SIGNAL \Dout2[18]~output_o\ : std_logic;
SIGNAL \Dout2[19]~output_o\ : std_logic;
SIGNAL \Dout2[20]~output_o\ : std_logic;
SIGNAL \Dout2[21]~output_o\ : std_logic;
SIGNAL \Dout2[22]~output_o\ : std_logic;
SIGNAL \Dout2[23]~output_o\ : std_logic;
SIGNAL \Dout2[24]~output_o\ : std_logic;
SIGNAL \Dout2[25]~output_o\ : std_logic;
SIGNAL \Dout2[26]~output_o\ : std_logic;
SIGNAL \Dout2[27]~output_o\ : std_logic;
SIGNAL \Dout2[28]~output_o\ : std_logic;
SIGNAL \Dout2[29]~output_o\ : std_logic;
SIGNAL \Dout2[30]~output_o\ : std_logic;
SIGNAL \Dout2[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Din[0]~input_o\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \WE~input_o\ : std_logic;
SIGNAL \E1~input_o\ : std_logic;
SIGNAL \Din[1]~input_o\ : std_logic;
SIGNAL \reg|Dout[1]~feeder_combout\ : std_logic;
SIGNAL \Din[2]~input_o\ : std_logic;
SIGNAL \reg|Dout[2]~feeder_combout\ : std_logic;
SIGNAL \Din[3]~input_o\ : std_logic;
SIGNAL \Din[4]~input_o\ : std_logic;
SIGNAL \reg|Dout[4]~feeder_combout\ : std_logic;
SIGNAL \Din[5]~input_o\ : std_logic;
SIGNAL \Din[6]~input_o\ : std_logic;
SIGNAL \Din[7]~input_o\ : std_logic;
SIGNAL \reg|Dout[7]~feeder_combout\ : std_logic;
SIGNAL \Din[8]~input_o\ : std_logic;
SIGNAL \reg|Dout[8]~feeder_combout\ : std_logic;
SIGNAL \Din[9]~input_o\ : std_logic;
SIGNAL \reg|Dout[9]~feeder_combout\ : std_logic;
SIGNAL \Din[10]~input_o\ : std_logic;
SIGNAL \Din[11]~input_o\ : std_logic;
SIGNAL \Din[12]~input_o\ : std_logic;
SIGNAL \Din[13]~input_o\ : std_logic;
SIGNAL \reg|Dout[13]~feeder_combout\ : std_logic;
SIGNAL \Din[14]~input_o\ : std_logic;
SIGNAL \reg|Dout[14]~feeder_combout\ : std_logic;
SIGNAL \Din[15]~input_o\ : std_logic;
SIGNAL \reg|Dout[15]~feeder_combout\ : std_logic;
SIGNAL \Din[16]~input_o\ : std_logic;
SIGNAL \reg|Dout[16]~feeder_combout\ : std_logic;
SIGNAL \Din[17]~input_o\ : std_logic;
SIGNAL \reg|Dout[17]~feeder_combout\ : std_logic;
SIGNAL \Din[18]~input_o\ : std_logic;
SIGNAL \reg|Dout[18]~feeder_combout\ : std_logic;
SIGNAL \Din[19]~input_o\ : std_logic;
SIGNAL \Din[20]~input_o\ : std_logic;
SIGNAL \reg|Dout[20]~feeder_combout\ : std_logic;
SIGNAL \Din[21]~input_o\ : std_logic;
SIGNAL \Din[22]~input_o\ : std_logic;
SIGNAL \Din[23]~input_o\ : std_logic;
SIGNAL \reg|Dout[23]~feeder_combout\ : std_logic;
SIGNAL \Din[24]~input_o\ : std_logic;
SIGNAL \reg|Dout[24]~feeder_combout\ : std_logic;
SIGNAL \Din[25]~input_o\ : std_logic;
SIGNAL \reg|Dout[25]~feeder_combout\ : std_logic;
SIGNAL \Din[26]~input_o\ : std_logic;
SIGNAL \Din[27]~input_o\ : std_logic;
SIGNAL \reg|Dout[27]~feeder_combout\ : std_logic;
SIGNAL \Din[28]~input_o\ : std_logic;
SIGNAL \reg|Dout[28]~feeder_combout\ : std_logic;
SIGNAL \Din[29]~input_o\ : std_logic;
SIGNAL \Din[30]~input_o\ : std_logic;
SIGNAL \reg|Dout[30]~feeder_combout\ : std_logic;
SIGNAL \Din[31]~input_o\ : std_logic;
SIGNAL \E2~input_o\ : std_logic;
SIGNAL \reg|Dout\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Reset <= Reset;
ww_clk <= clk;
ww_WE <= WE;
ww_Din <= Din;
ww_E1 <= E1;
ww_E2 <= E2;
Dout1 <= ww_Dout1;
Dout2 <= ww_Dout2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
\ALT_INV_Reset~inputclkctrl_outclk\ <= NOT \Reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X53_Y6_N23
\Dout1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(0),
	oe => \E1~input_o\,
	devoe => ww_devoe,
	o => \Dout1[0]~output_o\);

-- Location: IOOBUF_X45_Y34_N2
\Dout1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(1),
	oe => \E1~input_o\,
	devoe => ww_devoe,
	o => \Dout1[1]~output_o\);

-- Location: IOOBUF_X53_Y20_N23
\Dout1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(2),
	oe => \E1~input_o\,
	devoe => ww_devoe,
	o => \Dout1[2]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\Dout1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(3),
	oe => \E1~input_o\,
	devoe => ww_devoe,
	o => \Dout1[3]~output_o\);

-- Location: IOOBUF_X53_Y9_N23
\Dout1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(4),
	oe => \E1~input_o\,
	devoe => ww_devoe,
	o => \Dout1[4]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\Dout1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(5),
	oe => \E1~input_o\,
	devoe => ww_devoe,
	o => \Dout1[5]~output_o\);

-- Location: IOOBUF_X18_Y34_N23
\Dout1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(6),
	oe => \E1~input_o\,
	devoe => ww_devoe,
	o => \Dout1[6]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\Dout1[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(7),
	oe => \E1~input_o\,
	devoe => ww_devoe,
	o => \Dout1[7]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\Dout1[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(8),
	oe => \E1~input_o\,
	devoe => ww_devoe,
	o => \Dout1[8]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\Dout1[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(9),
	oe => \E1~input_o\,
	devoe => ww_devoe,
	o => \Dout1[9]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\Dout1[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(10),
	oe => \E1~input_o\,
	devoe => ww_devoe,
	o => \Dout1[10]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\Dout1[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(11),
	oe => \E1~input_o\,
	devoe => ww_devoe,
	o => \Dout1[11]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\Dout1[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(12),
	oe => \E1~input_o\,
	devoe => ww_devoe,
	o => \Dout1[12]~output_o\);

-- Location: IOOBUF_X53_Y22_N9
\Dout1[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(13),
	oe => \E1~input_o\,
	devoe => ww_devoe,
	o => \Dout1[13]~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\Dout1[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(14),
	oe => \E1~input_o\,
	devoe => ww_devoe,
	o => \Dout1[14]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\Dout1[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(15),
	oe => \E1~input_o\,
	devoe => ww_devoe,
	o => \Dout1[15]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\Dout1[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(16),
	oe => \E1~input_o\,
	devoe => ww_devoe,
	o => \Dout1[16]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\Dout1[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(17),
	oe => \E1~input_o\,
	devoe => ww_devoe,
	o => \Dout1[17]~output_o\);

-- Location: IOOBUF_X53_Y22_N2
\Dout1[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(18),
	oe => \E1~input_o\,
	devoe => ww_devoe,
	o => \Dout1[18]~output_o\);

-- Location: IOOBUF_X7_Y34_N9
\Dout1[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(19),
	oe => \E1~input_o\,
	devoe => ww_devoe,
	o => \Dout1[19]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\Dout1[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(20),
	oe => \E1~input_o\,
	devoe => ww_devoe,
	o => \Dout1[20]~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\Dout1[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(21),
	oe => \E1~input_o\,
	devoe => ww_devoe,
	o => \Dout1[21]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\Dout1[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(22),
	oe => \E1~input_o\,
	devoe => ww_devoe,
	o => \Dout1[22]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\Dout1[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(23),
	oe => \E1~input_o\,
	devoe => ww_devoe,
	o => \Dout1[23]~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\Dout1[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(24),
	oe => \E1~input_o\,
	devoe => ww_devoe,
	o => \Dout1[24]~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\Dout1[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(25),
	oe => \E1~input_o\,
	devoe => ww_devoe,
	o => \Dout1[25]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\Dout1[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(26),
	oe => \E1~input_o\,
	devoe => ww_devoe,
	o => \Dout1[26]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\Dout1[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(27),
	oe => \E1~input_o\,
	devoe => ww_devoe,
	o => \Dout1[27]~output_o\);

-- Location: IOOBUF_X51_Y34_N9
\Dout1[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(28),
	oe => \E1~input_o\,
	devoe => ww_devoe,
	o => \Dout1[28]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\Dout1[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(29),
	oe => \E1~input_o\,
	devoe => ww_devoe,
	o => \Dout1[29]~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\Dout1[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(30),
	oe => \E1~input_o\,
	devoe => ww_devoe,
	o => \Dout1[30]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\Dout1[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(31),
	oe => \E1~input_o\,
	devoe => ww_devoe,
	o => \Dout1[31]~output_o\);

-- Location: IOOBUF_X47_Y0_N23
\Dout2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(0),
	oe => \E2~input_o\,
	devoe => ww_devoe,
	o => \Dout2[0]~output_o\);

-- Location: IOOBUF_X53_Y30_N2
\Dout2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(1),
	oe => \E2~input_o\,
	devoe => ww_devoe,
	o => \Dout2[1]~output_o\);

-- Location: IOOBUF_X53_Y15_N9
\Dout2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(2),
	oe => \E2~input_o\,
	devoe => ww_devoe,
	o => \Dout2[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\Dout2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(3),
	oe => \E2~input_o\,
	devoe => ww_devoe,
	o => \Dout2[3]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\Dout2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(4),
	oe => \E2~input_o\,
	devoe => ww_devoe,
	o => \Dout2[4]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\Dout2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(5),
	oe => \E2~input_o\,
	devoe => ww_devoe,
	o => \Dout2[5]~output_o\);

-- Location: IOOBUF_X9_Y34_N9
\Dout2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(6),
	oe => \E2~input_o\,
	devoe => ww_devoe,
	o => \Dout2[6]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\Dout2[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(7),
	oe => \E2~input_o\,
	devoe => ww_devoe,
	o => \Dout2[7]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\Dout2[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(8),
	oe => \E2~input_o\,
	devoe => ww_devoe,
	o => \Dout2[8]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\Dout2[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(9),
	oe => \E2~input_o\,
	devoe => ww_devoe,
	o => \Dout2[9]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\Dout2[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(10),
	oe => \E2~input_o\,
	devoe => ww_devoe,
	o => \Dout2[10]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\Dout2[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(11),
	oe => \E2~input_o\,
	devoe => ww_devoe,
	o => \Dout2[11]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\Dout2[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(12),
	oe => \E2~input_o\,
	devoe => ww_devoe,
	o => \Dout2[12]~output_o\);

-- Location: IOOBUF_X18_Y34_N2
\Dout2[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(13),
	oe => \E2~input_o\,
	devoe => ww_devoe,
	o => \Dout2[13]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\Dout2[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(14),
	oe => \E2~input_o\,
	devoe => ww_devoe,
	o => \Dout2[14]~output_o\);

-- Location: IOOBUF_X53_Y9_N16
\Dout2[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(15),
	oe => \E2~input_o\,
	devoe => ww_devoe,
	o => \Dout2[15]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\Dout2[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(16),
	oe => \E2~input_o\,
	devoe => ww_devoe,
	o => \Dout2[16]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\Dout2[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(17),
	oe => \E2~input_o\,
	devoe => ww_devoe,
	o => \Dout2[17]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\Dout2[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(18),
	oe => \E2~input_o\,
	devoe => ww_devoe,
	o => \Dout2[18]~output_o\);

-- Location: IOOBUF_X23_Y34_N16
\Dout2[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(19),
	oe => \E2~input_o\,
	devoe => ww_devoe,
	o => \Dout2[19]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\Dout2[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(20),
	oe => \E2~input_o\,
	devoe => ww_devoe,
	o => \Dout2[20]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\Dout2[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(21),
	oe => \E2~input_o\,
	devoe => ww_devoe,
	o => \Dout2[21]~output_o\);

-- Location: IOOBUF_X11_Y34_N2
\Dout2[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(22),
	oe => \E2~input_o\,
	devoe => ww_devoe,
	o => \Dout2[22]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\Dout2[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(23),
	oe => \E2~input_o\,
	devoe => ww_devoe,
	o => \Dout2[23]~output_o\);

-- Location: IOOBUF_X53_Y25_N2
\Dout2[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(24),
	oe => \E2~input_o\,
	devoe => ww_devoe,
	o => \Dout2[24]~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\Dout2[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(25),
	oe => \E2~input_o\,
	devoe => ww_devoe,
	o => \Dout2[25]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\Dout2[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(26),
	oe => \E2~input_o\,
	devoe => ww_devoe,
	o => \Dout2[26]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\Dout2[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(27),
	oe => \E2~input_o\,
	devoe => ww_devoe,
	o => \Dout2[27]~output_o\);

-- Location: IOOBUF_X51_Y34_N2
\Dout2[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(28),
	oe => \E2~input_o\,
	devoe => ww_devoe,
	o => \Dout2[28]~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\Dout2[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(29),
	oe => \E2~input_o\,
	devoe => ww_devoe,
	o => \Dout2[29]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\Dout2[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(30),
	oe => \E2~input_o\,
	devoe => ww_devoe,
	o => \Dout2[30]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\Dout2[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg|Dout\(31),
	oe => \E2~input_o\,
	devoe => ww_devoe,
	o => \Dout2[31]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X16_Y0_N22
\Din[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(0),
	o => \Din[0]~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\Reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: CLKCTRL_G4
\Reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset~inputclkctrl_outclk\);

-- Location: IOIBUF_X53_Y12_N1
\WE~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WE,
	o => \WE~input_o\);

-- Location: FF_X19_Y4_N9
\reg|Dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Din[0]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|Dout\(0));

-- Location: IOIBUF_X45_Y0_N22
\E1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E1,
	o => \E1~input_o\);

-- Location: IOIBUF_X43_Y34_N22
\Din[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(1),
	o => \Din[1]~input_o\);

-- Location: LCCOMB_X35_Y30_N0
\reg|Dout[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|Dout[1]~feeder_combout\ = \Din[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[1]~input_o\,
	combout => \reg|Dout[1]~feeder_combout\);

-- Location: FF_X35_Y30_N1
\reg|Dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \reg|Dout[1]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|Dout\(1));

-- Location: IOIBUF_X38_Y34_N1
\Din[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(2),
	o => \Din[2]~input_o\);

-- Location: LCCOMB_X35_Y30_N18
\reg|Dout[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|Dout[2]~feeder_combout\ = \Din[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[2]~input_o\,
	combout => \reg|Dout[2]~feeder_combout\);

-- Location: FF_X35_Y30_N19
\reg|Dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \reg|Dout[2]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|Dout\(2));

-- Location: IOIBUF_X5_Y0_N8
\Din[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(3),
	o => \Din[3]~input_o\);

-- Location: FF_X19_Y4_N3
\reg|Dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Din[3]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|Dout\(3));

-- Location: IOIBUF_X14_Y0_N8
\Din[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(4),
	o => \Din[4]~input_o\);

-- Location: LCCOMB_X19_Y4_N20
\reg|Dout[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|Dout[4]~feeder_combout\ = \Din[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[4]~input_o\,
	combout => \reg|Dout[4]~feeder_combout\);

-- Location: FF_X19_Y4_N21
\reg|Dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \reg|Dout[4]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|Dout\(4));

-- Location: IOIBUF_X51_Y34_N22
\Din[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(5),
	o => \Din[5]~input_o\);

-- Location: FF_X35_Y30_N5
\reg|Dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Din[5]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|Dout\(5));

-- Location: IOIBUF_X34_Y34_N15
\Din[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(6),
	o => \Din[6]~input_o\);

-- Location: FF_X35_Y30_N15
\reg|Dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Din[6]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|Dout\(6));

-- Location: IOIBUF_X34_Y0_N22
\Din[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(7),
	o => \Din[7]~input_o\);

-- Location: LCCOMB_X19_Y4_N14
\reg|Dout[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|Dout[7]~feeder_combout\ = \Din[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[7]~input_o\,
	combout => \reg|Dout[7]~feeder_combout\);

-- Location: FF_X19_Y4_N15
\reg|Dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \reg|Dout[7]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|Dout\(7));

-- Location: IOIBUF_X0_Y4_N22
\Din[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(8),
	o => \Din[8]~input_o\);

-- Location: LCCOMB_X19_Y4_N24
\reg|Dout[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|Dout[8]~feeder_combout\ = \Din[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[8]~input_o\,
	combout => \reg|Dout[8]~feeder_combout\);

-- Location: FF_X19_Y4_N25
\reg|Dout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \reg|Dout[8]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|Dout\(8));

-- Location: IOIBUF_X18_Y0_N8
\Din[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(9),
	o => \Din[9]~input_o\);

-- Location: LCCOMB_X19_Y4_N10
\reg|Dout[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|Dout[9]~feeder_combout\ = \Din[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[9]~input_o\,
	combout => \reg|Dout[9]~feeder_combout\);

-- Location: FF_X19_Y4_N11
\reg|Dout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \reg|Dout[9]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|Dout\(9));

-- Location: IOIBUF_X20_Y0_N1
\Din[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(10),
	o => \Din[10]~input_o\);

-- Location: FF_X19_Y4_N13
\reg|Dout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Din[10]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|Dout\(10));

-- Location: IOIBUF_X7_Y34_N1
\Din[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(11),
	o => \Din[11]~input_o\);

-- Location: FF_X19_Y4_N31
\reg|Dout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Din[11]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|Dout\(11));

-- Location: IOIBUF_X11_Y0_N22
\Din[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(12),
	o => \Din[12]~input_o\);

-- Location: FF_X19_Y4_N17
\reg|Dout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Din[12]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|Dout\(12));

-- Location: IOIBUF_X18_Y0_N22
\Din[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(13),
	o => \Din[13]~input_o\);

-- Location: LCCOMB_X19_Y4_N18
\reg|Dout[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|Dout[13]~feeder_combout\ = \Din[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[13]~input_o\,
	combout => \reg|Dout[13]~feeder_combout\);

-- Location: FF_X19_Y4_N19
\reg|Dout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \reg|Dout[13]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|Dout\(13));

-- Location: IOIBUF_X14_Y0_N22
\Din[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(14),
	o => \Din[14]~input_o\);

-- Location: LCCOMB_X19_Y4_N28
\reg|Dout[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|Dout[14]~feeder_combout\ = \Din[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[14]~input_o\,
	combout => \reg|Dout[14]~feeder_combout\);

-- Location: FF_X19_Y4_N29
\reg|Dout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \reg|Dout[14]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|Dout\(14));

-- Location: IOIBUF_X0_Y6_N15
\Din[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(15),
	o => \Din[15]~input_o\);

-- Location: LCCOMB_X19_Y4_N22
\reg|Dout[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|Dout[15]~feeder_combout\ = \Din[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[15]~input_o\,
	combout => \reg|Dout[15]~feeder_combout\);

-- Location: FF_X19_Y4_N23
\reg|Dout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \reg|Dout[15]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|Dout\(15));

-- Location: IOIBUF_X45_Y34_N8
\Din[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(16),
	o => \Din[16]~input_o\);

-- Location: LCCOMB_X35_Y30_N8
\reg|Dout[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|Dout[16]~feeder_combout\ = \Din[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[16]~input_o\,
	combout => \reg|Dout[16]~feeder_combout\);

-- Location: FF_X35_Y30_N9
\reg|Dout[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \reg|Dout[16]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|Dout\(16));

-- Location: IOIBUF_X20_Y0_N8
\Din[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(17),
	o => \Din[17]~input_o\);

-- Location: LCCOMB_X19_Y4_N0
\reg|Dout[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|Dout[17]~feeder_combout\ = \Din[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[17]~input_o\,
	combout => \reg|Dout[17]~feeder_combout\);

-- Location: FF_X19_Y4_N1
\reg|Dout[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \reg|Dout[17]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|Dout\(17));

-- Location: IOIBUF_X25_Y34_N1
\Din[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(18),
	o => \Din[18]~input_o\);

-- Location: LCCOMB_X35_Y30_N10
\reg|Dout[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|Dout[18]~feeder_combout\ = \Din[18]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[18]~input_o\,
	combout => \reg|Dout[18]~feeder_combout\);

-- Location: FF_X35_Y30_N11
\reg|Dout[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \reg|Dout[18]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|Dout\(18));

-- Location: IOIBUF_X25_Y34_N8
\Din[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(19),
	o => \Din[19]~input_o\);

-- Location: FF_X35_Y30_N13
\reg|Dout[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Din[19]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|Dout\(19));

-- Location: IOIBUF_X1_Y34_N8
\Din[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(20),
	o => \Din[20]~input_o\);

-- Location: LCCOMB_X35_Y30_N30
\reg|Dout[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|Dout[20]~feeder_combout\ = \Din[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[20]~input_o\,
	combout => \reg|Dout[20]~feeder_combout\);

-- Location: FF_X35_Y30_N31
\reg|Dout[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \reg|Dout[20]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|Dout\(20));

-- Location: IOIBUF_X25_Y34_N15
\Din[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(21),
	o => \Din[21]~input_o\);

-- Location: FF_X35_Y30_N17
\reg|Dout[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Din[21]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|Dout\(21));

-- Location: IOIBUF_X25_Y34_N22
\Din[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(22),
	o => \Din[22]~input_o\);

-- Location: FF_X35_Y30_N3
\reg|Dout[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Din[22]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|Dout\(22));

-- Location: IOIBUF_X53_Y9_N8
\Din[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(23),
	o => \Din[23]~input_o\);

-- Location: LCCOMB_X19_Y4_N26
\reg|Dout[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|Dout[23]~feeder_combout\ = \Din[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[23]~input_o\,
	combout => \reg|Dout[23]~feeder_combout\);

-- Location: FF_X19_Y4_N27
\reg|Dout[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \reg|Dout[23]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|Dout\(23));

-- Location: IOIBUF_X43_Y34_N15
\Din[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(24),
	o => \Din[24]~input_o\);

-- Location: LCCOMB_X35_Y30_N20
\reg|Dout[24]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|Dout[24]~feeder_combout\ = \Din[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[24]~input_o\,
	combout => \reg|Dout[24]~feeder_combout\);

-- Location: FF_X35_Y30_N21
\reg|Dout[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \reg|Dout[24]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|Dout\(24));

-- Location: IOIBUF_X23_Y34_N22
\Din[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(25),
	o => \Din[25]~input_o\);

-- Location: LCCOMB_X35_Y30_N6
\reg|Dout[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|Dout[25]~feeder_combout\ = \Din[25]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[25]~input_o\,
	combout => \reg|Dout[25]~feeder_combout\);

-- Location: FF_X35_Y30_N7
\reg|Dout[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \reg|Dout[25]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|Dout\(25));

-- Location: IOIBUF_X16_Y0_N15
\Din[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(26),
	o => \Din[26]~input_o\);

-- Location: FF_X19_Y4_N5
\reg|Dout[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Din[26]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|Dout\(26));

-- Location: IOIBUF_X38_Y34_N15
\Din[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(27),
	o => \Din[27]~input_o\);

-- Location: LCCOMB_X35_Y30_N24
\reg|Dout[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|Dout[27]~feeder_combout\ = \Din[27]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[27]~input_o\,
	combout => \reg|Dout[27]~feeder_combout\);

-- Location: FF_X35_Y30_N25
\reg|Dout[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \reg|Dout[27]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|Dout\(27));

-- Location: IOIBUF_X49_Y34_N1
\Din[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(28),
	o => \Din[28]~input_o\);

-- Location: LCCOMB_X35_Y30_N26
\reg|Dout[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|Dout[28]~feeder_combout\ = \Din[28]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[28]~input_o\,
	combout => \reg|Dout[28]~feeder_combout\);

-- Location: FF_X35_Y30_N27
\reg|Dout[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \reg|Dout[28]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|Dout\(28));

-- Location: IOIBUF_X40_Y34_N1
\Din[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(29),
	o => \Din[29]~input_o\);

-- Location: FF_X35_Y30_N29
\reg|Dout[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Din[29]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|Dout\(29));

-- Location: IOIBUF_X31_Y34_N8
\Din[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(30),
	o => \Din[30]~input_o\);

-- Location: LCCOMB_X35_Y30_N22
\reg|Dout[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reg|Dout[30]~feeder_combout\ = \Din[30]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Din[30]~input_o\,
	combout => \reg|Dout[30]~feeder_combout\);

-- Location: FF_X35_Y30_N23
\reg|Dout[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \reg|Dout[30]~feeder_combout\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|Dout\(30));

-- Location: IOIBUF_X14_Y0_N15
\Din[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Din(31),
	o => \Din[31]~input_o\);

-- Location: FF_X19_Y4_N7
\reg|Dout[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \Din[31]~input_o\,
	clrn => \ALT_INV_Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \WE~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg|Dout\(31));

-- Location: IOIBUF_X20_Y34_N8
\E2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E2,
	o => \E2~input_o\);

ww_Dout1(0) <= \Dout1[0]~output_o\;

ww_Dout1(1) <= \Dout1[1]~output_o\;

ww_Dout1(2) <= \Dout1[2]~output_o\;

ww_Dout1(3) <= \Dout1[3]~output_o\;

ww_Dout1(4) <= \Dout1[4]~output_o\;

ww_Dout1(5) <= \Dout1[5]~output_o\;

ww_Dout1(6) <= \Dout1[6]~output_o\;

ww_Dout1(7) <= \Dout1[7]~output_o\;

ww_Dout1(8) <= \Dout1[8]~output_o\;

ww_Dout1(9) <= \Dout1[9]~output_o\;

ww_Dout1(10) <= \Dout1[10]~output_o\;

ww_Dout1(11) <= \Dout1[11]~output_o\;

ww_Dout1(12) <= \Dout1[12]~output_o\;

ww_Dout1(13) <= \Dout1[13]~output_o\;

ww_Dout1(14) <= \Dout1[14]~output_o\;

ww_Dout1(15) <= \Dout1[15]~output_o\;

ww_Dout1(16) <= \Dout1[16]~output_o\;

ww_Dout1(17) <= \Dout1[17]~output_o\;

ww_Dout1(18) <= \Dout1[18]~output_o\;

ww_Dout1(19) <= \Dout1[19]~output_o\;

ww_Dout1(20) <= \Dout1[20]~output_o\;

ww_Dout1(21) <= \Dout1[21]~output_o\;

ww_Dout1(22) <= \Dout1[22]~output_o\;

ww_Dout1(23) <= \Dout1[23]~output_o\;

ww_Dout1(24) <= \Dout1[24]~output_o\;

ww_Dout1(25) <= \Dout1[25]~output_o\;

ww_Dout1(26) <= \Dout1[26]~output_o\;

ww_Dout1(27) <= \Dout1[27]~output_o\;

ww_Dout1(28) <= \Dout1[28]~output_o\;

ww_Dout1(29) <= \Dout1[29]~output_o\;

ww_Dout1(30) <= \Dout1[30]~output_o\;

ww_Dout1(31) <= \Dout1[31]~output_o\;

ww_Dout2(0) <= \Dout2[0]~output_o\;

ww_Dout2(1) <= \Dout2[1]~output_o\;

ww_Dout2(2) <= \Dout2[2]~output_o\;

ww_Dout2(3) <= \Dout2[3]~output_o\;

ww_Dout2(4) <= \Dout2[4]~output_o\;

ww_Dout2(5) <= \Dout2[5]~output_o\;

ww_Dout2(6) <= \Dout2[6]~output_o\;

ww_Dout2(7) <= \Dout2[7]~output_o\;

ww_Dout2(8) <= \Dout2[8]~output_o\;

ww_Dout2(9) <= \Dout2[9]~output_o\;

ww_Dout2(10) <= \Dout2[10]~output_o\;

ww_Dout2(11) <= \Dout2[11]~output_o\;

ww_Dout2(12) <= \Dout2[12]~output_o\;

ww_Dout2(13) <= \Dout2[13]~output_o\;

ww_Dout2(14) <= \Dout2[14]~output_o\;

ww_Dout2(15) <= \Dout2[15]~output_o\;

ww_Dout2(16) <= \Dout2[16]~output_o\;

ww_Dout2(17) <= \Dout2[17]~output_o\;

ww_Dout2(18) <= \Dout2[18]~output_o\;

ww_Dout2(19) <= \Dout2[19]~output_o\;

ww_Dout2(20) <= \Dout2[20]~output_o\;

ww_Dout2(21) <= \Dout2[21]~output_o\;

ww_Dout2(22) <= \Dout2[22]~output_o\;

ww_Dout2(23) <= \Dout2[23]~output_o\;

ww_Dout2(24) <= \Dout2[24]~output_o\;

ww_Dout2(25) <= \Dout2[25]~output_o\;

ww_Dout2(26) <= \Dout2[26]~output_o\;

ww_Dout2(27) <= \Dout2[27]~output_o\;

ww_Dout2(28) <= \Dout2[28]~output_o\;

ww_Dout2(29) <= \Dout2[29]~output_o\;

ww_Dout2(30) <= \Dout2[30]~output_o\;

ww_Dout2(31) <= \Dout2[31]~output_o\;
END structure;


