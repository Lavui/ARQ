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

-- DATE "04/21/2017 14:34:35"

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
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	UnitatControl IS
    PORT (
	co : IN std_logic_vector(5 DOWNTO 0);
	RegDest : OUT std_logic;
	SaltInc : OUT std_logic;
	MemaReg : OUT std_logic;
	LlegMem : OUT std_logic;
	EscrMem : OUT std_logic;
	SaltCon : OUT std_logic;
	FontALU : OUT std_logic;
	ALUOP : OUT std_logic_vector(1 DOWNTO 0);
	EscrReg : OUT std_logic
	);
END UnitatControl;

-- Design Ports Information
-- RegDest	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaltInc	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemaReg	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LlegMem	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EscrMem	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SaltCon	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FontALU	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOP[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALUOP[1]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EscrReg	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- co[4]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- co[5]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- co[0]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- co[3]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- co[2]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- co[1]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UnitatControl IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_co : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_RegDest : std_logic;
SIGNAL ww_SaltInc : std_logic;
SIGNAL ww_MemaReg : std_logic;
SIGNAL ww_LlegMem : std_logic;
SIGNAL ww_EscrMem : std_logic;
SIGNAL ww_SaltCon : std_logic;
SIGNAL ww_FontALU : std_logic;
SIGNAL ww_ALUOP : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_EscrReg : std_logic;
SIGNAL \RegDest~output_o\ : std_logic;
SIGNAL \SaltInc~output_o\ : std_logic;
SIGNAL \MemaReg~output_o\ : std_logic;
SIGNAL \LlegMem~output_o\ : std_logic;
SIGNAL \EscrMem~output_o\ : std_logic;
SIGNAL \SaltCon~output_o\ : std_logic;
SIGNAL \FontALU~output_o\ : std_logic;
SIGNAL \ALUOP[0]~output_o\ : std_logic;
SIGNAL \ALUOP[1]~output_o\ : std_logic;
SIGNAL \EscrReg~output_o\ : std_logic;
SIGNAL \co[0]~input_o\ : std_logic;
SIGNAL \co[4]~input_o\ : std_logic;
SIGNAL \co[5]~input_o\ : std_logic;
SIGNAL \co[3]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \co[1]~input_o\ : std_logic;
SIGNAL \co[2]~input_o\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_co <= co;
RegDest <= ww_RegDest;
SaltInc <= ww_SaltInc;
MemaReg <= ww_MemaReg;
LlegMem <= ww_LlegMem;
EscrMem <= ww_EscrMem;
SaltCon <= ww_SaltCon;
FontALU <= ww_FontALU;
ALUOP <= ww_ALUOP;
EscrReg <= ww_EscrReg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux7~1_combout\ <= NOT \Mux7~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y4_N16
\RegDest~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \RegDest~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\SaltInc~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~3_combout\,
	devoe => ww_devoe,
	o => \SaltInc~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\MemaReg~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~1_combout\,
	devoe => ww_devoe,
	o => \MemaReg~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\LlegMem~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~1_combout\,
	devoe => ww_devoe,
	o => \LlegMem~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\EscrMem~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \EscrMem~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\SaltCon~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SaltCon~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\FontALU~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~1_combout\,
	devoe => ww_devoe,
	o => \FontALU~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\ALUOP[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~1_combout\,
	devoe => ww_devoe,
	o => \ALUOP[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\ALUOP[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux7~1_combout\,
	devoe => ww_devoe,
	o => \ALUOP[1]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\EscrReg~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~1_combout\,
	devoe => ww_devoe,
	o => \EscrReg~output_o\);

-- Location: IOIBUF_X0_Y11_N1
\co[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_co(0),
	o => \co[0]~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\co[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_co(4),
	o => \co[4]~input_o\);

-- Location: IOIBUF_X0_Y12_N8
\co[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_co(5),
	o => \co[5]~input_o\);

-- Location: IOIBUF_X0_Y12_N1
\co[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_co(3),
	o => \co[3]~input_o\);

-- Location: LCCOMB_X4_Y8_N16
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\co[0]~input_o\ & (!\co[4]~input_o\ & (!\co[5]~input_o\ & !\co[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \co[0]~input_o\,
	datab => \co[4]~input_o\,
	datac => \co[5]~input_o\,
	datad => \co[3]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X0_Y8_N22
\co[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_co(1),
	o => \co[1]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\co[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_co(2),
	o => \co[2]~input_o\);

-- Location: LCCOMB_X4_Y8_N10
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & (!\co[1]~input_o\ & !\co[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~0_combout\,
	datac => \co[1]~input_o\,
	datad => \co[2]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X4_Y8_N30
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\Mux0~0_combout\ & (\co[1]~input_o\ & !\co[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~0_combout\,
	datac => \co[1]~input_o\,
	datad => \co[2]~input_o\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X4_Y8_N28
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\co[1]~input_o\ & !\co[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \co[1]~input_o\,
	datad => \co[2]~input_o\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X4_Y8_N14
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\co[0]~input_o\ & (!\co[4]~input_o\ & (\co[5]~input_o\ & \Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \co[0]~input_o\,
	datab => \co[4]~input_o\,
	datac => \co[5]~input_o\,
	datad => \Mux1~2_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X4_Y8_N24
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (!\co[3]~input_o\ & \Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \co[3]~input_o\,
	datac => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X4_Y8_N26
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\co[3]~input_o\ & \Mux2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \co[3]~input_o\,
	datac => \Mux2~0_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X4_Y8_N20
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mux0~0_combout\ & (!\co[1]~input_o\ & \co[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~0_combout\,
	datac => \co[1]~input_o\,
	datad => \co[2]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X4_Y8_N6
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\co[0]~input_o\ & (\co[5]~input_o\ & (\co[1]~input_o\))) # (!\co[0]~input_o\ & (!\co[5]~input_o\ & ((\co[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \co[0]~input_o\,
	datab => \co[5]~input_o\,
	datac => \co[1]~input_o\,
	datad => \co[3]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X4_Y8_N0
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\ & (!\co[4]~input_o\ & !\co[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \co[4]~input_o\,
	datad => \co[2]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X4_Y8_N18
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (!\co[0]~input_o\ & ((\co[2]~input_o\ & (!\co[1]~input_o\ & !\co[3]~input_o\)) # (!\co[2]~input_o\ & (\co[1]~input_o\ & \co[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \co[0]~input_o\,
	datab => \co[2]~input_o\,
	datac => \co[1]~input_o\,
	datad => \co[3]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X4_Y8_N4
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (!\co[4]~input_o\ & (!\co[5]~input_o\ & \Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \co[4]~input_o\,
	datac => \co[5]~input_o\,
	datad => \Mux8~0_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X4_Y8_N22
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\co[0]~input_o\) # ((\co[2]~input_o\) # ((\co[1]~input_o\ & !\co[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \co[0]~input_o\,
	datab => \co[2]~input_o\,
	datac => \co[1]~input_o\,
	datad => \co[3]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X4_Y8_N8
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\) # ((\co[4]~input_o\) # (\co[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \co[4]~input_o\,
	datac => \co[5]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X4_Y8_N2
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\co[0]~input_o\) # ((\co[3]~input_o\ & (\co[2]~input_o\)) # (!\co[3]~input_o\ & ((\co[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \co[0]~input_o\,
	datab => \co[2]~input_o\,
	datac => \co[1]~input_o\,
	datad => \co[3]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X4_Y8_N12
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux2~1_combout\) # ((!\co[4]~input_o\ & (!\co[5]~input_o\ & !\Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \co[4]~input_o\,
	datac => \co[5]~input_o\,
	datad => \Mux9~0_combout\,
	combout => \Mux9~1_combout\);

ww_RegDest <= \RegDest~output_o\;

ww_SaltInc <= \SaltInc~output_o\;

ww_MemaReg <= \MemaReg~output_o\;

ww_LlegMem <= \LlegMem~output_o\;

ww_EscrMem <= \EscrMem~output_o\;

ww_SaltCon <= \SaltCon~output_o\;

ww_FontALU <= \FontALU~output_o\;

ww_ALUOP(0) <= \ALUOP[0]~output_o\;

ww_ALUOP(1) <= \ALUOP[1]~output_o\;

ww_EscrReg <= \EscrReg~output_o\;
END structure;


