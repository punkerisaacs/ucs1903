-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "04/20/2020 16:02:30"

-- 
-- Device: Altera EP4CE6F17C8 Package FBGA256
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

ENTITY 	ucs1903 IS
    PORT (
	sin_ucs1903 : OUT std_logic;
	clock : IN std_logic;
	reset : IN std_logic;
	r : IN std_logic;
	g : IN std_logic;
	b : IN std_logic
	);
END ucs1903;

-- Design Ports Information
-- sin_ucs1903	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ucs1903 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sin_ucs1903 : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_r : std_logic;
SIGNAL ww_g : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL \inst|dataClock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sin_ucs1903~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|count[0]~18_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \inst|count[1]~6_combout\ : std_logic;
SIGNAL \inst|count[1]~7\ : std_logic;
SIGNAL \inst|count[2]~8_combout\ : std_logic;
SIGNAL \inst|count[2]~9\ : std_logic;
SIGNAL \inst|count[3]~10_combout\ : std_logic;
SIGNAL \inst|count[3]~11\ : std_logic;
SIGNAL \inst|count[4]~12_combout\ : std_logic;
SIGNAL \inst|count[4]~13\ : std_logic;
SIGNAL \inst|count[5]~14_combout\ : std_logic;
SIGNAL \inst|LessThan2~0_combout\ : std_logic;
SIGNAL \inst|count[5]~15\ : std_logic;
SIGNAL \inst|count[6]~16_combout\ : std_logic;
SIGNAL \inst|LessThan2~1_combout\ : std_logic;
SIGNAL \inst|higthClock~q\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|dataClock~q\ : std_logic;
SIGNAL \inst|dataClock~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|totalData[0]~12_combout\ : std_logic;
SIGNAL \inst3|totalData[1]~4_combout\ : std_logic;
SIGNAL \inst3|totalData[1]~5\ : std_logic;
SIGNAL \inst3|totalData[2]~6_combout\ : std_logic;
SIGNAL \inst3|totalData[2]~7\ : std_logic;
SIGNAL \inst3|totalData[3]~8_combout\ : std_logic;
SIGNAL \inst3|totalData[3]~9\ : std_logic;
SIGNAL \inst3|totalData[4]~10_combout\ : std_logic;
SIGNAL \inst3|LessThan0~0_combout\ : std_logic;
SIGNAL \r~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \g~input_o\ : std_logic;
SIGNAL \inst3|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|Mux0~1_combout\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|LessThan1~1_combout\ : std_logic;
SIGNAL \inst|slowClock~q\ : std_logic;
SIGNAL \inst8|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|totalData\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|count\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst3|data\ : std_logic_vector(0 TO 1);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

sin_ucs1903 <= ww_sin_ucs1903;
ww_clock <= clock;
ww_reset <= reset;
ww_r <= r;
ww_g <= g;
ww_b <= b;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|dataClock~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|dataClock~q\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X28_Y0_N16
\sin_ucs1903~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \sin_ucs1903~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X33_Y12_N6
\inst|count[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[0]~18_combout\ = !\inst|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|count\(0),
	combout => \inst|count[0]~18_combout\);

-- Location: IOIBUF_X34_Y2_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X33_Y12_N7
\inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[0]~18_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(0));

-- Location: LCCOMB_X33_Y12_N14
\inst|count[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[1]~6_combout\ = (\inst|count\(0) & (\inst|count\(1) $ (VCC))) # (!\inst|count\(0) & (\inst|count\(1) & VCC))
-- \inst|count[1]~7\ = CARRY((\inst|count\(0) & \inst|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(0),
	datab => \inst|count\(1),
	datad => VCC,
	combout => \inst|count[1]~6_combout\,
	cout => \inst|count[1]~7\);

-- Location: FF_X33_Y12_N15
\inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[1]~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(1));

-- Location: LCCOMB_X33_Y12_N16
\inst|count[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[2]~8_combout\ = (\inst|count\(2) & (!\inst|count[1]~7\)) # (!\inst|count\(2) & ((\inst|count[1]~7\) # (GND)))
-- \inst|count[2]~9\ = CARRY((!\inst|count[1]~7\) # (!\inst|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(2),
	datad => VCC,
	cin => \inst|count[1]~7\,
	combout => \inst|count[2]~8_combout\,
	cout => \inst|count[2]~9\);

-- Location: FF_X33_Y12_N17
\inst|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[2]~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(2));

-- Location: LCCOMB_X33_Y12_N18
\inst|count[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[3]~10_combout\ = (\inst|count\(3) & (\inst|count[2]~9\ $ (GND))) # (!\inst|count\(3) & (!\inst|count[2]~9\ & VCC))
-- \inst|count[3]~11\ = CARRY((\inst|count\(3) & !\inst|count[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(3),
	datad => VCC,
	cin => \inst|count[2]~9\,
	combout => \inst|count[3]~10_combout\,
	cout => \inst|count[3]~11\);

-- Location: FF_X33_Y12_N19
\inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[3]~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(3));

-- Location: LCCOMB_X33_Y12_N20
\inst|count[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[4]~12_combout\ = (\inst|count\(4) & (!\inst|count[3]~11\)) # (!\inst|count\(4) & ((\inst|count[3]~11\) # (GND)))
-- \inst|count[4]~13\ = CARRY((!\inst|count[3]~11\) # (!\inst|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(4),
	datad => VCC,
	cin => \inst|count[3]~11\,
	combout => \inst|count[4]~12_combout\,
	cout => \inst|count[4]~13\);

-- Location: FF_X33_Y12_N21
\inst|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[4]~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(4));

-- Location: LCCOMB_X33_Y12_N22
\inst|count[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[5]~14_combout\ = (\inst|count\(5) & (\inst|count[4]~13\ $ (GND))) # (!\inst|count\(5) & (!\inst|count[4]~13\ & VCC))
-- \inst|count[5]~15\ = CARRY((\inst|count\(5) & !\inst|count[4]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(5),
	datad => VCC,
	cin => \inst|count[4]~13\,
	combout => \inst|count[5]~14_combout\,
	cout => \inst|count[5]~15\);

-- Location: FF_X33_Y12_N23
\inst|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[5]~14_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(5));

-- Location: LCCOMB_X33_Y12_N4
\inst|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan2~0_combout\ = ((!\inst|count\(3) & (!\inst|count\(2) & !\inst|count\(4)))) # (!\inst|count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(3),
	datab => \inst|count\(2),
	datac => \inst|count\(5),
	datad => \inst|count\(4),
	combout => \inst|LessThan2~0_combout\);

-- Location: LCCOMB_X33_Y12_N24
\inst|count[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[6]~16_combout\ = \inst|count[5]~15\ $ (\inst|count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|count\(6),
	cin => \inst|count[5]~15\,
	combout => \inst|count[6]~16_combout\);

-- Location: FF_X33_Y12_N25
\inst|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[6]~16_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(6));

-- Location: LCCOMB_X33_Y12_N26
\inst|LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan2~1_combout\ = (\inst|LessThan2~0_combout\) # (!\inst|count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|LessThan2~0_combout\,
	datad => \inst|count\(6),
	combout => \inst|LessThan2~1_combout\);

-- Location: FF_X33_Y12_N27
\inst|higthClock\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|LessThan2~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|higthClock~q\);

-- Location: LCCOMB_X33_Y12_N12
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (((!\inst|count\(4)) # (!\inst|count\(3))) # (!\inst|count\(1))) # (!\inst|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(2),
	datab => \inst|count\(1),
	datac => \inst|count\(3),
	datad => \inst|count\(4),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X33_Y12_N10
\inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (!\inst|count\(6) & ((\inst|LessThan0~0_combout\) # (!\inst|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(6),
	datac => \inst|count\(5),
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|LessThan0~1_combout\);

-- Location: FF_X33_Y12_N11
\inst|dataClock\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|LessThan0~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|dataClock~q\);

-- Location: CLKCTRL_G5
\inst|dataClock~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|dataClock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|dataClock~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y11_N20
\inst3|totalData[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|totalData[0]~12_combout\ = !\inst3|totalData\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|totalData\(0),
	combout => \inst3|totalData[0]~12_combout\);

-- Location: FF_X33_Y11_N21
\inst3|totalData[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|dataClock~clkctrl_outclk\,
	d => \inst3|totalData[0]~12_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|totalData\(0));

-- Location: LCCOMB_X33_Y11_N8
\inst3|totalData[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|totalData[1]~4_combout\ = (\inst3|totalData\(0) & (\inst3|totalData\(1) $ (VCC))) # (!\inst3|totalData\(0) & (\inst3|totalData\(1) & VCC))
-- \inst3|totalData[1]~5\ = CARRY((\inst3|totalData\(0) & \inst3|totalData\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|totalData\(0),
	datab => \inst3|totalData\(1),
	datad => VCC,
	combout => \inst3|totalData[1]~4_combout\,
	cout => \inst3|totalData[1]~5\);

-- Location: FF_X33_Y11_N9
\inst3|totalData[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|dataClock~clkctrl_outclk\,
	d => \inst3|totalData[1]~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|totalData\(1));

-- Location: LCCOMB_X33_Y11_N10
\inst3|totalData[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|totalData[2]~6_combout\ = (\inst3|totalData\(2) & (!\inst3|totalData[1]~5\)) # (!\inst3|totalData\(2) & ((\inst3|totalData[1]~5\) # (GND)))
-- \inst3|totalData[2]~7\ = CARRY((!\inst3|totalData[1]~5\) # (!\inst3|totalData\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|totalData\(2),
	datad => VCC,
	cin => \inst3|totalData[1]~5\,
	combout => \inst3|totalData[2]~6_combout\,
	cout => \inst3|totalData[2]~7\);

-- Location: FF_X33_Y11_N11
\inst3|totalData[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|dataClock~clkctrl_outclk\,
	d => \inst3|totalData[2]~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|totalData\(2));

-- Location: LCCOMB_X33_Y11_N12
\inst3|totalData[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|totalData[3]~8_combout\ = (\inst3|totalData\(3) & (\inst3|totalData[2]~7\ $ (GND))) # (!\inst3|totalData\(3) & (!\inst3|totalData[2]~7\ & VCC))
-- \inst3|totalData[3]~9\ = CARRY((\inst3|totalData\(3) & !\inst3|totalData[2]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|totalData\(3),
	datad => VCC,
	cin => \inst3|totalData[2]~7\,
	combout => \inst3|totalData[3]~8_combout\,
	cout => \inst3|totalData[3]~9\);

-- Location: FF_X33_Y11_N13
\inst3|totalData[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|dataClock~clkctrl_outclk\,
	d => \inst3|totalData[3]~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|totalData\(3));

-- Location: LCCOMB_X33_Y11_N14
\inst3|totalData[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|totalData[4]~10_combout\ = \inst3|totalData\(4) $ (\inst3|totalData[3]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|totalData\(4),
	cin => \inst3|totalData[3]~9\,
	combout => \inst3|totalData[4]~10_combout\);

-- Location: FF_X33_Y11_N15
\inst3|totalData[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|dataClock~clkctrl_outclk\,
	d => \inst3|totalData[4]~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|totalData\(4));

-- Location: LCCOMB_X33_Y11_N28
\inst3|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~0_combout\ = (!\inst3|totalData\(4)) # (!\inst3|totalData\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|totalData\(3),
	datac => \inst3|totalData\(4),
	combout => \inst3|LessThan0~0_combout\);

-- Location: FF_X33_Y11_N29
\inst3|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|dataClock~clkctrl_outclk\,
	d => \inst3|LessThan0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|data\(0));

-- Location: IOIBUF_X34_Y12_N15
\r~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r,
	o => \r~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\b~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: IOIBUF_X34_Y12_N22
\g~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g,
	o => \g~input_o\);

-- Location: LCCOMB_X33_Y11_N6
\inst3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux0~0_combout\ = (\inst3|totalData\(4) & (((\inst3|totalData\(3))) # (!\b~input_o\))) # (!\inst3|totalData\(4) & (((!\g~input_o\ & \inst3|totalData\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~input_o\,
	datab => \inst3|totalData\(4),
	datac => \g~input_o\,
	datad => \inst3|totalData\(3),
	combout => \inst3|Mux0~0_combout\);

-- Location: LCCOMB_X33_Y11_N22
\inst3|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux0~1_combout\ = (!\inst3|Mux0~0_combout\ & ((\inst3|totalData\(3)) # ((\r~input_o\) # (\inst3|totalData\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|totalData\(3),
	datab => \r~input_o\,
	datac => \inst3|totalData\(4),
	datad => \inst3|Mux0~0_combout\,
	combout => \inst3|Mux0~1_combout\);

-- Location: FF_X33_Y11_N23
\inst3|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|dataClock~clkctrl_outclk\,
	d => \inst3|Mux0~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|data\(1));

-- Location: LCCOMB_X33_Y12_N28
\inst|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = (\inst|count\(4) & ((\inst|count\(0)) # ((\inst|count\(1)) # (\inst|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(0),
	datab => \inst|count\(1),
	datac => \inst|count\(2),
	datad => \inst|count\(4),
	combout => \inst|LessThan1~0_combout\);

-- Location: LCCOMB_X33_Y12_N2
\inst|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan1~1_combout\ = (!\inst|count\(6) & (!\inst|count\(5) & ((!\inst|LessThan1~0_combout\) # (!\inst|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(3),
	datab => \inst|count\(6),
	datac => \inst|count\(5),
	datad => \inst|LessThan1~0_combout\,
	combout => \inst|LessThan1~1_combout\);

-- Location: FF_X33_Y12_N3
\inst|slowClock\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|LessThan1~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|slowClock~q\);

-- Location: LCCOMB_X33_Y11_N24
\inst8|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux0~0_combout\ = (\inst3|data\(0) & ((\inst3|data\(1) & ((\inst|slowClock~q\))) # (!\inst3|data\(1) & (\inst|higthClock~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|higthClock~q\,
	datab => \inst3|data\(0),
	datac => \inst3|data\(1),
	datad => \inst|slowClock~q\,
	combout => \inst8|Mux0~0_combout\);

ww_sin_ucs1903 <= \sin_ucs1903~output_o\;
END structure;


