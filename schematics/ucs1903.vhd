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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"
-- CREATED		"Sun Apr 19 11:34:14 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ucs1903 IS 
	PORT
	(
		clock :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		data :  OUT  STD_LOGIC
	);
END ucs1903;

ARCHITECTURE bdf_type OF ucs1903 IS 

COMPONENT frecuencies
	PORT(clock : IN STD_LOGIC;
		 enabled : IN STD_LOGIC;
		 dataClock : OUT STD_LOGIC;
		 higthClock : OUT STD_LOGIC;
		 slowClock : OUT STD_LOGIC;
		 reset : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT data_shifter
	PORT(dataClock : IN STD_LOGIC;
		 higthClock : IN STD_LOGIC;
		 slowClock : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 SIN_UCS1903 : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;


BEGIN 



b2v_inst : frecuencies
PORT MAP(clock => clock,
		 enabled => reset,
		 dataClock => SYNTHESIZED_WIRE_0,
		 higthClock => SYNTHESIZED_WIRE_1,
		 slowClock => SYNTHESIZED_WIRE_2,
		 reset => SYNTHESIZED_WIRE_3);


b2v_inst2 : data_shifter
PORT MAP(dataClock => SYNTHESIZED_WIRE_0,
		 higthClock => SYNTHESIZED_WIRE_1,
		 slowClock => SYNTHESIZED_WIRE_2,
		 reset => SYNTHESIZED_WIRE_3,
		 SIN_UCS1903 => data);


END bdf_type;