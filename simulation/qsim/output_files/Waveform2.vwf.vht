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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/20/2020 11:32:51"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          multiplexor
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY multiplexor_vhd_vec_tst IS
END multiplexor_vhd_vec_tst;
ARCHITECTURE multiplexor_arch OF multiplexor_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL data : STD_LOGIC_VECTOR(0 TO 1);
SIGNAL higthClock : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL slowClock : STD_LOGIC;
SIGNAL UCS1903_data : STD_LOGIC;
COMPONENT multiplexor
	PORT (
	data : IN STD_LOGIC_VECTOR(0 TO 1);
	higthClock : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	slowClock : IN STD_LOGIC;
	UCS1903_data : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : multiplexor
	PORT MAP (
-- list connections between master ports and signals
	data => data,
	higthClock => higthClock,
	reset => reset,
	slowClock => slowClock,
	UCS1903_data => UCS1903_data
	);
-- data[1]
t_prcs_data_1: PROCESS
BEGIN
	data(1) <= '0';
WAIT;
END PROCESS t_prcs_data_1;
-- data[0]
t_prcs_data_0: PROCESS
BEGIN
	data(0) <= '0';
WAIT;
END PROCESS t_prcs_data_0;

-- higthClock
t_prcs_higthClock: PROCESS
BEGIN
LOOP
	higthClock <= '0';
	WAIT FOR 5000 ps;
	higthClock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_higthClock;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;

-- slowClock
t_prcs_slowClock: PROCESS
BEGIN
LOOP
	slowClock <= '0';
	WAIT FOR 10000 ps;
	slowClock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_slowClock;
END multiplexor_arch;
