-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "12/08/2013 12:22:09"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SystemIR IS
    PORT (
	Clock : IN std_logic;
	Reset : IN std_logic;
	Run : IN std_logic;
	LEDs : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END SystemIR;

-- Design Ports Information
-- LEDs[0]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[1]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[3]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[4]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[5]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[7]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[9]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[10]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[11]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[12]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[13]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[14]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[15]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Run	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SystemIR IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Run : std_logic;
SIGNAL ww_LEDs : std_logic_vector(15 DOWNTO 0);
SIGNAL \MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \PROC|ControlUnityBlock|next_state.move~q\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|next_state.movenz~q\ : std_logic;
SIGNAL \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \PROC|addSubRegister|Q[6]~30_combout\ : std_logic;
SIGNAL \PROC|addSubRegister|Q[8]~34_combout\ : std_logic;
SIGNAL \PROC|addSubRegister|Q[9]~36_combout\ : std_logic;
SIGNAL \PROC|addSubRegister|Q[10]~38_combout\ : std_logic;
SIGNAL \PROC|addSubRegister|Q[11]~40_combout\ : std_logic;
SIGNAL \PROC|addSubRegister|Q[14]~47\ : std_logic;
SIGNAL \PROC|addSubRegister|Q[15]~48_combout\ : std_logic;
SIGNAL \PROC|W~q\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector17~2_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector28~2_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector31~3_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector27~0_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector27~1_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector20~2_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector31~8_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector31~9_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector31~10_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector19~3_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector33~2_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector32~0_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector15~1_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector15~4_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector3~0_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector3~4_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|W_D~0_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector2~2_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector2~3_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector1~1_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector1~4_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector0~0_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector0~3_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector14~3_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector14~7_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector13~2_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector13~4_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector12~1_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector11~2_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector11~4_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector10~2_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector10~4_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector9~0_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector8~2_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector8~4_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector7~0_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector6~0_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector6~3_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector5~2_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector4~2_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Mux17~0_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector1~1_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector3~0_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector2~1_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector0~1_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector0~2_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Mux17~2_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Mux17~3_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Mux17~4_combout\ : std_logic;
SIGNAL \PROC|Equal0~3_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector5~0_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector5~1_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector3~1_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector11~0_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|next_state.fetchInstruction~q\ : std_logic;
SIGNAL \wr_en~combout\ : std_logic;
SIGNAL \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~2_combout\ : std_logic;
SIGNAL \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~4_combout\ : std_logic;
SIGNAL \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~5_combout\ : std_logic;
SIGNAL \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~6_combout\ : std_logic;
SIGNAL \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~7_combout\ : std_logic;
SIGNAL \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~9_combout\ : std_logic;
SIGNAL \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~10_combout\ : std_logic;
SIGNAL \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~14_combout\ : std_logic;
SIGNAL \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~15_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|next_state~14_combout\ : std_logic;
SIGNAL \PROC|IntructionRegister|Q[8]~feeder_combout\ : std_logic;
SIGNAL \PROC|REGISTERS:6:RegisterBlocks|Q[0]~feeder_combout\ : std_logic;
SIGNAL \PROC|REGISTERS:1:RegisterBlocks|Q[0]~feeder_combout\ : std_logic;
SIGNAL \PROC|AcumulatorRegister|Q[0]~feeder_combout\ : std_logic;
SIGNAL \PROC|REGISTERS:6:RegisterBlocks|Q[12]~feeder_combout\ : std_logic;
SIGNAL \PROC|W~feeder_combout\ : std_logic;
SIGNAL \PROC|REGISTERS:3:RegisterBlocks|Q[13]~feeder_combout\ : std_logic;
SIGNAL \PROC|REGISTERS:6:RegisterBlocks|Q[13]~feeder_combout\ : std_logic;
SIGNAL \PROC|REGISTERS:5:RegisterBlocks|Q[14]~feeder_combout\ : std_logic;
SIGNAL \PROC|REGISTERS:6:RegisterBlocks|Q[14]~feeder_combout\ : std_logic;
SIGNAL \PROC|REGISTERS:6:RegisterBlocks|Q[15]~feeder_combout\ : std_logic;
SIGNAL \PROC|AcumulatorRegister|Q[1]~feeder_combout\ : std_logic;
SIGNAL \PROC|REGISTERS:6:RegisterBlocks|Q[1]~feeder_combout\ : std_logic;
SIGNAL \PROC|REGISTERS:6:RegisterBlocks|Q[2]~feeder_combout\ : std_logic;
SIGNAL \PROC|REGISTERS:0:RegisterBlocks|Q[3]~feeder_combout\ : std_logic;
SIGNAL \PROC|REGISTERS:6:RegisterBlocks|Q[4]~feeder_combout\ : std_logic;
SIGNAL \PROC|REGISTERS:5:RegisterBlocks|Q[4]~feeder_combout\ : std_logic;
SIGNAL \PROC|REGISTERS:6:RegisterBlocks|Q[5]~feeder_combout\ : std_logic;
SIGNAL \PROC|REGISTERS:3:RegisterBlocks|Q[5]~feeder_combout\ : std_logic;
SIGNAL \PROC|REGISTERS:6:RegisterBlocks|Q[7]~feeder_combout\ : std_logic;
SIGNAL \PROC|REGISTERS:5:RegisterBlocks|Q[7]~feeder_combout\ : std_logic;
SIGNAL \PROC|REGISTERS:0:RegisterBlocks|Q[10]~feeder_combout\ : std_logic;
SIGNAL \PROC|REGISTERS:5:RegisterBlocks|Q[10]~feeder_combout\ : std_logic;
SIGNAL \PROC|REGISTERS:0:RegisterBlocks|Q[11]~feeder_combout\ : std_logic;
SIGNAL \LEDs[0]~output_o\ : std_logic;
SIGNAL \LEDs[1]~output_o\ : std_logic;
SIGNAL \LEDs[2]~output_o\ : std_logic;
SIGNAL \LEDs[3]~output_o\ : std_logic;
SIGNAL \LEDs[4]~output_o\ : std_logic;
SIGNAL \LEDs[5]~output_o\ : std_logic;
SIGNAL \LEDs[6]~output_o\ : std_logic;
SIGNAL \LEDs[7]~output_o\ : std_logic;
SIGNAL \LEDs[8]~output_o\ : std_logic;
SIGNAL \LEDs[9]~output_o\ : std_logic;
SIGNAL \LEDs[10]~output_o\ : std_logic;
SIGNAL \LEDs[11]~output_o\ : std_logic;
SIGNAL \LEDs[12]~output_o\ : std_logic;
SIGNAL \LEDs[13]~output_o\ : std_logic;
SIGNAL \LEDs[14]~output_o\ : std_logic;
SIGNAL \LEDs[15]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \PROC|ADDR_Register|Q[0]~feeder_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \Run~input_o\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|next_state.load~q\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector1~0_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector1~3_combout\ : std_logic;
SIGNAL \PROC|REGISTERS:5:RegisterBlocks|Q[2]~feeder_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector31~1_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|next_state.storage~q\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector10~0_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector4~2_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|next_state.storage~0_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|present_state~17_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|present_state.storage~q\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector31~0_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector26~1_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Mux17~1_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|next_state.loadImmediate~q\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector6~2_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|next_state.loadImmediate~0_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|present_state~14_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|present_state.loadImmediate~q\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector19~2_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector31~6_combout\ : std_logic;
SIGNAL \PROC|DOUT_Register|Q[1]~feeder_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|DOUTin~0_combout\ : std_logic;
SIGNAL \PROC|DOUT_Register|Q[2]~feeder_combout\ : std_logic;
SIGNAL \PROC|DOUT_Register|Q[3]~feeder_combout\ : std_logic;
SIGNAL \PROC|DOUT_Register|Q[4]~feeder_combout\ : std_logic;
SIGNAL \PROC|DOUT_Register|Q[6]~feeder_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector30~1_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector27~2_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector31~2_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector31~4_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector31~5_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector27~3_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector28~0_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector28~1_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector28~3_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Mbus~0_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Equal9~0_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Equal8~0_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector7~2_combout\ : std_logic;
SIGNAL \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Mux39~2_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector25~0_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Mux39~0_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector24~0_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector19~4_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector17~3_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector15~2_combout\ : std_logic;
SIGNAL \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector20~3_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector21~2_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector7~1_combout\ : std_logic;
SIGNAL \PROC|REGISTERS:3:RegisterBlocks|Q[8]~feeder_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector19~5_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector7~4_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector18~3_combout\ : std_logic;
SIGNAL \PROC|REGISTERS:0:RegisterBlocks|Q[8]~feeder_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector22~2_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector16~2_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector7~3_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector7~5_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector7~6_combout\ : std_logic;
SIGNAL \PROC|DOUT_Register|Q[8]~feeder_combout\ : std_logic;
SIGNAL \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector6~1_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector6~2_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector29~0_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector18~2_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector29~1_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector29~2_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Equal4~0_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Equal4~1_combout\ : std_logic;
SIGNAL \PROC|REGISTERS:3:RegisterBlocks|Q[9]~feeder_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector6~4_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector6~5_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector6~6_combout\ : std_logic;
SIGNAL \PROC|DOUT_Register|Q[9]~feeder_combout\ : std_logic;
SIGNAL \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector5~1_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector5~0_combout\ : std_logic;
SIGNAL \PROC|REGISTERS:4:RegisterBlocks|Q[10]~feeder_combout\ : std_logic;
SIGNAL \PROC|REGISTERS:6:RegisterBlocks|Q[10]~feeder_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Equal0~0_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Equal5~0_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Equal6~0_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Equal6~1_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector5~3_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Equal2~1_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Equal3~0_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector5~4_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector5~5_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector5~6_combout\ : std_logic;
SIGNAL \PROC|DOUT_Register|Q[10]~feeder_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector4~0_combout\ : std_logic;
SIGNAL \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector4~1_combout\ : std_logic;
SIGNAL \PROC|REGISTERS:6:RegisterBlocks|Q[11]~feeder_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector4~3_combout\ : std_logic;
SIGNAL \PROC|REGISTERS:3:RegisterBlocks|Q[11]~feeder_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector4~4_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector4~5_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector4~6_combout\ : std_logic;
SIGNAL \PROC|DOUT_Register|Q[11]~feeder_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector3~2_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|WideOr5~0_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Mbus~1_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Mbus~2_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector3~1_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector3~3_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector3~5_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector3~6_combout\ : std_logic;
SIGNAL \PROC|DOUT_Register|Q[12]~feeder_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector2~0_combout\ : std_logic;
SIGNAL \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector2~1_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector2~4_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector2~5_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector2~6_combout\ : std_logic;
SIGNAL \PROC|DOUT_Register|Q[13]~feeder_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector1~0_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Mux39~3_combout\ : std_logic;
SIGNAL \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~13_combout\ : std_logic;
SIGNAL \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~1_combout\ : std_logic;
SIGNAL \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~3_combout\ : std_logic;
SIGNAL \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~8_combout\ : std_logic;
SIGNAL \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~11_combout\ : std_logic;
SIGNAL \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~12_combout\ : std_logic;
SIGNAL \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \PROC|addSubRegister|Q[0]~17_cout\ : std_logic;
SIGNAL \PROC|addSubRegister|Q[0]~19\ : std_logic;
SIGNAL \PROC|addSubRegister|Q[1]~21\ : std_logic;
SIGNAL \PROC|addSubRegister|Q[2]~23\ : std_logic;
SIGNAL \PROC|addSubRegister|Q[3]~25\ : std_logic;
SIGNAL \PROC|addSubRegister|Q[4]~27\ : std_logic;
SIGNAL \PROC|addSubRegister|Q[5]~29\ : std_logic;
SIGNAL \PROC|addSubRegister|Q[6]~31\ : std_logic;
SIGNAL \PROC|addSubRegister|Q[7]~33\ : std_logic;
SIGNAL \PROC|addSubRegister|Q[8]~35\ : std_logic;
SIGNAL \PROC|addSubRegister|Q[9]~37\ : std_logic;
SIGNAL \PROC|addSubRegister|Q[10]~39\ : std_logic;
SIGNAL \PROC|addSubRegister|Q[11]~41\ : std_logic;
SIGNAL \PROC|addSubRegister|Q[12]~43\ : std_logic;
SIGNAL \PROC|addSubRegister|Q[13]~45\ : std_logic;
SIGNAL \PROC|addSubRegister|Q[14]~46_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector12~0_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector1~2_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector1~3_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector1~5_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector1~6_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector0~2_combout\ : std_logic;
SIGNAL \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector0~1_combout\ : std_logic;
SIGNAL \PROC|REGISTERS:5:RegisterBlocks|Q[15]~feeder_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector0~4_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector0~5_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector0~6_combout\ : std_logic;
SIGNAL \PROC|DOUT_Register|Q[15]~feeder_combout\ : std_logic;
SIGNAL \PROC|IntructionRegister|Q[2]~feeder_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|IRin~0_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector31~7_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector30~0_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector30~2_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Equal2~2_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector8~0_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector8~1_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector8~3_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector8~5_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector8~6_combout\ : std_logic;
SIGNAL \PROC|DOUT_Register|Q[7]~feeder_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector9~2_combout\ : std_logic;
SIGNAL \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector9~1_combout\ : std_logic;
SIGNAL \PROC|REGISTERS:3:RegisterBlocks|Q[6]~feeder_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector9~4_combout\ : std_logic;
SIGNAL \PROC|REGISTERS:0:RegisterBlocks|Q[6]~feeder_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector9~3_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector9~5_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector9~6_combout\ : std_logic;
SIGNAL \PROC|ADDR_Register|Q[6]~feeder_combout\ : std_logic;
SIGNAL \PROC|IntructionRegister|Q[3]~feeder_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector20~4_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector10~0_combout\ : std_logic;
SIGNAL \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector10~1_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector10~3_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector10~5_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector10~6_combout\ : std_logic;
SIGNAL \PROC|ADDR_Register|Q[5]~feeder_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector26~0_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector26~2_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Equal0~1_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Equal1~0_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector11~1_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector11~0_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector11~3_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector11~5_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector11~6_combout\ : std_logic;
SIGNAL \PROC|ADDR_Register|Q[4]~feeder_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|present_state~21_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector4~3_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector4~4_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|present_state~22_combout\ : std_logic;
SIGNAL \PROC|addSubRegister|Q[12]~42_combout\ : std_logic;
SIGNAL \PROC|addSubRegister|Q[0]~18_combout\ : std_logic;
SIGNAL \PROC|addSubRegister|Q[13]~44_combout\ : std_logic;
SIGNAL \PROC|Equal0~0_combout\ : std_logic;
SIGNAL \PROC|addSubRegister|Q[2]~22_combout\ : std_logic;
SIGNAL \PROC|addSubRegister|Q[1]~20_combout\ : std_logic;
SIGNAL \PROC|Equal0~1_combout\ : std_logic;
SIGNAL \PROC|addSubRegister|Q[5]~28_combout\ : std_logic;
SIGNAL \PROC|addSubRegister|Q[4]~26_combout\ : std_logic;
SIGNAL \PROC|addSubRegister|Q[7]~32_combout\ : std_logic;
SIGNAL \PROC|Equal0~2_combout\ : std_logic;
SIGNAL \PROC|Equal0~4_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|present_state~23_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|present_state.fetchInstruction~q\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|next_state.subtraction~q\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector8~0_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|next_state.subtraction~0_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|present_state~16_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|present_state.subtraction~q\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector13~0_combout\ : std_logic;
SIGNAL \PROC|addSubRegister|Q[3]~24_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector12~2_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector12~0_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector12~3_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector12~4_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector12~5_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector12~6_combout\ : std_logic;
SIGNAL \PROC|ADDR_Register|Q[3]~feeder_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector17~4_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector13~0_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector13~5_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector13~1_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector13~3_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector13~6_combout\ : std_logic;
SIGNAL \PROC|ADDR_Register|Q[2]~feeder_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector33~0_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector33~1_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector33~3_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Equal0~2_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector14~6_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector14~4_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector14~5_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector14~0_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector14~1_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector14~2_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector14~8_combout\ : std_logic;
SIGNAL \PROC|ADDR_Register|Q[1]~feeder_combout\ : std_logic;
SIGNAL \PROC|IntructionRegister|Q[7]~feeder_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Mux17~5_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|next_state.movenz~0_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|present_state~20_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|present_state.movenz~q\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector6~3_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|next_state.move~0_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|present_state~18_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|present_state.move~q\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector1~2_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector2~0_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector2~2_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Mux39~1_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector3~2_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|next_state~13_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|next_state.idle~q\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector3~3_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|present_state~19_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|present_state.idle~q\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|next_state.addition~q\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector7~0_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|next_state.addition~0_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|present_state~15_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|present_state.addition~q\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector0~0_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector0~3_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector6~0_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector6~1_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector9~0_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|next_state.load~0_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|present_state~13_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|present_state.load~q\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector24~1_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector14~0_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector32~1_combout\ : std_logic;
SIGNAL \PROC|ControlUnityBlock|Selector32~2_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Equal2~0_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Equal5~1_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector15~0_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector15~3_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector15~5_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector15~2_combout\ : std_logic;
SIGNAL \PROC|Multiplexar|Selector15~6_combout\ : std_logic;
SIGNAL \PROC|DOUT_Register|Q[0]~feeder_combout\ : std_logic;
SIGNAL \LEDREGISTER|Q[0]~feeder_combout\ : std_logic;
SIGNAL \PROC|ADDR_Register|Q[12]~feeder_combout\ : std_logic;
SIGNAL \PROC|ADDR_Register|Q[15]~feeder_combout\ : std_logic;
SIGNAL \PROC|ADDR_Register|Q[14]~feeder_combout\ : std_logic;
SIGNAL \wr_en~0_combout\ : std_logic;
SIGNAL \Qin~combout\ : std_logic;
SIGNAL \LEDREGISTER|Q[1]~feeder_combout\ : std_logic;
SIGNAL \LEDREGISTER|Q[3]~feeder_combout\ : std_logic;
SIGNAL \LEDREGISTER|Q[4]~feeder_combout\ : std_logic;
SIGNAL \LEDREGISTER|Q[5]~feeder_combout\ : std_logic;
SIGNAL \LEDREGISTER|Q[6]~feeder_combout\ : std_logic;
SIGNAL \LEDREGISTER|Q[10]~feeder_combout\ : std_logic;
SIGNAL \LEDREGISTER|Q[13]~feeder_combout\ : std_logic;
SIGNAL \LEDREGISTER|Q[14]~feeder_combout\ : std_logic;
SIGNAL \LEDREGISTER|Q[15]~feeder_combout\ : std_logic;
SIGNAL \PROC|REGISTERS:5:RegisterBlocks|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PROC|REGISTERS:4:RegisterBlocks|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PROC|REGISTERS:3:RegisterBlocks|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PROC|REGISTERS:2:RegisterBlocks|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PROC|REGISTERS:1:RegisterBlocks|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PROC|REGISTERS:0:RegisterBlocks|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PROC|addSubRegister|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PROC|AcumulatorRegister|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PROC|ADDR_Register|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PROC|DOUT_Register|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \LEDREGISTER|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \MEMORY|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PROC|REGISTERS:6:RegisterBlocks|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PROC|IntructionRegister|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \PROC|ControlUnityBlock|cycle\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_Run~input_o\ : std_logic;

BEGIN

ww_Clock <= Clock;
ww_Reset <= Reset;
ww_Run <= Run;
LEDs <= ww_LEDs;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & \PROC|DOUT_Register|Q\(15) & \PROC|DOUT_Register|Q\(14) & \PROC|DOUT_Register|Q\(13) & \PROC|DOUT_Register|Q\(12) & \PROC|DOUT_Register|Q\(11) & 
\PROC|DOUT_Register|Q\(10) & \PROC|DOUT_Register|Q\(9) & \PROC|DOUT_Register|Q\(8) & \PROC|DOUT_Register|Q\(7) & \PROC|DOUT_Register|Q\(6) & \PROC|DOUT_Register|Q\(5) & \PROC|DOUT_Register|Q\(4) & \PROC|DOUT_Register|Q\(3) & 
\PROC|DOUT_Register|Q\(2) & \PROC|DOUT_Register|Q\(1) & \PROC|DOUT_Register|Q\(0));

\MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\PROC|ADDR_Register|Q\(6) & \PROC|ADDR_Register|Q\(5) & \PROC|ADDR_Register|Q\(4) & \PROC|ADDR_Register|Q\(3) & \PROC|ADDR_Register|Q\(2) & \PROC|ADDR_Register|Q\(1)
& \PROC|ADDR_Register|Q\(0));

\MEMORY|altsyncram_component|auto_generated|q_a\(0) <= \MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\MEMORY|altsyncram_component|auto_generated|q_a\(1) <= \MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\MEMORY|altsyncram_component|auto_generated|q_a\(2) <= \MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\MEMORY|altsyncram_component|auto_generated|q_a\(3) <= \MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\MEMORY|altsyncram_component|auto_generated|q_a\(4) <= \MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\MEMORY|altsyncram_component|auto_generated|q_a\(5) <= \MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\MEMORY|altsyncram_component|auto_generated|q_a\(6) <= \MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\MEMORY|altsyncram_component|auto_generated|q_a\(7) <= \MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\MEMORY|altsyncram_component|auto_generated|q_a\(8) <= \MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\MEMORY|altsyncram_component|auto_generated|q_a\(9) <= \MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\MEMORY|altsyncram_component|auto_generated|q_a\(10) <= \MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\MEMORY|altsyncram_component|auto_generated|q_a\(11) <= \MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\MEMORY|altsyncram_component|auto_generated|q_a\(12) <= \MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\MEMORY|altsyncram_component|auto_generated|q_a\(13) <= \MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\MEMORY|altsyncram_component|auto_generated|q_a\(14) <= \MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\MEMORY|altsyncram_component|auto_generated|q_a\(15) <= \MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\Reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset~input_o\);

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);
\ALT_INV_Clock~inputclkctrl_outclk\ <= NOT \Clock~inputclkctrl_outclk\;
\ALT_INV_Run~input_o\ <= NOT \Run~input_o\;

-- Location: M9K_X28_Y18_N0
\MEMORY|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"0000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F00000000000000000000000000000000000023000A40021000001408000DE801C4001780000203000000042800",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "inst_mem.mif",
	init_file_layout => "port_a",
	logical_ram_name => "RAM:MEMORY|altsyncram:altsyncram_component|altsyncram_ish1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 7,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \wr_en~combout\,
	portare => VCC,
	clk0 => \Clock~inputclkctrl_outclk\,
	portadatain => \MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \MEMORY|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: FF_X22_Y20_N17
\PROC|addSubRegister|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|addSubRegister|Q[15]~48_combout\,
	ena => \PROC|ControlUnityBlock|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|addSubRegister|Q\(15));

-- Location: FF_X21_Y21_N7
\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \PROC|Multiplexar|Selector12~6_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \PROC|ControlUnityBlock|Selector15~2_combout\,
	ena => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: FF_X22_Y21_N31
\PROC|addSubRegister|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|addSubRegister|Q[6]~30_combout\,
	ena => \PROC|ControlUnityBlock|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|addSubRegister|Q\(6));

-- Location: FF_X22_Y20_N3
\PROC|addSubRegister|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|addSubRegister|Q[8]~34_combout\,
	ena => \PROC|ControlUnityBlock|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|addSubRegister|Q\(8));

-- Location: FF_X22_Y20_N5
\PROC|addSubRegister|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|addSubRegister|Q[9]~36_combout\,
	ena => \PROC|ControlUnityBlock|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|addSubRegister|Q\(9));

-- Location: FF_X22_Y20_N7
\PROC|addSubRegister|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|addSubRegister|Q[10]~38_combout\,
	ena => \PROC|ControlUnityBlock|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|addSubRegister|Q\(10));

-- Location: FF_X22_Y20_N9
\PROC|addSubRegister|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|addSubRegister|Q[11]~40_combout\,
	ena => \PROC|ControlUnityBlock|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|addSubRegister|Q\(11));

-- Location: FF_X25_Y20_N9
\PROC|ControlUnityBlock|next_state.move\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \PROC|ControlUnityBlock|next_state.move~0_combout\,
	asdata => \PROC|ControlUnityBlock|present_state.move~q\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \ALT_INV_Run~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ControlUnityBlock|next_state.move~q\);

-- Location: FF_X26_Y18_N15
\PROC|ControlUnityBlock|next_state.movenz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \PROC|ControlUnityBlock|next_state.movenz~0_combout\,
	asdata => \PROC|ControlUnityBlock|present_state.movenz~q\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \ALT_INV_Run~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ControlUnityBlock|next_state.movenz~q\);

-- Location: LCCOMB_X21_Y21_N6
\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & 
-- (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & 
-- ((\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # 
-- (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X22_Y21_N30
\PROC|addSubRegister|Q[6]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|addSubRegister|Q[6]~30_combout\ = (\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~7_combout\ & ((\PROC|AcumulatorRegister|Q\(6) & (!\PROC|addSubRegister|Q[5]~29\)) # (!\PROC|AcumulatorRegister|Q\(6) & ((\PROC|addSubRegister|Q[5]~29\) # 
-- (GND))))) # (!\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~7_combout\ & ((\PROC|AcumulatorRegister|Q\(6) & (\PROC|addSubRegister|Q[5]~29\ & VCC)) # (!\PROC|AcumulatorRegister|Q\(6) & (!\PROC|addSubRegister|Q[5]~29\))))
-- \PROC|addSubRegister|Q[6]~31\ = CARRY((\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~7_combout\ & ((!\PROC|addSubRegister|Q[5]~29\) # (!\PROC|AcumulatorRegister|Q\(6)))) # (!\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~7_combout\ & 
-- (!\PROC|AcumulatorRegister|Q\(6) & !\PROC|addSubRegister|Q[5]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~7_combout\,
	datab => \PROC|AcumulatorRegister|Q\(6),
	datad => VCC,
	cin => \PROC|addSubRegister|Q[5]~29\,
	combout => \PROC|addSubRegister|Q[6]~30_combout\,
	cout => \PROC|addSubRegister|Q[6]~31\);

-- Location: LCCOMB_X22_Y20_N2
\PROC|addSubRegister|Q[8]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|addSubRegister|Q[8]~34_combout\ = (\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~5_combout\ & ((\PROC|AcumulatorRegister|Q\(8) & (!\PROC|addSubRegister|Q[7]~33\)) # (!\PROC|AcumulatorRegister|Q\(8) & ((\PROC|addSubRegister|Q[7]~33\) # 
-- (GND))))) # (!\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~5_combout\ & ((\PROC|AcumulatorRegister|Q\(8) & (\PROC|addSubRegister|Q[7]~33\ & VCC)) # (!\PROC|AcumulatorRegister|Q\(8) & (!\PROC|addSubRegister|Q[7]~33\))))
-- \PROC|addSubRegister|Q[8]~35\ = CARRY((\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~5_combout\ & ((!\PROC|addSubRegister|Q[7]~33\) # (!\PROC|AcumulatorRegister|Q\(8)))) # (!\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~5_combout\ & 
-- (!\PROC|AcumulatorRegister|Q\(8) & !\PROC|addSubRegister|Q[7]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~5_combout\,
	datab => \PROC|AcumulatorRegister|Q\(8),
	datad => VCC,
	cin => \PROC|addSubRegister|Q[7]~33\,
	combout => \PROC|addSubRegister|Q[8]~34_combout\,
	cout => \PROC|addSubRegister|Q[8]~35\);

-- Location: LCCOMB_X22_Y20_N4
\PROC|addSubRegister|Q[9]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|addSubRegister|Q[9]~36_combout\ = ((\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~4_combout\ $ (\PROC|AcumulatorRegister|Q\(9) $ (\PROC|addSubRegister|Q[8]~35\)))) # (GND)
-- \PROC|addSubRegister|Q[9]~37\ = CARRY((\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~4_combout\ & (\PROC|AcumulatorRegister|Q\(9) & !\PROC|addSubRegister|Q[8]~35\)) # (!\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~4_combout\ & 
-- ((\PROC|AcumulatorRegister|Q\(9)) # (!\PROC|addSubRegister|Q[8]~35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~4_combout\,
	datab => \PROC|AcumulatorRegister|Q\(9),
	datad => VCC,
	cin => \PROC|addSubRegister|Q[8]~35\,
	combout => \PROC|addSubRegister|Q[9]~36_combout\,
	cout => \PROC|addSubRegister|Q[9]~37\);

-- Location: LCCOMB_X22_Y20_N6
\PROC|addSubRegister|Q[10]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|addSubRegister|Q[10]~38_combout\ = (\PROC|AcumulatorRegister|Q\(10) & ((\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~3_combout\ & (!\PROC|addSubRegister|Q[9]~37\)) # (!\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~3_combout\ & 
-- (\PROC|addSubRegister|Q[9]~37\ & VCC)))) # (!\PROC|AcumulatorRegister|Q\(10) & ((\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~3_combout\ & ((\PROC|addSubRegister|Q[9]~37\) # (GND))) # 
-- (!\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~3_combout\ & (!\PROC|addSubRegister|Q[9]~37\))))
-- \PROC|addSubRegister|Q[10]~39\ = CARRY((\PROC|AcumulatorRegister|Q\(10) & (\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~3_combout\ & !\PROC|addSubRegister|Q[9]~37\)) # (!\PROC|AcumulatorRegister|Q\(10) & 
-- ((\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~3_combout\) # (!\PROC|addSubRegister|Q[9]~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AcumulatorRegister|Q\(10),
	datab => \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~3_combout\,
	datad => VCC,
	cin => \PROC|addSubRegister|Q[9]~37\,
	combout => \PROC|addSubRegister|Q[10]~38_combout\,
	cout => \PROC|addSubRegister|Q[10]~39\);

-- Location: LCCOMB_X22_Y20_N8
\PROC|addSubRegister|Q[11]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|addSubRegister|Q[11]~40_combout\ = ((\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~2_combout\ $ (\PROC|AcumulatorRegister|Q\(11) $ (\PROC|addSubRegister|Q[10]~39\)))) # (GND)
-- \PROC|addSubRegister|Q[11]~41\ = CARRY((\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & (\PROC|AcumulatorRegister|Q\(11) & !\PROC|addSubRegister|Q[10]~39\)) # (!\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~2_combout\ & 
-- ((\PROC|AcumulatorRegister|Q\(11)) # (!\PROC|addSubRegister|Q[10]~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~2_combout\,
	datab => \PROC|AcumulatorRegister|Q\(11),
	datad => VCC,
	cin => \PROC|addSubRegister|Q[10]~39\,
	combout => \PROC|addSubRegister|Q[11]~40_combout\,
	cout => \PROC|addSubRegister|Q[11]~41\);

-- Location: LCCOMB_X22_Y20_N14
\PROC|addSubRegister|Q[14]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|addSubRegister|Q[14]~46_combout\ = (\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~14_combout\ & ((\PROC|AcumulatorRegister|Q\(14) & (!\PROC|addSubRegister|Q[13]~45\)) # (!\PROC|AcumulatorRegister|Q\(14) & ((\PROC|addSubRegister|Q[13]~45\) 
-- # (GND))))) # (!\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~14_combout\ & ((\PROC|AcumulatorRegister|Q\(14) & (\PROC|addSubRegister|Q[13]~45\ & VCC)) # (!\PROC|AcumulatorRegister|Q\(14) & (!\PROC|addSubRegister|Q[13]~45\))))
-- \PROC|addSubRegister|Q[14]~47\ = CARRY((\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~14_combout\ & ((!\PROC|addSubRegister|Q[13]~45\) # (!\PROC|AcumulatorRegister|Q\(14)))) # 
-- (!\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~14_combout\ & (!\PROC|AcumulatorRegister|Q\(14) & !\PROC|addSubRegister|Q[13]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~14_combout\,
	datab => \PROC|AcumulatorRegister|Q\(14),
	datad => VCC,
	cin => \PROC|addSubRegister|Q[13]~45\,
	combout => \PROC|addSubRegister|Q[14]~46_combout\,
	cout => \PROC|addSubRegister|Q[14]~47\);

-- Location: LCCOMB_X22_Y20_N16
\PROC|addSubRegister|Q[15]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|addSubRegister|Q[15]~48_combout\ = \PROC|AcumulatorRegister|Q\(15) $ (\PROC|addSubRegister|Q[14]~47\ $ (\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AcumulatorRegister|Q\(15),
	datad => \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~15_combout\,
	cin => \PROC|addSubRegister|Q[14]~47\,
	combout => \PROC|addSubRegister|Q[15]~48_combout\);

-- Location: FF_X24_Y18_N21
\PROC|W\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|W~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|W~q\);

-- Location: LCCOMB_X24_Y21_N12
\PROC|ControlUnityBlock|Selector17~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector17~2_combout\ = (\PROC|IntructionRegister|Q\(3) & !\PROC|IntructionRegister|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IntructionRegister|Q\(3),
	datad => \PROC|IntructionRegister|Q\(4),
	combout => \PROC|ControlUnityBlock|Selector17~2_combout\);

-- Location: LCCOMB_X23_Y19_N30
\PROC|ControlUnityBlock|Selector28~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector28~2_combout\ = (\PROC|ControlUnityBlock|Selector17~2_combout\ & (\PROC|IntructionRegister|Q\(5) & ((\PROC|ControlUnityBlock|Selector31~1_combout\) # (\PROC|ControlUnityBlock|Selector31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector17~2_combout\,
	datab => \PROC|IntructionRegister|Q\(5),
	datac => \PROC|ControlUnityBlock|Selector31~1_combout\,
	datad => \PROC|ControlUnityBlock|Selector31~0_combout\,
	combout => \PROC|ControlUnityBlock|Selector28~2_combout\);

-- Location: LCCOMB_X26_Y19_N22
\PROC|ControlUnityBlock|Selector31~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector31~3_combout\ = (\PROC|ControlUnityBlock|cycle\(2)) # ((\PROC|ControlUnityBlock|cycle\(1) & !\PROC|ControlUnityBlock|present_state.storage~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|cycle\(1),
	datac => \PROC|ControlUnityBlock|cycle\(2),
	datad => \PROC|ControlUnityBlock|present_state.storage~q\,
	combout => \PROC|ControlUnityBlock|Selector31~3_combout\);

-- Location: LCCOMB_X24_Y18_N0
\PROC|ControlUnityBlock|Selector27~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector27~0_combout\ = (\PROC|IntructionRegister|Q\(1) & \PROC|IntructionRegister|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|IntructionRegister|Q\(1),
	datad => \PROC|IntructionRegister|Q\(2),
	combout => \PROC|ControlUnityBlock|Selector27~0_combout\);

-- Location: LCCOMB_X25_Y19_N10
\PROC|ControlUnityBlock|Selector27~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector27~1_combout\ = (\PROC|ControlUnityBlock|Selector27~0_combout\ & (!\PROC|ControlUnityBlock|Selector31~1_combout\ & (!\PROC|IntructionRegister|Q\(0) & !\PROC|ControlUnityBlock|Selector31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector27~0_combout\,
	datab => \PROC|ControlUnityBlock|Selector31~1_combout\,
	datac => \PROC|IntructionRegister|Q\(0),
	datad => \PROC|ControlUnityBlock|Selector31~0_combout\,
	combout => \PROC|ControlUnityBlock|Selector27~1_combout\);

-- Location: LCCOMB_X25_Y21_N24
\PROC|ControlUnityBlock|Selector20~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector20~2_combout\ = (\PROC|IntructionRegister|Q\(4) & !\PROC|IntructionRegister|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|IntructionRegister|Q\(4),
	datad => \PROC|IntructionRegister|Q\(3),
	combout => \PROC|ControlUnityBlock|Selector20~2_combout\);

-- Location: LCCOMB_X25_Y19_N26
\PROC|ControlUnityBlock|Selector31~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector31~8_combout\ = (!\PROC|IntructionRegister|Q\(0) & (\PROC|ControlUnityBlock|Selector31~7_combout\ & (!\PROC|ControlUnityBlock|Selector31~1_combout\ & !\PROC|ControlUnityBlock|Selector31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IntructionRegister|Q\(0),
	datab => \PROC|ControlUnityBlock|Selector31~7_combout\,
	datac => \PROC|ControlUnityBlock|Selector31~1_combout\,
	datad => \PROC|ControlUnityBlock|Selector31~0_combout\,
	combout => \PROC|ControlUnityBlock|Selector31~8_combout\);

-- Location: LCCOMB_X25_Y19_N12
\PROC|ControlUnityBlock|Selector31~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector31~9_combout\ = (\PROC|ControlUnityBlock|Selector20~2_combout\ & (!\PROC|IntructionRegister|Q\(5) & ((\PROC|ControlUnityBlock|Selector31~1_combout\) # (\PROC|ControlUnityBlock|Selector31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector20~2_combout\,
	datab => \PROC|IntructionRegister|Q\(5),
	datac => \PROC|ControlUnityBlock|Selector31~1_combout\,
	datad => \PROC|ControlUnityBlock|Selector31~0_combout\,
	combout => \PROC|ControlUnityBlock|Selector31~9_combout\);

-- Location: LCCOMB_X25_Y19_N30
\PROC|ControlUnityBlock|Selector31~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector31~10_combout\ = (!\PROC|ControlUnityBlock|Selector31~6_combout\ & (!\PROC|ControlUnityBlock|Selector31~5_combout\ & ((\PROC|ControlUnityBlock|Selector31~9_combout\) # (\PROC|ControlUnityBlock|Selector31~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector31~9_combout\,
	datab => \PROC|ControlUnityBlock|Selector31~6_combout\,
	datac => \PROC|ControlUnityBlock|Selector31~8_combout\,
	datad => \PROC|ControlUnityBlock|Selector31~5_combout\,
	combout => \PROC|ControlUnityBlock|Selector31~10_combout\);

-- Location: LCCOMB_X25_Y21_N14
\PROC|ControlUnityBlock|Selector19~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector19~3_combout\ = (\PROC|IntructionRegister|Q\(4) & \PROC|IntructionRegister|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|IntructionRegister|Q\(4),
	datad => \PROC|IntructionRegister|Q\(3),
	combout => \PROC|ControlUnityBlock|Selector19~3_combout\);

-- Location: LCCOMB_X23_Y19_N26
\PROC|ControlUnityBlock|Selector33~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector33~2_combout\ = (!\PROC|IntructionRegister|Q\(5) & (\PROC|ControlUnityBlock|Selector18~2_combout\ & ((\PROC|ControlUnityBlock|Selector31~1_combout\) # (\PROC|ControlUnityBlock|Selector31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IntructionRegister|Q\(5),
	datab => \PROC|ControlUnityBlock|Selector18~2_combout\,
	datac => \PROC|ControlUnityBlock|Selector31~1_combout\,
	datad => \PROC|ControlUnityBlock|Selector31~0_combout\,
	combout => \PROC|ControlUnityBlock|Selector33~2_combout\);

-- Location: LCCOMB_X23_Y19_N10
\PROC|ControlUnityBlock|Selector32~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector32~0_combout\ = (\PROC|IntructionRegister|Q\(0) & (\PROC|ControlUnityBlock|Selector33~0_combout\ & (!\PROC|ControlUnityBlock|Selector31~1_combout\ & !\PROC|ControlUnityBlock|Selector31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IntructionRegister|Q\(0),
	datab => \PROC|ControlUnityBlock|Selector33~0_combout\,
	datac => \PROC|ControlUnityBlock|Selector31~1_combout\,
	datad => \PROC|ControlUnityBlock|Selector31~0_combout\,
	combout => \PROC|ControlUnityBlock|Selector32~0_combout\);

-- Location: FF_X22_Y21_N1
\PROC|REGISTERS:5:RegisterBlocks|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|Multiplexar|Selector15~6_combout\,
	ena => \PROC|ControlUnityBlock|Selector17~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:5:RegisterBlocks|Q\(0));

-- Location: FF_X20_Y21_N21
\PROC|REGISTERS:6:RegisterBlocks|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|REGISTERS:6:RegisterBlocks|Q[0]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:6:RegisterBlocks|Q\(0));

-- Location: FF_X24_Y21_N5
\PROC|REGISTERS:3:RegisterBlocks|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector15~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector19~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:3:RegisterBlocks|Q\(0));

-- Location: LCCOMB_X24_Y21_N4
\PROC|Multiplexar|Selector15~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector15~1_combout\ = (\PROC|Multiplexar|Equal3~0_combout\ & ((\PROC|REGISTERS:3:RegisterBlocks|Q\(0)) # ((\PROC|REGISTERS:6:RegisterBlocks|Q\(0) & \PROC|Multiplexar|Equal6~1_combout\)))) # (!\PROC|Multiplexar|Equal3~0_combout\ & 
-- (\PROC|REGISTERS:6:RegisterBlocks|Q\(0) & ((\PROC|Multiplexar|Equal6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Equal3~0_combout\,
	datab => \PROC|REGISTERS:6:RegisterBlocks|Q\(0),
	datac => \PROC|REGISTERS:3:RegisterBlocks|Q\(0),
	datad => \PROC|Multiplexar|Equal6~1_combout\,
	combout => \PROC|Multiplexar|Selector15~1_combout\);

-- Location: FF_X23_Y21_N9
\PROC|REGISTERS:1:RegisterBlocks|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|REGISTERS:1:RegisterBlocks|Q[0]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:1:RegisterBlocks|Q\(0));

-- Location: LCCOMB_X24_Y19_N2
\PROC|Multiplexar|Selector15~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector15~4_combout\ = (\PROC|addSubRegister|Q\(0) & ((\PROC|Multiplexar|Equal8~0_combout\) # ((\MEMORY|altsyncram_component|auto_generated|q_a\(0) & \PROC|Multiplexar|Equal9~0_combout\)))) # (!\PROC|addSubRegister|Q\(0) & 
-- (\MEMORY|altsyncram_component|auto_generated|q_a\(0) & ((\PROC|Multiplexar|Equal9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|addSubRegister|Q\(0),
	datab => \MEMORY|altsyncram_component|auto_generated|q_a\(0),
	datac => \PROC|Multiplexar|Equal8~0_combout\,
	datad => \PROC|Multiplexar|Equal9~0_combout\,
	combout => \PROC|Multiplexar|Selector15~4_combout\);

-- Location: FF_X24_Y21_N21
\PROC|REGISTERS:2:RegisterBlocks|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector3~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector20~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:2:RegisterBlocks|Q\(12));

-- Location: LCCOMB_X24_Y21_N20
\PROC|Multiplexar|Selector3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector3~0_combout\ = (\PROC|Multiplexar|Equal2~2_combout\ & \PROC|REGISTERS:2:RegisterBlocks|Q\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|Multiplexar|Equal2~2_combout\,
	datac => \PROC|REGISTERS:2:RegisterBlocks|Q\(12),
	combout => \PROC|Multiplexar|Selector3~0_combout\);

-- Location: FF_X21_Y22_N17
\PROC|REGISTERS:6:RegisterBlocks|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|REGISTERS:6:RegisterBlocks|Q[12]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:6:RegisterBlocks|Q\(12));

-- Location: FF_X24_Y21_N7
\PROC|REGISTERS:3:RegisterBlocks|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector3~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector19~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:3:RegisterBlocks|Q\(12));

-- Location: FF_X24_Y22_N21
\PROC|REGISTERS:5:RegisterBlocks|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector3~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector17~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:5:RegisterBlocks|Q\(12));

-- Location: LCCOMB_X24_Y22_N20
\PROC|Multiplexar|Selector3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector3~4_combout\ = (\PROC|Multiplexar|Equal3~0_combout\ & ((\PROC|REGISTERS:3:RegisterBlocks|Q\(12)) # ((\PROC|REGISTERS:5:RegisterBlocks|Q\(12) & \PROC|Multiplexar|Equal5~1_combout\)))) # (!\PROC|Multiplexar|Equal3~0_combout\ & 
-- (((\PROC|REGISTERS:5:RegisterBlocks|Q\(12) & \PROC|Multiplexar|Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Equal3~0_combout\,
	datab => \PROC|REGISTERS:3:RegisterBlocks|Q\(12),
	datac => \PROC|REGISTERS:5:RegisterBlocks|Q\(12),
	datad => \PROC|Multiplexar|Equal5~1_combout\,
	combout => \PROC|Multiplexar|Selector3~4_combout\);

-- Location: LCCOMB_X25_Y18_N6
\PROC|ControlUnityBlock|W_D~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|W_D~0_combout\ = (\PROC|ControlUnityBlock|cycle\(1) & (\PROC|ControlUnityBlock|present_state.storage~q\ & (!\PROC|ControlUnityBlock|cycle\(0) & !\PROC|ControlUnityBlock|cycle\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|cycle\(1),
	datab => \PROC|ControlUnityBlock|present_state.storage~q\,
	datac => \PROC|ControlUnityBlock|cycle\(0),
	datad => \PROC|ControlUnityBlock|cycle\(2),
	combout => \PROC|ControlUnityBlock|W_D~0_combout\);

-- Location: LCCOMB_X21_Y20_N28
\PROC|Multiplexar|Selector2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector2~2_combout\ = (\PROC|addSubRegister|Q\(13) & ((\PROC|Multiplexar|Equal8~0_combout\) # ((\MEMORY|altsyncram_component|auto_generated|q_a\(13) & \PROC|Multiplexar|Equal9~0_combout\)))) # (!\PROC|addSubRegister|Q\(13) & 
-- (\MEMORY|altsyncram_component|auto_generated|q_a\(13) & ((\PROC|Multiplexar|Equal9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|addSubRegister|Q\(13),
	datab => \MEMORY|altsyncram_component|auto_generated|q_a\(13),
	datac => \PROC|Multiplexar|Equal8~0_combout\,
	datad => \PROC|Multiplexar|Equal9~0_combout\,
	combout => \PROC|Multiplexar|Selector2~2_combout\);

-- Location: FF_X23_Y22_N23
\PROC|REGISTERS:0:RegisterBlocks|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector2~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:0:RegisterBlocks|Q\(13));

-- Location: FF_X21_Y22_N23
\PROC|REGISTERS:6:RegisterBlocks|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|REGISTERS:6:RegisterBlocks|Q[13]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:6:RegisterBlocks|Q\(13));

-- Location: LCCOMB_X23_Y22_N22
\PROC|Multiplexar|Selector2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector2~3_combout\ = (\PROC|REGISTERS:6:RegisterBlocks|Q\(13) & ((\PROC|Multiplexar|Equal6~1_combout\) # ((\PROC|Multiplexar|Equal0~2_combout\ & \PROC|REGISTERS:0:RegisterBlocks|Q\(13))))) # (!\PROC|REGISTERS:6:RegisterBlocks|Q\(13) & 
-- (\PROC|Multiplexar|Equal0~2_combout\ & (\PROC|REGISTERS:0:RegisterBlocks|Q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|REGISTERS:6:RegisterBlocks|Q\(13),
	datab => \PROC|Multiplexar|Equal0~2_combout\,
	datac => \PROC|REGISTERS:0:RegisterBlocks|Q\(13),
	datad => \PROC|Multiplexar|Equal6~1_combout\,
	combout => \PROC|Multiplexar|Selector2~3_combout\);

-- Location: FF_X24_Y22_N11
\PROC|REGISTERS:3:RegisterBlocks|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|REGISTERS:3:RegisterBlocks|Q[13]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector19~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:3:RegisterBlocks|Q\(13));

-- Location: FF_X23_Y21_N13
\PROC|REGISTERS:1:RegisterBlocks|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector1~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:1:RegisterBlocks|Q\(14));

-- Location: LCCOMB_X23_Y21_N12
\PROC|Multiplexar|Selector1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector1~1_combout\ = (\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & ((\PROC|Multiplexar|Mbus~2_combout\) # ((\PROC|Multiplexar|Equal1~0_combout\ & \PROC|REGISTERS:1:RegisterBlocks|Q\(14))))) # 
-- (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & (\PROC|Multiplexar|Equal1~0_combout\ & (\PROC|REGISTERS:1:RegisterBlocks|Q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14),
	datab => \PROC|Multiplexar|Equal1~0_combout\,
	datac => \PROC|REGISTERS:1:RegisterBlocks|Q\(14),
	datad => \PROC|Multiplexar|Mbus~2_combout\,
	combout => \PROC|Multiplexar|Selector1~1_combout\);

-- Location: FF_X21_Y22_N9
\PROC|REGISTERS:6:RegisterBlocks|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|REGISTERS:6:RegisterBlocks|Q[14]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:6:RegisterBlocks|Q\(14));

-- Location: FF_X22_Y19_N29
\PROC|REGISTERS:3:RegisterBlocks|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector1~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector19~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:3:RegisterBlocks|Q\(14));

-- Location: FF_X22_Y19_N27
\PROC|REGISTERS:5:RegisterBlocks|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|REGISTERS:5:RegisterBlocks|Q[14]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector17~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:5:RegisterBlocks|Q\(14));

-- Location: LCCOMB_X22_Y19_N28
\PROC|Multiplexar|Selector1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector1~4_combout\ = (\PROC|Multiplexar|Equal3~0_combout\ & ((\PROC|REGISTERS:3:RegisterBlocks|Q\(14)) # ((\PROC|REGISTERS:5:RegisterBlocks|Q\(14) & \PROC|Multiplexar|Equal5~1_combout\)))) # (!\PROC|Multiplexar|Equal3~0_combout\ & 
-- (\PROC|REGISTERS:5:RegisterBlocks|Q\(14) & ((\PROC|Multiplexar|Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Equal3~0_combout\,
	datab => \PROC|REGISTERS:5:RegisterBlocks|Q\(14),
	datac => \PROC|REGISTERS:3:RegisterBlocks|Q\(14),
	datad => \PROC|Multiplexar|Equal5~1_combout\,
	combout => \PROC|Multiplexar|Selector1~4_combout\);

-- Location: FF_X21_Y19_N25
\PROC|REGISTERS:2:RegisterBlocks|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector0~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector20~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:2:RegisterBlocks|Q\(15));

-- Location: LCCOMB_X21_Y19_N24
\PROC|Multiplexar|Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector0~0_combout\ = (\PROC|REGISTERS:2:RegisterBlocks|Q\(15) & \PROC|Multiplexar|Equal2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|REGISTERS:2:RegisterBlocks|Q\(15),
	datad => \PROC|Multiplexar|Equal2~2_combout\,
	combout => \PROC|Multiplexar|Selector0~0_combout\);

-- Location: FF_X23_Y22_N27
\PROC|REGISTERS:0:RegisterBlocks|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector0~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:0:RegisterBlocks|Q\(15));

-- Location: FF_X21_Y22_N19
\PROC|REGISTERS:6:RegisterBlocks|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|REGISTERS:6:RegisterBlocks|Q[15]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:6:RegisterBlocks|Q\(15));

-- Location: LCCOMB_X23_Y22_N26
\PROC|Multiplexar|Selector0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector0~3_combout\ = (\PROC|REGISTERS:6:RegisterBlocks|Q\(15) & ((\PROC|Multiplexar|Equal6~1_combout\) # ((\PROC|Multiplexar|Equal0~2_combout\ & \PROC|REGISTERS:0:RegisterBlocks|Q\(15))))) # (!\PROC|REGISTERS:6:RegisterBlocks|Q\(15) & 
-- (\PROC|Multiplexar|Equal0~2_combout\ & (\PROC|REGISTERS:0:RegisterBlocks|Q\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|REGISTERS:6:RegisterBlocks|Q\(15),
	datab => \PROC|Multiplexar|Equal0~2_combout\,
	datac => \PROC|REGISTERS:0:RegisterBlocks|Q\(15),
	datad => \PROC|Multiplexar|Equal6~1_combout\,
	combout => \PROC|Multiplexar|Selector0~3_combout\);

-- Location: FF_X22_Y21_N11
\PROC|REGISTERS:5:RegisterBlocks|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|Multiplexar|Selector14~8_combout\,
	ena => \PROC|ControlUnityBlock|Selector17~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:5:RegisterBlocks|Q\(1));

-- Location: LCCOMB_X23_Y20_N28
\PROC|Multiplexar|Selector14~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector14~3_combout\ = (\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (\PROC|Multiplexar|Equal2~0_combout\ & (\PROC|Multiplexar|Mbus~1_combout\ & \PROC|Multiplexar|Mbus~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datab => \PROC|Multiplexar|Equal2~0_combout\,
	datac => \PROC|Multiplexar|Mbus~1_combout\,
	datad => \PROC|Multiplexar|Mbus~0_combout\,
	combout => \PROC|Multiplexar|Selector14~3_combout\);

-- Location: FF_X21_Y22_N29
\PROC|REGISTERS:6:RegisterBlocks|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|REGISTERS:6:RegisterBlocks|Q[1]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:6:RegisterBlocks|Q\(1));

-- Location: FF_X24_Y21_N19
\PROC|REGISTERS:2:RegisterBlocks|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector14~8_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector20~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:2:RegisterBlocks|Q\(1));

-- Location: FF_X24_Y20_N1
\PROC|REGISTERS:4:RegisterBlocks|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector14~8_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector18~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:4:RegisterBlocks|Q\(1));

-- Location: LCCOMB_X24_Y20_N0
\PROC|Multiplexar|Selector14~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector14~7_combout\ = (\PROC|REGISTERS:2:RegisterBlocks|Q\(1) & ((\PROC|Multiplexar|Equal2~2_combout\) # ((\PROC|REGISTERS:4:RegisterBlocks|Q\(1) & \PROC|Multiplexar|Equal4~1_combout\)))) # (!\PROC|REGISTERS:2:RegisterBlocks|Q\(1) & 
-- (((\PROC|REGISTERS:4:RegisterBlocks|Q\(1) & \PROC|Multiplexar|Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|REGISTERS:2:RegisterBlocks|Q\(1),
	datab => \PROC|Multiplexar|Equal2~2_combout\,
	datac => \PROC|REGISTERS:4:RegisterBlocks|Q\(1),
	datad => \PROC|Multiplexar|Equal4~1_combout\,
	combout => \PROC|Multiplexar|Selector14~7_combout\);

-- Location: LCCOMB_X24_Y19_N10
\PROC|Multiplexar|Selector13~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector13~2_combout\ = (\PROC|addSubRegister|Q\(2) & ((\PROC|Multiplexar|Equal8~0_combout\) # ((\MEMORY|altsyncram_component|auto_generated|q_a\(2) & \PROC|Multiplexar|Equal9~0_combout\)))) # (!\PROC|addSubRegister|Q\(2) & 
-- (\MEMORY|altsyncram_component|auto_generated|q_a\(2) & ((\PROC|Multiplexar|Equal9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|addSubRegister|Q\(2),
	datab => \MEMORY|altsyncram_component|auto_generated|q_a\(2),
	datac => \PROC|Multiplexar|Equal8~0_combout\,
	datad => \PROC|Multiplexar|Equal9~0_combout\,
	combout => \PROC|Multiplexar|Selector13~2_combout\);

-- Location: FF_X24_Y20_N7
\PROC|REGISTERS:0:RegisterBlocks|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector13~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:0:RegisterBlocks|Q\(2));

-- Location: FF_X21_Y22_N27
\PROC|REGISTERS:6:RegisterBlocks|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|REGISTERS:6:RegisterBlocks|Q[2]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:6:RegisterBlocks|Q\(2));

-- Location: LCCOMB_X24_Y20_N6
\PROC|Multiplexar|Selector13~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector13~4_combout\ = (\PROC|REGISTERS:6:RegisterBlocks|Q\(2) & ((\PROC|Multiplexar|Equal6~1_combout\) # ((\PROC|REGISTERS:0:RegisterBlocks|Q\(2) & \PROC|Multiplexar|Equal0~2_combout\)))) # (!\PROC|REGISTERS:6:RegisterBlocks|Q\(2) & 
-- (((\PROC|REGISTERS:0:RegisterBlocks|Q\(2) & \PROC|Multiplexar|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|REGISTERS:6:RegisterBlocks|Q\(2),
	datab => \PROC|Multiplexar|Equal6~1_combout\,
	datac => \PROC|REGISTERS:0:RegisterBlocks|Q\(2),
	datad => \PROC|Multiplexar|Equal0~2_combout\,
	combout => \PROC|Multiplexar|Selector13~4_combout\);

-- Location: FF_X24_Y21_N25
\PROC|REGISTERS:2:RegisterBlocks|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector13~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector20~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:2:RegisterBlocks|Q\(2));

-- Location: FF_X23_Y21_N7
\PROC|REGISTERS:1:RegisterBlocks|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector12~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:1:RegisterBlocks|Q\(3));

-- Location: LCCOMB_X23_Y21_N6
\PROC|Multiplexar|Selector12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector12~1_combout\ = (\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\PROC|Multiplexar|Mbus~2_combout\) # ((\PROC|Multiplexar|Equal1~0_combout\ & \PROC|REGISTERS:1:RegisterBlocks|Q\(3))))) # 
-- (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (\PROC|Multiplexar|Equal1~0_combout\ & (\PROC|REGISTERS:1:RegisterBlocks|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \PROC|Multiplexar|Equal1~0_combout\,
	datac => \PROC|REGISTERS:1:RegisterBlocks|Q\(3),
	datad => \PROC|Multiplexar|Mbus~2_combout\,
	combout => \PROC|Multiplexar|Selector12~1_combout\);

-- Location: FF_X25_Y21_N17
\PROC|REGISTERS:0:RegisterBlocks|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|REGISTERS:0:RegisterBlocks|Q[3]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:0:RegisterBlocks|Q\(3));

-- Location: LCCOMB_X23_Y21_N10
\PROC|Multiplexar|Selector11~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector11~2_combout\ = (\PROC|addSubRegister|Q\(4) & ((\PROC|Multiplexar|Equal8~0_combout\) # ((\MEMORY|altsyncram_component|auto_generated|q_a\(4) & \PROC|Multiplexar|Equal9~0_combout\)))) # (!\PROC|addSubRegister|Q\(4) & 
-- (\MEMORY|altsyncram_component|auto_generated|q_a\(4) & (\PROC|Multiplexar|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|addSubRegister|Q\(4),
	datab => \MEMORY|altsyncram_component|auto_generated|q_a\(4),
	datac => \PROC|Multiplexar|Equal9~0_combout\,
	datad => \PROC|Multiplexar|Equal8~0_combout\,
	combout => \PROC|Multiplexar|Selector11~2_combout\);

-- Location: FF_X20_Y21_N11
\PROC|REGISTERS:6:RegisterBlocks|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|REGISTERS:6:RegisterBlocks|Q[4]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:6:RegisterBlocks|Q\(4));

-- Location: FF_X24_Y22_N3
\PROC|REGISTERS:3:RegisterBlocks|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector11~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector19~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:3:RegisterBlocks|Q\(4));

-- Location: FF_X24_Y22_N29
\PROC|REGISTERS:5:RegisterBlocks|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|REGISTERS:5:RegisterBlocks|Q[4]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector17~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:5:RegisterBlocks|Q\(4));

-- Location: LCCOMB_X24_Y22_N2
\PROC|Multiplexar|Selector11~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector11~4_combout\ = (\PROC|Multiplexar|Equal3~0_combout\ & ((\PROC|REGISTERS:3:RegisterBlocks|Q\(4)) # ((\PROC|REGISTERS:5:RegisterBlocks|Q\(4) & \PROC|Multiplexar|Equal5~1_combout\)))) # (!\PROC|Multiplexar|Equal3~0_combout\ & 
-- (\PROC|REGISTERS:5:RegisterBlocks|Q\(4) & ((\PROC|Multiplexar|Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Equal3~0_combout\,
	datab => \PROC|REGISTERS:5:RegisterBlocks|Q\(4),
	datac => \PROC|REGISTERS:3:RegisterBlocks|Q\(4),
	datad => \PROC|Multiplexar|Equal5~1_combout\,
	combout => \PROC|Multiplexar|Selector11~4_combout\);

-- Location: LCCOMB_X22_Y22_N10
\PROC|Multiplexar|Selector10~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector10~2_combout\ = (\PROC|addSubRegister|Q\(5) & ((\PROC|Multiplexar|Equal8~0_combout\) # ((\MEMORY|altsyncram_component|auto_generated|q_a\(5) & \PROC|Multiplexar|Equal9~0_combout\)))) # (!\PROC|addSubRegister|Q\(5) & 
-- (\MEMORY|altsyncram_component|auto_generated|q_a\(5) & (\PROC|Multiplexar|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|addSubRegister|Q\(5),
	datab => \MEMORY|altsyncram_component|auto_generated|q_a\(5),
	datac => \PROC|Multiplexar|Equal9~0_combout\,
	datad => \PROC|Multiplexar|Equal8~0_combout\,
	combout => \PROC|Multiplexar|Selector10~2_combout\);

-- Location: FF_X21_Y22_N5
\PROC|REGISTERS:6:RegisterBlocks|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|REGISTERS:6:RegisterBlocks|Q[5]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:6:RegisterBlocks|Q\(5));

-- Location: FF_X22_Y19_N21
\PROC|REGISTERS:3:RegisterBlocks|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|REGISTERS:3:RegisterBlocks|Q[5]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector19~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:3:RegisterBlocks|Q\(5));

-- Location: FF_X22_Y19_N15
\PROC|REGISTERS:5:RegisterBlocks|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector10~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector17~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:5:RegisterBlocks|Q\(5));

-- Location: LCCOMB_X22_Y19_N14
\PROC|Multiplexar|Selector10~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector10~4_combout\ = (\PROC|Multiplexar|Equal3~0_combout\ & ((\PROC|REGISTERS:3:RegisterBlocks|Q\(5)) # ((\PROC|REGISTERS:5:RegisterBlocks|Q\(5) & \PROC|Multiplexar|Equal5~1_combout\)))) # (!\PROC|Multiplexar|Equal3~0_combout\ & 
-- (((\PROC|REGISTERS:5:RegisterBlocks|Q\(5) & \PROC|Multiplexar|Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Equal3~0_combout\,
	datab => \PROC|REGISTERS:3:RegisterBlocks|Q\(5),
	datac => \PROC|REGISTERS:5:RegisterBlocks|Q\(5),
	datad => \PROC|Multiplexar|Equal5~1_combout\,
	combout => \PROC|Multiplexar|Selector10~4_combout\);

-- Location: FF_X22_Y22_N7
\PROC|REGISTERS:2:RegisterBlocks|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector9~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector20~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:2:RegisterBlocks|Q\(6));

-- Location: LCCOMB_X22_Y22_N6
\PROC|Multiplexar|Selector9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector9~0_combout\ = (\PROC|REGISTERS:2:RegisterBlocks|Q\(6) & \PROC|Multiplexar|Equal2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|REGISTERS:2:RegisterBlocks|Q\(6),
	datad => \PROC|Multiplexar|Equal2~2_combout\,
	combout => \PROC|Multiplexar|Selector9~0_combout\);

-- Location: LCCOMB_X22_Y22_N26
\PROC|Multiplexar|Selector8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector8~2_combout\ = (\MEMORY|altsyncram_component|auto_generated|q_a\(7) & ((\PROC|Multiplexar|Equal9~0_combout\) # ((\PROC|addSubRegister|Q\(7) & \PROC|Multiplexar|Equal8~0_combout\)))) # 
-- (!\MEMORY|altsyncram_component|auto_generated|q_a\(7) & (\PROC|addSubRegister|Q\(7) & ((\PROC|Multiplexar|Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORY|altsyncram_component|auto_generated|q_a\(7),
	datab => \PROC|addSubRegister|Q\(7),
	datac => \PROC|Multiplexar|Equal9~0_combout\,
	datad => \PROC|Multiplexar|Equal8~0_combout\,
	combout => \PROC|Multiplexar|Selector8~2_combout\);

-- Location: FF_X21_Y22_N7
\PROC|REGISTERS:6:RegisterBlocks|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|REGISTERS:6:RegisterBlocks|Q[7]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:6:RegisterBlocks|Q\(7));

-- Location: FF_X22_Y19_N25
\PROC|REGISTERS:3:RegisterBlocks|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector8~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector19~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:3:RegisterBlocks|Q\(7));

-- Location: FF_X22_Y19_N11
\PROC|REGISTERS:5:RegisterBlocks|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|REGISTERS:5:RegisterBlocks|Q[7]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector17~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:5:RegisterBlocks|Q\(7));

-- Location: LCCOMB_X22_Y19_N24
\PROC|Multiplexar|Selector8~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector8~4_combout\ = (\PROC|Multiplexar|Equal3~0_combout\ & ((\PROC|REGISTERS:3:RegisterBlocks|Q\(7)) # ((\PROC|REGISTERS:5:RegisterBlocks|Q\(7) & \PROC|Multiplexar|Equal5~1_combout\)))) # (!\PROC|Multiplexar|Equal3~0_combout\ & 
-- (\PROC|REGISTERS:5:RegisterBlocks|Q\(7) & ((\PROC|Multiplexar|Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Equal3~0_combout\,
	datab => \PROC|REGISTERS:5:RegisterBlocks|Q\(7),
	datac => \PROC|REGISTERS:3:RegisterBlocks|Q\(7),
	datad => \PROC|Multiplexar|Equal5~1_combout\,
	combout => \PROC|Multiplexar|Selector8~4_combout\);

-- Location: FF_X22_Y22_N23
\PROC|REGISTERS:2:RegisterBlocks|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector7~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector20~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:2:RegisterBlocks|Q\(8));

-- Location: LCCOMB_X22_Y22_N22
\PROC|Multiplexar|Selector7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector7~0_combout\ = (\PROC|REGISTERS:2:RegisterBlocks|Q\(8) & \PROC|Multiplexar|Equal2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|REGISTERS:2:RegisterBlocks|Q\(8),
	datad => \PROC|Multiplexar|Equal2~2_combout\,
	combout => \PROC|Multiplexar|Selector7~0_combout\);

-- Location: FF_X24_Y21_N1
\PROC|REGISTERS:2:RegisterBlocks|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector6~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector20~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:2:RegisterBlocks|Q\(9));

-- Location: LCCOMB_X24_Y21_N0
\PROC|Multiplexar|Selector6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector6~0_combout\ = (\PROC|REGISTERS:2:RegisterBlocks|Q\(9) & \PROC|Multiplexar|Equal2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|REGISTERS:2:RegisterBlocks|Q\(9),
	datad => \PROC|Multiplexar|Equal2~2_combout\,
	combout => \PROC|Multiplexar|Selector6~0_combout\);

-- Location: FF_X24_Y20_N31
\PROC|REGISTERS:0:RegisterBlocks|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector6~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:0:RegisterBlocks|Q\(9));

-- Location: FF_X24_Y19_N19
\PROC|REGISTERS:6:RegisterBlocks|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector6~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:6:RegisterBlocks|Q\(9));

-- Location: LCCOMB_X24_Y20_N30
\PROC|Multiplexar|Selector6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector6~3_combout\ = (\PROC|REGISTERS:6:RegisterBlocks|Q\(9) & ((\PROC|Multiplexar|Equal6~1_combout\) # ((\PROC|REGISTERS:0:RegisterBlocks|Q\(9) & \PROC|Multiplexar|Equal0~2_combout\)))) # (!\PROC|REGISTERS:6:RegisterBlocks|Q\(9) & 
-- (((\PROC|REGISTERS:0:RegisterBlocks|Q\(9) & \PROC|Multiplexar|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|REGISTERS:6:RegisterBlocks|Q\(9),
	datab => \PROC|Multiplexar|Equal6~1_combout\,
	datac => \PROC|REGISTERS:0:RegisterBlocks|Q\(9),
	datad => \PROC|Multiplexar|Equal0~2_combout\,
	combout => \PROC|Multiplexar|Selector6~3_combout\);

-- Location: LCCOMB_X21_Y20_N6
\PROC|Multiplexar|Selector5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector5~2_combout\ = (\PROC|addSubRegister|Q\(10) & ((\PROC|Multiplexar|Equal8~0_combout\) # ((\MEMORY|altsyncram_component|auto_generated|q_a\(10) & \PROC|Multiplexar|Equal9~0_combout\)))) # (!\PROC|addSubRegister|Q\(10) & 
-- (\MEMORY|altsyncram_component|auto_generated|q_a\(10) & ((\PROC|Multiplexar|Equal9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|addSubRegister|Q\(10),
	datab => \MEMORY|altsyncram_component|auto_generated|q_a\(10),
	datac => \PROC|Multiplexar|Equal8~0_combout\,
	datad => \PROC|Multiplexar|Equal9~0_combout\,
	combout => \PROC|Multiplexar|Selector5~2_combout\);

-- Location: FF_X24_Y20_N11
\PROC|REGISTERS:0:RegisterBlocks|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|REGISTERS:0:RegisterBlocks|Q[10]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:0:RegisterBlocks|Q\(10));

-- Location: FF_X24_Y22_N13
\PROC|REGISTERS:5:RegisterBlocks|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|REGISTERS:5:RegisterBlocks|Q[10]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector17~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:5:RegisterBlocks|Q\(10));

-- Location: LCCOMB_X21_Y20_N12
\PROC|Multiplexar|Selector4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector4~2_combout\ = (\PROC|addSubRegister|Q\(11) & ((\PROC|Multiplexar|Equal8~0_combout\) # ((\MEMORY|altsyncram_component|auto_generated|q_a\(11) & \PROC|Multiplexar|Equal9~0_combout\)))) # (!\PROC|addSubRegister|Q\(11) & 
-- (\MEMORY|altsyncram_component|auto_generated|q_a\(11) & ((\PROC|Multiplexar|Equal9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|addSubRegister|Q\(11),
	datab => \MEMORY|altsyncram_component|auto_generated|q_a\(11),
	datac => \PROC|Multiplexar|Equal8~0_combout\,
	datad => \PROC|Multiplexar|Equal9~0_combout\,
	combout => \PROC|Multiplexar|Selector4~2_combout\);

-- Location: FF_X24_Y20_N13
\PROC|REGISTERS:0:RegisterBlocks|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|REGISTERS:0:RegisterBlocks|Q[11]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:0:RegisterBlocks|Q\(11));

-- Location: FF_X24_Y18_N13
\PROC|IntructionRegister|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|IntructionRegister|Q[8]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|IRin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IntructionRegister|Q\(8));

-- Location: LCCOMB_X25_Y18_N14
\PROC|ControlUnityBlock|Mux17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Mux17~0_combout\ = (\PROC|IntructionRegister|Q\(8) & (!\PROC|IntructionRegister|Q\(7) & !\PROC|IntructionRegister|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IntructionRegister|Q\(8),
	datac => \PROC|IntructionRegister|Q\(7),
	datad => \PROC|IntructionRegister|Q\(6),
	combout => \PROC|ControlUnityBlock|Mux17~0_combout\);

-- Location: LCCOMB_X26_Y21_N24
\PROC|ControlUnityBlock|Selector1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector1~1_combout\ = (\PROC|ControlUnityBlock|present_state.fetchInstruction~q\ & (\PROC|ControlUnityBlock|cycle\(0) $ ((\PROC|ControlUnityBlock|cycle\(1))))) # (!\PROC|ControlUnityBlock|present_state.fetchInstruction~q\ & 
-- (!\PROC|ControlUnityBlock|Selector24~1_combout\ & (\PROC|ControlUnityBlock|cycle\(0) $ (\PROC|ControlUnityBlock|cycle\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|cycle\(0),
	datab => \PROC|ControlUnityBlock|present_state.fetchInstruction~q\,
	datac => \PROC|ControlUnityBlock|cycle\(1),
	datad => \PROC|ControlUnityBlock|Selector24~1_combout\,
	combout => \PROC|ControlUnityBlock|Selector1~1_combout\);

-- Location: LCCOMB_X26_Y21_N10
\PROC|ControlUnityBlock|Selector3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector3~0_combout\ = (\PROC|ControlUnityBlock|present_state.fetchInstruction~q\ & ((\PROC|ControlUnityBlock|cycle\(1)) # ((\PROC|ControlUnityBlock|cycle\(0)) # (!\PROC|ControlUnityBlock|cycle\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|cycle\(1),
	datab => \PROC|ControlUnityBlock|cycle\(0),
	datac => \PROC|ControlUnityBlock|present_state.fetchInstruction~q\,
	datad => \PROC|ControlUnityBlock|cycle\(2),
	combout => \PROC|ControlUnityBlock|Selector3~0_combout\);

-- Location: LCCOMB_X26_Y21_N12
\PROC|ControlUnityBlock|Selector2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector2~1_combout\ = (!\PROC|ControlUnityBlock|cycle\(0) & ((\PROC|ControlUnityBlock|Selector3~0_combout\) # ((\PROC|ControlUnityBlock|present_state.load~q\) # (\PROC|ControlUnityBlock|present_state.loadImmediate~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector3~0_combout\,
	datab => \PROC|ControlUnityBlock|present_state.load~q\,
	datac => \PROC|ControlUnityBlock|present_state.loadImmediate~q\,
	datad => \PROC|ControlUnityBlock|cycle\(0),
	combout => \PROC|ControlUnityBlock|Selector2~1_combout\);

-- Location: LCCOMB_X26_Y21_N8
\PROC|ControlUnityBlock|Selector0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector0~1_combout\ = (!\PROC|ControlUnityBlock|Selector3~0_combout\ & ((\PROC|ControlUnityBlock|Mux39~0_combout\) # ((!\PROC|ControlUnityBlock|present_state.loadImmediate~q\ & !\PROC|ControlUnityBlock|present_state.load~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector3~0_combout\,
	datab => \PROC|ControlUnityBlock|Mux39~0_combout\,
	datac => \PROC|ControlUnityBlock|present_state.loadImmediate~q\,
	datad => \PROC|ControlUnityBlock|present_state.load~q\,
	combout => \PROC|ControlUnityBlock|Selector0~1_combout\);

-- Location: LCCOMB_X26_Y20_N10
\PROC|ControlUnityBlock|Selector0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector0~2_combout\ = (!\PROC|ControlUnityBlock|Selector0~1_combout\ & (\PROC|ControlUnityBlock|cycle\(2) $ (((\PROC|ControlUnityBlock|cycle\(1) & \PROC|ControlUnityBlock|cycle\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|cycle\(1),
	datab => \PROC|ControlUnityBlock|Selector0~1_combout\,
	datac => \PROC|ControlUnityBlock|cycle\(0),
	datad => \PROC|ControlUnityBlock|cycle\(2),
	combout => \PROC|ControlUnityBlock|Selector0~2_combout\);

-- Location: LCCOMB_X25_Y18_N12
\PROC|ControlUnityBlock|Mux17~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Mux17~2_combout\ = (!\PROC|IntructionRegister|Q\(8) & (\PROC|IntructionRegister|Q\(7) & !\PROC|IntructionRegister|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IntructionRegister|Q\(8),
	datac => \PROC|IntructionRegister|Q\(7),
	datad => \PROC|IntructionRegister|Q\(6),
	combout => \PROC|ControlUnityBlock|Mux17~2_combout\);

-- Location: LCCOMB_X24_Y18_N28
\PROC|ControlUnityBlock|Mux17~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Mux17~3_combout\ = (!\PROC|IntructionRegister|Q\(8) & (\PROC|IntructionRegister|Q\(6) & \PROC|IntructionRegister|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IntructionRegister|Q\(8),
	datac => \PROC|IntructionRegister|Q\(6),
	datad => \PROC|IntructionRegister|Q\(7),
	combout => \PROC|ControlUnityBlock|Mux17~3_combout\);

-- Location: LCCOMB_X25_Y18_N10
\PROC|ControlUnityBlock|Mux17~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Mux17~4_combout\ = (\PROC|IntructionRegister|Q\(8) & (!\PROC|IntructionRegister|Q\(7) & \PROC|IntructionRegister|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IntructionRegister|Q\(8),
	datac => \PROC|IntructionRegister|Q\(7),
	datad => \PROC|IntructionRegister|Q\(6),
	combout => \PROC|ControlUnityBlock|Mux17~4_combout\);

-- Location: LCCOMB_X21_Y20_N26
\PROC|Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Equal0~3_combout\ = (\PROC|addSubRegister|Q\(9)) # ((\PROC|addSubRegister|Q\(8)) # ((\PROC|addSubRegister|Q\(11)) # (\PROC|addSubRegister|Q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|addSubRegister|Q\(9),
	datab => \PROC|addSubRegister|Q\(8),
	datac => \PROC|addSubRegister|Q\(11),
	datad => \PROC|addSubRegister|Q\(10),
	combout => \PROC|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y18_N26
\PROC|ControlUnityBlock|Selector5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector5~0_combout\ = (!\PROC|IntructionRegister|Q\(8) & (!\PROC|IntructionRegister|Q\(6) & !\PROC|IntructionRegister|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IntructionRegister|Q\(8),
	datac => \PROC|IntructionRegister|Q\(6),
	datad => \PROC|IntructionRegister|Q\(7),
	combout => \PROC|ControlUnityBlock|Selector5~0_combout\);

-- Location: LCCOMB_X25_Y20_N10
\PROC|ControlUnityBlock|Selector5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector5~1_combout\ = (\PROC|ControlUnityBlock|Selector4~2_combout\ & (\PROC|ControlUnityBlock|Selector5~0_combout\)) # (!\PROC|ControlUnityBlock|Selector4~2_combout\ & (((\PROC|ControlUnityBlock|next_state.move~q\ & 
-- !\PROC|ControlUnityBlock|Selector4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector5~0_combout\,
	datab => \PROC|ControlUnityBlock|next_state.move~q\,
	datac => \PROC|ControlUnityBlock|Selector4~2_combout\,
	datad => \PROC|ControlUnityBlock|Selector4~4_combout\,
	combout => \PROC|ControlUnityBlock|Selector5~1_combout\);

-- Location: LCCOMB_X25_Y18_N26
\PROC|ControlUnityBlock|Selector3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector3~1_combout\ = (!\PROC|ControlUnityBlock|present_state.movenz~q\ & !\PROC|ControlUnityBlock|present_state.move~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|present_state.movenz~q\,
	datac => \PROC|ControlUnityBlock|present_state.move~q\,
	combout => \PROC|ControlUnityBlock|Selector3~1_combout\);

-- Location: LCCOMB_X26_Y18_N30
\PROC|ControlUnityBlock|Selector11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector11~0_combout\ = (\PROC|ControlUnityBlock|next_state.movenz~q\ & ((\PROC|ControlUnityBlock|present_state.fetchInstruction~q\) # ((!\PROC|ControlUnityBlock|Selector6~1_combout\) # 
-- (!\PROC|ControlUnityBlock|present_state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|present_state.fetchInstruction~q\,
	datab => \PROC|ControlUnityBlock|present_state.idle~q\,
	datac => \PROC|ControlUnityBlock|next_state.movenz~q\,
	datad => \PROC|ControlUnityBlock|Selector6~1_combout\,
	combout => \PROC|ControlUnityBlock|Selector11~0_combout\);

-- Location: FF_X25_Y20_N13
\PROC|ControlUnityBlock|next_state.fetchInstruction\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \PROC|ControlUnityBlock|next_state~14_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ControlUnityBlock|next_state.fetchInstruction~q\);

-- Location: LCCOMB_X23_Y18_N28
wr_en : cycloneiv_lcell_comb
-- Equation(s):
-- \wr_en~combout\ = (!\PROC|ADDR_Register|Q\(12) & \wr_en~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|ADDR_Register|Q\(12),
	datad => \wr_en~0_combout\,
	combout => \wr_en~combout\);

-- Location: FF_X23_Y21_N17
\PROC|AcumulatorRegister|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|AcumulatorRegister|Q[0]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AcumulatorRegister|Q\(0));

-- Location: FF_X23_Y21_N27
\PROC|AcumulatorRegister|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|Multiplexar|Selector3~6_combout\,
	ena => \PROC|ControlUnityBlock|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AcumulatorRegister|Q\(12));

-- Location: LCCOMB_X22_Y20_N30
\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~2_combout\ = \PROC|Multiplexar|Selector4~6_combout\ $ (((!\PROC|ControlUnityBlock|Mux39~3_combout\) # (!\PROC|ControlUnityBlock|present_state.subtraction~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|ControlUnityBlock|present_state.subtraction~q\,
	datac => \PROC|ControlUnityBlock|Mux39~3_combout\,
	datad => \PROC|Multiplexar|Selector4~6_combout\,
	combout => \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~2_combout\);

-- Location: FF_X21_Y20_N9
\PROC|AcumulatorRegister|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|Multiplexar|Selector5~6_combout\,
	ena => \PROC|ControlUnityBlock|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AcumulatorRegister|Q\(10));

-- Location: LCCOMB_X22_Y20_N22
\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~4_combout\ = \PROC|Multiplexar|Selector6~6_combout\ $ (((!\PROC|ControlUnityBlock|present_state.subtraction~q\) # (!\PROC|ControlUnityBlock|Mux39~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Mux39~3_combout\,
	datac => \PROC|Multiplexar|Selector6~6_combout\,
	datad => \PROC|ControlUnityBlock|present_state.subtraction~q\,
	combout => \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~4_combout\);

-- Location: LCCOMB_X22_Y22_N14
\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~5_combout\ = \PROC|Multiplexar|Selector7~6_combout\ $ (((!\PROC|ControlUnityBlock|Mux39~3_combout\) # (!\PROC|ControlUnityBlock|present_state.subtraction~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|present_state.subtraction~q\,
	datab => \PROC|ControlUnityBlock|Mux39~3_combout\,
	datad => \PROC|Multiplexar|Selector7~6_combout\,
	combout => \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~5_combout\);

-- Location: LCCOMB_X22_Y22_N24
\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~6_combout\ = \PROC|Multiplexar|Selector8~6_combout\ $ (((!\PROC|ControlUnityBlock|Mux39~3_combout\) # (!\PROC|ControlUnityBlock|present_state.subtraction~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|present_state.subtraction~q\,
	datab => \PROC|ControlUnityBlock|Mux39~3_combout\,
	datad => \PROC|Multiplexar|Selector8~6_combout\,
	combout => \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~6_combout\);

-- Location: LCCOMB_X22_Y22_N30
\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~7_combout\ = \PROC|Multiplexar|Selector9~6_combout\ $ (((!\PROC|ControlUnityBlock|Mux39~3_combout\) # (!\PROC|ControlUnityBlock|present_state.subtraction~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|present_state.subtraction~q\,
	datab => \PROC|ControlUnityBlock|Mux39~3_combout\,
	datad => \PROC|Multiplexar|Selector9~6_combout\,
	combout => \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~7_combout\);

-- Location: FF_X22_Y22_N1
\PROC|AcumulatorRegister|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|Multiplexar|Selector10~6_combout\,
	ena => \PROC|ControlUnityBlock|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AcumulatorRegister|Q\(5));

-- Location: LCCOMB_X22_Y21_N12
\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~9_combout\ = \PROC|Multiplexar|Selector11~6_combout\ $ (((!\PROC|ControlUnityBlock|Mux39~3_combout\) # (!\PROC|ControlUnityBlock|present_state.subtraction~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|present_state.subtraction~q\,
	datac => \PROC|ControlUnityBlock|Mux39~3_combout\,
	datad => \PROC|Multiplexar|Selector11~6_combout\,
	combout => \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~9_combout\);

-- Location: LCCOMB_X22_Y21_N6
\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~10_combout\ = \PROC|Multiplexar|Selector12~6_combout\ $ (((!\PROC|ControlUnityBlock|Mux39~3_combout\) # (!\PROC|ControlUnityBlock|present_state.subtraction~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|present_state.subtraction~q\,
	datac => \PROC|ControlUnityBlock|Mux39~3_combout\,
	datad => \PROC|Multiplexar|Selector12~6_combout\,
	combout => \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~10_combout\);

-- Location: FF_X23_Y20_N1
\PROC|AcumulatorRegister|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|Multiplexar|Selector13~6_combout\,
	ena => \PROC|ControlUnityBlock|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AcumulatorRegister|Q\(2));

-- Location: FF_X23_Y21_N3
\PROC|AcumulatorRegister|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|AcumulatorRegister|Q[1]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AcumulatorRegister|Q\(1));

-- Location: FF_X22_Y20_N19
\PROC|AcumulatorRegister|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|Multiplexar|Selector2~6_combout\,
	ena => \PROC|ControlUnityBlock|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AcumulatorRegister|Q\(13));

-- Location: LCCOMB_X22_Y20_N26
\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~14_combout\ = \PROC|Multiplexar|Selector1~6_combout\ $ (((!\PROC|ControlUnityBlock|present_state.subtraction~q\) # (!\PROC|ControlUnityBlock|Mux39~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Mux39~3_combout\,
	datab => \PROC|ControlUnityBlock|present_state.subtraction~q\,
	datad => \PROC|Multiplexar|Selector1~6_combout\,
	combout => \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~14_combout\);

-- Location: LCCOMB_X21_Y20_N30
\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~15_combout\ = \PROC|Multiplexar|Selector0~6_combout\ $ (((!\PROC|ControlUnityBlock|Mux39~3_combout\) # (!\PROC|ControlUnityBlock|present_state.subtraction~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|present_state.subtraction~q\,
	datac => \PROC|ControlUnityBlock|Mux39~3_combout\,
	datad => \PROC|Multiplexar|Selector0~6_combout\,
	combout => \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~15_combout\);

-- Location: FF_X21_Y20_N11
\PROC|AcumulatorRegister|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|Multiplexar|Selector0~6_combout\,
	ena => \PROC|ControlUnityBlock|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AcumulatorRegister|Q\(15));

-- Location: LCCOMB_X25_Y20_N12
\PROC|ControlUnityBlock|next_state~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|next_state~14_combout\ = (!\PROC|ControlUnityBlock|present_state~23_combout\ & ((\Run~input_o\) # (!\PROC|ControlUnityBlock|present_state.fetchInstruction~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|present_state.fetchInstruction~q\,
	datab => \PROC|ControlUnityBlock|present_state~23_combout\,
	datad => \Run~input_o\,
	combout => \PROC|ControlUnityBlock|next_state~14_combout\);

-- Location: LCCOMB_X24_Y18_N12
\PROC|IntructionRegister|Q[8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|IntructionRegister|Q[8]~feeder_combout\ = \MEMORY|altsyncram_component|auto_generated|q_a\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEMORY|altsyncram_component|auto_generated|q_a\(15),
	combout => \PROC|IntructionRegister|Q[8]~feeder_combout\);

-- Location: LCCOMB_X20_Y21_N20
\PROC|REGISTERS:6:RegisterBlocks|Q[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|REGISTERS:6:RegisterBlocks|Q[0]~feeder_combout\ = \PROC|Multiplexar|Selector15~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|Multiplexar|Selector15~6_combout\,
	combout => \PROC|REGISTERS:6:RegisterBlocks|Q[0]~feeder_combout\);

-- Location: LCCOMB_X23_Y21_N8
\PROC|REGISTERS:1:RegisterBlocks|Q[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|REGISTERS:1:RegisterBlocks|Q[0]~feeder_combout\ = \PROC|Multiplexar|Selector15~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|Multiplexar|Selector15~6_combout\,
	combout => \PROC|REGISTERS:1:RegisterBlocks|Q[0]~feeder_combout\);

-- Location: LCCOMB_X23_Y21_N16
\PROC|AcumulatorRegister|Q[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|AcumulatorRegister|Q[0]~feeder_combout\ = \PROC|Multiplexar|Selector15~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|Multiplexar|Selector15~6_combout\,
	combout => \PROC|AcumulatorRegister|Q[0]~feeder_combout\);

-- Location: LCCOMB_X21_Y22_N16
\PROC|REGISTERS:6:RegisterBlocks|Q[12]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|REGISTERS:6:RegisterBlocks|Q[12]~feeder_combout\ = \PROC|Multiplexar|Selector3~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|Multiplexar|Selector3~6_combout\,
	combout => \PROC|REGISTERS:6:RegisterBlocks|Q[12]~feeder_combout\);

-- Location: LCCOMB_X24_Y18_N20
\PROC|W~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|W~feeder_combout\ = \PROC|ControlUnityBlock|W_D~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|ControlUnityBlock|W_D~0_combout\,
	combout => \PROC|W~feeder_combout\);

-- Location: LCCOMB_X24_Y22_N10
\PROC|REGISTERS:3:RegisterBlocks|Q[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|REGISTERS:3:RegisterBlocks|Q[13]~feeder_combout\ = \PROC|Multiplexar|Selector2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|Multiplexar|Selector2~6_combout\,
	combout => \PROC|REGISTERS:3:RegisterBlocks|Q[13]~feeder_combout\);

-- Location: LCCOMB_X21_Y22_N22
\PROC|REGISTERS:6:RegisterBlocks|Q[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|REGISTERS:6:RegisterBlocks|Q[13]~feeder_combout\ = \PROC|Multiplexar|Selector2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|Multiplexar|Selector2~6_combout\,
	combout => \PROC|REGISTERS:6:RegisterBlocks|Q[13]~feeder_combout\);

-- Location: LCCOMB_X22_Y19_N26
\PROC|REGISTERS:5:RegisterBlocks|Q[14]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|REGISTERS:5:RegisterBlocks|Q[14]~feeder_combout\ = \PROC|Multiplexar|Selector1~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|Multiplexar|Selector1~6_combout\,
	combout => \PROC|REGISTERS:5:RegisterBlocks|Q[14]~feeder_combout\);

-- Location: LCCOMB_X21_Y22_N8
\PROC|REGISTERS:6:RegisterBlocks|Q[14]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|REGISTERS:6:RegisterBlocks|Q[14]~feeder_combout\ = \PROC|Multiplexar|Selector1~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|Multiplexar|Selector1~6_combout\,
	combout => \PROC|REGISTERS:6:RegisterBlocks|Q[14]~feeder_combout\);

-- Location: LCCOMB_X21_Y22_N18
\PROC|REGISTERS:6:RegisterBlocks|Q[15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|REGISTERS:6:RegisterBlocks|Q[15]~feeder_combout\ = \PROC|Multiplexar|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|Multiplexar|Selector0~6_combout\,
	combout => \PROC|REGISTERS:6:RegisterBlocks|Q[15]~feeder_combout\);

-- Location: LCCOMB_X23_Y21_N2
\PROC|AcumulatorRegister|Q[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|AcumulatorRegister|Q[1]~feeder_combout\ = \PROC|Multiplexar|Selector14~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|Multiplexar|Selector14~8_combout\,
	combout => \PROC|AcumulatorRegister|Q[1]~feeder_combout\);

-- Location: LCCOMB_X21_Y22_N28
\PROC|REGISTERS:6:RegisterBlocks|Q[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|REGISTERS:6:RegisterBlocks|Q[1]~feeder_combout\ = \PROC|Multiplexar|Selector14~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|Multiplexar|Selector14~8_combout\,
	combout => \PROC|REGISTERS:6:RegisterBlocks|Q[1]~feeder_combout\);

-- Location: LCCOMB_X21_Y22_N26
\PROC|REGISTERS:6:RegisterBlocks|Q[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|REGISTERS:6:RegisterBlocks|Q[2]~feeder_combout\ = \PROC|Multiplexar|Selector13~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|Multiplexar|Selector13~6_combout\,
	combout => \PROC|REGISTERS:6:RegisterBlocks|Q[2]~feeder_combout\);

-- Location: LCCOMB_X25_Y21_N16
\PROC|REGISTERS:0:RegisterBlocks|Q[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|REGISTERS:0:RegisterBlocks|Q[3]~feeder_combout\ = \PROC|Multiplexar|Selector12~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|Multiplexar|Selector12~6_combout\,
	combout => \PROC|REGISTERS:0:RegisterBlocks|Q[3]~feeder_combout\);

-- Location: LCCOMB_X20_Y21_N10
\PROC|REGISTERS:6:RegisterBlocks|Q[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|REGISTERS:6:RegisterBlocks|Q[4]~feeder_combout\ = \PROC|Multiplexar|Selector11~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|Multiplexar|Selector11~6_combout\,
	combout => \PROC|REGISTERS:6:RegisterBlocks|Q[4]~feeder_combout\);

-- Location: LCCOMB_X24_Y22_N28
\PROC|REGISTERS:5:RegisterBlocks|Q[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|REGISTERS:5:RegisterBlocks|Q[4]~feeder_combout\ = \PROC|Multiplexar|Selector11~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|Multiplexar|Selector11~6_combout\,
	combout => \PROC|REGISTERS:5:RegisterBlocks|Q[4]~feeder_combout\);

-- Location: LCCOMB_X21_Y22_N4
\PROC|REGISTERS:6:RegisterBlocks|Q[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|REGISTERS:6:RegisterBlocks|Q[5]~feeder_combout\ = \PROC|Multiplexar|Selector10~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|Multiplexar|Selector10~6_combout\,
	combout => \PROC|REGISTERS:6:RegisterBlocks|Q[5]~feeder_combout\);

-- Location: LCCOMB_X22_Y19_N20
\PROC|REGISTERS:3:RegisterBlocks|Q[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|REGISTERS:3:RegisterBlocks|Q[5]~feeder_combout\ = \PROC|Multiplexar|Selector10~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|Multiplexar|Selector10~6_combout\,
	combout => \PROC|REGISTERS:3:RegisterBlocks|Q[5]~feeder_combout\);

-- Location: LCCOMB_X21_Y22_N6
\PROC|REGISTERS:6:RegisterBlocks|Q[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|REGISTERS:6:RegisterBlocks|Q[7]~feeder_combout\ = \PROC|Multiplexar|Selector8~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|Multiplexar|Selector8~6_combout\,
	combout => \PROC|REGISTERS:6:RegisterBlocks|Q[7]~feeder_combout\);

-- Location: LCCOMB_X22_Y19_N10
\PROC|REGISTERS:5:RegisterBlocks|Q[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|REGISTERS:5:RegisterBlocks|Q[7]~feeder_combout\ = \PROC|Multiplexar|Selector8~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|Multiplexar|Selector8~6_combout\,
	combout => \PROC|REGISTERS:5:RegisterBlocks|Q[7]~feeder_combout\);

-- Location: LCCOMB_X24_Y20_N10
\PROC|REGISTERS:0:RegisterBlocks|Q[10]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|REGISTERS:0:RegisterBlocks|Q[10]~feeder_combout\ = \PROC|Multiplexar|Selector5~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|Multiplexar|Selector5~6_combout\,
	combout => \PROC|REGISTERS:0:RegisterBlocks|Q[10]~feeder_combout\);

-- Location: LCCOMB_X24_Y22_N12
\PROC|REGISTERS:5:RegisterBlocks|Q[10]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|REGISTERS:5:RegisterBlocks|Q[10]~feeder_combout\ = \PROC|Multiplexar|Selector5~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|Multiplexar|Selector5~6_combout\,
	combout => \PROC|REGISTERS:5:RegisterBlocks|Q[10]~feeder_combout\);

-- Location: LCCOMB_X24_Y20_N12
\PROC|REGISTERS:0:RegisterBlocks|Q[11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|REGISTERS:0:RegisterBlocks|Q[11]~feeder_combout\ = \PROC|Multiplexar|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|Multiplexar|Selector4~6_combout\,
	combout => \PROC|REGISTERS:0:RegisterBlocks|Q[11]~feeder_combout\);

-- Location: IOOBUF_X33_Y12_N9
\LEDs[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDREGISTER|Q\(0),
	devoe => ww_devoe,
	o => \LEDs[0]~output_o\);

-- Location: IOOBUF_X33_Y11_N2
\LEDs[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDREGISTER|Q\(1),
	devoe => ww_devoe,
	o => \LEDs[1]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\LEDs[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDREGISTER|Q\(2),
	devoe => ww_devoe,
	o => \LEDs[2]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\LEDs[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDREGISTER|Q\(3),
	devoe => ww_devoe,
	o => \LEDs[3]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\LEDs[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDREGISTER|Q\(4),
	devoe => ww_devoe,
	o => \LEDs[4]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\LEDs[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDREGISTER|Q\(5),
	devoe => ww_devoe,
	o => \LEDs[5]~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\LEDs[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDREGISTER|Q\(6),
	devoe => ww_devoe,
	o => \LEDs[6]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\LEDs[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDREGISTER|Q\(7),
	devoe => ww_devoe,
	o => \LEDs[7]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\LEDs[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDREGISTER|Q\(8),
	devoe => ww_devoe,
	o => \LEDs[8]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\LEDs[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDREGISTER|Q\(9),
	devoe => ww_devoe,
	o => \LEDs[9]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\LEDs[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDREGISTER|Q\(10),
	devoe => ww_devoe,
	o => \LEDs[10]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\LEDs[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDREGISTER|Q\(11),
	devoe => ww_devoe,
	o => \LEDs[11]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\LEDs[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDREGISTER|Q\(12),
	devoe => ww_devoe,
	o => \LEDs[12]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\LEDs[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDREGISTER|Q\(13),
	devoe => ww_devoe,
	o => \LEDs[13]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\LEDs[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDREGISTER|Q\(14),
	devoe => ww_devoe,
	o => \LEDs[14]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\LEDs[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDREGISTER|Q\(15),
	devoe => ww_devoe,
	o => \LEDs[15]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\Clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G17
\Clock~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X20_Y21_N12
\PROC|ADDR_Register|Q[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ADDR_Register|Q[0]~feeder_combout\ = \PROC|Multiplexar|Selector15~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|Multiplexar|Selector15~6_combout\,
	combout => \PROC|ADDR_Register|Q[0]~feeder_combout\);

-- Location: IOIBUF_X16_Y0_N22
\Reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: CLKCTRL_G19
\Reset~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: IOIBUF_X26_Y31_N8
\Run~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Run,
	o => \Run~input_o\);

-- Location: FF_X26_Y18_N29
\PROC|ControlUnityBlock|next_state.load\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \PROC|ControlUnityBlock|next_state.load~0_combout\,
	asdata => \PROC|ControlUnityBlock|present_state.load~q\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \ALT_INV_Run~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ControlUnityBlock|next_state.load~q\);

-- Location: LCCOMB_X26_Y21_N30
\PROC|ControlUnityBlock|Selector1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector1~0_combout\ = (!\PROC|ControlUnityBlock|Selector0~0_combout\ & ((\PROC|ControlUnityBlock|cycle\(2) & ((\PROC|ControlUnityBlock|cycle\(1)))) # (!\PROC|ControlUnityBlock|cycle\(2) & (\PROC|ControlUnityBlock|cycle\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|cycle\(0),
	datab => \PROC|ControlUnityBlock|cycle\(1),
	datac => \PROC|ControlUnityBlock|Selector0~0_combout\,
	datad => \PROC|ControlUnityBlock|cycle\(2),
	combout => \PROC|ControlUnityBlock|Selector1~0_combout\);

-- Location: LCCOMB_X26_Y21_N18
\PROC|ControlUnityBlock|Selector1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector1~3_combout\ = (\PROC|ControlUnityBlock|Selector1~1_combout\) # ((\PROC|ControlUnityBlock|Selector1~0_combout\) # ((!\PROC|ControlUnityBlock|Selector1~2_combout\ & \PROC|ControlUnityBlock|cycle\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector1~1_combout\,
	datab => \PROC|ControlUnityBlock|Selector1~2_combout\,
	datac => \PROC|ControlUnityBlock|cycle\(1),
	datad => \PROC|ControlUnityBlock|Selector1~0_combout\,
	combout => \PROC|ControlUnityBlock|Selector1~3_combout\);

-- Location: FF_X26_Y19_N13
\PROC|ControlUnityBlock|cycle[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \PROC|ControlUnityBlock|Selector1~3_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Run~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ControlUnityBlock|cycle\(1));

-- Location: LCCOMB_X22_Y18_N0
\PROC|REGISTERS:5:RegisterBlocks|Q[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|REGISTERS:5:RegisterBlocks|Q[2]~feeder_combout\ = \PROC|Multiplexar|Selector13~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|Multiplexar|Selector13~6_combout\,
	combout => \PROC|REGISTERS:5:RegisterBlocks|Q[2]~feeder_combout\);

-- Location: LCCOMB_X26_Y19_N12
\PROC|ControlUnityBlock|Selector31~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector31~1_combout\ = (!\PROC|ControlUnityBlock|cycle\(0) & (!\PROC|ControlUnityBlock|cycle\(1) & ((\PROC|ControlUnityBlock|present_state.addition~q\) # (\PROC|ControlUnityBlock|present_state.subtraction~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|cycle\(0),
	datab => \PROC|ControlUnityBlock|present_state.addition~q\,
	datac => \PROC|ControlUnityBlock|cycle\(1),
	datad => \PROC|ControlUnityBlock|present_state.subtraction~q\,
	combout => \PROC|ControlUnityBlock|Selector31~1_combout\);

-- Location: FF_X26_Y18_N13
\PROC|ControlUnityBlock|next_state.storage\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \PROC|ControlUnityBlock|next_state.storage~0_combout\,
	asdata => \PROC|ControlUnityBlock|present_state.storage~q\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \ALT_INV_Run~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ControlUnityBlock|next_state.storage~q\);

-- Location: LCCOMB_X26_Y18_N4
\PROC|ControlUnityBlock|Selector10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector10~0_combout\ = (\PROC|ControlUnityBlock|next_state.storage~q\ & ((\PROC|ControlUnityBlock|present_state.fetchInstruction~q\) # ((!\PROC|ControlUnityBlock|Selector6~1_combout\) # 
-- (!\PROC|ControlUnityBlock|present_state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|present_state.fetchInstruction~q\,
	datab => \PROC|ControlUnityBlock|present_state.idle~q\,
	datac => \PROC|ControlUnityBlock|Selector6~1_combout\,
	datad => \PROC|ControlUnityBlock|next_state.storage~q\,
	combout => \PROC|ControlUnityBlock|Selector10~0_combout\);

-- Location: LCCOMB_X26_Y21_N0
\PROC|ControlUnityBlock|Selector4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector4~2_combout\ = (!\PROC|ControlUnityBlock|cycle\(1) & (\PROC|ControlUnityBlock|present_state.fetchInstruction~q\ & (\PROC|ControlUnityBlock|cycle\(2) & !\PROC|ControlUnityBlock|cycle\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|cycle\(1),
	datab => \PROC|ControlUnityBlock|present_state.fetchInstruction~q\,
	datac => \PROC|ControlUnityBlock|cycle\(2),
	datad => \PROC|ControlUnityBlock|cycle\(0),
	combout => \PROC|ControlUnityBlock|Selector4~2_combout\);

-- Location: LCCOMB_X26_Y18_N12
\PROC|ControlUnityBlock|next_state.storage~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|next_state.storage~0_combout\ = (\PROC|ControlUnityBlock|Selector4~2_combout\ & (\PROC|ControlUnityBlock|Mux17~4_combout\)) # (!\PROC|ControlUnityBlock|Selector4~2_combout\ & ((\PROC|ControlUnityBlock|Selector10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Mux17~4_combout\,
	datab => \PROC|ControlUnityBlock|Selector10~0_combout\,
	datad => \PROC|ControlUnityBlock|Selector4~2_combout\,
	combout => \PROC|ControlUnityBlock|next_state.storage~0_combout\);

-- Location: LCCOMB_X27_Y18_N10
\PROC|ControlUnityBlock|present_state~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|present_state~17_combout\ = (\Run~input_o\ & \PROC|ControlUnityBlock|next_state.storage~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Run~input_o\,
	datad => \PROC|ControlUnityBlock|next_state.storage~0_combout\,
	combout => \PROC|ControlUnityBlock|present_state~17_combout\);

-- Location: FF_X26_Y19_N21
\PROC|ControlUnityBlock|present_state.storage\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \PROC|ControlUnityBlock|present_state~17_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ControlUnityBlock|present_state.storage~q\);

-- Location: LCCOMB_X26_Y19_N18
\PROC|ControlUnityBlock|Selector31~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector31~0_combout\ = (\PROC|ControlUnityBlock|present_state.storage~q\ & (\PROC|ControlUnityBlock|cycle\(1) $ (\PROC|ControlUnityBlock|cycle\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|cycle\(1),
	datac => \PROC|ControlUnityBlock|cycle\(0),
	datad => \PROC|ControlUnityBlock|present_state.storage~q\,
	combout => \PROC|ControlUnityBlock|Selector31~0_combout\);

-- Location: LCCOMB_X25_Y19_N18
\PROC|ControlUnityBlock|Selector26~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector26~1_combout\ = (\PROC|ControlUnityBlock|Selector19~3_combout\ & (\PROC|IntructionRegister|Q\(5) & ((\PROC|ControlUnityBlock|Selector31~1_combout\) # (\PROC|ControlUnityBlock|Selector31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector19~3_combout\,
	datab => \PROC|IntructionRegister|Q\(5),
	datac => \PROC|ControlUnityBlock|Selector31~1_combout\,
	datad => \PROC|ControlUnityBlock|Selector31~0_combout\,
	combout => \PROC|ControlUnityBlock|Selector26~1_combout\);

-- Location: LCCOMB_X24_Y18_N22
\PROC|ControlUnityBlock|Mux17~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Mux17~1_combout\ = (!\PROC|IntructionRegister|Q\(8) & (\PROC|IntructionRegister|Q\(6) & !\PROC|IntructionRegister|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IntructionRegister|Q\(8),
	datac => \PROC|IntructionRegister|Q\(6),
	datad => \PROC|IntructionRegister|Q\(7),
	combout => \PROC|ControlUnityBlock|Mux17~1_combout\);

-- Location: FF_X26_Y18_N11
\PROC|ControlUnityBlock|next_state.loadImmediate\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \PROC|ControlUnityBlock|next_state.loadImmediate~0_combout\,
	asdata => \PROC|ControlUnityBlock|present_state.loadImmediate~q\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \ALT_INV_Run~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ControlUnityBlock|next_state.loadImmediate~q\);

-- Location: LCCOMB_X26_Y18_N2
\PROC|ControlUnityBlock|Selector6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector6~2_combout\ = (\PROC|ControlUnityBlock|next_state.loadImmediate~q\ & ((\PROC|ControlUnityBlock|present_state.fetchInstruction~q\) # ((!\PROC|ControlUnityBlock|Selector6~1_combout\) # 
-- (!\PROC|ControlUnityBlock|present_state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|present_state.fetchInstruction~q\,
	datab => \PROC|ControlUnityBlock|present_state.idle~q\,
	datac => \PROC|ControlUnityBlock|Selector6~1_combout\,
	datad => \PROC|ControlUnityBlock|next_state.loadImmediate~q\,
	combout => \PROC|ControlUnityBlock|Selector6~2_combout\);

-- Location: LCCOMB_X26_Y18_N10
\PROC|ControlUnityBlock|next_state.loadImmediate~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|next_state.loadImmediate~0_combout\ = (\PROC|ControlUnityBlock|Selector4~2_combout\ & (\PROC|ControlUnityBlock|Mux17~1_combout\)) # (!\PROC|ControlUnityBlock|Selector4~2_combout\ & ((\PROC|ControlUnityBlock|Selector6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector4~2_combout\,
	datab => \PROC|ControlUnityBlock|Mux17~1_combout\,
	datad => \PROC|ControlUnityBlock|Selector6~2_combout\,
	combout => \PROC|ControlUnityBlock|next_state.loadImmediate~0_combout\);

-- Location: LCCOMB_X25_Y20_N22
\PROC|ControlUnityBlock|present_state~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|present_state~14_combout\ = (\PROC|ControlUnityBlock|next_state.loadImmediate~0_combout\ & \Run~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|ControlUnityBlock|next_state.loadImmediate~0_combout\,
	datad => \Run~input_o\,
	combout => \PROC|ControlUnityBlock|present_state~14_combout\);

-- Location: FF_X26_Y19_N15
\PROC|ControlUnityBlock|present_state.loadImmediate\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \PROC|ControlUnityBlock|present_state~14_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ControlUnityBlock|present_state.loadImmediate~q\);

-- Location: LCCOMB_X26_Y19_N10
\PROC|ControlUnityBlock|Selector19~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector19~2_combout\ = (\PROC|ControlUnityBlock|present_state.idle~q\ & (!\PROC|ControlUnityBlock|present_state.fetchInstruction~q\ & !\PROC|ControlUnityBlock|present_state.movenz~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|present_state.idle~q\,
	datac => \PROC|ControlUnityBlock|present_state.fetchInstruction~q\,
	datad => \PROC|ControlUnityBlock|present_state.movenz~q\,
	combout => \PROC|ControlUnityBlock|Selector19~2_combout\);

-- Location: LCCOMB_X26_Y19_N14
\PROC|ControlUnityBlock|Selector31~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector31~6_combout\ = (\PROC|ControlUnityBlock|present_state.loadImmediate~q\) # (((\PROC|ControlUnityBlock|present_state.storage~q\ & \PROC|ControlUnityBlock|cycle\(2))) # (!\PROC|ControlUnityBlock|Selector19~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|present_state.storage~q\,
	datab => \PROC|ControlUnityBlock|cycle\(2),
	datac => \PROC|ControlUnityBlock|present_state.loadImmediate~q\,
	datad => \PROC|ControlUnityBlock|Selector19~2_combout\,
	combout => \PROC|ControlUnityBlock|Selector31~6_combout\);

-- Location: LCCOMB_X23_Y18_N16
\PROC|DOUT_Register|Q[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|DOUT_Register|Q[1]~feeder_combout\ = \PROC|Multiplexar|Selector14~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|Multiplexar|Selector14~8_combout\,
	combout => \PROC|DOUT_Register|Q[1]~feeder_combout\);

-- Location: LCCOMB_X25_Y18_N4
\PROC|ControlUnityBlock|DOUTin~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|DOUTin~0_combout\ = (!\PROC|ControlUnityBlock|cycle\(2) & (\PROC|ControlUnityBlock|present_state.storage~q\ & (!\PROC|ControlUnityBlock|cycle\(1) & \PROC|ControlUnityBlock|cycle\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|cycle\(2),
	datab => \PROC|ControlUnityBlock|present_state.storage~q\,
	datac => \PROC|ControlUnityBlock|cycle\(1),
	datad => \PROC|ControlUnityBlock|cycle\(0),
	combout => \PROC|ControlUnityBlock|DOUTin~0_combout\);

-- Location: FF_X23_Y18_N17
\PROC|DOUT_Register|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|DOUT_Register|Q[1]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|DOUTin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|DOUT_Register|Q\(1));

-- Location: LCCOMB_X23_Y18_N26
\PROC|DOUT_Register|Q[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|DOUT_Register|Q[2]~feeder_combout\ = \PROC|Multiplexar|Selector13~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|Multiplexar|Selector13~6_combout\,
	combout => \PROC|DOUT_Register|Q[2]~feeder_combout\);

-- Location: FF_X23_Y18_N27
\PROC|DOUT_Register|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|DOUT_Register|Q[2]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|DOUTin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|DOUT_Register|Q\(2));

-- Location: LCCOMB_X27_Y21_N30
\PROC|DOUT_Register|Q[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|DOUT_Register|Q[3]~feeder_combout\ = \PROC|Multiplexar|Selector12~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|Multiplexar|Selector12~6_combout\,
	combout => \PROC|DOUT_Register|Q[3]~feeder_combout\);

-- Location: FF_X27_Y21_N31
\PROC|DOUT_Register|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|DOUT_Register|Q[3]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|DOUTin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|DOUT_Register|Q\(3));

-- Location: LCCOMB_X27_Y21_N28
\PROC|DOUT_Register|Q[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|DOUT_Register|Q[4]~feeder_combout\ = \PROC|Multiplexar|Selector11~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|Multiplexar|Selector11~6_combout\,
	combout => \PROC|DOUT_Register|Q[4]~feeder_combout\);

-- Location: FF_X27_Y21_N29
\PROC|DOUT_Register|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|DOUT_Register|Q[4]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|DOUTin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|DOUT_Register|Q\(4));

-- Location: FF_X23_Y18_N29
\PROC|DOUT_Register|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector10~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|DOUTin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|DOUT_Register|Q\(5));

-- Location: LCCOMB_X23_Y18_N30
\PROC|DOUT_Register|Q[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|DOUT_Register|Q[6]~feeder_combout\ = \PROC|Multiplexar|Selector9~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|Multiplexar|Selector9~6_combout\,
	combout => \PROC|DOUT_Register|Q[6]~feeder_combout\);

-- Location: FF_X23_Y18_N31
\PROC|DOUT_Register|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|DOUT_Register|Q[6]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|DOUTin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|DOUT_Register|Q\(6));

-- Location: FF_X22_Y22_N17
\PROC|REGISTERS:2:RegisterBlocks|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector8~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector20~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:2:RegisterBlocks|Q\(7));

-- Location: LCCOMB_X25_Y19_N4
\PROC|ControlUnityBlock|Selector30~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector30~1_combout\ = (\PROC|ControlUnityBlock|Selector19~3_combout\ & (!\PROC|IntructionRegister|Q\(5) & ((\PROC|ControlUnityBlock|Selector31~1_combout\) # (\PROC|ControlUnityBlock|Selector31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector19~3_combout\,
	datab => \PROC|ControlUnityBlock|Selector31~1_combout\,
	datac => \PROC|IntructionRegister|Q\(5),
	datad => \PROC|ControlUnityBlock|Selector31~0_combout\,
	combout => \PROC|ControlUnityBlock|Selector30~1_combout\);

-- Location: LCCOMB_X25_Y19_N6
\PROC|ControlUnityBlock|Selector27~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector27~2_combout\ = (\PROC|ControlUnityBlock|Selector20~2_combout\ & (\PROC|IntructionRegister|Q\(5) & ((\PROC|ControlUnityBlock|Selector31~1_combout\) # (\PROC|ControlUnityBlock|Selector31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector20~2_combout\,
	datab => \PROC|IntructionRegister|Q\(5),
	datac => \PROC|ControlUnityBlock|Selector31~1_combout\,
	datad => \PROC|ControlUnityBlock|Selector31~0_combout\,
	combout => \PROC|ControlUnityBlock|Selector27~2_combout\);

-- Location: LCCOMB_X26_Y19_N16
\PROC|ControlUnityBlock|Selector31~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector31~2_combout\ = (\PROC|ControlUnityBlock|present_state.move~q\) # ((\PROC|ControlUnityBlock|present_state.subtraction~q\) # ((\PROC|ControlUnityBlock|present_state.load~q\) # 
-- (\PROC|ControlUnityBlock|present_state.addition~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|present_state.move~q\,
	datab => \PROC|ControlUnityBlock|present_state.subtraction~q\,
	datac => \PROC|ControlUnityBlock|present_state.load~q\,
	datad => \PROC|ControlUnityBlock|present_state.addition~q\,
	combout => \PROC|ControlUnityBlock|Selector31~2_combout\);

-- Location: LCCOMB_X26_Y19_N30
\PROC|ControlUnityBlock|Selector31~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector31~4_combout\ = (\PROC|ControlUnityBlock|present_state.storage~q\ & (\PROC|ControlUnityBlock|cycle\(1))) # (!\PROC|ControlUnityBlock|present_state.storage~q\ & (((\PROC|ControlUnityBlock|present_state.move~q\) # 
-- (\PROC|ControlUnityBlock|present_state.load~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|cycle\(1),
	datab => \PROC|ControlUnityBlock|present_state.storage~q\,
	datac => \PROC|ControlUnityBlock|present_state.move~q\,
	datad => \PROC|ControlUnityBlock|present_state.load~q\,
	combout => \PROC|ControlUnityBlock|Selector31~4_combout\);

-- Location: LCCOMB_X26_Y19_N4
\PROC|ControlUnityBlock|Selector31~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector31~5_combout\ = (\PROC|ControlUnityBlock|Selector31~3_combout\ & ((\PROC|ControlUnityBlock|Selector31~2_combout\) # ((\PROC|ControlUnityBlock|cycle\(0) & \PROC|ControlUnityBlock|Selector31~4_combout\)))) # 
-- (!\PROC|ControlUnityBlock|Selector31~3_combout\ & (((\PROC|ControlUnityBlock|cycle\(0) & \PROC|ControlUnityBlock|Selector31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector31~3_combout\,
	datab => \PROC|ControlUnityBlock|Selector31~2_combout\,
	datac => \PROC|ControlUnityBlock|cycle\(0),
	datad => \PROC|ControlUnityBlock|Selector31~4_combout\,
	combout => \PROC|ControlUnityBlock|Selector31~5_combout\);

-- Location: LCCOMB_X25_Y19_N28
\PROC|ControlUnityBlock|Selector27~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector27~3_combout\ = (!\PROC|ControlUnityBlock|Selector31~6_combout\ & (!\PROC|ControlUnityBlock|Selector31~5_combout\ & ((\PROC|ControlUnityBlock|Selector27~1_combout\) # (\PROC|ControlUnityBlock|Selector27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector27~1_combout\,
	datab => \PROC|ControlUnityBlock|Selector27~2_combout\,
	datac => \PROC|ControlUnityBlock|Selector31~6_combout\,
	datad => \PROC|ControlUnityBlock|Selector31~5_combout\,
	combout => \PROC|ControlUnityBlock|Selector27~3_combout\);

-- Location: LCCOMB_X24_Y18_N6
\PROC|ControlUnityBlock|Selector28~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector28~0_combout\ = (!\PROC|IntructionRegister|Q\(1) & \PROC|IntructionRegister|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|IntructionRegister|Q\(1),
	datad => \PROC|IntructionRegister|Q\(2),
	combout => \PROC|ControlUnityBlock|Selector28~0_combout\);

-- Location: LCCOMB_X23_Y19_N20
\PROC|ControlUnityBlock|Selector28~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector28~1_combout\ = (\PROC|IntructionRegister|Q\(0) & (\PROC|ControlUnityBlock|Selector28~0_combout\ & (!\PROC|ControlUnityBlock|Selector31~1_combout\ & !\PROC|ControlUnityBlock|Selector31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IntructionRegister|Q\(0),
	datab => \PROC|ControlUnityBlock|Selector28~0_combout\,
	datac => \PROC|ControlUnityBlock|Selector31~1_combout\,
	datad => \PROC|ControlUnityBlock|Selector31~0_combout\,
	combout => \PROC|ControlUnityBlock|Selector28~1_combout\);

-- Location: LCCOMB_X23_Y19_N4
\PROC|ControlUnityBlock|Selector28~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector28~3_combout\ = (!\PROC|ControlUnityBlock|Selector31~5_combout\ & (!\PROC|ControlUnityBlock|Selector31~6_combout\ & ((\PROC|ControlUnityBlock|Selector28~2_combout\) # (\PROC|ControlUnityBlock|Selector28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector28~2_combout\,
	datab => \PROC|ControlUnityBlock|Selector28~1_combout\,
	datac => \PROC|ControlUnityBlock|Selector31~5_combout\,
	datad => \PROC|ControlUnityBlock|Selector31~6_combout\,
	combout => \PROC|ControlUnityBlock|Selector28~3_combout\);

-- Location: LCCOMB_X24_Y19_N0
\PROC|Multiplexar|Mbus~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Mbus~0_combout\ = (!\PROC|ControlUnityBlock|Selector31~10_combout\ & (!\PROC|ControlUnityBlock|Selector27~3_combout\ & (!\PROC|ControlUnityBlock|Selector30~2_combout\ & !\PROC|ControlUnityBlock|Selector28~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector31~10_combout\,
	datab => \PROC|ControlUnityBlock|Selector27~3_combout\,
	datac => \PROC|ControlUnityBlock|Selector30~2_combout\,
	datad => \PROC|ControlUnityBlock|Selector28~3_combout\,
	combout => \PROC|Multiplexar|Mbus~0_combout\);

-- Location: LCCOMB_X24_Y19_N12
\PROC|Multiplexar|Equal9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Equal9~0_combout\ = (\PROC|ControlUnityBlock|Selector24~0_combout\ & (!\PROC|ControlUnityBlock|Selector26~2_combout\ & (\PROC|Multiplexar|Equal2~0_combout\ & \PROC|Multiplexar|Mbus~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector24~0_combout\,
	datab => \PROC|ControlUnityBlock|Selector26~2_combout\,
	datac => \PROC|Multiplexar|Equal2~0_combout\,
	datad => \PROC|Multiplexar|Mbus~0_combout\,
	combout => \PROC|Multiplexar|Equal9~0_combout\);

-- Location: LCCOMB_X24_Y19_N26
\PROC|Multiplexar|Equal8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Equal8~0_combout\ = (\PROC|ControlUnityBlock|Selector25~0_combout\ & (!\PROC|ControlUnityBlock|Selector26~2_combout\ & (\PROC|Multiplexar|Equal2~0_combout\ & \PROC|Multiplexar|Mbus~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector25~0_combout\,
	datab => \PROC|ControlUnityBlock|Selector26~2_combout\,
	datac => \PROC|Multiplexar|Equal2~0_combout\,
	datad => \PROC|Multiplexar|Mbus~0_combout\,
	combout => \PROC|Multiplexar|Equal8~0_combout\);

-- Location: LCCOMB_X22_Y22_N8
\PROC|Multiplexar|Selector7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector7~2_combout\ = (\PROC|addSubRegister|Q\(8) & ((\PROC|Multiplexar|Equal8~0_combout\) # ((\MEMORY|altsyncram_component|auto_generated|q_a\(8) & \PROC|Multiplexar|Equal9~0_combout\)))) # (!\PROC|addSubRegister|Q\(8) & 
-- (\MEMORY|altsyncram_component|auto_generated|q_a\(8) & (\PROC|Multiplexar|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|addSubRegister|Q\(8),
	datab => \MEMORY|altsyncram_component|auto_generated|q_a\(8),
	datac => \PROC|Multiplexar|Equal9~0_combout\,
	datad => \PROC|Multiplexar|Equal8~0_combout\,
	combout => \PROC|Multiplexar|Selector7~2_combout\);

-- Location: LCCOMB_X21_Y21_N0
\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X25_Y20_N6
\PROC|ControlUnityBlock|Mux39~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Mux39~2_combout\ = (!\PROC|ControlUnityBlock|cycle\(1) & (!\PROC|ControlUnityBlock|cycle\(0) & !\PROC|ControlUnityBlock|cycle\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|ControlUnityBlock|cycle\(1),
	datac => \PROC|ControlUnityBlock|cycle\(0),
	datad => \PROC|ControlUnityBlock|cycle\(2),
	combout => \PROC|ControlUnityBlock|Mux39~2_combout\);

-- Location: LCCOMB_X26_Y19_N26
\PROC|ControlUnityBlock|Selector25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector25~0_combout\ = (\PROC|ControlUnityBlock|Mux39~1_combout\ & ((\PROC|ControlUnityBlock|present_state.subtraction~q\) # (\PROC|ControlUnityBlock|present_state.addition~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|ControlUnityBlock|present_state.subtraction~q\,
	datac => \PROC|ControlUnityBlock|Mux39~1_combout\,
	datad => \PROC|ControlUnityBlock|present_state.addition~q\,
	combout => \PROC|ControlUnityBlock|Selector25~0_combout\);

-- Location: LCCOMB_X26_Y19_N2
\PROC|ControlUnityBlock|Mux39~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Mux39~0_combout\ = (\PROC|ControlUnityBlock|cycle\(1) & (!\PROC|ControlUnityBlock|cycle\(2) & \PROC|ControlUnityBlock|cycle\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|cycle\(1),
	datab => \PROC|ControlUnityBlock|cycle\(2),
	datad => \PROC|ControlUnityBlock|cycle\(0),
	combout => \PROC|ControlUnityBlock|Mux39~0_combout\);

-- Location: LCCOMB_X26_Y19_N8
\PROC|ControlUnityBlock|Selector24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector24~0_combout\ = (\PROC|ControlUnityBlock|Mux39~0_combout\ & ((\PROC|ControlUnityBlock|present_state.load~q\) # (\PROC|ControlUnityBlock|present_state.loadImmediate~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|present_state.load~q\,
	datab => \PROC|ControlUnityBlock|Mux39~0_combout\,
	datad => \PROC|ControlUnityBlock|present_state.loadImmediate~q\,
	combout => \PROC|ControlUnityBlock|Selector24~0_combout\);

-- Location: LCCOMB_X25_Y21_N18
\PROC|ControlUnityBlock|Selector19~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector19~4_combout\ = (\PROC|ControlUnityBlock|present_state.move~q\ & (\PROC|ControlUnityBlock|Mux39~2_combout\)) # (!\PROC|ControlUnityBlock|present_state.move~q\ & (((\PROC|ControlUnityBlock|Selector25~0_combout\) # 
-- (\PROC|ControlUnityBlock|Selector24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|present_state.move~q\,
	datab => \PROC|ControlUnityBlock|Mux39~2_combout\,
	datac => \PROC|ControlUnityBlock|Selector25~0_combout\,
	datad => \PROC|ControlUnityBlock|Selector24~0_combout\,
	combout => \PROC|ControlUnityBlock|Selector19~4_combout\);

-- Location: LCCOMB_X25_Y21_N20
\PROC|ControlUnityBlock|Selector17~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector17~3_combout\ = (\PROC|ControlUnityBlock|Selector19~2_combout\ & (!\PROC|ControlUnityBlock|present_state.storage~q\ & (\PROC|IntructionRegister|Q\(5) & \PROC|ControlUnityBlock|Selector19~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector19~2_combout\,
	datab => \PROC|ControlUnityBlock|present_state.storage~q\,
	datac => \PROC|IntructionRegister|Q\(5),
	datad => \PROC|ControlUnityBlock|Selector19~4_combout\,
	combout => \PROC|ControlUnityBlock|Selector17~3_combout\);

-- Location: LCCOMB_X25_Y21_N22
\PROC|ControlUnityBlock|Selector15~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector15~2_combout\ = (\PROC|IntructionRegister|Q\(3) & (\PROC|IntructionRegister|Q\(4) & \PROC|ControlUnityBlock|Selector17~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IntructionRegister|Q\(3),
	datac => \PROC|IntructionRegister|Q\(4),
	datad => \PROC|ControlUnityBlock|Selector17~3_combout\,
	combout => \PROC|ControlUnityBlock|Selector15~2_combout\);

-- Location: LCCOMB_X26_Y21_N26
\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|_~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|_~0_combout\ = (\PROC|ControlUnityBlock|Selector4~2_combout\) # ((\PROC|ControlUnityBlock|Selector15~2_combout\) # ((\PROC|ControlUnityBlock|Mux39~0_combout\ & 
-- \PROC|ControlUnityBlock|present_state.loadImmediate~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Mux39~0_combout\,
	datab => \PROC|ControlUnityBlock|Selector4~2_combout\,
	datac => \PROC|ControlUnityBlock|present_state.loadImmediate~q\,
	datad => \PROC|ControlUnityBlock|Selector15~2_combout\,
	combout => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|_~0_combout\);

-- Location: FF_X21_Y21_N1
\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	asdata => \PROC|Multiplexar|Selector15~6_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \PROC|ControlUnityBlock|Selector15~2_combout\,
	ena => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X21_Y21_N2
\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & 
-- (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & 
-- ((\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # 
-- (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X21_Y21_N3
\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \PROC|Multiplexar|Selector14~8_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \PROC|ControlUnityBlock|Selector15~2_combout\,
	ena => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X21_Y21_N4
\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- (\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- !\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X21_Y21_N5
\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \PROC|Multiplexar|Selector13~6_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \PROC|ControlUnityBlock|Selector15~2_combout\,
	ena => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X21_Y21_N8
\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & 
-- (\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & 
-- (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & 
-- !\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X21_Y21_N9
\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	asdata => \PROC|Multiplexar|Selector11~6_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \PROC|ControlUnityBlock|Selector15~2_combout\,
	ena => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X21_Y21_N10
\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & 
-- (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & 
-- ((\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # 
-- (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X21_Y21_N12
\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & 
-- (\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & 
-- (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & 
-- !\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCCOMB_X21_Y21_N14
\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & 
-- (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & 
-- ((\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # 
-- (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datad => VCC,
	cin => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: FF_X21_Y21_N15
\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	asdata => \PROC|Multiplexar|Selector8~6_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \PROC|ControlUnityBlock|Selector15~2_combout\,
	ena => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X21_Y21_N16
\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\ = (\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & 
-- (\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & 
-- (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ & VCC))
-- \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\ = CARRY((\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8) & 
-- !\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datad => VCC,
	cin => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	cout => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\);

-- Location: FF_X21_Y21_N17
\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita8~combout\,
	asdata => \PROC|Multiplexar|Selector7~6_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \PROC|ControlUnityBlock|Selector15~2_combout\,
	ena => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8));

-- Location: LCCOMB_X25_Y21_N10
\PROC|ControlUnityBlock|Selector20~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector20~3_combout\ = (\PROC|ControlUnityBlock|Selector19~2_combout\ & (!\PROC|ControlUnityBlock|present_state.storage~q\ & (!\PROC|IntructionRegister|Q\(5) & \PROC|ControlUnityBlock|Selector19~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector19~2_combout\,
	datab => \PROC|ControlUnityBlock|present_state.storage~q\,
	datac => \PROC|IntructionRegister|Q\(5),
	datad => \PROC|ControlUnityBlock|Selector19~4_combout\,
	combout => \PROC|ControlUnityBlock|Selector20~3_combout\);

-- Location: LCCOMB_X24_Y21_N8
\PROC|ControlUnityBlock|Selector21~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector21~2_combout\ = (\PROC|IntructionRegister|Q\(3) & (\PROC|ControlUnityBlock|Selector20~3_combout\ & !\PROC|IntructionRegister|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IntructionRegister|Q\(3),
	datac => \PROC|ControlUnityBlock|Selector20~3_combout\,
	datad => \PROC|IntructionRegister|Q\(4),
	combout => \PROC|ControlUnityBlock|Selector21~2_combout\);

-- Location: FF_X23_Y20_N25
\PROC|REGISTERS:1:RegisterBlocks|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector7~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:1:RegisterBlocks|Q\(8));

-- Location: LCCOMB_X23_Y20_N24
\PROC|Multiplexar|Selector7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector7~1_combout\ = (\PROC|Multiplexar|Mbus~2_combout\ & ((\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8)) # ((\PROC|REGISTERS:1:RegisterBlocks|Q\(8) & \PROC|Multiplexar|Equal1~0_combout\)))) # 
-- (!\PROC|Multiplexar|Mbus~2_combout\ & (((\PROC|REGISTERS:1:RegisterBlocks|Q\(8) & \PROC|Multiplexar|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Mbus~2_combout\,
	datab => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(8),
	datac => \PROC|REGISTERS:1:RegisterBlocks|Q\(8),
	datad => \PROC|Multiplexar|Equal1~0_combout\,
	combout => \PROC|Multiplexar|Selector7~1_combout\);

-- Location: LCCOMB_X22_Y19_N12
\PROC|REGISTERS:3:RegisterBlocks|Q[8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|REGISTERS:3:RegisterBlocks|Q[8]~feeder_combout\ = \PROC|Multiplexar|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|Multiplexar|Selector7~6_combout\,
	combout => \PROC|REGISTERS:3:RegisterBlocks|Q[8]~feeder_combout\);

-- Location: LCCOMB_X24_Y21_N28
\PROC|ControlUnityBlock|Selector19~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector19~5_combout\ = (\PROC|ControlUnityBlock|Selector20~3_combout\ & (\PROC|IntructionRegister|Q\(4) & \PROC|IntructionRegister|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector20~3_combout\,
	datab => \PROC|IntructionRegister|Q\(4),
	datad => \PROC|IntructionRegister|Q\(3),
	combout => \PROC|ControlUnityBlock|Selector19~5_combout\);

-- Location: FF_X22_Y19_N13
\PROC|REGISTERS:3:RegisterBlocks|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|REGISTERS:3:RegisterBlocks|Q[8]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector19~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:3:RegisterBlocks|Q\(8));

-- Location: FF_X22_Y19_N19
\PROC|REGISTERS:5:RegisterBlocks|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector7~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector17~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:5:RegisterBlocks|Q\(8));

-- Location: LCCOMB_X22_Y19_N18
\PROC|Multiplexar|Selector7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector7~4_combout\ = (\PROC|Multiplexar|Equal3~0_combout\ & ((\PROC|REGISTERS:3:RegisterBlocks|Q\(8)) # ((\PROC|REGISTERS:5:RegisterBlocks|Q\(8) & \PROC|Multiplexar|Equal5~1_combout\)))) # (!\PROC|Multiplexar|Equal3~0_combout\ & 
-- (((\PROC|REGISTERS:5:RegisterBlocks|Q\(8) & \PROC|Multiplexar|Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Equal3~0_combout\,
	datab => \PROC|REGISTERS:3:RegisterBlocks|Q\(8),
	datac => \PROC|REGISTERS:5:RegisterBlocks|Q\(8),
	datad => \PROC|Multiplexar|Equal5~1_combout\,
	combout => \PROC|Multiplexar|Selector7~4_combout\);

-- Location: LCCOMB_X24_Y21_N24
\PROC|ControlUnityBlock|Selector18~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector18~3_combout\ = (\PROC|ControlUnityBlock|Selector17~3_combout\ & (!\PROC|IntructionRegister|Q\(4) & !\PROC|IntructionRegister|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector17~3_combout\,
	datab => \PROC|IntructionRegister|Q\(4),
	datad => \PROC|IntructionRegister|Q\(3),
	combout => \PROC|ControlUnityBlock|Selector18~3_combout\);

-- Location: FF_X21_Y22_N15
\PROC|REGISTERS:4:RegisterBlocks|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector7~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector18~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:4:RegisterBlocks|Q\(8));

-- Location: LCCOMB_X23_Y22_N14
\PROC|REGISTERS:0:RegisterBlocks|Q[8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|REGISTERS:0:RegisterBlocks|Q[8]~feeder_combout\ = \PROC|Multiplexar|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|Multiplexar|Selector7~6_combout\,
	combout => \PROC|REGISTERS:0:RegisterBlocks|Q[8]~feeder_combout\);

-- Location: LCCOMB_X24_Y21_N14
\PROC|ControlUnityBlock|Selector22~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector22~2_combout\ = (!\PROC|IntructionRegister|Q\(3) & (\PROC|ControlUnityBlock|Selector20~3_combout\ & !\PROC|IntructionRegister|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IntructionRegister|Q\(3),
	datac => \PROC|ControlUnityBlock|Selector20~3_combout\,
	datad => \PROC|IntructionRegister|Q\(4),
	combout => \PROC|ControlUnityBlock|Selector22~2_combout\);

-- Location: FF_X23_Y22_N15
\PROC|REGISTERS:0:RegisterBlocks|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|REGISTERS:0:RegisterBlocks|Q[8]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:0:RegisterBlocks|Q\(8));

-- Location: LCCOMB_X25_Y21_N8
\PROC|ControlUnityBlock|Selector16~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector16~2_combout\ = (!\PROC|IntructionRegister|Q\(3) & (\PROC|IntructionRegister|Q\(4) & \PROC|ControlUnityBlock|Selector17~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IntructionRegister|Q\(3),
	datac => \PROC|IntructionRegister|Q\(4),
	datad => \PROC|ControlUnityBlock|Selector17~3_combout\,
	combout => \PROC|ControlUnityBlock|Selector16~2_combout\);

-- Location: FF_X21_Y22_N1
\PROC|REGISTERS:6:RegisterBlocks|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector7~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:6:RegisterBlocks|Q\(8));

-- Location: LCCOMB_X21_Y22_N0
\PROC|Multiplexar|Selector7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector7~3_combout\ = (\PROC|Multiplexar|Equal6~1_combout\ & ((\PROC|REGISTERS:6:RegisterBlocks|Q\(8)) # ((\PROC|REGISTERS:0:RegisterBlocks|Q\(8) & \PROC|Multiplexar|Equal0~2_combout\)))) # (!\PROC|Multiplexar|Equal6~1_combout\ & 
-- (\PROC|REGISTERS:0:RegisterBlocks|Q\(8) & ((\PROC|Multiplexar|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Equal6~1_combout\,
	datab => \PROC|REGISTERS:0:RegisterBlocks|Q\(8),
	datac => \PROC|REGISTERS:6:RegisterBlocks|Q\(8),
	datad => \PROC|Multiplexar|Equal0~2_combout\,
	combout => \PROC|Multiplexar|Selector7~3_combout\);

-- Location: LCCOMB_X21_Y22_N14
\PROC|Multiplexar|Selector7~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector7~5_combout\ = (\PROC|Multiplexar|Selector7~4_combout\) # ((\PROC|Multiplexar|Selector7~3_combout\) # ((\PROC|Multiplexar|Equal4~1_combout\ & \PROC|REGISTERS:4:RegisterBlocks|Q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Equal4~1_combout\,
	datab => \PROC|Multiplexar|Selector7~4_combout\,
	datac => \PROC|REGISTERS:4:RegisterBlocks|Q\(8),
	datad => \PROC|Multiplexar|Selector7~3_combout\,
	combout => \PROC|Multiplexar|Selector7~5_combout\);

-- Location: LCCOMB_X22_Y22_N2
\PROC|Multiplexar|Selector7~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector7~6_combout\ = (\PROC|Multiplexar|Selector7~0_combout\) # ((\PROC|Multiplexar|Selector7~2_combout\) # ((\PROC|Multiplexar|Selector7~1_combout\) # (\PROC|Multiplexar|Selector7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Selector7~0_combout\,
	datab => \PROC|Multiplexar|Selector7~2_combout\,
	datac => \PROC|Multiplexar|Selector7~1_combout\,
	datad => \PROC|Multiplexar|Selector7~5_combout\,
	combout => \PROC|Multiplexar|Selector7~6_combout\);

-- Location: LCCOMB_X23_Y18_N20
\PROC|DOUT_Register|Q[8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|DOUT_Register|Q[8]~feeder_combout\ = \PROC|Multiplexar|Selector7~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|Multiplexar|Selector7~6_combout\,
	combout => \PROC|DOUT_Register|Q[8]~feeder_combout\);

-- Location: FF_X23_Y18_N21
\PROC|DOUT_Register|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|DOUT_Register|Q[8]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|DOUTin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|DOUT_Register|Q\(8));

-- Location: LCCOMB_X21_Y21_N18
\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\ = (\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & 
-- (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\)) # (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9) & 
-- ((\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\) # 
-- (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datad => VCC,
	cin => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita8~COUT\,
	combout => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	cout => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\);

-- Location: FF_X21_Y21_N19
\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita9~combout\,
	asdata => \PROC|Multiplexar|Selector6~6_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \PROC|ControlUnityBlock|Selector15~2_combout\,
	ena => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9));

-- Location: FF_X23_Y20_N15
\PROC|REGISTERS:1:RegisterBlocks|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector6~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:1:RegisterBlocks|Q\(9));

-- Location: LCCOMB_X23_Y20_N14
\PROC|Multiplexar|Selector6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector6~1_combout\ = (\PROC|Multiplexar|Mbus~2_combout\ & ((\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9)) # ((\PROC|REGISTERS:1:RegisterBlocks|Q\(9) & \PROC|Multiplexar|Equal1~0_combout\)))) # 
-- (!\PROC|Multiplexar|Mbus~2_combout\ & (((\PROC|REGISTERS:1:RegisterBlocks|Q\(9) & \PROC|Multiplexar|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Mbus~2_combout\,
	datab => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(9),
	datac => \PROC|REGISTERS:1:RegisterBlocks|Q\(9),
	datad => \PROC|Multiplexar|Equal1~0_combout\,
	combout => \PROC|Multiplexar|Selector6~1_combout\);

-- Location: LCCOMB_X24_Y18_N2
\PROC|Multiplexar|Selector6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector6~2_combout\ = (\PROC|addSubRegister|Q\(9) & ((\PROC|Multiplexar|Equal8~0_combout\) # ((\MEMORY|altsyncram_component|auto_generated|q_a\(9) & \PROC|Multiplexar|Equal9~0_combout\)))) # (!\PROC|addSubRegister|Q\(9) & 
-- (\MEMORY|altsyncram_component|auto_generated|q_a\(9) & (\PROC|Multiplexar|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|addSubRegister|Q\(9),
	datab => \MEMORY|altsyncram_component|auto_generated|q_a\(9),
	datac => \PROC|Multiplexar|Equal9~0_combout\,
	datad => \PROC|Multiplexar|Equal8~0_combout\,
	combout => \PROC|Multiplexar|Selector6~2_combout\);

-- Location: LCCOMB_X23_Y19_N18
\PROC|ControlUnityBlock|Selector29~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector29~0_combout\ = (!\PROC|IntructionRegister|Q\(0) & (\PROC|ControlUnityBlock|Selector28~0_combout\ & (!\PROC|ControlUnityBlock|Selector31~1_combout\ & !\PROC|ControlUnityBlock|Selector31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IntructionRegister|Q\(0),
	datab => \PROC|ControlUnityBlock|Selector28~0_combout\,
	datac => \PROC|ControlUnityBlock|Selector31~1_combout\,
	datad => \PROC|ControlUnityBlock|Selector31~0_combout\,
	combout => \PROC|ControlUnityBlock|Selector29~0_combout\);

-- Location: LCCOMB_X24_Y21_N6
\PROC|ControlUnityBlock|Selector18~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector18~2_combout\ = (!\PROC|IntructionRegister|Q\(4) & !\PROC|IntructionRegister|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|IntructionRegister|Q\(4),
	datad => \PROC|IntructionRegister|Q\(3),
	combout => \PROC|ControlUnityBlock|Selector18~2_combout\);

-- Location: LCCOMB_X23_Y19_N8
\PROC|ControlUnityBlock|Selector29~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector29~1_combout\ = (\PROC|IntructionRegister|Q\(5) & (\PROC|ControlUnityBlock|Selector18~2_combout\ & ((\PROC|ControlUnityBlock|Selector31~1_combout\) # (\PROC|ControlUnityBlock|Selector31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IntructionRegister|Q\(5),
	datab => \PROC|ControlUnityBlock|Selector18~2_combout\,
	datac => \PROC|ControlUnityBlock|Selector31~1_combout\,
	datad => \PROC|ControlUnityBlock|Selector31~0_combout\,
	combout => \PROC|ControlUnityBlock|Selector29~1_combout\);

-- Location: LCCOMB_X23_Y19_N6
\PROC|ControlUnityBlock|Selector29~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector29~2_combout\ = (!\PROC|ControlUnityBlock|Selector31~5_combout\ & (!\PROC|ControlUnityBlock|Selector31~6_combout\ & ((\PROC|ControlUnityBlock|Selector29~0_combout\) # (\PROC|ControlUnityBlock|Selector29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector31~5_combout\,
	datab => \PROC|ControlUnityBlock|Selector29~0_combout\,
	datac => \PROC|ControlUnityBlock|Selector29~1_combout\,
	datad => \PROC|ControlUnityBlock|Selector31~6_combout\,
	combout => \PROC|ControlUnityBlock|Selector29~2_combout\);

-- Location: LCCOMB_X24_Y19_N14
\PROC|Multiplexar|Equal4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Equal4~0_combout\ = (!\PROC|ControlUnityBlock|Selector33~3_combout\ & (\PROC|ControlUnityBlock|Selector29~2_combout\ & !\PROC|ControlUnityBlock|Selector32~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|ControlUnityBlock|Selector33~3_combout\,
	datac => \PROC|ControlUnityBlock|Selector29~2_combout\,
	datad => \PROC|ControlUnityBlock|Selector32~2_combout\,
	combout => \PROC|Multiplexar|Equal4~0_combout\);

-- Location: LCCOMB_X24_Y19_N16
\PROC|Multiplexar|Equal4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Equal4~1_combout\ = (\PROC|Multiplexar|Equal0~0_combout\ & (!\PROC|ControlUnityBlock|Selector26~2_combout\ & (\PROC|Multiplexar|Equal4~0_combout\ & \PROC|Multiplexar|Mbus~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Equal0~0_combout\,
	datab => \PROC|ControlUnityBlock|Selector26~2_combout\,
	datac => \PROC|Multiplexar|Equal4~0_combout\,
	datad => \PROC|Multiplexar|Mbus~0_combout\,
	combout => \PROC|Multiplexar|Equal4~1_combout\);

-- Location: FF_X24_Y20_N25
\PROC|REGISTERS:4:RegisterBlocks|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector6~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector18~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:4:RegisterBlocks|Q\(9));

-- Location: LCCOMB_X22_Y19_N4
\PROC|REGISTERS:3:RegisterBlocks|Q[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|REGISTERS:3:RegisterBlocks|Q[9]~feeder_combout\ = \PROC|Multiplexar|Selector6~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|Multiplexar|Selector6~6_combout\,
	combout => \PROC|REGISTERS:3:RegisterBlocks|Q[9]~feeder_combout\);

-- Location: FF_X22_Y19_N5
\PROC|REGISTERS:3:RegisterBlocks|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|REGISTERS:3:RegisterBlocks|Q[9]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector19~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:3:RegisterBlocks|Q\(9));

-- Location: FF_X22_Y19_N3
\PROC|REGISTERS:5:RegisterBlocks|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector6~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector17~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:5:RegisterBlocks|Q\(9));

-- Location: LCCOMB_X22_Y19_N2
\PROC|Multiplexar|Selector6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector6~4_combout\ = (\PROC|Multiplexar|Equal3~0_combout\ & ((\PROC|REGISTERS:3:RegisterBlocks|Q\(9)) # ((\PROC|REGISTERS:5:RegisterBlocks|Q\(9) & \PROC|Multiplexar|Equal5~1_combout\)))) # (!\PROC|Multiplexar|Equal3~0_combout\ & 
-- (((\PROC|REGISTERS:5:RegisterBlocks|Q\(9) & \PROC|Multiplexar|Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Equal3~0_combout\,
	datab => \PROC|REGISTERS:3:RegisterBlocks|Q\(9),
	datac => \PROC|REGISTERS:5:RegisterBlocks|Q\(9),
	datad => \PROC|Multiplexar|Equal5~1_combout\,
	combout => \PROC|Multiplexar|Selector6~4_combout\);

-- Location: LCCOMB_X24_Y20_N24
\PROC|Multiplexar|Selector6~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector6~5_combout\ = (\PROC|Multiplexar|Selector6~3_combout\) # ((\PROC|Multiplexar|Selector6~4_combout\) # ((\PROC|Multiplexar|Equal4~1_combout\ & \PROC|REGISTERS:4:RegisterBlocks|Q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Selector6~3_combout\,
	datab => \PROC|Multiplexar|Equal4~1_combout\,
	datac => \PROC|REGISTERS:4:RegisterBlocks|Q\(9),
	datad => \PROC|Multiplexar|Selector6~4_combout\,
	combout => \PROC|Multiplexar|Selector6~5_combout\);

-- Location: LCCOMB_X23_Y20_N20
\PROC|Multiplexar|Selector6~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector6~6_combout\ = (\PROC|Multiplexar|Selector6~0_combout\) # ((\PROC|Multiplexar|Selector6~1_combout\) # ((\PROC|Multiplexar|Selector6~2_combout\) # (\PROC|Multiplexar|Selector6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Selector6~0_combout\,
	datab => \PROC|Multiplexar|Selector6~1_combout\,
	datac => \PROC|Multiplexar|Selector6~2_combout\,
	datad => \PROC|Multiplexar|Selector6~5_combout\,
	combout => \PROC|Multiplexar|Selector6~6_combout\);

-- Location: LCCOMB_X23_Y18_N10
\PROC|DOUT_Register|Q[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|DOUT_Register|Q[9]~feeder_combout\ = \PROC|Multiplexar|Selector6~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|Multiplexar|Selector6~6_combout\,
	combout => \PROC|DOUT_Register|Q[9]~feeder_combout\);

-- Location: FF_X23_Y18_N11
\PROC|DOUT_Register|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|DOUT_Register|Q[9]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|DOUTin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|DOUT_Register|Q\(9));

-- Location: LCCOMB_X21_Y21_N20
\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\ = (\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & 
-- (\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & 
-- (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\ & VCC))
-- \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\ = CARRY((\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10) & 
-- !\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	datad => VCC,
	cin => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita9~COUT\,
	combout => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	cout => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\);

-- Location: FF_X21_Y21_N21
\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita10~combout\,
	asdata => \PROC|Multiplexar|Selector5~6_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \PROC|ControlUnityBlock|Selector15~2_combout\,
	ena => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10));

-- Location: FF_X21_Y20_N17
\PROC|REGISTERS:1:RegisterBlocks|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector5~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:1:RegisterBlocks|Q\(10));

-- Location: LCCOMB_X21_Y20_N16
\PROC|Multiplexar|Selector5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector5~1_combout\ = (\PROC|Multiplexar|Mbus~2_combout\ & ((\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10)) # ((\PROC|REGISTERS:1:RegisterBlocks|Q\(10) & \PROC|Multiplexar|Equal1~0_combout\)))) # 
-- (!\PROC|Multiplexar|Mbus~2_combout\ & (((\PROC|REGISTERS:1:RegisterBlocks|Q\(10) & \PROC|Multiplexar|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Mbus~2_combout\,
	datab => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(10),
	datac => \PROC|REGISTERS:1:RegisterBlocks|Q\(10),
	datad => \PROC|Multiplexar|Equal1~0_combout\,
	combout => \PROC|Multiplexar|Selector5~1_combout\);

-- Location: FF_X21_Y19_N15
\PROC|REGISTERS:2:RegisterBlocks|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector5~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector20~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:2:RegisterBlocks|Q\(10));

-- Location: LCCOMB_X21_Y19_N14
\PROC|Multiplexar|Selector5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector5~0_combout\ = (\PROC|REGISTERS:2:RegisterBlocks|Q\(10) & \PROC|Multiplexar|Equal2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|REGISTERS:2:RegisterBlocks|Q\(10),
	datad => \PROC|Multiplexar|Equal2~2_combout\,
	combout => \PROC|Multiplexar|Selector5~0_combout\);

-- Location: LCCOMB_X21_Y22_N24
\PROC|REGISTERS:4:RegisterBlocks|Q[10]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|REGISTERS:4:RegisterBlocks|Q[10]~feeder_combout\ = \PROC|Multiplexar|Selector5~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|Multiplexar|Selector5~6_combout\,
	combout => \PROC|REGISTERS:4:RegisterBlocks|Q[10]~feeder_combout\);

-- Location: FF_X21_Y22_N25
\PROC|REGISTERS:4:RegisterBlocks|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|REGISTERS:4:RegisterBlocks|Q[10]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector18~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:4:RegisterBlocks|Q\(10));

-- Location: LCCOMB_X25_Y20_N20
\PROC|REGISTERS:6:RegisterBlocks|Q[10]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|REGISTERS:6:RegisterBlocks|Q[10]~feeder_combout\ = \PROC|Multiplexar|Selector5~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|Multiplexar|Selector5~6_combout\,
	combout => \PROC|REGISTERS:6:RegisterBlocks|Q[10]~feeder_combout\);

-- Location: FF_X25_Y20_N21
\PROC|REGISTERS:6:RegisterBlocks|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|REGISTERS:6:RegisterBlocks|Q[10]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:6:RegisterBlocks|Q\(10));

-- Location: LCCOMB_X25_Y19_N8
\PROC|Multiplexar|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Equal0~0_combout\ = (!\PROC|ControlUnityBlock|Selector25~0_combout\ & (((!\PROC|ControlUnityBlock|present_state.load~q\ & !\PROC|ControlUnityBlock|present_state.loadImmediate~q\)) # (!\PROC|ControlUnityBlock|Mux39~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Mux39~0_combout\,
	datab => \PROC|ControlUnityBlock|present_state.load~q\,
	datac => \PROC|ControlUnityBlock|present_state.loadImmediate~q\,
	datad => \PROC|ControlUnityBlock|Selector25~0_combout\,
	combout => \PROC|Multiplexar|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y19_N2
\PROC|Multiplexar|Equal5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Equal5~0_combout\ = (!\PROC|ControlUnityBlock|Selector31~10_combout\ & (\PROC|Multiplexar|Equal0~0_combout\ & (!\PROC|ControlUnityBlock|Selector30~2_combout\ & !\PROC|ControlUnityBlock|Selector26~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector31~10_combout\,
	datab => \PROC|Multiplexar|Equal0~0_combout\,
	datac => \PROC|ControlUnityBlock|Selector30~2_combout\,
	datad => \PROC|ControlUnityBlock|Selector26~2_combout\,
	combout => \PROC|Multiplexar|Equal5~0_combout\);

-- Location: LCCOMB_X23_Y19_N28
\PROC|Multiplexar|Equal6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Equal6~0_combout\ = (!\PROC|ControlUnityBlock|Selector29~2_combout\ & (!\PROC|ControlUnityBlock|Selector28~3_combout\ & (!\PROC|ControlUnityBlock|Selector32~2_combout\ & !\PROC|ControlUnityBlock|Selector33~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector29~2_combout\,
	datab => \PROC|ControlUnityBlock|Selector28~3_combout\,
	datac => \PROC|ControlUnityBlock|Selector32~2_combout\,
	datad => \PROC|ControlUnityBlock|Selector33~3_combout\,
	combout => \PROC|Multiplexar|Equal6~0_combout\);

-- Location: LCCOMB_X25_Y19_N16
\PROC|Multiplexar|Equal6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Equal6~1_combout\ = (\PROC|ControlUnityBlock|Selector27~3_combout\ & (\PROC|Multiplexar|Equal5~0_combout\ & \PROC|Multiplexar|Equal6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|ControlUnityBlock|Selector27~3_combout\,
	datac => \PROC|Multiplexar|Equal5~0_combout\,
	datad => \PROC|Multiplexar|Equal6~0_combout\,
	combout => \PROC|Multiplexar|Equal6~1_combout\);

-- Location: LCCOMB_X25_Y20_N26
\PROC|Multiplexar|Selector5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector5~3_combout\ = (\PROC|REGISTERS:0:RegisterBlocks|Q\(10) & ((\PROC|Multiplexar|Equal0~2_combout\) # ((\PROC|REGISTERS:6:RegisterBlocks|Q\(10) & \PROC|Multiplexar|Equal6~1_combout\)))) # (!\PROC|REGISTERS:0:RegisterBlocks|Q\(10) & 
-- (\PROC|REGISTERS:6:RegisterBlocks|Q\(10) & ((\PROC|Multiplexar|Equal6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|REGISTERS:0:RegisterBlocks|Q\(10),
	datab => \PROC|REGISTERS:6:RegisterBlocks|Q\(10),
	datac => \PROC|Multiplexar|Equal0~2_combout\,
	datad => \PROC|Multiplexar|Equal6~1_combout\,
	combout => \PROC|Multiplexar|Selector5~3_combout\);

-- Location: FF_X24_Y22_N31
\PROC|REGISTERS:3:RegisterBlocks|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector5~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector19~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:3:RegisterBlocks|Q\(10));

-- Location: LCCOMB_X24_Y19_N18
\PROC|Multiplexar|Equal2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Equal2~1_combout\ = (\PROC|Multiplexar|Equal0~0_combout\ & (!\PROC|ControlUnityBlock|Selector26~2_combout\ & !\PROC|ControlUnityBlock|Selector27~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Equal0~0_combout\,
	datab => \PROC|ControlUnityBlock|Selector26~2_combout\,
	datad => \PROC|ControlUnityBlock|Selector27~3_combout\,
	combout => \PROC|Multiplexar|Equal2~1_combout\);

-- Location: LCCOMB_X23_Y19_N2
\PROC|Multiplexar|Equal3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Equal3~0_combout\ = (!\PROC|ControlUnityBlock|Selector31~10_combout\ & (\PROC|Multiplexar|Equal6~0_combout\ & (\PROC|ControlUnityBlock|Selector30~2_combout\ & \PROC|Multiplexar|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector31~10_combout\,
	datab => \PROC|Multiplexar|Equal6~0_combout\,
	datac => \PROC|ControlUnityBlock|Selector30~2_combout\,
	datad => \PROC|Multiplexar|Equal2~1_combout\,
	combout => \PROC|Multiplexar|Equal3~0_combout\);

-- Location: LCCOMB_X24_Y22_N30
\PROC|Multiplexar|Selector5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector5~4_combout\ = (\PROC|REGISTERS:5:RegisterBlocks|Q\(10) & ((\PROC|Multiplexar|Equal5~1_combout\) # ((\PROC|REGISTERS:3:RegisterBlocks|Q\(10) & \PROC|Multiplexar|Equal3~0_combout\)))) # (!\PROC|REGISTERS:5:RegisterBlocks|Q\(10) & 
-- (((\PROC|REGISTERS:3:RegisterBlocks|Q\(10) & \PROC|Multiplexar|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|REGISTERS:5:RegisterBlocks|Q\(10),
	datab => \PROC|Multiplexar|Equal5~1_combout\,
	datac => \PROC|REGISTERS:3:RegisterBlocks|Q\(10),
	datad => \PROC|Multiplexar|Equal3~0_combout\,
	combout => \PROC|Multiplexar|Selector5~4_combout\);

-- Location: LCCOMB_X25_Y20_N28
\PROC|Multiplexar|Selector5~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector5~5_combout\ = (\PROC|Multiplexar|Selector5~3_combout\) # ((\PROC|Multiplexar|Selector5~4_combout\) # ((\PROC|Multiplexar|Equal4~1_combout\ & \PROC|REGISTERS:4:RegisterBlocks|Q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Equal4~1_combout\,
	datab => \PROC|REGISTERS:4:RegisterBlocks|Q\(10),
	datac => \PROC|Multiplexar|Selector5~3_combout\,
	datad => \PROC|Multiplexar|Selector5~4_combout\,
	combout => \PROC|Multiplexar|Selector5~5_combout\);

-- Location: LCCOMB_X21_Y20_N8
\PROC|Multiplexar|Selector5~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector5~6_combout\ = (\PROC|Multiplexar|Selector5~2_combout\) # ((\PROC|Multiplexar|Selector5~1_combout\) # ((\PROC|Multiplexar|Selector5~0_combout\) # (\PROC|Multiplexar|Selector5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Selector5~2_combout\,
	datab => \PROC|Multiplexar|Selector5~1_combout\,
	datac => \PROC|Multiplexar|Selector5~0_combout\,
	datad => \PROC|Multiplexar|Selector5~5_combout\,
	combout => \PROC|Multiplexar|Selector5~6_combout\);

-- Location: LCCOMB_X21_Y18_N4
\PROC|DOUT_Register|Q[10]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|DOUT_Register|Q[10]~feeder_combout\ = \PROC|Multiplexar|Selector5~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|Multiplexar|Selector5~6_combout\,
	combout => \PROC|DOUT_Register|Q[10]~feeder_combout\);

-- Location: FF_X21_Y18_N5
\PROC|DOUT_Register|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|DOUT_Register|Q[10]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|DOUTin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|DOUT_Register|Q\(10));

-- Location: FF_X21_Y19_N1
\PROC|REGISTERS:2:RegisterBlocks|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector4~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector20~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:2:RegisterBlocks|Q\(11));

-- Location: LCCOMB_X21_Y19_N0
\PROC|Multiplexar|Selector4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector4~0_combout\ = (\PROC|REGISTERS:2:RegisterBlocks|Q\(11) & \PROC|Multiplexar|Equal2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|REGISTERS:2:RegisterBlocks|Q\(11),
	datad => \PROC|Multiplexar|Equal2~2_combout\,
	combout => \PROC|Multiplexar|Selector4~0_combout\);

-- Location: LCCOMB_X21_Y21_N22
\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\ = (\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11) & 
-- (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\)) # (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11) & 
-- ((\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # (GND)))
-- \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\) # 
-- (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11),
	datad => VCC,
	cin => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita10~COUT\,
	combout => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	cout => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\);

-- Location: FF_X21_Y21_N23
\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita11~combout\,
	asdata => \PROC|Multiplexar|Selector4~6_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \PROC|ControlUnityBlock|Selector15~2_combout\,
	ena => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11));

-- Location: FF_X21_Y20_N23
\PROC|REGISTERS:1:RegisterBlocks|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector4~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:1:RegisterBlocks|Q\(11));

-- Location: LCCOMB_X21_Y20_N22
\PROC|Multiplexar|Selector4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector4~1_combout\ = (\PROC|Multiplexar|Mbus~2_combout\ & ((\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11)) # ((\PROC|REGISTERS:1:RegisterBlocks|Q\(11) & \PROC|Multiplexar|Equal1~0_combout\)))) # 
-- (!\PROC|Multiplexar|Mbus~2_combout\ & (((\PROC|REGISTERS:1:RegisterBlocks|Q\(11) & \PROC|Multiplexar|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Mbus~2_combout\,
	datab => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(11),
	datac => \PROC|REGISTERS:1:RegisterBlocks|Q\(11),
	datad => \PROC|Multiplexar|Equal1~0_combout\,
	combout => \PROC|Multiplexar|Selector4~1_combout\);

-- Location: LCCOMB_X20_Y20_N2
\PROC|REGISTERS:6:RegisterBlocks|Q[11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|REGISTERS:6:RegisterBlocks|Q[11]~feeder_combout\ = \PROC|Multiplexar|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|Multiplexar|Selector4~6_combout\,
	combout => \PROC|REGISTERS:6:RegisterBlocks|Q[11]~feeder_combout\);

-- Location: FF_X20_Y20_N3
\PROC|REGISTERS:6:RegisterBlocks|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|REGISTERS:6:RegisterBlocks|Q[11]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:6:RegisterBlocks|Q\(11));

-- Location: LCCOMB_X24_Y20_N14
\PROC|Multiplexar|Selector4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector4~3_combout\ = (\PROC|REGISTERS:0:RegisterBlocks|Q\(11) & ((\PROC|Multiplexar|Equal0~2_combout\) # ((\PROC|Multiplexar|Equal6~1_combout\ & \PROC|REGISTERS:6:RegisterBlocks|Q\(11))))) # (!\PROC|REGISTERS:0:RegisterBlocks|Q\(11) & 
-- (\PROC|Multiplexar|Equal6~1_combout\ & (\PROC|REGISTERS:6:RegisterBlocks|Q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|REGISTERS:0:RegisterBlocks|Q\(11),
	datab => \PROC|Multiplexar|Equal6~1_combout\,
	datac => \PROC|REGISTERS:6:RegisterBlocks|Q\(11),
	datad => \PROC|Multiplexar|Equal0~2_combout\,
	combout => \PROC|Multiplexar|Selector4~3_combout\);

-- Location: FF_X24_Y20_N17
\PROC|REGISTERS:4:RegisterBlocks|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector4~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector18~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:4:RegisterBlocks|Q\(11));

-- Location: LCCOMB_X22_Y19_N16
\PROC|REGISTERS:3:RegisterBlocks|Q[11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|REGISTERS:3:RegisterBlocks|Q[11]~feeder_combout\ = \PROC|Multiplexar|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|Multiplexar|Selector4~6_combout\,
	combout => \PROC|REGISTERS:3:RegisterBlocks|Q[11]~feeder_combout\);

-- Location: FF_X22_Y19_N17
\PROC|REGISTERS:3:RegisterBlocks|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|REGISTERS:3:RegisterBlocks|Q[11]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector19~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:3:RegisterBlocks|Q\(11));

-- Location: FF_X22_Y19_N31
\PROC|REGISTERS:5:RegisterBlocks|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector4~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector17~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:5:RegisterBlocks|Q\(11));

-- Location: LCCOMB_X22_Y19_N30
\PROC|Multiplexar|Selector4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector4~4_combout\ = (\PROC|Multiplexar|Equal3~0_combout\ & ((\PROC|REGISTERS:3:RegisterBlocks|Q\(11)) # ((\PROC|REGISTERS:5:RegisterBlocks|Q\(11) & \PROC|Multiplexar|Equal5~1_combout\)))) # (!\PROC|Multiplexar|Equal3~0_combout\ & 
-- (((\PROC|REGISTERS:5:RegisterBlocks|Q\(11) & \PROC|Multiplexar|Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Equal3~0_combout\,
	datab => \PROC|REGISTERS:3:RegisterBlocks|Q\(11),
	datac => \PROC|REGISTERS:5:RegisterBlocks|Q\(11),
	datad => \PROC|Multiplexar|Equal5~1_combout\,
	combout => \PROC|Multiplexar|Selector4~4_combout\);

-- Location: LCCOMB_X24_Y20_N16
\PROC|Multiplexar|Selector4~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector4~5_combout\ = (\PROC|Multiplexar|Selector4~3_combout\) # ((\PROC|Multiplexar|Selector4~4_combout\) # ((\PROC|Multiplexar|Equal4~1_combout\ & \PROC|REGISTERS:4:RegisterBlocks|Q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Equal4~1_combout\,
	datab => \PROC|Multiplexar|Selector4~3_combout\,
	datac => \PROC|REGISTERS:4:RegisterBlocks|Q\(11),
	datad => \PROC|Multiplexar|Selector4~4_combout\,
	combout => \PROC|Multiplexar|Selector4~5_combout\);

-- Location: LCCOMB_X21_Y20_N18
\PROC|Multiplexar|Selector4~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector4~6_combout\ = (\PROC|Multiplexar|Selector4~2_combout\) # ((\PROC|Multiplexar|Selector4~0_combout\) # ((\PROC|Multiplexar|Selector4~1_combout\) # (\PROC|Multiplexar|Selector4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Selector4~2_combout\,
	datab => \PROC|Multiplexar|Selector4~0_combout\,
	datac => \PROC|Multiplexar|Selector4~1_combout\,
	datad => \PROC|Multiplexar|Selector4~5_combout\,
	combout => \PROC|Multiplexar|Selector4~6_combout\);

-- Location: LCCOMB_X21_Y18_N2
\PROC|DOUT_Register|Q[11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|DOUT_Register|Q[11]~feeder_combout\ = \PROC|Multiplexar|Selector4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|Multiplexar|Selector4~6_combout\,
	combout => \PROC|DOUT_Register|Q[11]~feeder_combout\);

-- Location: FF_X21_Y18_N3
\PROC|DOUT_Register|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|DOUT_Register|Q[11]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|DOUTin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|DOUT_Register|Q\(11));

-- Location: LCCOMB_X23_Y21_N20
\PROC|Multiplexar|Selector3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector3~2_combout\ = (\PROC|addSubRegister|Q\(12) & ((\PROC|Multiplexar|Equal8~0_combout\) # ((\PROC|Multiplexar|Equal9~0_combout\ & \MEMORY|altsyncram_component|auto_generated|q_a\(12))))) # (!\PROC|addSubRegister|Q\(12) & 
-- (((\PROC|Multiplexar|Equal9~0_combout\ & \MEMORY|altsyncram_component|auto_generated|q_a\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|addSubRegister|Q\(12),
	datab => \PROC|Multiplexar|Equal8~0_combout\,
	datac => \PROC|Multiplexar|Equal9~0_combout\,
	datad => \MEMORY|altsyncram_component|auto_generated|q_a\(12),
	combout => \PROC|Multiplexar|Selector3~2_combout\);

-- Location: FF_X23_Y21_N23
\PROC|REGISTERS:1:RegisterBlocks|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector3~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:1:RegisterBlocks|Q\(12));

-- Location: LCCOMB_X26_Y19_N20
\PROC|ControlUnityBlock|WideOr5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|WideOr5~0_combout\ = (\PROC|ControlUnityBlock|present_state.fetchInstruction~q\) # (\PROC|ControlUnityBlock|present_state.loadImmediate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|ControlUnityBlock|present_state.fetchInstruction~q\,
	datad => \PROC|ControlUnityBlock|present_state.loadImmediate~q\,
	combout => \PROC|ControlUnityBlock|WideOr5~0_combout\);

-- Location: LCCOMB_X23_Y20_N4
\PROC|Multiplexar|Mbus~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Mbus~1_combout\ = (\PROC|ControlUnityBlock|Selector26~2_combout\ & (((\PROC|Multiplexar|Equal0~0_combout\)))) # (!\PROC|ControlUnityBlock|Selector26~2_combout\ & (\PROC|ControlUnityBlock|Mux39~2_combout\ & 
-- (\PROC|ControlUnityBlock|WideOr5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Mux39~2_combout\,
	datab => \PROC|ControlUnityBlock|Selector26~2_combout\,
	datac => \PROC|ControlUnityBlock|WideOr5~0_combout\,
	datad => \PROC|Multiplexar|Equal0~0_combout\,
	combout => \PROC|Multiplexar|Mbus~1_combout\);

-- Location: LCCOMB_X23_Y20_N12
\PROC|Multiplexar|Mbus~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Mbus~2_combout\ = (\PROC|Multiplexar|Equal2~0_combout\ & (\PROC|Multiplexar|Mbus~1_combout\ & \PROC|Multiplexar|Mbus~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|Multiplexar|Equal2~0_combout\,
	datac => \PROC|Multiplexar|Mbus~1_combout\,
	datad => \PROC|Multiplexar|Mbus~0_combout\,
	combout => \PROC|Multiplexar|Mbus~2_combout\);

-- Location: LCCOMB_X23_Y21_N22
\PROC|Multiplexar|Selector3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector3~1_combout\ = (\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12) & ((\PROC|Multiplexar|Mbus~2_combout\) # ((\PROC|Multiplexar|Equal1~0_combout\ & \PROC|REGISTERS:1:RegisterBlocks|Q\(12))))) # 
-- (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12) & (\PROC|Multiplexar|Equal1~0_combout\ & (\PROC|REGISTERS:1:RegisterBlocks|Q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12),
	datab => \PROC|Multiplexar|Equal1~0_combout\,
	datac => \PROC|REGISTERS:1:RegisterBlocks|Q\(12),
	datad => \PROC|Multiplexar|Mbus~2_combout\,
	combout => \PROC|Multiplexar|Selector3~1_combout\);

-- Location: FF_X23_Y22_N5
\PROC|REGISTERS:4:RegisterBlocks|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector3~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector18~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:4:RegisterBlocks|Q\(12));

-- Location: FF_X23_Y22_N7
\PROC|REGISTERS:0:RegisterBlocks|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector3~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:0:RegisterBlocks|Q\(12));

-- Location: LCCOMB_X23_Y22_N6
\PROC|Multiplexar|Selector3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector3~3_combout\ = (\PROC|REGISTERS:6:RegisterBlocks|Q\(12) & ((\PROC|Multiplexar|Equal6~1_combout\) # ((\PROC|Multiplexar|Equal0~2_combout\ & \PROC|REGISTERS:0:RegisterBlocks|Q\(12))))) # (!\PROC|REGISTERS:6:RegisterBlocks|Q\(12) & 
-- (\PROC|Multiplexar|Equal0~2_combout\ & (\PROC|REGISTERS:0:RegisterBlocks|Q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|REGISTERS:6:RegisterBlocks|Q\(12),
	datab => \PROC|Multiplexar|Equal0~2_combout\,
	datac => \PROC|REGISTERS:0:RegisterBlocks|Q\(12),
	datad => \PROC|Multiplexar|Equal6~1_combout\,
	combout => \PROC|Multiplexar|Selector3~3_combout\);

-- Location: LCCOMB_X23_Y22_N4
\PROC|Multiplexar|Selector3~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector3~5_combout\ = (\PROC|Multiplexar|Selector3~4_combout\) # ((\PROC|Multiplexar|Selector3~3_combout\) # ((\PROC|Multiplexar|Equal4~1_combout\ & \PROC|REGISTERS:4:RegisterBlocks|Q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Selector3~4_combout\,
	datab => \PROC|Multiplexar|Equal4~1_combout\,
	datac => \PROC|REGISTERS:4:RegisterBlocks|Q\(12),
	datad => \PROC|Multiplexar|Selector3~3_combout\,
	combout => \PROC|Multiplexar|Selector3~5_combout\);

-- Location: LCCOMB_X23_Y21_N26
\PROC|Multiplexar|Selector3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector3~6_combout\ = (\PROC|Multiplexar|Selector3~0_combout\) # ((\PROC|Multiplexar|Selector3~2_combout\) # ((\PROC|Multiplexar|Selector3~1_combout\) # (\PROC|Multiplexar|Selector3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Selector3~0_combout\,
	datab => \PROC|Multiplexar|Selector3~2_combout\,
	datac => \PROC|Multiplexar|Selector3~1_combout\,
	datad => \PROC|Multiplexar|Selector3~5_combout\,
	combout => \PROC|Multiplexar|Selector3~6_combout\);

-- Location: LCCOMB_X23_Y18_N0
\PROC|DOUT_Register|Q[12]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|DOUT_Register|Q[12]~feeder_combout\ = \PROC|Multiplexar|Selector3~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|Multiplexar|Selector3~6_combout\,
	combout => \PROC|DOUT_Register|Q[12]~feeder_combout\);

-- Location: FF_X23_Y18_N1
\PROC|DOUT_Register|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|DOUT_Register|Q[12]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|DOUTin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|DOUT_Register|Q\(12));

-- Location: FF_X21_Y19_N11
\PROC|REGISTERS:2:RegisterBlocks|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector2~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector20~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:2:RegisterBlocks|Q\(13));

-- Location: LCCOMB_X21_Y19_N10
\PROC|Multiplexar|Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector2~0_combout\ = (\PROC|REGISTERS:2:RegisterBlocks|Q\(13) & \PROC|Multiplexar|Equal2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|REGISTERS:2:RegisterBlocks|Q\(13),
	datad => \PROC|Multiplexar|Equal2~2_combout\,
	combout => \PROC|Multiplexar|Selector2~0_combout\);

-- Location: LCCOMB_X21_Y21_N24
\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\ = (\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12) & 
-- (\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12) & 
-- (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\ = CARRY((\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12) & 
-- !\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12),
	datad => VCC,
	cin => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita11~COUT\,
	combout => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	cout => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\);

-- Location: FF_X21_Y21_N25
\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita12~combout\,
	asdata => \PROC|Multiplexar|Selector3~6_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \PROC|ControlUnityBlock|Selector15~2_combout\,
	ena => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(12));

-- Location: LCCOMB_X21_Y21_N26
\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\ = (\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13) & 
-- (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\)) # (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13) & 
-- ((\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # (GND)))
-- \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\) # 
-- (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13),
	datad => VCC,
	cin => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita12~COUT\,
	combout => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	cout => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\);

-- Location: FF_X21_Y21_N27
\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita13~combout\,
	asdata => \PROC|Multiplexar|Selector2~6_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \PROC|ControlUnityBlock|Selector15~2_combout\,
	ena => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13));

-- Location: FF_X23_Y20_N11
\PROC|REGISTERS:1:RegisterBlocks|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector2~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:1:RegisterBlocks|Q\(13));

-- Location: LCCOMB_X23_Y20_N10
\PROC|Multiplexar|Selector2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector2~1_combout\ = (\PROC|Multiplexar|Mbus~2_combout\ & ((\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13)) # ((\PROC|REGISTERS:1:RegisterBlocks|Q\(13) & \PROC|Multiplexar|Equal1~0_combout\)))) # 
-- (!\PROC|Multiplexar|Mbus~2_combout\ & (((\PROC|REGISTERS:1:RegisterBlocks|Q\(13) & \PROC|Multiplexar|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Mbus~2_combout\,
	datab => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(13),
	datac => \PROC|REGISTERS:1:RegisterBlocks|Q\(13),
	datad => \PROC|Multiplexar|Equal1~0_combout\,
	combout => \PROC|Multiplexar|Selector2~1_combout\);

-- Location: FF_X23_Y22_N13
\PROC|REGISTERS:4:RegisterBlocks|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector2~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector18~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:4:RegisterBlocks|Q\(13));

-- Location: FF_X24_Y22_N5
\PROC|REGISTERS:5:RegisterBlocks|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector2~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector17~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:5:RegisterBlocks|Q\(13));

-- Location: LCCOMB_X24_Y22_N4
\PROC|Multiplexar|Selector2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector2~4_combout\ = (\PROC|REGISTERS:3:RegisterBlocks|Q\(13) & ((\PROC|Multiplexar|Equal3~0_combout\) # ((\PROC|Multiplexar|Equal5~1_combout\ & \PROC|REGISTERS:5:RegisterBlocks|Q\(13))))) # (!\PROC|REGISTERS:3:RegisterBlocks|Q\(13) & 
-- (\PROC|Multiplexar|Equal5~1_combout\ & (\PROC|REGISTERS:5:RegisterBlocks|Q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|REGISTERS:3:RegisterBlocks|Q\(13),
	datab => \PROC|Multiplexar|Equal5~1_combout\,
	datac => \PROC|REGISTERS:5:RegisterBlocks|Q\(13),
	datad => \PROC|Multiplexar|Equal3~0_combout\,
	combout => \PROC|Multiplexar|Selector2~4_combout\);

-- Location: LCCOMB_X23_Y22_N12
\PROC|Multiplexar|Selector2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector2~5_combout\ = (\PROC|Multiplexar|Selector2~3_combout\) # ((\PROC|Multiplexar|Selector2~4_combout\) # ((\PROC|Multiplexar|Equal4~1_combout\ & \PROC|REGISTERS:4:RegisterBlocks|Q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Selector2~3_combout\,
	datab => \PROC|Multiplexar|Equal4~1_combout\,
	datac => \PROC|REGISTERS:4:RegisterBlocks|Q\(13),
	datad => \PROC|Multiplexar|Selector2~4_combout\,
	combout => \PROC|Multiplexar|Selector2~5_combout\);

-- Location: LCCOMB_X22_Y20_N18
\PROC|Multiplexar|Selector2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector2~6_combout\ = (\PROC|Multiplexar|Selector2~2_combout\) # ((\PROC|Multiplexar|Selector2~0_combout\) # ((\PROC|Multiplexar|Selector2~1_combout\) # (\PROC|Multiplexar|Selector2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Selector2~2_combout\,
	datab => \PROC|Multiplexar|Selector2~0_combout\,
	datac => \PROC|Multiplexar|Selector2~1_combout\,
	datad => \PROC|Multiplexar|Selector2~5_combout\,
	combout => \PROC|Multiplexar|Selector2~6_combout\);

-- Location: LCCOMB_X23_Y18_N22
\PROC|DOUT_Register|Q[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|DOUT_Register|Q[13]~feeder_combout\ = \PROC|Multiplexar|Selector2~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|Multiplexar|Selector2~6_combout\,
	combout => \PROC|DOUT_Register|Q[13]~feeder_combout\);

-- Location: FF_X23_Y18_N23
\PROC|DOUT_Register|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|DOUT_Register|Q[13]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|DOUTin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|DOUT_Register|Q\(13));

-- Location: FF_X24_Y21_N27
\PROC|REGISTERS:2:RegisterBlocks|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector1~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector20~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:2:RegisterBlocks|Q\(14));

-- Location: LCCOMB_X24_Y21_N26
\PROC|Multiplexar|Selector1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector1~0_combout\ = (\PROC|Multiplexar|Equal2~2_combout\ & \PROC|REGISTERS:2:RegisterBlocks|Q\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|Multiplexar|Equal2~2_combout\,
	datac => \PROC|REGISTERS:2:RegisterBlocks|Q\(14),
	combout => \PROC|Multiplexar|Selector1~0_combout\);

-- Location: FF_X23_Y21_N5
\PROC|AcumulatorRegister|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|Multiplexar|Selector1~6_combout\,
	ena => \PROC|ControlUnityBlock|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AcumulatorRegister|Q\(14));

-- Location: LCCOMB_X25_Y18_N2
\PROC|ControlUnityBlock|Mux39~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Mux39~3_combout\ = (!\PROC|ControlUnityBlock|cycle\(2) & (!\PROC|ControlUnityBlock|cycle\(1) & \PROC|ControlUnityBlock|cycle\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|ControlUnityBlock|cycle\(2),
	datac => \PROC|ControlUnityBlock|cycle\(1),
	datad => \PROC|ControlUnityBlock|cycle\(0),
	combout => \PROC|ControlUnityBlock|Mux39~3_combout\);

-- Location: LCCOMB_X22_Y20_N20
\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~13_combout\ = \PROC|Multiplexar|Selector2~6_combout\ $ (((!\PROC|ControlUnityBlock|Mux39~3_combout\) # (!\PROC|ControlUnityBlock|present_state.subtraction~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|ControlUnityBlock|present_state.subtraction~q\,
	datac => \PROC|ControlUnityBlock|Mux39~3_combout\,
	datad => \PROC|Multiplexar|Selector2~6_combout\,
	combout => \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~13_combout\);

-- Location: LCCOMB_X22_Y20_N24
\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~1_combout\ = \PROC|Multiplexar|Selector3~6_combout\ $ (((!\PROC|ControlUnityBlock|Mux39~3_combout\) # (!\PROC|ControlUnityBlock|present_state.subtraction~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|ControlUnityBlock|present_state.subtraction~q\,
	datac => \PROC|ControlUnityBlock|Mux39~3_combout\,
	datad => \PROC|Multiplexar|Selector3~6_combout\,
	combout => \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~1_combout\);

-- Location: FF_X21_Y20_N19
\PROC|AcumulatorRegister|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|Multiplexar|Selector4~6_combout\,
	ena => \PROC|ControlUnityBlock|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AcumulatorRegister|Q\(11));

-- Location: LCCOMB_X22_Y20_N28
\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~3_combout\ = \PROC|Multiplexar|Selector5~6_combout\ $ (((!\PROC|ControlUnityBlock|Mux39~3_combout\) # (!\PROC|ControlUnityBlock|present_state.subtraction~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|ControlUnityBlock|present_state.subtraction~q\,
	datac => \PROC|ControlUnityBlock|Mux39~3_combout\,
	datad => \PROC|Multiplexar|Selector5~6_combout\,
	combout => \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~3_combout\);

-- Location: FF_X23_Y20_N21
\PROC|AcumulatorRegister|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|Multiplexar|Selector6~6_combout\,
	ena => \PROC|ControlUnityBlock|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AcumulatorRegister|Q\(9));

-- Location: FF_X22_Y22_N3
\PROC|AcumulatorRegister|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|Multiplexar|Selector7~6_combout\,
	ena => \PROC|ControlUnityBlock|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AcumulatorRegister|Q\(8));

-- Location: FF_X22_Y22_N29
\PROC|AcumulatorRegister|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|Multiplexar|Selector8~6_combout\,
	ena => \PROC|ControlUnityBlock|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AcumulatorRegister|Q\(7));

-- Location: FF_X22_Y22_N19
\PROC|AcumulatorRegister|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|Multiplexar|Selector9~6_combout\,
	ena => \PROC|ControlUnityBlock|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AcumulatorRegister|Q\(6));

-- Location: LCCOMB_X22_Y21_N14
\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~8_combout\ = \PROC|Multiplexar|Selector10~6_combout\ $ (((!\PROC|ControlUnityBlock|Mux39~3_combout\) # (!\PROC|ControlUnityBlock|present_state.subtraction~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|present_state.subtraction~q\,
	datac => \PROC|ControlUnityBlock|Mux39~3_combout\,
	datad => \PROC|Multiplexar|Selector10~6_combout\,
	combout => \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~8_combout\);

-- Location: FF_X23_Y21_N25
\PROC|AcumulatorRegister|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|Multiplexar|Selector11~6_combout\,
	ena => \PROC|ControlUnityBlock|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AcumulatorRegister|Q\(4));

-- Location: LCCOMB_X22_Y21_N8
\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~11_combout\ = \PROC|Multiplexar|Selector13~6_combout\ $ (((!\PROC|ControlUnityBlock|Mux39~3_combout\) # (!\PROC|ControlUnityBlock|present_state.subtraction~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|present_state.subtraction~q\,
	datac => \PROC|ControlUnityBlock|Mux39~3_combout\,
	datad => \PROC|Multiplexar|Selector13~6_combout\,
	combout => \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~11_combout\);

-- Location: LCCOMB_X22_Y21_N2
\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~12_combout\ = \PROC|Multiplexar|Selector14~8_combout\ $ (((!\PROC|ControlUnityBlock|Mux39~3_combout\) # (!\PROC|ControlUnityBlock|present_state.subtraction~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|present_state.subtraction~q\,
	datac => \PROC|ControlUnityBlock|Mux39~3_combout\,
	datad => \PROC|Multiplexar|Selector14~8_combout\,
	combout => \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~12_combout\);

-- Location: LCCOMB_X22_Y21_N4
\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~0_combout\ = \PROC|Multiplexar|Selector15~6_combout\ $ (((!\PROC|ControlUnityBlock|Mux39~3_combout\) # (!\PROC|ControlUnityBlock|present_state.subtraction~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|present_state.subtraction~q\,
	datac => \PROC|ControlUnityBlock|Mux39~3_combout\,
	datad => \PROC|Multiplexar|Selector15~6_combout\,
	combout => \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~0_combout\);

-- Location: LCCOMB_X22_Y21_N16
\PROC|addSubRegister|Q[0]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|addSubRegister|Q[0]~17_cout\ = CARRY((\PROC|ControlUnityBlock|present_state.subtraction~q\ & \PROC|ControlUnityBlock|Mux39~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|present_state.subtraction~q\,
	datab => \PROC|ControlUnityBlock|Mux39~3_combout\,
	datad => VCC,
	cout => \PROC|addSubRegister|Q[0]~17_cout\);

-- Location: LCCOMB_X22_Y21_N18
\PROC|addSubRegister|Q[0]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|addSubRegister|Q[0]~18_combout\ = (\PROC|AcumulatorRegister|Q\(0) & ((\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\PROC|addSubRegister|Q[0]~17_cout\)) # 
-- (!\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (\PROC|addSubRegister|Q[0]~17_cout\ & VCC)))) # (!\PROC|AcumulatorRegister|Q\(0) & ((\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & 
-- ((\PROC|addSubRegister|Q[0]~17_cout\) # (GND))) # (!\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & (!\PROC|addSubRegister|Q[0]~17_cout\))))
-- \PROC|addSubRegister|Q[0]~19\ = CARRY((\PROC|AcumulatorRegister|Q\(0) & (\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~0_combout\ & !\PROC|addSubRegister|Q[0]~17_cout\)) # (!\PROC|AcumulatorRegister|Q\(0) & 
-- ((\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~0_combout\) # (!\PROC|addSubRegister|Q[0]~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AcumulatorRegister|Q\(0),
	datab => \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~0_combout\,
	datad => VCC,
	cin => \PROC|addSubRegister|Q[0]~17_cout\,
	combout => \PROC|addSubRegister|Q[0]~18_combout\,
	cout => \PROC|addSubRegister|Q[0]~19\);

-- Location: LCCOMB_X22_Y21_N20
\PROC|addSubRegister|Q[1]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|addSubRegister|Q[1]~20_combout\ = ((\PROC|AcumulatorRegister|Q\(1) $ (\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~12_combout\ $ (\PROC|addSubRegister|Q[0]~19\)))) # (GND)
-- \PROC|addSubRegister|Q[1]~21\ = CARRY((\PROC|AcumulatorRegister|Q\(1) & ((!\PROC|addSubRegister|Q[0]~19\) # (!\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~12_combout\))) # (!\PROC|AcumulatorRegister|Q\(1) & 
-- (!\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~12_combout\ & !\PROC|addSubRegister|Q[0]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AcumulatorRegister|Q\(1),
	datab => \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~12_combout\,
	datad => VCC,
	cin => \PROC|addSubRegister|Q[0]~19\,
	combout => \PROC|addSubRegister|Q[1]~20_combout\,
	cout => \PROC|addSubRegister|Q[1]~21\);

-- Location: LCCOMB_X22_Y21_N22
\PROC|addSubRegister|Q[2]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|addSubRegister|Q[2]~22_combout\ = (\PROC|AcumulatorRegister|Q\(2) & ((\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~11_combout\ & (!\PROC|addSubRegister|Q[1]~21\)) # (!\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~11_combout\ & 
-- (\PROC|addSubRegister|Q[1]~21\ & VCC)))) # (!\PROC|AcumulatorRegister|Q\(2) & ((\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~11_combout\ & ((\PROC|addSubRegister|Q[1]~21\) # (GND))) # 
-- (!\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~11_combout\ & (!\PROC|addSubRegister|Q[1]~21\))))
-- \PROC|addSubRegister|Q[2]~23\ = CARRY((\PROC|AcumulatorRegister|Q\(2) & (\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~11_combout\ & !\PROC|addSubRegister|Q[1]~21\)) # (!\PROC|AcumulatorRegister|Q\(2) & 
-- ((\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~11_combout\) # (!\PROC|addSubRegister|Q[1]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AcumulatorRegister|Q\(2),
	datab => \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~11_combout\,
	datad => VCC,
	cin => \PROC|addSubRegister|Q[1]~21\,
	combout => \PROC|addSubRegister|Q[2]~22_combout\,
	cout => \PROC|addSubRegister|Q[2]~23\);

-- Location: LCCOMB_X22_Y21_N24
\PROC|addSubRegister|Q[3]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|addSubRegister|Q[3]~24_combout\ = ((\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~10_combout\ $ (\PROC|AcumulatorRegister|Q\(3) $ (\PROC|addSubRegister|Q[2]~23\)))) # (GND)
-- \PROC|addSubRegister|Q[3]~25\ = CARRY((\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~10_combout\ & (\PROC|AcumulatorRegister|Q\(3) & !\PROC|addSubRegister|Q[2]~23\)) # (!\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~10_combout\ & 
-- ((\PROC|AcumulatorRegister|Q\(3)) # (!\PROC|addSubRegister|Q[2]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~10_combout\,
	datab => \PROC|AcumulatorRegister|Q\(3),
	datad => VCC,
	cin => \PROC|addSubRegister|Q[2]~23\,
	combout => \PROC|addSubRegister|Q[3]~24_combout\,
	cout => \PROC|addSubRegister|Q[3]~25\);

-- Location: LCCOMB_X22_Y21_N26
\PROC|addSubRegister|Q[4]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|addSubRegister|Q[4]~26_combout\ = (\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~9_combout\ & ((\PROC|AcumulatorRegister|Q\(4) & (!\PROC|addSubRegister|Q[3]~25\)) # (!\PROC|AcumulatorRegister|Q\(4) & ((\PROC|addSubRegister|Q[3]~25\) # 
-- (GND))))) # (!\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~9_combout\ & ((\PROC|AcumulatorRegister|Q\(4) & (\PROC|addSubRegister|Q[3]~25\ & VCC)) # (!\PROC|AcumulatorRegister|Q\(4) & (!\PROC|addSubRegister|Q[3]~25\))))
-- \PROC|addSubRegister|Q[4]~27\ = CARRY((\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~9_combout\ & ((!\PROC|addSubRegister|Q[3]~25\) # (!\PROC|AcumulatorRegister|Q\(4)))) # (!\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~9_combout\ & 
-- (!\PROC|AcumulatorRegister|Q\(4) & !\PROC|addSubRegister|Q[3]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~9_combout\,
	datab => \PROC|AcumulatorRegister|Q\(4),
	datad => VCC,
	cin => \PROC|addSubRegister|Q[3]~25\,
	combout => \PROC|addSubRegister|Q[4]~26_combout\,
	cout => \PROC|addSubRegister|Q[4]~27\);

-- Location: LCCOMB_X22_Y21_N28
\PROC|addSubRegister|Q[5]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|addSubRegister|Q[5]~28_combout\ = ((\PROC|AcumulatorRegister|Q\(5) $ (\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~8_combout\ $ (\PROC|addSubRegister|Q[4]~27\)))) # (GND)
-- \PROC|addSubRegister|Q[5]~29\ = CARRY((\PROC|AcumulatorRegister|Q\(5) & ((!\PROC|addSubRegister|Q[4]~27\) # (!\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~8_combout\))) # (!\PROC|AcumulatorRegister|Q\(5) & 
-- (!\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~8_combout\ & !\PROC|addSubRegister|Q[4]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AcumulatorRegister|Q\(5),
	datab => \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~8_combout\,
	datad => VCC,
	cin => \PROC|addSubRegister|Q[4]~27\,
	combout => \PROC|addSubRegister|Q[5]~28_combout\,
	cout => \PROC|addSubRegister|Q[5]~29\);

-- Location: LCCOMB_X22_Y20_N0
\PROC|addSubRegister|Q[7]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|addSubRegister|Q[7]~32_combout\ = ((\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~6_combout\ $ (\PROC|AcumulatorRegister|Q\(7) $ (\PROC|addSubRegister|Q[6]~31\)))) # (GND)
-- \PROC|addSubRegister|Q[7]~33\ = CARRY((\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~6_combout\ & (\PROC|AcumulatorRegister|Q\(7) & !\PROC|addSubRegister|Q[6]~31\)) # (!\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~6_combout\ & 
-- ((\PROC|AcumulatorRegister|Q\(7)) # (!\PROC|addSubRegister|Q[6]~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~6_combout\,
	datab => \PROC|AcumulatorRegister|Q\(7),
	datad => VCC,
	cin => \PROC|addSubRegister|Q[6]~31\,
	combout => \PROC|addSubRegister|Q[7]~32_combout\,
	cout => \PROC|addSubRegister|Q[7]~33\);

-- Location: LCCOMB_X22_Y20_N10
\PROC|addSubRegister|Q[12]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|addSubRegister|Q[12]~42_combout\ = (\PROC|AcumulatorRegister|Q\(12) & ((\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & (!\PROC|addSubRegister|Q[11]~41\)) # (!\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~1_combout\ 
-- & (\PROC|addSubRegister|Q[11]~41\ & VCC)))) # (!\PROC|AcumulatorRegister|Q\(12) & ((\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & ((\PROC|addSubRegister|Q[11]~41\) # (GND))) # 
-- (!\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & (!\PROC|addSubRegister|Q[11]~41\))))
-- \PROC|addSubRegister|Q[12]~43\ = CARRY((\PROC|AcumulatorRegister|Q\(12) & (\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~1_combout\ & !\PROC|addSubRegister|Q[11]~41\)) # (!\PROC|AcumulatorRegister|Q\(12) & 
-- ((\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~1_combout\) # (!\PROC|addSubRegister|Q[11]~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AcumulatorRegister|Q\(12),
	datab => \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~1_combout\,
	datad => VCC,
	cin => \PROC|addSubRegister|Q[11]~41\,
	combout => \PROC|addSubRegister|Q[12]~42_combout\,
	cout => \PROC|addSubRegister|Q[12]~43\);

-- Location: LCCOMB_X22_Y20_N12
\PROC|addSubRegister|Q[13]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|addSubRegister|Q[13]~44_combout\ = ((\PROC|AcumulatorRegister|Q\(13) $ (\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~13_combout\ $ (\PROC|addSubRegister|Q[12]~43\)))) # (GND)
-- \PROC|addSubRegister|Q[13]~45\ = CARRY((\PROC|AcumulatorRegister|Q\(13) & ((!\PROC|addSubRegister|Q[12]~43\) # (!\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~13_combout\))) # (!\PROC|AcumulatorRegister|Q\(13) & 
-- (!\PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~13_combout\ & !\PROC|addSubRegister|Q[12]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|AcumulatorRegister|Q\(13),
	datab => \PROC|AddSubBlock|LPM_ADD_SUB_component|auto_generated|_~13_combout\,
	datad => VCC,
	cin => \PROC|addSubRegister|Q[12]~43\,
	combout => \PROC|addSubRegister|Q[13]~44_combout\,
	cout => \PROC|addSubRegister|Q[13]~45\);

-- Location: LCCOMB_X25_Y18_N8
\PROC|ControlUnityBlock|Selector12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector12~0_combout\ = (\PROC|ControlUnityBlock|Mux39~3_combout\ & ((\PROC|ControlUnityBlock|present_state.addition~q\) # (\PROC|ControlUnityBlock|present_state.subtraction~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|present_state.addition~q\,
	datac => \PROC|ControlUnityBlock|present_state.subtraction~q\,
	datad => \PROC|ControlUnityBlock|Mux39~3_combout\,
	combout => \PROC|ControlUnityBlock|Selector12~0_combout\);

-- Location: FF_X22_Y20_N15
\PROC|addSubRegister|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|addSubRegister|Q[14]~46_combout\,
	ena => \PROC|ControlUnityBlock|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|addSubRegister|Q\(14));

-- Location: LCCOMB_X23_Y21_N14
\PROC|Multiplexar|Selector1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector1~2_combout\ = (\MEMORY|altsyncram_component|auto_generated|q_a\(14) & ((\PROC|Multiplexar|Equal9~0_combout\) # ((\PROC|addSubRegister|Q\(14) & \PROC|Multiplexar|Equal8~0_combout\)))) # 
-- (!\MEMORY|altsyncram_component|auto_generated|q_a\(14) & (\PROC|addSubRegister|Q\(14) & ((\PROC|Multiplexar|Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORY|altsyncram_component|auto_generated|q_a\(14),
	datab => \PROC|addSubRegister|Q\(14),
	datac => \PROC|Multiplexar|Equal9~0_combout\,
	datad => \PROC|Multiplexar|Equal8~0_combout\,
	combout => \PROC|Multiplexar|Selector1~2_combout\);

-- Location: FF_X23_Y22_N1
\PROC|REGISTERS:4:RegisterBlocks|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector1~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector18~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:4:RegisterBlocks|Q\(14));

-- Location: FF_X23_Y22_N31
\PROC|REGISTERS:0:RegisterBlocks|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector1~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:0:RegisterBlocks|Q\(14));

-- Location: LCCOMB_X23_Y22_N30
\PROC|Multiplexar|Selector1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector1~3_combout\ = (\PROC|REGISTERS:6:RegisterBlocks|Q\(14) & ((\PROC|Multiplexar|Equal6~1_combout\) # ((\PROC|Multiplexar|Equal0~2_combout\ & \PROC|REGISTERS:0:RegisterBlocks|Q\(14))))) # (!\PROC|REGISTERS:6:RegisterBlocks|Q\(14) & 
-- (\PROC|Multiplexar|Equal0~2_combout\ & (\PROC|REGISTERS:0:RegisterBlocks|Q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|REGISTERS:6:RegisterBlocks|Q\(14),
	datab => \PROC|Multiplexar|Equal0~2_combout\,
	datac => \PROC|REGISTERS:0:RegisterBlocks|Q\(14),
	datad => \PROC|Multiplexar|Equal6~1_combout\,
	combout => \PROC|Multiplexar|Selector1~3_combout\);

-- Location: LCCOMB_X23_Y22_N0
\PROC|Multiplexar|Selector1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector1~5_combout\ = (\PROC|Multiplexar|Selector1~4_combout\) # ((\PROC|Multiplexar|Selector1~3_combout\) # ((\PROC|Multiplexar|Equal4~1_combout\ & \PROC|REGISTERS:4:RegisterBlocks|Q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Selector1~4_combout\,
	datab => \PROC|Multiplexar|Equal4~1_combout\,
	datac => \PROC|REGISTERS:4:RegisterBlocks|Q\(14),
	datad => \PROC|Multiplexar|Selector1~3_combout\,
	combout => \PROC|Multiplexar|Selector1~5_combout\);

-- Location: LCCOMB_X23_Y21_N4
\PROC|Multiplexar|Selector1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector1~6_combout\ = (\PROC|Multiplexar|Selector1~1_combout\) # ((\PROC|Multiplexar|Selector1~0_combout\) # ((\PROC|Multiplexar|Selector1~2_combout\) # (\PROC|Multiplexar|Selector1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Selector1~1_combout\,
	datab => \PROC|Multiplexar|Selector1~0_combout\,
	datac => \PROC|Multiplexar|Selector1~2_combout\,
	datad => \PROC|Multiplexar|Selector1~5_combout\,
	combout => \PROC|Multiplexar|Selector1~6_combout\);

-- Location: FF_X23_Y18_N7
\PROC|DOUT_Register|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector1~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|DOUTin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|DOUT_Register|Q\(14));

-- Location: LCCOMB_X21_Y20_N0
\PROC|Multiplexar|Selector0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector0~2_combout\ = (\PROC|addSubRegister|Q\(15) & ((\PROC|Multiplexar|Equal8~0_combout\) # ((\MEMORY|altsyncram_component|auto_generated|q_a\(15) & \PROC|Multiplexar|Equal9~0_combout\)))) # (!\PROC|addSubRegister|Q\(15) & 
-- (((\MEMORY|altsyncram_component|auto_generated|q_a\(15) & \PROC|Multiplexar|Equal9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|addSubRegister|Q\(15),
	datab => \PROC|Multiplexar|Equal8~0_combout\,
	datac => \MEMORY|altsyncram_component|auto_generated|q_a\(15),
	datad => \PROC|Multiplexar|Equal9~0_combout\,
	combout => \PROC|Multiplexar|Selector0~2_combout\);

-- Location: LCCOMB_X21_Y21_N28
\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\ = (\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & 
-- (\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & 
-- (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\ = CARRY((\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14) & 
-- !\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14),
	datad => VCC,
	cin => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita13~COUT\,
	combout => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	cout => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\);

-- Location: FF_X21_Y21_N29
\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita14~combout\,
	asdata => \PROC|Multiplexar|Selector1~6_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \PROC|ControlUnityBlock|Selector15~2_combout\,
	ena => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(14));

-- Location: LCCOMB_X21_Y21_N30
\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\ = \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15) $ 
-- (\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15),
	cin => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita14~COUT\,
	combout => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\);

-- Location: FF_X21_Y21_N31
\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita15~combout\,
	asdata => \PROC|Multiplexar|Selector0~6_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \PROC|ControlUnityBlock|Selector15~2_combout\,
	ena => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15));

-- Location: FF_X21_Y20_N15
\PROC|REGISTERS:1:RegisterBlocks|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector0~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:1:RegisterBlocks|Q\(15));

-- Location: LCCOMB_X21_Y20_N14
\PROC|Multiplexar|Selector0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector0~1_combout\ = (\PROC|Multiplexar|Mbus~2_combout\ & ((\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15)) # ((\PROC|REGISTERS:1:RegisterBlocks|Q\(15) & \PROC|Multiplexar|Equal1~0_combout\)))) # 
-- (!\PROC|Multiplexar|Mbus~2_combout\ & (((\PROC|REGISTERS:1:RegisterBlocks|Q\(15) & \PROC|Multiplexar|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Mbus~2_combout\,
	datab => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(15),
	datac => \PROC|REGISTERS:1:RegisterBlocks|Q\(15),
	datad => \PROC|Multiplexar|Equal1~0_combout\,
	combout => \PROC|Multiplexar|Selector0~1_combout\);

-- Location: LCCOMB_X24_Y22_N0
\PROC|REGISTERS:5:RegisterBlocks|Q[15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|REGISTERS:5:RegisterBlocks|Q[15]~feeder_combout\ = \PROC|Multiplexar|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|Multiplexar|Selector0~6_combout\,
	combout => \PROC|REGISTERS:5:RegisterBlocks|Q[15]~feeder_combout\);

-- Location: FF_X24_Y22_N1
\PROC|REGISTERS:5:RegisterBlocks|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|REGISTERS:5:RegisterBlocks|Q[15]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector17~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:5:RegisterBlocks|Q\(15));

-- Location: FF_X24_Y22_N19
\PROC|REGISTERS:3:RegisterBlocks|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector0~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector19~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:3:RegisterBlocks|Q\(15));

-- Location: LCCOMB_X24_Y22_N18
\PROC|Multiplexar|Selector0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector0~4_combout\ = (\PROC|Multiplexar|Equal3~0_combout\ & ((\PROC|REGISTERS:3:RegisterBlocks|Q\(15)) # ((\PROC|REGISTERS:5:RegisterBlocks|Q\(15) & \PROC|Multiplexar|Equal5~1_combout\)))) # (!\PROC|Multiplexar|Equal3~0_combout\ & 
-- (\PROC|REGISTERS:5:RegisterBlocks|Q\(15) & ((\PROC|Multiplexar|Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Equal3~0_combout\,
	datab => \PROC|REGISTERS:5:RegisterBlocks|Q\(15),
	datac => \PROC|REGISTERS:3:RegisterBlocks|Q\(15),
	datad => \PROC|Multiplexar|Equal5~1_combout\,
	combout => \PROC|Multiplexar|Selector0~4_combout\);

-- Location: FF_X23_Y22_N21
\PROC|REGISTERS:4:RegisterBlocks|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector0~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector18~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:4:RegisterBlocks|Q\(15));

-- Location: LCCOMB_X23_Y22_N20
\PROC|Multiplexar|Selector0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector0~5_combout\ = (\PROC|Multiplexar|Selector0~3_combout\) # ((\PROC|Multiplexar|Selector0~4_combout\) # ((\PROC|REGISTERS:4:RegisterBlocks|Q\(15) & \PROC|Multiplexar|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Selector0~3_combout\,
	datab => \PROC|Multiplexar|Selector0~4_combout\,
	datac => \PROC|REGISTERS:4:RegisterBlocks|Q\(15),
	datad => \PROC|Multiplexar|Equal4~1_combout\,
	combout => \PROC|Multiplexar|Selector0~5_combout\);

-- Location: LCCOMB_X21_Y20_N10
\PROC|Multiplexar|Selector0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector0~6_combout\ = (\PROC|Multiplexar|Selector0~0_combout\) # ((\PROC|Multiplexar|Selector0~2_combout\) # ((\PROC|Multiplexar|Selector0~1_combout\) # (\PROC|Multiplexar|Selector0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Selector0~0_combout\,
	datab => \PROC|Multiplexar|Selector0~2_combout\,
	datac => \PROC|Multiplexar|Selector0~1_combout\,
	datad => \PROC|Multiplexar|Selector0~5_combout\,
	combout => \PROC|Multiplexar|Selector0~6_combout\);

-- Location: LCCOMB_X21_Y18_N12
\PROC|DOUT_Register|Q[15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|DOUT_Register|Q[15]~feeder_combout\ = \PROC|Multiplexar|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|Multiplexar|Selector0~6_combout\,
	combout => \PROC|DOUT_Register|Q[15]~feeder_combout\);

-- Location: FF_X21_Y18_N13
\PROC|DOUT_Register|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|DOUT_Register|Q[15]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|DOUTin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|DOUT_Register|Q\(15));

-- Location: LCCOMB_X24_Y18_N10
\PROC|IntructionRegister|Q[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|IntructionRegister|Q[2]~feeder_combout\ = \MEMORY|altsyncram_component|auto_generated|q_a\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEMORY|altsyncram_component|auto_generated|q_a\(9),
	combout => \PROC|IntructionRegister|Q[2]~feeder_combout\);

-- Location: LCCOMB_X25_Y20_N4
\PROC|ControlUnityBlock|IRin~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|IRin~0_combout\ = (\PROC|ControlUnityBlock|present_state.fetchInstruction~q\ & (!\PROC|ControlUnityBlock|cycle\(2) & (\PROC|ControlUnityBlock|cycle\(0) & \PROC|ControlUnityBlock|cycle\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|present_state.fetchInstruction~q\,
	datab => \PROC|ControlUnityBlock|cycle\(2),
	datac => \PROC|ControlUnityBlock|cycle\(0),
	datad => \PROC|ControlUnityBlock|cycle\(1),
	combout => \PROC|ControlUnityBlock|IRin~0_combout\);

-- Location: FF_X24_Y18_N11
\PROC|IntructionRegister|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|IntructionRegister|Q[2]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|IRin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IntructionRegister|Q\(2));

-- Location: LCCOMB_X24_Y18_N18
\PROC|ControlUnityBlock|Selector31~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector31~7_combout\ = (\PROC|IntructionRegister|Q\(1) & !\PROC|IntructionRegister|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|IntructionRegister|Q\(1),
	datad => \PROC|IntructionRegister|Q\(2),
	combout => \PROC|ControlUnityBlock|Selector31~7_combout\);

-- Location: LCCOMB_X25_Y19_N24
\PROC|ControlUnityBlock|Selector30~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector30~0_combout\ = (\PROC|IntructionRegister|Q\(0) & (\PROC|ControlUnityBlock|Selector31~7_combout\ & (!\PROC|ControlUnityBlock|Selector31~1_combout\ & !\PROC|ControlUnityBlock|Selector31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IntructionRegister|Q\(0),
	datab => \PROC|ControlUnityBlock|Selector31~7_combout\,
	datac => \PROC|ControlUnityBlock|Selector31~1_combout\,
	datad => \PROC|ControlUnityBlock|Selector31~0_combout\,
	combout => \PROC|ControlUnityBlock|Selector30~0_combout\);

-- Location: LCCOMB_X25_Y19_N14
\PROC|ControlUnityBlock|Selector30~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector30~2_combout\ = (!\PROC|ControlUnityBlock|Selector31~5_combout\ & (!\PROC|ControlUnityBlock|Selector31~6_combout\ & ((\PROC|ControlUnityBlock|Selector30~1_combout\) # (\PROC|ControlUnityBlock|Selector30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector31~5_combout\,
	datab => \PROC|ControlUnityBlock|Selector30~1_combout\,
	datac => \PROC|ControlUnityBlock|Selector31~6_combout\,
	datad => \PROC|ControlUnityBlock|Selector30~0_combout\,
	combout => \PROC|ControlUnityBlock|Selector30~2_combout\);

-- Location: LCCOMB_X25_Y19_N22
\PROC|Multiplexar|Equal2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Equal2~2_combout\ = (\PROC|ControlUnityBlock|Selector31~10_combout\ & (!\PROC|ControlUnityBlock|Selector30~2_combout\ & (\PROC|Multiplexar|Equal6~0_combout\ & \PROC|Multiplexar|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector31~10_combout\,
	datab => \PROC|ControlUnityBlock|Selector30~2_combout\,
	datac => \PROC|Multiplexar|Equal6~0_combout\,
	datad => \PROC|Multiplexar|Equal2~1_combout\,
	combout => \PROC|Multiplexar|Equal2~2_combout\);

-- Location: LCCOMB_X22_Y22_N16
\PROC|Multiplexar|Selector8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector8~0_combout\ = (\PROC|REGISTERS:2:RegisterBlocks|Q\(7) & \PROC|Multiplexar|Equal2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|REGISTERS:2:RegisterBlocks|Q\(7),
	datad => \PROC|Multiplexar|Equal2~2_combout\,
	combout => \PROC|Multiplexar|Selector8~0_combout\);

-- Location: FF_X23_Y20_N27
\PROC|REGISTERS:1:RegisterBlocks|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector8~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:1:RegisterBlocks|Q\(7));

-- Location: LCCOMB_X23_Y20_N26
\PROC|Multiplexar|Selector8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector8~1_combout\ = (\PROC|Multiplexar|Mbus~2_combout\ & ((\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)) # ((\PROC|REGISTERS:1:RegisterBlocks|Q\(7) & \PROC|Multiplexar|Equal1~0_combout\)))) # 
-- (!\PROC|Multiplexar|Mbus~2_combout\ & (((\PROC|REGISTERS:1:RegisterBlocks|Q\(7) & \PROC|Multiplexar|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Mbus~2_combout\,
	datab => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datac => \PROC|REGISTERS:1:RegisterBlocks|Q\(7),
	datad => \PROC|Multiplexar|Equal1~0_combout\,
	combout => \PROC|Multiplexar|Selector8~1_combout\);

-- Location: FF_X23_Y22_N29
\PROC|REGISTERS:4:RegisterBlocks|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector8~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector18~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:4:RegisterBlocks|Q\(7));

-- Location: FF_X23_Y22_N11
\PROC|REGISTERS:0:RegisterBlocks|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector8~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:0:RegisterBlocks|Q\(7));

-- Location: LCCOMB_X23_Y22_N10
\PROC|Multiplexar|Selector8~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector8~3_combout\ = (\PROC|REGISTERS:6:RegisterBlocks|Q\(7) & ((\PROC|Multiplexar|Equal6~1_combout\) # ((\PROC|Multiplexar|Equal0~2_combout\ & \PROC|REGISTERS:0:RegisterBlocks|Q\(7))))) # (!\PROC|REGISTERS:6:RegisterBlocks|Q\(7) & 
-- (\PROC|Multiplexar|Equal0~2_combout\ & (\PROC|REGISTERS:0:RegisterBlocks|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|REGISTERS:6:RegisterBlocks|Q\(7),
	datab => \PROC|Multiplexar|Equal0~2_combout\,
	datac => \PROC|REGISTERS:0:RegisterBlocks|Q\(7),
	datad => \PROC|Multiplexar|Equal6~1_combout\,
	combout => \PROC|Multiplexar|Selector8~3_combout\);

-- Location: LCCOMB_X23_Y22_N28
\PROC|Multiplexar|Selector8~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector8~5_combout\ = (\PROC|Multiplexar|Selector8~4_combout\) # ((\PROC|Multiplexar|Selector8~3_combout\) # ((\PROC|Multiplexar|Equal4~1_combout\ & \PROC|REGISTERS:4:RegisterBlocks|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Selector8~4_combout\,
	datab => \PROC|Multiplexar|Equal4~1_combout\,
	datac => \PROC|REGISTERS:4:RegisterBlocks|Q\(7),
	datad => \PROC|Multiplexar|Selector8~3_combout\,
	combout => \PROC|Multiplexar|Selector8~5_combout\);

-- Location: LCCOMB_X22_Y22_N28
\PROC|Multiplexar|Selector8~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector8~6_combout\ = (\PROC|Multiplexar|Selector8~2_combout\) # ((\PROC|Multiplexar|Selector8~0_combout\) # ((\PROC|Multiplexar|Selector8~1_combout\) # (\PROC|Multiplexar|Selector8~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Selector8~2_combout\,
	datab => \PROC|Multiplexar|Selector8~0_combout\,
	datac => \PROC|Multiplexar|Selector8~1_combout\,
	datad => \PROC|Multiplexar|Selector8~5_combout\,
	combout => \PROC|Multiplexar|Selector8~6_combout\);

-- Location: LCCOMB_X21_Y19_N8
\PROC|DOUT_Register|Q[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|DOUT_Register|Q[7]~feeder_combout\ = \PROC|Multiplexar|Selector8~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|Multiplexar|Selector8~6_combout\,
	combout => \PROC|DOUT_Register|Q[7]~feeder_combout\);

-- Location: FF_X21_Y19_N9
\PROC|DOUT_Register|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|DOUT_Register|Q[7]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|DOUTin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|DOUT_Register|Q\(7));

-- Location: LCCOMB_X22_Y22_N20
\PROC|Multiplexar|Selector9~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector9~2_combout\ = (\PROC|addSubRegister|Q\(6) & ((\PROC|Multiplexar|Equal8~0_combout\) # ((\MEMORY|altsyncram_component|auto_generated|q_a\(6) & \PROC|Multiplexar|Equal9~0_combout\)))) # (!\PROC|addSubRegister|Q\(6) & 
-- (\MEMORY|altsyncram_component|auto_generated|q_a\(6) & (\PROC|Multiplexar|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|addSubRegister|Q\(6),
	datab => \MEMORY|altsyncram_component|auto_generated|q_a\(6),
	datac => \PROC|Multiplexar|Equal9~0_combout\,
	datad => \PROC|Multiplexar|Equal8~0_combout\,
	combout => \PROC|Multiplexar|Selector9~2_combout\);

-- Location: FF_X21_Y21_N13
\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	asdata => \PROC|Multiplexar|Selector9~6_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \PROC|ControlUnityBlock|Selector15~2_combout\,
	ena => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6));

-- Location: FF_X23_Y20_N9
\PROC|REGISTERS:1:RegisterBlocks|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector9~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:1:RegisterBlocks|Q\(6));

-- Location: LCCOMB_X23_Y20_N8
\PROC|Multiplexar|Selector9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector9~1_combout\ = (\PROC|Multiplexar|Mbus~2_combout\ & ((\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)) # ((\PROC|REGISTERS:1:RegisterBlocks|Q\(6) & \PROC|Multiplexar|Equal1~0_combout\)))) # 
-- (!\PROC|Multiplexar|Mbus~2_combout\ & (((\PROC|REGISTERS:1:RegisterBlocks|Q\(6) & \PROC|Multiplexar|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Mbus~2_combout\,
	datab => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datac => \PROC|REGISTERS:1:RegisterBlocks|Q\(6),
	datad => \PROC|Multiplexar|Equal1~0_combout\,
	combout => \PROC|Multiplexar|Selector9~1_combout\);

-- Location: LCCOMB_X22_Y19_N8
\PROC|REGISTERS:3:RegisterBlocks|Q[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|REGISTERS:3:RegisterBlocks|Q[6]~feeder_combout\ = \PROC|Multiplexar|Selector9~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|Multiplexar|Selector9~6_combout\,
	combout => \PROC|REGISTERS:3:RegisterBlocks|Q[6]~feeder_combout\);

-- Location: FF_X22_Y19_N9
\PROC|REGISTERS:3:RegisterBlocks|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|REGISTERS:3:RegisterBlocks|Q[6]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector19~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:3:RegisterBlocks|Q\(6));

-- Location: FF_X22_Y19_N23
\PROC|REGISTERS:5:RegisterBlocks|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector9~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector17~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:5:RegisterBlocks|Q\(6));

-- Location: LCCOMB_X22_Y19_N22
\PROC|Multiplexar|Selector9~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector9~4_combout\ = (\PROC|Multiplexar|Equal3~0_combout\ & ((\PROC|REGISTERS:3:RegisterBlocks|Q\(6)) # ((\PROC|REGISTERS:5:RegisterBlocks|Q\(6) & \PROC|Multiplexar|Equal5~1_combout\)))) # (!\PROC|Multiplexar|Equal3~0_combout\ & 
-- (((\PROC|REGISTERS:5:RegisterBlocks|Q\(6) & \PROC|Multiplexar|Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Equal3~0_combout\,
	datab => \PROC|REGISTERS:3:RegisterBlocks|Q\(6),
	datac => \PROC|REGISTERS:5:RegisterBlocks|Q\(6),
	datad => \PROC|Multiplexar|Equal5~1_combout\,
	combout => \PROC|Multiplexar|Selector9~4_combout\);

-- Location: FF_X21_Y22_N21
\PROC|REGISTERS:4:RegisterBlocks|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector9~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector18~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:4:RegisterBlocks|Q\(6));

-- Location: LCCOMB_X25_Y22_N0
\PROC|REGISTERS:0:RegisterBlocks|Q[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|REGISTERS:0:RegisterBlocks|Q[6]~feeder_combout\ = \PROC|Multiplexar|Selector9~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|Multiplexar|Selector9~6_combout\,
	combout => \PROC|REGISTERS:0:RegisterBlocks|Q[6]~feeder_combout\);

-- Location: FF_X25_Y22_N1
\PROC|REGISTERS:0:RegisterBlocks|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|REGISTERS:0:RegisterBlocks|Q[6]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:0:RegisterBlocks|Q\(6));

-- Location: FF_X21_Y22_N3
\PROC|REGISTERS:6:RegisterBlocks|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector9~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:6:RegisterBlocks|Q\(6));

-- Location: LCCOMB_X21_Y22_N2
\PROC|Multiplexar|Selector9~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector9~3_combout\ = (\PROC|Multiplexar|Equal6~1_combout\ & ((\PROC|REGISTERS:6:RegisterBlocks|Q\(6)) # ((\PROC|REGISTERS:0:RegisterBlocks|Q\(6) & \PROC|Multiplexar|Equal0~2_combout\)))) # (!\PROC|Multiplexar|Equal6~1_combout\ & 
-- (\PROC|REGISTERS:0:RegisterBlocks|Q\(6) & ((\PROC|Multiplexar|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Equal6~1_combout\,
	datab => \PROC|REGISTERS:0:RegisterBlocks|Q\(6),
	datac => \PROC|REGISTERS:6:RegisterBlocks|Q\(6),
	datad => \PROC|Multiplexar|Equal0~2_combout\,
	combout => \PROC|Multiplexar|Selector9~3_combout\);

-- Location: LCCOMB_X21_Y22_N20
\PROC|Multiplexar|Selector9~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector9~5_combout\ = (\PROC|Multiplexar|Selector9~4_combout\) # ((\PROC|Multiplexar|Selector9~3_combout\) # ((\PROC|Multiplexar|Equal4~1_combout\ & \PROC|REGISTERS:4:RegisterBlocks|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Equal4~1_combout\,
	datab => \PROC|Multiplexar|Selector9~4_combout\,
	datac => \PROC|REGISTERS:4:RegisterBlocks|Q\(6),
	datad => \PROC|Multiplexar|Selector9~3_combout\,
	combout => \PROC|Multiplexar|Selector9~5_combout\);

-- Location: LCCOMB_X22_Y22_N18
\PROC|Multiplexar|Selector9~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector9~6_combout\ = (\PROC|Multiplexar|Selector9~0_combout\) # ((\PROC|Multiplexar|Selector9~2_combout\) # ((\PROC|Multiplexar|Selector9~1_combout\) # (\PROC|Multiplexar|Selector9~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Selector9~0_combout\,
	datab => \PROC|Multiplexar|Selector9~2_combout\,
	datac => \PROC|Multiplexar|Selector9~1_combout\,
	datad => \PROC|Multiplexar|Selector9~5_combout\,
	combout => \PROC|Multiplexar|Selector9~6_combout\);

-- Location: LCCOMB_X23_Y18_N18
\PROC|ADDR_Register|Q[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ADDR_Register|Q[6]~feeder_combout\ = \PROC|Multiplexar|Selector9~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|Multiplexar|Selector9~6_combout\,
	combout => \PROC|ADDR_Register|Q[6]~feeder_combout\);

-- Location: FF_X23_Y18_N19
\PROC|ADDR_Register|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|ADDR_Register|Q[6]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ADDR_Register|Q\(6));

-- Location: LCCOMB_X25_Y21_N28
\PROC|IntructionRegister|Q[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|IntructionRegister|Q[3]~feeder_combout\ = \MEMORY|altsyncram_component|auto_generated|q_a\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEMORY|altsyncram_component|auto_generated|q_a\(10),
	combout => \PROC|IntructionRegister|Q[3]~feeder_combout\);

-- Location: FF_X25_Y21_N29
\PROC|IntructionRegister|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|IntructionRegister|Q[3]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|IRin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IntructionRegister|Q\(3));

-- Location: LCCOMB_X24_Y21_N18
\PROC|ControlUnityBlock|Selector20~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector20~4_combout\ = (\PROC|ControlUnityBlock|Selector20~3_combout\ & (\PROC|IntructionRegister|Q\(4) & !\PROC|IntructionRegister|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector20~3_combout\,
	datab => \PROC|IntructionRegister|Q\(4),
	datad => \PROC|IntructionRegister|Q\(3),
	combout => \PROC|ControlUnityBlock|Selector20~4_combout\);

-- Location: FF_X22_Y22_N5
\PROC|REGISTERS:2:RegisterBlocks|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector10~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector20~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:2:RegisterBlocks|Q\(5));

-- Location: LCCOMB_X22_Y22_N4
\PROC|Multiplexar|Selector10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector10~0_combout\ = (\PROC|REGISTERS:2:RegisterBlocks|Q\(5) & \PROC|Multiplexar|Equal2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|REGISTERS:2:RegisterBlocks|Q\(5),
	datad => \PROC|Multiplexar|Equal2~2_combout\,
	combout => \PROC|Multiplexar|Selector10~0_combout\);

-- Location: FF_X21_Y21_N11
\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	asdata => \PROC|Multiplexar|Selector10~6_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \PROC|ControlUnityBlock|Selector15~2_combout\,
	ena => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5));

-- Location: FF_X23_Y20_N23
\PROC|REGISTERS:1:RegisterBlocks|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector10~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:1:RegisterBlocks|Q\(5));

-- Location: LCCOMB_X23_Y20_N22
\PROC|Multiplexar|Selector10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector10~1_combout\ = (\PROC|Multiplexar|Mbus~2_combout\ & ((\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)) # ((\PROC|REGISTERS:1:RegisterBlocks|Q\(5) & \PROC|Multiplexar|Equal1~0_combout\)))) # 
-- (!\PROC|Multiplexar|Mbus~2_combout\ & (((\PROC|REGISTERS:1:RegisterBlocks|Q\(5) & \PROC|Multiplexar|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Mbus~2_combout\,
	datab => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datac => \PROC|REGISTERS:1:RegisterBlocks|Q\(5),
	datad => \PROC|Multiplexar|Equal1~0_combout\,
	combout => \PROC|Multiplexar|Selector10~1_combout\);

-- Location: FF_X23_Y22_N25
\PROC|REGISTERS:4:RegisterBlocks|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector10~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector18~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:4:RegisterBlocks|Q\(5));

-- Location: FF_X23_Y22_N19
\PROC|REGISTERS:0:RegisterBlocks|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector10~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:0:RegisterBlocks|Q\(5));

-- Location: LCCOMB_X23_Y22_N18
\PROC|Multiplexar|Selector10~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector10~3_combout\ = (\PROC|REGISTERS:6:RegisterBlocks|Q\(5) & ((\PROC|Multiplexar|Equal6~1_combout\) # ((\PROC|Multiplexar|Equal0~2_combout\ & \PROC|REGISTERS:0:RegisterBlocks|Q\(5))))) # (!\PROC|REGISTERS:6:RegisterBlocks|Q\(5) & 
-- (\PROC|Multiplexar|Equal0~2_combout\ & (\PROC|REGISTERS:0:RegisterBlocks|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|REGISTERS:6:RegisterBlocks|Q\(5),
	datab => \PROC|Multiplexar|Equal0~2_combout\,
	datac => \PROC|REGISTERS:0:RegisterBlocks|Q\(5),
	datad => \PROC|Multiplexar|Equal6~1_combout\,
	combout => \PROC|Multiplexar|Selector10~3_combout\);

-- Location: LCCOMB_X23_Y22_N24
\PROC|Multiplexar|Selector10~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector10~5_combout\ = (\PROC|Multiplexar|Selector10~4_combout\) # ((\PROC|Multiplexar|Selector10~3_combout\) # ((\PROC|Multiplexar|Equal4~1_combout\ & \PROC|REGISTERS:4:RegisterBlocks|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Selector10~4_combout\,
	datab => \PROC|Multiplexar|Equal4~1_combout\,
	datac => \PROC|REGISTERS:4:RegisterBlocks|Q\(5),
	datad => \PROC|Multiplexar|Selector10~3_combout\,
	combout => \PROC|Multiplexar|Selector10~5_combout\);

-- Location: LCCOMB_X22_Y22_N0
\PROC|Multiplexar|Selector10~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector10~6_combout\ = (\PROC|Multiplexar|Selector10~2_combout\) # ((\PROC|Multiplexar|Selector10~0_combout\) # ((\PROC|Multiplexar|Selector10~1_combout\) # (\PROC|Multiplexar|Selector10~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Selector10~2_combout\,
	datab => \PROC|Multiplexar|Selector10~0_combout\,
	datac => \PROC|Multiplexar|Selector10~1_combout\,
	datad => \PROC|Multiplexar|Selector10~5_combout\,
	combout => \PROC|Multiplexar|Selector10~6_combout\);

-- Location: LCCOMB_X23_Y18_N8
\PROC|ADDR_Register|Q[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ADDR_Register|Q[5]~feeder_combout\ = \PROC|Multiplexar|Selector10~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|Multiplexar|Selector10~6_combout\,
	combout => \PROC|ADDR_Register|Q[5]~feeder_combout\);

-- Location: FF_X23_Y18_N9
\PROC|ADDR_Register|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|ADDR_Register|Q[5]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ADDR_Register|Q\(5));

-- Location: FF_X25_Y19_N11
\PROC|IntructionRegister|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \MEMORY|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	ena => \PROC|ControlUnityBlock|IRin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IntructionRegister|Q\(0));

-- Location: LCCOMB_X25_Y19_N20
\PROC|ControlUnityBlock|Selector26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector26~0_combout\ = (\PROC|ControlUnityBlock|Selector27~0_combout\ & (\PROC|IntructionRegister|Q\(0) & (!\PROC|ControlUnityBlock|Selector31~1_combout\ & !\PROC|ControlUnityBlock|Selector31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector27~0_combout\,
	datab => \PROC|IntructionRegister|Q\(0),
	datac => \PROC|ControlUnityBlock|Selector31~1_combout\,
	datad => \PROC|ControlUnityBlock|Selector31~0_combout\,
	combout => \PROC|ControlUnityBlock|Selector26~0_combout\);

-- Location: LCCOMB_X25_Y19_N0
\PROC|ControlUnityBlock|Selector26~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector26~2_combout\ = (!\PROC|ControlUnityBlock|Selector31~5_combout\ & (!\PROC|ControlUnityBlock|Selector31~6_combout\ & ((\PROC|ControlUnityBlock|Selector26~1_combout\) # (\PROC|ControlUnityBlock|Selector26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector31~5_combout\,
	datab => \PROC|ControlUnityBlock|Selector26~1_combout\,
	datac => \PROC|ControlUnityBlock|Selector31~6_combout\,
	datad => \PROC|ControlUnityBlock|Selector26~0_combout\,
	combout => \PROC|ControlUnityBlock|Selector26~2_combout\);

-- Location: LCCOMB_X24_Y19_N20
\PROC|Multiplexar|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Equal0~1_combout\ = (\PROC|Multiplexar|Equal0~0_combout\ & (!\PROC|ControlUnityBlock|Selector26~2_combout\ & (!\PROC|ControlUnityBlock|Selector29~2_combout\ & \PROC|Multiplexar|Mbus~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Equal0~0_combout\,
	datab => \PROC|ControlUnityBlock|Selector26~2_combout\,
	datac => \PROC|ControlUnityBlock|Selector29~2_combout\,
	datad => \PROC|Multiplexar|Mbus~0_combout\,
	combout => \PROC|Multiplexar|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y19_N6
\PROC|Multiplexar|Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Equal1~0_combout\ = (\PROC|ControlUnityBlock|Selector32~2_combout\ & (!\PROC|ControlUnityBlock|Selector33~3_combout\ & \PROC|Multiplexar|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector32~2_combout\,
	datab => \PROC|ControlUnityBlock|Selector33~3_combout\,
	datad => \PROC|Multiplexar|Equal0~1_combout\,
	combout => \PROC|Multiplexar|Equal1~0_combout\);

-- Location: FF_X23_Y21_N29
\PROC|REGISTERS:1:RegisterBlocks|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector11~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:1:RegisterBlocks|Q\(4));

-- Location: LCCOMB_X23_Y21_N28
\PROC|Multiplexar|Selector11~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector11~1_combout\ = (\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ((\PROC|Multiplexar|Mbus~2_combout\) # ((\PROC|Multiplexar|Equal1~0_combout\ & \PROC|REGISTERS:1:RegisterBlocks|Q\(4))))) # 
-- (!\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (\PROC|Multiplexar|Equal1~0_combout\ & (\PROC|REGISTERS:1:RegisterBlocks|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datab => \PROC|Multiplexar|Equal1~0_combout\,
	datac => \PROC|REGISTERS:1:RegisterBlocks|Q\(4),
	datad => \PROC|Multiplexar|Mbus~2_combout\,
	combout => \PROC|Multiplexar|Selector11~1_combout\);

-- Location: FF_X24_Y21_N31
\PROC|REGISTERS:2:RegisterBlocks|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector11~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector20~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:2:RegisterBlocks|Q\(4));

-- Location: LCCOMB_X24_Y21_N30
\PROC|Multiplexar|Selector11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector11~0_combout\ = (\PROC|Multiplexar|Equal2~2_combout\ & \PROC|REGISTERS:2:RegisterBlocks|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|Multiplexar|Equal2~2_combout\,
	datac => \PROC|REGISTERS:2:RegisterBlocks|Q\(4),
	combout => \PROC|Multiplexar|Selector11~0_combout\);

-- Location: FF_X23_Y22_N17
\PROC|REGISTERS:4:RegisterBlocks|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector11~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector18~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:4:RegisterBlocks|Q\(4));

-- Location: FF_X23_Y22_N3
\PROC|REGISTERS:0:RegisterBlocks|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector11~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:0:RegisterBlocks|Q\(4));

-- Location: LCCOMB_X23_Y22_N2
\PROC|Multiplexar|Selector11~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector11~3_combout\ = (\PROC|REGISTERS:6:RegisterBlocks|Q\(4) & ((\PROC|Multiplexar|Equal6~1_combout\) # ((\PROC|Multiplexar|Equal0~2_combout\ & \PROC|REGISTERS:0:RegisterBlocks|Q\(4))))) # (!\PROC|REGISTERS:6:RegisterBlocks|Q\(4) & 
-- (\PROC|Multiplexar|Equal0~2_combout\ & (\PROC|REGISTERS:0:RegisterBlocks|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|REGISTERS:6:RegisterBlocks|Q\(4),
	datab => \PROC|Multiplexar|Equal0~2_combout\,
	datac => \PROC|REGISTERS:0:RegisterBlocks|Q\(4),
	datad => \PROC|Multiplexar|Equal6~1_combout\,
	combout => \PROC|Multiplexar|Selector11~3_combout\);

-- Location: LCCOMB_X23_Y22_N16
\PROC|Multiplexar|Selector11~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector11~5_combout\ = (\PROC|Multiplexar|Selector11~4_combout\) # ((\PROC|Multiplexar|Selector11~3_combout\) # ((\PROC|Multiplexar|Equal4~1_combout\ & \PROC|REGISTERS:4:RegisterBlocks|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Selector11~4_combout\,
	datab => \PROC|Multiplexar|Equal4~1_combout\,
	datac => \PROC|REGISTERS:4:RegisterBlocks|Q\(4),
	datad => \PROC|Multiplexar|Selector11~3_combout\,
	combout => \PROC|Multiplexar|Selector11~5_combout\);

-- Location: LCCOMB_X23_Y21_N24
\PROC|Multiplexar|Selector11~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector11~6_combout\ = (\PROC|Multiplexar|Selector11~2_combout\) # ((\PROC|Multiplexar|Selector11~1_combout\) # ((\PROC|Multiplexar|Selector11~0_combout\) # (\PROC|Multiplexar|Selector11~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Selector11~2_combout\,
	datab => \PROC|Multiplexar|Selector11~1_combout\,
	datac => \PROC|Multiplexar|Selector11~0_combout\,
	datad => \PROC|Multiplexar|Selector11~5_combout\,
	combout => \PROC|Multiplexar|Selector11~6_combout\);

-- Location: LCCOMB_X20_Y21_N14
\PROC|ADDR_Register|Q[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ADDR_Register|Q[4]~feeder_combout\ = \PROC|Multiplexar|Selector11~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|Multiplexar|Selector11~6_combout\,
	combout => \PROC|ADDR_Register|Q[4]~feeder_combout\);

-- Location: FF_X20_Y21_N15
\PROC|ADDR_Register|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|ADDR_Register|Q[4]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ADDR_Register|Q\(4));

-- Location: FF_X24_Y18_N15
\PROC|IntructionRegister|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \MEMORY|altsyncram_component|auto_generated|q_a\(13),
	sload => VCC,
	ena => \PROC|ControlUnityBlock|IRin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IntructionRegister|Q\(6));

-- Location: LCCOMB_X25_Y18_N28
\PROC|ControlUnityBlock|present_state~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|present_state~21_combout\ = (\PROC|IntructionRegister|Q\(8) & (\PROC|IntructionRegister|Q\(7) & \PROC|IntructionRegister|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IntructionRegister|Q\(8),
	datac => \PROC|IntructionRegister|Q\(7),
	datad => \PROC|IntructionRegister|Q\(6),
	combout => \PROC|ControlUnityBlock|present_state~21_combout\);

-- Location: LCCOMB_X25_Y18_N20
\PROC|ControlUnityBlock|Selector4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector4~3_combout\ = (\PROC|ControlUnityBlock|present_state.move~q\ & (((\PROC|ControlUnityBlock|Mux39~2_combout\)))) # (!\PROC|ControlUnityBlock|present_state.move~q\ & ((\PROC|ControlUnityBlock|W_D~0_combout\) # 
-- ((!\PROC|Multiplexar|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|W_D~0_combout\,
	datab => \PROC|ControlUnityBlock|present_state.move~q\,
	datac => \PROC|ControlUnityBlock|Mux39~2_combout\,
	datad => \PROC|Multiplexar|Equal0~0_combout\,
	combout => \PROC|ControlUnityBlock|Selector4~3_combout\);

-- Location: LCCOMB_X26_Y20_N2
\PROC|ControlUnityBlock|Selector4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector4~4_combout\ = (!\PROC|ControlUnityBlock|present_state.fetchInstruction~q\ & (!\PROC|ControlUnityBlock|present_state.movenz~q\ & (\PROC|ControlUnityBlock|present_state.idle~q\ & 
-- \PROC|ControlUnityBlock|Selector4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|present_state.fetchInstruction~q\,
	datab => \PROC|ControlUnityBlock|present_state.movenz~q\,
	datac => \PROC|ControlUnityBlock|present_state.idle~q\,
	datad => \PROC|ControlUnityBlock|Selector4~3_combout\,
	combout => \PROC|ControlUnityBlock|Selector4~4_combout\);

-- Location: LCCOMB_X25_Y20_N14
\PROC|ControlUnityBlock|present_state~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|present_state~22_combout\ = (\PROC|ControlUnityBlock|Selector4~2_combout\ & (((\PROC|ControlUnityBlock|present_state~21_combout\)))) # (!\PROC|ControlUnityBlock|Selector4~2_combout\ & 
-- (((\PROC|ControlUnityBlock|Selector4~4_combout\)) # (!\PROC|ControlUnityBlock|next_state.fetchInstruction~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|next_state.fetchInstruction~q\,
	datab => \PROC|ControlUnityBlock|present_state~21_combout\,
	datac => \PROC|ControlUnityBlock|Selector4~2_combout\,
	datad => \PROC|ControlUnityBlock|Selector4~4_combout\,
	combout => \PROC|ControlUnityBlock|present_state~22_combout\);

-- Location: FF_X22_Y20_N11
\PROC|addSubRegister|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|addSubRegister|Q[12]~42_combout\,
	ena => \PROC|ControlUnityBlock|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|addSubRegister|Q\(12));

-- Location: FF_X22_Y21_N19
\PROC|addSubRegister|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|addSubRegister|Q[0]~18_combout\,
	ena => \PROC|ControlUnityBlock|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|addSubRegister|Q\(0));

-- Location: FF_X22_Y20_N13
\PROC|addSubRegister|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|addSubRegister|Q[13]~44_combout\,
	ena => \PROC|ControlUnityBlock|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|addSubRegister|Q\(13));

-- Location: LCCOMB_X21_Y20_N20
\PROC|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Equal0~0_combout\ = (\PROC|addSubRegister|Q\(14)) # ((\PROC|addSubRegister|Q\(12)) # ((\PROC|addSubRegister|Q\(0)) # (\PROC|addSubRegister|Q\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|addSubRegister|Q\(14),
	datab => \PROC|addSubRegister|Q\(12),
	datac => \PROC|addSubRegister|Q\(0),
	datad => \PROC|addSubRegister|Q\(13),
	combout => \PROC|Equal0~0_combout\);

-- Location: FF_X22_Y21_N23
\PROC|addSubRegister|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|addSubRegister|Q[2]~22_combout\,
	ena => \PROC|ControlUnityBlock|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|addSubRegister|Q\(2));

-- Location: FF_X22_Y21_N21
\PROC|addSubRegister|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|addSubRegister|Q[1]~20_combout\,
	ena => \PROC|ControlUnityBlock|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|addSubRegister|Q\(1));

-- Location: LCCOMB_X23_Y21_N30
\PROC|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Equal0~1_combout\ = (\PROC|addSubRegister|Q\(15)) # ((\PROC|addSubRegister|Q\(2)) # ((\PROC|addSubRegister|Q\(1)) # (\PROC|addSubRegister|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|addSubRegister|Q\(15),
	datab => \PROC|addSubRegister|Q\(2),
	datac => \PROC|addSubRegister|Q\(1),
	datad => \PROC|addSubRegister|Q\(3),
	combout => \PROC|Equal0~1_combout\);

-- Location: FF_X22_Y21_N29
\PROC|addSubRegister|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|addSubRegister|Q[5]~28_combout\,
	ena => \PROC|ControlUnityBlock|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|addSubRegister|Q\(5));

-- Location: FF_X22_Y21_N27
\PROC|addSubRegister|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|addSubRegister|Q[4]~26_combout\,
	ena => \PROC|ControlUnityBlock|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|addSubRegister|Q\(4));

-- Location: FF_X22_Y20_N1
\PROC|addSubRegister|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|addSubRegister|Q[7]~32_combout\,
	ena => \PROC|ControlUnityBlock|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|addSubRegister|Q\(7));

-- Location: LCCOMB_X22_Y22_N12
\PROC|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Equal0~2_combout\ = (\PROC|addSubRegister|Q\(6)) # ((\PROC|addSubRegister|Q\(5)) # ((\PROC|addSubRegister|Q\(4)) # (\PROC|addSubRegister|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|addSubRegister|Q\(6),
	datab => \PROC|addSubRegister|Q\(5),
	datac => \PROC|addSubRegister|Q\(4),
	datad => \PROC|addSubRegister|Q\(7),
	combout => \PROC|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y20_N24
\PROC|Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Equal0~4_combout\ = (\PROC|Equal0~3_combout\) # ((\PROC|Equal0~0_combout\) # ((\PROC|Equal0~1_combout\) # (\PROC|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Equal0~3_combout\,
	datab => \PROC|Equal0~0_combout\,
	datac => \PROC|Equal0~1_combout\,
	datad => \PROC|Equal0~2_combout\,
	combout => \PROC|Equal0~4_combout\);

-- Location: LCCOMB_X25_Y20_N24
\PROC|ControlUnityBlock|present_state~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|present_state~23_combout\ = (\Run~input_o\ & ((\PROC|ControlUnityBlock|Selector6~3_combout\ & ((!\PROC|Equal0~4_combout\))) # (!\PROC|ControlUnityBlock|Selector6~3_combout\ & (\PROC|ControlUnityBlock|present_state~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Run~input_o\,
	datab => \PROC|ControlUnityBlock|Selector6~3_combout\,
	datac => \PROC|ControlUnityBlock|present_state~22_combout\,
	datad => \PROC|Equal0~4_combout\,
	combout => \PROC|ControlUnityBlock|present_state~23_combout\);

-- Location: FF_X26_Y19_N11
\PROC|ControlUnityBlock|present_state.fetchInstruction\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \PROC|ControlUnityBlock|present_state~23_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ControlUnityBlock|present_state.fetchInstruction~q\);

-- Location: FF_X26_Y18_N27
\PROC|ControlUnityBlock|next_state.subtraction\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \PROC|ControlUnityBlock|next_state.subtraction~0_combout\,
	asdata => \PROC|ControlUnityBlock|present_state.subtraction~q\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \ALT_INV_Run~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ControlUnityBlock|next_state.subtraction~q\);

-- Location: LCCOMB_X26_Y18_N8
\PROC|ControlUnityBlock|Selector8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector8~0_combout\ = (\PROC|ControlUnityBlock|next_state.subtraction~q\ & (((\PROC|ControlUnityBlock|present_state.fetchInstruction~q\) # (!\PROC|ControlUnityBlock|present_state.idle~q\)) # 
-- (!\PROC|ControlUnityBlock|Selector6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector6~1_combout\,
	datab => \PROC|ControlUnityBlock|present_state.fetchInstruction~q\,
	datac => \PROC|ControlUnityBlock|next_state.subtraction~q\,
	datad => \PROC|ControlUnityBlock|present_state.idle~q\,
	combout => \PROC|ControlUnityBlock|Selector8~0_combout\);

-- Location: LCCOMB_X26_Y18_N26
\PROC|ControlUnityBlock|next_state.subtraction~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|next_state.subtraction~0_combout\ = (\PROC|ControlUnityBlock|Selector4~2_combout\ & (\PROC|ControlUnityBlock|Mux17~3_combout\)) # (!\PROC|ControlUnityBlock|Selector4~2_combout\ & ((\PROC|ControlUnityBlock|Selector8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Mux17~3_combout\,
	datab => \PROC|ControlUnityBlock|Selector8~0_combout\,
	datad => \PROC|ControlUnityBlock|Selector4~2_combout\,
	combout => \PROC|ControlUnityBlock|next_state.subtraction~0_combout\);

-- Location: LCCOMB_X26_Y18_N18
\PROC|ControlUnityBlock|present_state~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|present_state~16_combout\ = (\Run~input_o\ & \PROC|ControlUnityBlock|next_state.subtraction~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Run~input_o\,
	datad => \PROC|ControlUnityBlock|next_state.subtraction~0_combout\,
	combout => \PROC|ControlUnityBlock|present_state~16_combout\);

-- Location: FF_X26_Y19_N3
\PROC|ControlUnityBlock|present_state.subtraction\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \PROC|ControlUnityBlock|present_state~16_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ControlUnityBlock|present_state.subtraction~q\);

-- Location: LCCOMB_X25_Y18_N18
\PROC|ControlUnityBlock|Selector13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector13~0_combout\ = (\PROC|ControlUnityBlock|Mux39~2_combout\ & ((\PROC|ControlUnityBlock|present_state.subtraction~q\) # (\PROC|ControlUnityBlock|present_state.addition~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|ControlUnityBlock|present_state.subtraction~q\,
	datac => \PROC|ControlUnityBlock|Mux39~2_combout\,
	datad => \PROC|ControlUnityBlock|present_state.addition~q\,
	combout => \PROC|ControlUnityBlock|Selector13~0_combout\);

-- Location: FF_X23_Y21_N19
\PROC|AcumulatorRegister|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|Multiplexar|Selector12~6_combout\,
	ena => \PROC|ControlUnityBlock|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|AcumulatorRegister|Q\(3));

-- Location: FF_X22_Y21_N25
\PROC|addSubRegister|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|addSubRegister|Q[3]~24_combout\,
	ena => \PROC|ControlUnityBlock|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|addSubRegister|Q\(3));

-- Location: LCCOMB_X23_Y21_N0
\PROC|Multiplexar|Selector12~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector12~2_combout\ = (\MEMORY|altsyncram_component|auto_generated|q_a\(3) & ((\PROC|Multiplexar|Equal9~0_combout\) # ((\PROC|addSubRegister|Q\(3) & \PROC|Multiplexar|Equal8~0_combout\)))) # 
-- (!\MEMORY|altsyncram_component|auto_generated|q_a\(3) & (\PROC|addSubRegister|Q\(3) & ((\PROC|Multiplexar|Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORY|altsyncram_component|auto_generated|q_a\(3),
	datab => \PROC|addSubRegister|Q\(3),
	datac => \PROC|Multiplexar|Equal9~0_combout\,
	datad => \PROC|Multiplexar|Equal8~0_combout\,
	combout => \PROC|Multiplexar|Selector12~2_combout\);

-- Location: FF_X24_Y21_N11
\PROC|REGISTERS:2:RegisterBlocks|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector12~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector20~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:2:RegisterBlocks|Q\(3));

-- Location: LCCOMB_X24_Y21_N10
\PROC|Multiplexar|Selector12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector12~0_combout\ = (\PROC|REGISTERS:2:RegisterBlocks|Q\(3) & \PROC|Multiplexar|Equal2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|REGISTERS:2:RegisterBlocks|Q\(3),
	datad => \PROC|Multiplexar|Equal2~2_combout\,
	combout => \PROC|Multiplexar|Selector12~0_combout\);

-- Location: FF_X24_Y19_N25
\PROC|REGISTERS:6:RegisterBlocks|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector12~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector16~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:6:RegisterBlocks|Q\(3));

-- Location: LCCOMB_X24_Y19_N24
\PROC|Multiplexar|Selector12~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector12~3_combout\ = (\PROC|REGISTERS:0:RegisterBlocks|Q\(3) & ((\PROC|Multiplexar|Equal0~2_combout\) # ((\PROC|REGISTERS:6:RegisterBlocks|Q\(3) & \PROC|Multiplexar|Equal6~1_combout\)))) # (!\PROC|REGISTERS:0:RegisterBlocks|Q\(3) & 
-- (((\PROC|REGISTERS:6:RegisterBlocks|Q\(3) & \PROC|Multiplexar|Equal6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|REGISTERS:0:RegisterBlocks|Q\(3),
	datab => \PROC|Multiplexar|Equal0~2_combout\,
	datac => \PROC|REGISTERS:6:RegisterBlocks|Q\(3),
	datad => \PROC|Multiplexar|Equal6~1_combout\,
	combout => \PROC|Multiplexar|Selector12~3_combout\);

-- Location: FF_X24_Y19_N31
\PROC|REGISTERS:4:RegisterBlocks|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector12~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector18~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:4:RegisterBlocks|Q\(3));

-- Location: FF_X24_Y21_N29
\PROC|REGISTERS:3:RegisterBlocks|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector12~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector19~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:3:RegisterBlocks|Q\(3));

-- Location: FF_X22_Y19_N7
\PROC|REGISTERS:5:RegisterBlocks|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector12~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector17~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:5:RegisterBlocks|Q\(3));

-- Location: LCCOMB_X22_Y19_N6
\PROC|Multiplexar|Selector12~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector12~4_combout\ = (\PROC|Multiplexar|Equal3~0_combout\ & ((\PROC|REGISTERS:3:RegisterBlocks|Q\(3)) # ((\PROC|REGISTERS:5:RegisterBlocks|Q\(3) & \PROC|Multiplexar|Equal5~1_combout\)))) # (!\PROC|Multiplexar|Equal3~0_combout\ & 
-- (((\PROC|REGISTERS:5:RegisterBlocks|Q\(3) & \PROC|Multiplexar|Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Equal3~0_combout\,
	datab => \PROC|REGISTERS:3:RegisterBlocks|Q\(3),
	datac => \PROC|REGISTERS:5:RegisterBlocks|Q\(3),
	datad => \PROC|Multiplexar|Equal5~1_combout\,
	combout => \PROC|Multiplexar|Selector12~4_combout\);

-- Location: LCCOMB_X24_Y19_N30
\PROC|Multiplexar|Selector12~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector12~5_combout\ = (\PROC|Multiplexar|Selector12~3_combout\) # ((\PROC|Multiplexar|Selector12~4_combout\) # ((\PROC|Multiplexar|Equal4~1_combout\ & \PROC|REGISTERS:4:RegisterBlocks|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Equal4~1_combout\,
	datab => \PROC|Multiplexar|Selector12~3_combout\,
	datac => \PROC|REGISTERS:4:RegisterBlocks|Q\(3),
	datad => \PROC|Multiplexar|Selector12~4_combout\,
	combout => \PROC|Multiplexar|Selector12~5_combout\);

-- Location: LCCOMB_X23_Y21_N18
\PROC|Multiplexar|Selector12~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector12~6_combout\ = (\PROC|Multiplexar|Selector12~1_combout\) # ((\PROC|Multiplexar|Selector12~2_combout\) # ((\PROC|Multiplexar|Selector12~0_combout\) # (\PROC|Multiplexar|Selector12~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Selector12~1_combout\,
	datab => \PROC|Multiplexar|Selector12~2_combout\,
	datac => \PROC|Multiplexar|Selector12~0_combout\,
	datad => \PROC|Multiplexar|Selector12~5_combout\,
	combout => \PROC|Multiplexar|Selector12~6_combout\);

-- Location: LCCOMB_X27_Y18_N24
\PROC|ADDR_Register|Q[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ADDR_Register|Q[3]~feeder_combout\ = \PROC|Multiplexar|Selector12~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|Multiplexar|Selector12~6_combout\,
	combout => \PROC|ADDR_Register|Q[3]~feeder_combout\);

-- Location: FF_X27_Y18_N25
\PROC|ADDR_Register|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|ADDR_Register|Q[3]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ADDR_Register|Q\(3));

-- Location: FF_X25_Y21_N27
\PROC|IntructionRegister|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \MEMORY|altsyncram_component|auto_generated|q_a\(11),
	sload => VCC,
	ena => \PROC|ControlUnityBlock|IRin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IntructionRegister|Q\(4));

-- Location: LCCOMB_X24_Y21_N2
\PROC|ControlUnityBlock|Selector17~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector17~4_combout\ = (\PROC|ControlUnityBlock|Selector17~3_combout\ & (!\PROC|IntructionRegister|Q\(4) & \PROC|IntructionRegister|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector17~3_combout\,
	datab => \PROC|IntructionRegister|Q\(4),
	datad => \PROC|IntructionRegister|Q\(3),
	combout => \PROC|ControlUnityBlock|Selector17~4_combout\);

-- Location: FF_X22_Y18_N1
\PROC|REGISTERS:5:RegisterBlocks|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|REGISTERS:5:RegisterBlocks|Q[2]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector17~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:5:RegisterBlocks|Q\(2));

-- Location: FF_X22_Y19_N1
\PROC|REGISTERS:3:RegisterBlocks|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector13~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector19~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:3:RegisterBlocks|Q\(2));

-- Location: LCCOMB_X22_Y19_N0
\PROC|Multiplexar|Selector13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector13~0_combout\ = (\PROC|Multiplexar|Equal3~0_combout\ & ((\PROC|REGISTERS:3:RegisterBlocks|Q\(2)) # ((\PROC|REGISTERS:5:RegisterBlocks|Q\(2) & \PROC|Multiplexar|Equal5~1_combout\)))) # (!\PROC|Multiplexar|Equal3~0_combout\ & 
-- (\PROC|REGISTERS:5:RegisterBlocks|Q\(2) & ((\PROC|Multiplexar|Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Equal3~0_combout\,
	datab => \PROC|REGISTERS:5:RegisterBlocks|Q\(2),
	datac => \PROC|REGISTERS:3:RegisterBlocks|Q\(2),
	datad => \PROC|Multiplexar|Equal5~1_combout\,
	combout => \PROC|Multiplexar|Selector13~0_combout\);

-- Location: FF_X24_Y20_N9
\PROC|REGISTERS:4:RegisterBlocks|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector13~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector18~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:4:RegisterBlocks|Q\(2));

-- Location: LCCOMB_X24_Y20_N8
\PROC|Multiplexar|Selector13~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector13~5_combout\ = (\PROC|REGISTERS:2:RegisterBlocks|Q\(2) & ((\PROC|Multiplexar|Equal2~2_combout\) # ((\PROC|REGISTERS:4:RegisterBlocks|Q\(2) & \PROC|Multiplexar|Equal4~1_combout\)))) # (!\PROC|REGISTERS:2:RegisterBlocks|Q\(2) & 
-- (((\PROC|REGISTERS:4:RegisterBlocks|Q\(2) & \PROC|Multiplexar|Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|REGISTERS:2:RegisterBlocks|Q\(2),
	datab => \PROC|Multiplexar|Equal2~2_combout\,
	datac => \PROC|REGISTERS:4:RegisterBlocks|Q\(2),
	datad => \PROC|Multiplexar|Equal4~1_combout\,
	combout => \PROC|Multiplexar|Selector13~5_combout\);

-- Location: LCCOMB_X23_Y20_N16
\PROC|Multiplexar|Selector13~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector13~1_combout\ = (\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\PROC|Multiplexar|Equal2~0_combout\ & (\PROC|Multiplexar|Mbus~1_combout\ & \PROC|Multiplexar|Mbus~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \PROC|Multiplexar|Equal2~0_combout\,
	datac => \PROC|Multiplexar|Mbus~1_combout\,
	datad => \PROC|Multiplexar|Mbus~0_combout\,
	combout => \PROC|Multiplexar|Selector13~1_combout\);

-- Location: FF_X23_Y20_N19
\PROC|REGISTERS:1:RegisterBlocks|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector13~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:1:RegisterBlocks|Q\(2));

-- Location: LCCOMB_X23_Y20_N18
\PROC|Multiplexar|Selector13~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector13~3_combout\ = (\PROC|Multiplexar|Selector13~2_combout\) # ((\PROC|Multiplexar|Selector13~1_combout\) # ((\PROC|REGISTERS:1:RegisterBlocks|Q\(2) & \PROC|Multiplexar|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Selector13~2_combout\,
	datab => \PROC|Multiplexar|Selector13~1_combout\,
	datac => \PROC|REGISTERS:1:RegisterBlocks|Q\(2),
	datad => \PROC|Multiplexar|Equal1~0_combout\,
	combout => \PROC|Multiplexar|Selector13~3_combout\);

-- Location: LCCOMB_X23_Y20_N0
\PROC|Multiplexar|Selector13~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector13~6_combout\ = (\PROC|Multiplexar|Selector13~4_combout\) # ((\PROC|Multiplexar|Selector13~0_combout\) # ((\PROC|Multiplexar|Selector13~5_combout\) # (\PROC|Multiplexar|Selector13~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Selector13~4_combout\,
	datab => \PROC|Multiplexar|Selector13~0_combout\,
	datac => \PROC|Multiplexar|Selector13~5_combout\,
	datad => \PROC|Multiplexar|Selector13~3_combout\,
	combout => \PROC|Multiplexar|Selector13~6_combout\);

-- Location: LCCOMB_X23_Y18_N14
\PROC|ADDR_Register|Q[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ADDR_Register|Q[2]~feeder_combout\ = \PROC|Multiplexar|Selector13~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|Multiplexar|Selector13~6_combout\,
	combout => \PROC|ADDR_Register|Q[2]~feeder_combout\);

-- Location: FF_X23_Y18_N15
\PROC|ADDR_Register|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|ADDR_Register|Q[2]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ADDR_Register|Q\(2));

-- Location: FF_X24_Y18_N5
\PROC|IntructionRegister|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \MEMORY|altsyncram_component|auto_generated|q_a\(8),
	sload => VCC,
	ena => \PROC|ControlUnityBlock|IRin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IntructionRegister|Q\(1));

-- Location: LCCOMB_X24_Y18_N24
\PROC|ControlUnityBlock|Selector33~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector33~0_combout\ = (!\PROC|IntructionRegister|Q\(1) & !\PROC|IntructionRegister|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|IntructionRegister|Q\(1),
	datad => \PROC|IntructionRegister|Q\(2),
	combout => \PROC|ControlUnityBlock|Selector33~0_combout\);

-- Location: LCCOMB_X23_Y19_N24
\PROC|ControlUnityBlock|Selector33~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector33~1_combout\ = (!\PROC|IntructionRegister|Q\(0) & (\PROC|ControlUnityBlock|Selector33~0_combout\ & (!\PROC|ControlUnityBlock|Selector31~1_combout\ & !\PROC|ControlUnityBlock|Selector31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IntructionRegister|Q\(0),
	datab => \PROC|ControlUnityBlock|Selector33~0_combout\,
	datac => \PROC|ControlUnityBlock|Selector31~1_combout\,
	datad => \PROC|ControlUnityBlock|Selector31~0_combout\,
	combout => \PROC|ControlUnityBlock|Selector33~1_combout\);

-- Location: LCCOMB_X23_Y19_N12
\PROC|ControlUnityBlock|Selector33~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector33~3_combout\ = (!\PROC|ControlUnityBlock|Selector31~5_combout\ & (!\PROC|ControlUnityBlock|Selector31~6_combout\ & ((\PROC|ControlUnityBlock|Selector33~2_combout\) # (\PROC|ControlUnityBlock|Selector33~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector33~2_combout\,
	datab => \PROC|ControlUnityBlock|Selector33~1_combout\,
	datac => \PROC|ControlUnityBlock|Selector31~5_combout\,
	datad => \PROC|ControlUnityBlock|Selector31~6_combout\,
	combout => \PROC|ControlUnityBlock|Selector33~3_combout\);

-- Location: LCCOMB_X24_Y19_N28
\PROC|Multiplexar|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Equal0~2_combout\ = (!\PROC|ControlUnityBlock|Selector32~2_combout\ & (\PROC|ControlUnityBlock|Selector33~3_combout\ & \PROC|Multiplexar|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector32~2_combout\,
	datac => \PROC|ControlUnityBlock|Selector33~3_combout\,
	datad => \PROC|Multiplexar|Equal0~1_combout\,
	combout => \PROC|Multiplexar|Equal0~2_combout\);

-- Location: FF_X25_Y21_N31
\PROC|REGISTERS:0:RegisterBlocks|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector14~8_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:0:RegisterBlocks|Q\(1));

-- Location: LCCOMB_X25_Y21_N30
\PROC|Multiplexar|Selector14~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector14~6_combout\ = (\PROC|REGISTERS:6:RegisterBlocks|Q\(1) & ((\PROC|Multiplexar|Equal6~1_combout\) # ((\PROC|Multiplexar|Equal0~2_combout\ & \PROC|REGISTERS:0:RegisterBlocks|Q\(1))))) # (!\PROC|REGISTERS:6:RegisterBlocks|Q\(1) & 
-- (\PROC|Multiplexar|Equal0~2_combout\ & (\PROC|REGISTERS:0:RegisterBlocks|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|REGISTERS:6:RegisterBlocks|Q\(1),
	datab => \PROC|Multiplexar|Equal0~2_combout\,
	datac => \PROC|REGISTERS:0:RegisterBlocks|Q\(1),
	datad => \PROC|Multiplexar|Equal6~1_combout\,
	combout => \PROC|Multiplexar|Selector14~6_combout\);

-- Location: FF_X23_Y20_N7
\PROC|REGISTERS:1:RegisterBlocks|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector14~8_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector21~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:1:RegisterBlocks|Q\(1));

-- Location: LCCOMB_X24_Y19_N4
\PROC|Multiplexar|Selector14~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector14~4_combout\ = (\MEMORY|altsyncram_component|auto_generated|q_a\(1) & ((\PROC|Multiplexar|Equal9~0_combout\) # ((\PROC|addSubRegister|Q\(1) & \PROC|Multiplexar|Equal8~0_combout\)))) # 
-- (!\MEMORY|altsyncram_component|auto_generated|q_a\(1) & (\PROC|addSubRegister|Q\(1) & (\PROC|Multiplexar|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEMORY|altsyncram_component|auto_generated|q_a\(1),
	datab => \PROC|addSubRegister|Q\(1),
	datac => \PROC|Multiplexar|Equal8~0_combout\,
	datad => \PROC|Multiplexar|Equal9~0_combout\,
	combout => \PROC|Multiplexar|Selector14~4_combout\);

-- Location: LCCOMB_X23_Y20_N6
\PROC|Multiplexar|Selector14~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector14~5_combout\ = (\PROC|Multiplexar|Selector14~3_combout\) # ((\PROC|Multiplexar|Selector14~4_combout\) # ((\PROC|Multiplexar|Equal1~0_combout\ & \PROC|REGISTERS:1:RegisterBlocks|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Selector14~3_combout\,
	datab => \PROC|Multiplexar|Equal1~0_combout\,
	datac => \PROC|REGISTERS:1:RegisterBlocks|Q\(1),
	datad => \PROC|Multiplexar|Selector14~4_combout\,
	combout => \PROC|Multiplexar|Selector14~5_combout\);

-- Location: LCCOMB_X24_Y19_N8
\PROC|Multiplexar|Selector14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector14~0_combout\ = (\PROC|REGISTERS:5:RegisterBlocks|Q\(1) & (\PROC|ControlUnityBlock|Selector28~3_combout\ & (\PROC|Multiplexar|Equal2~0_combout\ & !\PROC|ControlUnityBlock|Selector27~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|REGISTERS:5:RegisterBlocks|Q\(1),
	datab => \PROC|ControlUnityBlock|Selector28~3_combout\,
	datac => \PROC|Multiplexar|Equal2~0_combout\,
	datad => \PROC|ControlUnityBlock|Selector27~3_combout\,
	combout => \PROC|Multiplexar|Selector14~0_combout\);

-- Location: FF_X24_Y21_N17
\PROC|REGISTERS:3:RegisterBlocks|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector14~8_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector19~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:3:RegisterBlocks|Q\(1));

-- Location: LCCOMB_X24_Y21_N16
\PROC|Multiplexar|Selector14~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector14~1_combout\ = (!\PROC|ControlUnityBlock|Selector31~10_combout\ & (\PROC|ControlUnityBlock|Selector30~2_combout\ & (\PROC|REGISTERS:3:RegisterBlocks|Q\(1) & \PROC|Multiplexar|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector31~10_combout\,
	datab => \PROC|ControlUnityBlock|Selector30~2_combout\,
	datac => \PROC|REGISTERS:3:RegisterBlocks|Q\(1),
	datad => \PROC|Multiplexar|Equal6~0_combout\,
	combout => \PROC|Multiplexar|Selector14~1_combout\);

-- Location: LCCOMB_X24_Y19_N22
\PROC|Multiplexar|Selector14~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector14~2_combout\ = (\PROC|Multiplexar|Equal5~0_combout\ & ((\PROC|Multiplexar|Selector14~0_combout\) # ((\PROC|Multiplexar|Equal2~1_combout\ & \PROC|Multiplexar|Selector14~1_combout\)))) # (!\PROC|Multiplexar|Equal5~0_combout\ & 
-- (\PROC|Multiplexar|Equal2~1_combout\ & ((\PROC|Multiplexar|Selector14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Equal5~0_combout\,
	datab => \PROC|Multiplexar|Equal2~1_combout\,
	datac => \PROC|Multiplexar|Selector14~0_combout\,
	datad => \PROC|Multiplexar|Selector14~1_combout\,
	combout => \PROC|Multiplexar|Selector14~2_combout\);

-- Location: LCCOMB_X22_Y21_N10
\PROC|Multiplexar|Selector14~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector14~8_combout\ = (\PROC|Multiplexar|Selector14~7_combout\) # ((\PROC|Multiplexar|Selector14~6_combout\) # ((\PROC|Multiplexar|Selector14~5_combout\) # (\PROC|Multiplexar|Selector14~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Selector14~7_combout\,
	datab => \PROC|Multiplexar|Selector14~6_combout\,
	datac => \PROC|Multiplexar|Selector14~5_combout\,
	datad => \PROC|Multiplexar|Selector14~2_combout\,
	combout => \PROC|Multiplexar|Selector14~8_combout\);

-- Location: LCCOMB_X23_Y18_N12
\PROC|ADDR_Register|Q[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ADDR_Register|Q[1]~feeder_combout\ = \PROC|Multiplexar|Selector14~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|Multiplexar|Selector14~8_combout\,
	combout => \PROC|ADDR_Register|Q[1]~feeder_combout\);

-- Location: FF_X23_Y18_N13
\PROC|ADDR_Register|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|ADDR_Register|Q[1]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ADDR_Register|Q\(1));

-- Location: LCCOMB_X24_Y18_N16
\PROC|IntructionRegister|Q[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|IntructionRegister|Q[7]~feeder_combout\ = \MEMORY|altsyncram_component|auto_generated|q_a\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MEMORY|altsyncram_component|auto_generated|q_a\(14),
	combout => \PROC|IntructionRegister|Q[7]~feeder_combout\);

-- Location: FF_X24_Y18_N17
\PROC|IntructionRegister|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|IntructionRegister|Q[7]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|IRin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IntructionRegister|Q\(7));

-- Location: LCCOMB_X25_Y18_N22
\PROC|ControlUnityBlock|Mux17~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Mux17~5_combout\ = (\PROC|IntructionRegister|Q\(8) & (\PROC|IntructionRegister|Q\(7) & !\PROC|IntructionRegister|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|IntructionRegister|Q\(8),
	datac => \PROC|IntructionRegister|Q\(7),
	datad => \PROC|IntructionRegister|Q\(6),
	combout => \PROC|ControlUnityBlock|Mux17~5_combout\);

-- Location: LCCOMB_X26_Y18_N14
\PROC|ControlUnityBlock|next_state.movenz~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|next_state.movenz~0_combout\ = (\PROC|ControlUnityBlock|Selector4~2_combout\ & ((\PROC|ControlUnityBlock|Mux17~5_combout\))) # (!\PROC|ControlUnityBlock|Selector4~2_combout\ & (\PROC|ControlUnityBlock|Selector11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector11~0_combout\,
	datab => \PROC|ControlUnityBlock|Mux17~5_combout\,
	datad => \PROC|ControlUnityBlock|Selector4~2_combout\,
	combout => \PROC|ControlUnityBlock|next_state.movenz~0_combout\);

-- Location: LCCOMB_X26_Y19_N24
\PROC|ControlUnityBlock|present_state~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|present_state~20_combout\ = (\Run~input_o\ & \PROC|ControlUnityBlock|next_state.movenz~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Run~input_o\,
	datad => \PROC|ControlUnityBlock|next_state.movenz~0_combout\,
	combout => \PROC|ControlUnityBlock|present_state~20_combout\);

-- Location: FF_X26_Y19_N25
\PROC|ControlUnityBlock|present_state.movenz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \PROC|ControlUnityBlock|present_state~20_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ControlUnityBlock|present_state.movenz~q\);

-- Location: LCCOMB_X25_Y20_N16
\PROC|ControlUnityBlock|Selector6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector6~3_combout\ = (!\PROC|ControlUnityBlock|cycle\(2) & (!\PROC|ControlUnityBlock|cycle\(1) & (!\PROC|ControlUnityBlock|cycle\(0) & \PROC|ControlUnityBlock|present_state.movenz~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|cycle\(2),
	datab => \PROC|ControlUnityBlock|cycle\(1),
	datac => \PROC|ControlUnityBlock|cycle\(0),
	datad => \PROC|ControlUnityBlock|present_state.movenz~q\,
	combout => \PROC|ControlUnityBlock|Selector6~3_combout\);

-- Location: LCCOMB_X25_Y20_N8
\PROC|ControlUnityBlock|next_state.move~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|next_state.move~0_combout\ = (\PROC|ControlUnityBlock|Selector6~3_combout\ & ((\PROC|Equal0~4_combout\))) # (!\PROC|ControlUnityBlock|Selector6~3_combout\ & (\PROC|ControlUnityBlock|Selector5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector5~1_combout\,
	datab => \PROC|ControlUnityBlock|Selector6~3_combout\,
	datad => \PROC|Equal0~4_combout\,
	combout => \PROC|ControlUnityBlock|next_state.move~0_combout\);

-- Location: LCCOMB_X25_Y20_N30
\PROC|ControlUnityBlock|present_state~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|present_state~18_combout\ = (\Run~input_o\ & \PROC|ControlUnityBlock|next_state.move~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Run~input_o\,
	datac => \PROC|ControlUnityBlock|next_state.move~0_combout\,
	combout => \PROC|ControlUnityBlock|present_state~18_combout\);

-- Location: FF_X26_Y19_N31
\PROC|ControlUnityBlock|present_state.move\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \PROC|ControlUnityBlock|present_state~18_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ControlUnityBlock|present_state.move~q\);

-- Location: LCCOMB_X26_Y20_N0
\PROC|ControlUnityBlock|Selector1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector1~2_combout\ = (\PROC|ControlUnityBlock|present_state.idle~q\ & (!\PROC|ControlUnityBlock|present_state.move~q\ & !\PROC|ControlUnityBlock|present_state.movenz~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|present_state.idle~q\,
	datac => \PROC|ControlUnityBlock|present_state.move~q\,
	datad => \PROC|ControlUnityBlock|present_state.movenz~q\,
	combout => \PROC|ControlUnityBlock|Selector1~2_combout\);

-- Location: LCCOMB_X26_Y21_N4
\PROC|ControlUnityBlock|Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector2~0_combout\ = (!\PROC|ControlUnityBlock|Selector0~0_combout\ & (\PROC|ControlUnityBlock|cycle\(0) $ (((!\PROC|ControlUnityBlock|cycle\(1) & !\PROC|ControlUnityBlock|cycle\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|cycle\(0),
	datab => \PROC|ControlUnityBlock|cycle\(1),
	datac => \PROC|ControlUnityBlock|Selector0~0_combout\,
	datad => \PROC|ControlUnityBlock|cycle\(2),
	combout => \PROC|ControlUnityBlock|Selector2~0_combout\);

-- Location: LCCOMB_X26_Y21_N22
\PROC|ControlUnityBlock|Selector2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector2~2_combout\ = (\PROC|ControlUnityBlock|Selector2~1_combout\) # ((\PROC|ControlUnityBlock|Selector2~0_combout\) # ((!\PROC|ControlUnityBlock|Selector1~2_combout\ & \PROC|ControlUnityBlock|cycle\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector2~1_combout\,
	datab => \PROC|ControlUnityBlock|Selector1~2_combout\,
	datac => \PROC|ControlUnityBlock|Selector2~0_combout\,
	datad => \PROC|ControlUnityBlock|cycle\(0),
	combout => \PROC|ControlUnityBlock|Selector2~2_combout\);

-- Location: FF_X26_Y19_N19
\PROC|ControlUnityBlock|cycle[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \PROC|ControlUnityBlock|Selector2~2_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Run~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ControlUnityBlock|cycle\(0));

-- Location: LCCOMB_X26_Y19_N0
\PROC|ControlUnityBlock|Mux39~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Mux39~1_combout\ = (\PROC|ControlUnityBlock|cycle\(1) & (!\PROC|ControlUnityBlock|cycle\(2) & !\PROC|ControlUnityBlock|cycle\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|cycle\(1),
	datab => \PROC|ControlUnityBlock|cycle\(2),
	datad => \PROC|ControlUnityBlock|cycle\(0),
	combout => \PROC|ControlUnityBlock|Mux39~1_combout\);

-- Location: LCCOMB_X25_Y18_N24
\PROC|ControlUnityBlock|Selector3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector3~2_combout\ = (\PROC|ControlUnityBlock|Selector3~1_combout\ & (!\PROC|ControlUnityBlock|Mux39~1_combout\ & ((!\PROC|ControlUnityBlock|Selector0~0_combout\)))) # (!\PROC|ControlUnityBlock|Selector3~1_combout\ & 
-- (((!\PROC|ControlUnityBlock|Mux39~1_combout\ & !\PROC|ControlUnityBlock|Selector0~0_combout\)) # (!\PROC|ControlUnityBlock|Mux39~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector3~1_combout\,
	datab => \PROC|ControlUnityBlock|Mux39~1_combout\,
	datac => \PROC|ControlUnityBlock|Mux39~2_combout\,
	datad => \PROC|ControlUnityBlock|Selector0~0_combout\,
	combout => \PROC|ControlUnityBlock|Selector3~2_combout\);

-- Location: LCCOMB_X26_Y18_N6
\PROC|ControlUnityBlock|next_state~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|next_state~13_combout\ = (\Run~input_o\ & ((\PROC|ControlUnityBlock|Selector3~3_combout\))) # (!\Run~input_o\ & (!\PROC|ControlUnityBlock|present_state.idle~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|ControlUnityBlock|present_state.idle~q\,
	datac => \Run~input_o\,
	datad => \PROC|ControlUnityBlock|Selector3~3_combout\,
	combout => \PROC|ControlUnityBlock|next_state~13_combout\);

-- Location: FF_X26_Y18_N7
\PROC|ControlUnityBlock|next_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \PROC|ControlUnityBlock|next_state~13_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ControlUnityBlock|next_state.idle~q\);

-- Location: LCCOMB_X26_Y18_N0
\PROC|ControlUnityBlock|Selector3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector3~3_combout\ = (\PROC|ControlUnityBlock|next_state.idle~q\ & (((\PROC|ControlUnityBlock|Selector3~2_combout\) # (!\PROC|ControlUnityBlock|present_state.idle~q\)) # (!\PROC|ControlUnityBlock|Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector0~1_combout\,
	datab => \PROC|ControlUnityBlock|Selector3~2_combout\,
	datac => \PROC|ControlUnityBlock|next_state.idle~q\,
	datad => \PROC|ControlUnityBlock|present_state.idle~q\,
	combout => \PROC|ControlUnityBlock|Selector3~3_combout\);

-- Location: LCCOMB_X26_Y19_N6
\PROC|ControlUnityBlock|present_state~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|present_state~19_combout\ = (!\PROC|ControlUnityBlock|Selector3~3_combout\ & \Run~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|ControlUnityBlock|Selector3~3_combout\,
	datad => \Run~input_o\,
	combout => \PROC|ControlUnityBlock|present_state~19_combout\);

-- Location: FF_X26_Y19_N7
\PROC|ControlUnityBlock|present_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \PROC|ControlUnityBlock|present_state~19_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ControlUnityBlock|present_state.idle~q\);

-- Location: FF_X26_Y18_N21
\PROC|ControlUnityBlock|next_state.addition\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \PROC|ControlUnityBlock|next_state.addition~0_combout\,
	asdata => \PROC|ControlUnityBlock|present_state.addition~q\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \ALT_INV_Run~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ControlUnityBlock|next_state.addition~q\);

-- Location: LCCOMB_X26_Y18_N16
\PROC|ControlUnityBlock|Selector7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector7~0_combout\ = (\PROC|ControlUnityBlock|next_state.addition~q\ & ((\PROC|ControlUnityBlock|present_state.fetchInstruction~q\) # ((!\PROC|ControlUnityBlock|Selector6~1_combout\) # 
-- (!\PROC|ControlUnityBlock|present_state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|present_state.fetchInstruction~q\,
	datab => \PROC|ControlUnityBlock|present_state.idle~q\,
	datac => \PROC|ControlUnityBlock|Selector6~1_combout\,
	datad => \PROC|ControlUnityBlock|next_state.addition~q\,
	combout => \PROC|ControlUnityBlock|Selector7~0_combout\);

-- Location: LCCOMB_X26_Y18_N20
\PROC|ControlUnityBlock|next_state.addition~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|next_state.addition~0_combout\ = (\PROC|ControlUnityBlock|Selector4~2_combout\ & (\PROC|ControlUnityBlock|Mux17~2_combout\)) # (!\PROC|ControlUnityBlock|Selector4~2_combout\ & ((\PROC|ControlUnityBlock|Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Mux17~2_combout\,
	datab => \PROC|ControlUnityBlock|Selector7~0_combout\,
	datad => \PROC|ControlUnityBlock|Selector4~2_combout\,
	combout => \PROC|ControlUnityBlock|next_state.addition~0_combout\);

-- Location: LCCOMB_X26_Y18_N22
\PROC|ControlUnityBlock|present_state~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|present_state~15_combout\ = (\Run~input_o\ & \PROC|ControlUnityBlock|next_state.addition~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Run~input_o\,
	datad => \PROC|ControlUnityBlock|next_state.addition~0_combout\,
	combout => \PROC|ControlUnityBlock|present_state~15_combout\);

-- Location: FF_X26_Y19_N1
\PROC|ControlUnityBlock|present_state.addition\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \PROC|ControlUnityBlock|present_state~15_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ControlUnityBlock|present_state.addition~q\);

-- Location: LCCOMB_X25_Y18_N0
\PROC|ControlUnityBlock|Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector0~0_combout\ = (!\PROC|ControlUnityBlock|present_state.subtraction~q\ & (!\PROC|ControlUnityBlock|present_state.addition~q\ & !\PROC|ControlUnityBlock|present_state.storage~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|present_state.subtraction~q\,
	datac => \PROC|ControlUnityBlock|present_state.addition~q\,
	datad => \PROC|ControlUnityBlock|present_state.storage~q\,
	combout => \PROC|ControlUnityBlock|Selector0~0_combout\);

-- Location: LCCOMB_X26_Y20_N8
\PROC|ControlUnityBlock|Selector0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector0~3_combout\ = (\PROC|ControlUnityBlock|Selector0~2_combout\) # ((\PROC|ControlUnityBlock|cycle\(2) & ((!\PROC|ControlUnityBlock|Selector1~2_combout\) # (!\PROC|ControlUnityBlock|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector0~2_combout\,
	datab => \PROC|ControlUnityBlock|Selector0~0_combout\,
	datac => \PROC|ControlUnityBlock|Selector1~2_combout\,
	datad => \PROC|ControlUnityBlock|cycle\(2),
	combout => \PROC|ControlUnityBlock|Selector0~3_combout\);

-- Location: FF_X26_Y19_N9
\PROC|ControlUnityBlock|cycle[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	asdata => \PROC|ControlUnityBlock|Selector0~3_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Run~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ControlUnityBlock|cycle\(2));

-- Location: LCCOMB_X25_Y18_N30
\PROC|ControlUnityBlock|Selector6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector6~0_combout\ = (\PROC|ControlUnityBlock|cycle\(1) & (((!\PROC|ControlUnityBlock|Selector0~0_combout\)))) # (!\PROC|ControlUnityBlock|cycle\(1) & ((\PROC|ControlUnityBlock|present_state.movenz~q\) # 
-- ((\PROC|ControlUnityBlock|present_state.move~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|present_state.movenz~q\,
	datab => \PROC|ControlUnityBlock|cycle\(1),
	datac => \PROC|ControlUnityBlock|present_state.move~q\,
	datad => \PROC|ControlUnityBlock|Selector0~0_combout\,
	combout => \PROC|ControlUnityBlock|Selector6~0_combout\);

-- Location: LCCOMB_X25_Y18_N16
\PROC|ControlUnityBlock|Selector6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector6~1_combout\ = (\PROC|ControlUnityBlock|Selector24~0_combout\) # ((!\PROC|ControlUnityBlock|cycle\(0) & (!\PROC|ControlUnityBlock|cycle\(2) & \PROC|ControlUnityBlock|Selector6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|cycle\(0),
	datab => \PROC|ControlUnityBlock|cycle\(2),
	datac => \PROC|ControlUnityBlock|Selector6~0_combout\,
	datad => \PROC|ControlUnityBlock|Selector24~0_combout\,
	combout => \PROC|ControlUnityBlock|Selector6~1_combout\);

-- Location: LCCOMB_X26_Y18_N24
\PROC|ControlUnityBlock|Selector9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector9~0_combout\ = (\PROC|ControlUnityBlock|next_state.load~q\ & ((\PROC|ControlUnityBlock|present_state.fetchInstruction~q\) # ((!\PROC|ControlUnityBlock|present_state.idle~q\) # 
-- (!\PROC|ControlUnityBlock|Selector6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|present_state.fetchInstruction~q\,
	datab => \PROC|ControlUnityBlock|next_state.load~q\,
	datac => \PROC|ControlUnityBlock|Selector6~1_combout\,
	datad => \PROC|ControlUnityBlock|present_state.idle~q\,
	combout => \PROC|ControlUnityBlock|Selector9~0_combout\);

-- Location: LCCOMB_X26_Y18_N28
\PROC|ControlUnityBlock|next_state.load~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|next_state.load~0_combout\ = (\PROC|ControlUnityBlock|Selector4~2_combout\ & (\PROC|ControlUnityBlock|Mux17~0_combout\)) # (!\PROC|ControlUnityBlock|Selector4~2_combout\ & ((\PROC|ControlUnityBlock|Selector9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Mux17~0_combout\,
	datab => \PROC|ControlUnityBlock|Selector9~0_combout\,
	datad => \PROC|ControlUnityBlock|Selector4~2_combout\,
	combout => \PROC|ControlUnityBlock|next_state.load~0_combout\);

-- Location: LCCOMB_X26_Y19_N28
\PROC|ControlUnityBlock|present_state~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|present_state~13_combout\ = (\Run~input_o\ & \PROC|ControlUnityBlock|next_state.load~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Run~input_o\,
	datad => \PROC|ControlUnityBlock|next_state.load~0_combout\,
	combout => \PROC|ControlUnityBlock|present_state~13_combout\);

-- Location: FF_X26_Y19_N29
\PROC|ControlUnityBlock|present_state.load\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_Clock~inputclkctrl_outclk\,
	d => \PROC|ControlUnityBlock|present_state~13_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ControlUnityBlock|present_state.load~q\);

-- Location: LCCOMB_X26_Y21_N28
\PROC|ControlUnityBlock|Selector24~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector24~1_combout\ = (!\PROC|ControlUnityBlock|present_state.loadImmediate~q\ & !\PROC|ControlUnityBlock|present_state.load~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|present_state.loadImmediate~q\,
	datad => \PROC|ControlUnityBlock|present_state.load~q\,
	combout => \PROC|ControlUnityBlock|Selector24~1_combout\);

-- Location: LCCOMB_X26_Y21_N2
\PROC|ControlUnityBlock|Selector14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector14~0_combout\ = (\PROC|ControlUnityBlock|Mux39~2_combout\ & (((\PROC|ControlUnityBlock|present_state.storage~q\) # (\PROC|ControlUnityBlock|present_state.fetchInstruction~q\)) # 
-- (!\PROC|ControlUnityBlock|Selector24~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Mux39~2_combout\,
	datab => \PROC|ControlUnityBlock|Selector24~1_combout\,
	datac => \PROC|ControlUnityBlock|present_state.storage~q\,
	datad => \PROC|ControlUnityBlock|present_state.fetchInstruction~q\,
	combout => \PROC|ControlUnityBlock|Selector14~0_combout\);

-- Location: FF_X20_Y21_N13
\PROC|ADDR_Register|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|ADDR_Register|Q[0]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ADDR_Register|Q\(0));

-- Location: FF_X25_Y19_N5
\PROC|IntructionRegister|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \MEMORY|altsyncram_component|auto_generated|q_a\(12),
	sload => VCC,
	ena => \PROC|ControlUnityBlock|IRin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|IntructionRegister|Q\(5));

-- Location: LCCOMB_X23_Y19_N16
\PROC|ControlUnityBlock|Selector32~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector32~1_combout\ = (\PROC|ControlUnityBlock|Selector17~2_combout\ & (!\PROC|IntructionRegister|Q\(5) & ((\PROC|ControlUnityBlock|Selector31~1_combout\) # (\PROC|ControlUnityBlock|Selector31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector17~2_combout\,
	datab => \PROC|IntructionRegister|Q\(5),
	datac => \PROC|ControlUnityBlock|Selector31~1_combout\,
	datad => \PROC|ControlUnityBlock|Selector31~0_combout\,
	combout => \PROC|ControlUnityBlock|Selector32~1_combout\);

-- Location: LCCOMB_X23_Y19_N14
\PROC|ControlUnityBlock|Selector32~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ControlUnityBlock|Selector32~2_combout\ = (!\PROC|ControlUnityBlock|Selector31~5_combout\ & (!\PROC|ControlUnityBlock|Selector31~6_combout\ & ((\PROC|ControlUnityBlock|Selector32~0_combout\) # (\PROC|ControlUnityBlock|Selector32~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector32~0_combout\,
	datab => \PROC|ControlUnityBlock|Selector32~1_combout\,
	datac => \PROC|ControlUnityBlock|Selector31~5_combout\,
	datad => \PROC|ControlUnityBlock|Selector31~6_combout\,
	combout => \PROC|ControlUnityBlock|Selector32~2_combout\);

-- Location: LCCOMB_X23_Y19_N0
\PROC|Multiplexar|Equal2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Equal2~0_combout\ = (!\PROC|ControlUnityBlock|Selector33~3_combout\ & (!\PROC|ControlUnityBlock|Selector32~2_combout\ & !\PROC|ControlUnityBlock|Selector29~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector33~3_combout\,
	datac => \PROC|ControlUnityBlock|Selector32~2_combout\,
	datad => \PROC|ControlUnityBlock|Selector29~2_combout\,
	combout => \PROC|Multiplexar|Equal2~0_combout\);

-- Location: LCCOMB_X23_Y19_N22
\PROC|Multiplexar|Equal5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Equal5~1_combout\ = (\PROC|ControlUnityBlock|Selector28~3_combout\ & (\PROC|Multiplexar|Equal2~0_combout\ & (!\PROC|ControlUnityBlock|Selector27~3_combout\ & \PROC|Multiplexar|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ControlUnityBlock|Selector28~3_combout\,
	datab => \PROC|Multiplexar|Equal2~0_combout\,
	datac => \PROC|ControlUnityBlock|Selector27~3_combout\,
	datad => \PROC|Multiplexar|Equal5~0_combout\,
	combout => \PROC|Multiplexar|Equal5~1_combout\);

-- Location: FF_X23_Y22_N9
\PROC|REGISTERS:4:RegisterBlocks|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector15~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector18~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:4:RegisterBlocks|Q\(0));

-- Location: LCCOMB_X23_Y22_N8
\PROC|Multiplexar|Selector15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector15~0_combout\ = (\PROC|REGISTERS:5:RegisterBlocks|Q\(0) & ((\PROC|Multiplexar|Equal5~1_combout\) # ((\PROC|REGISTERS:4:RegisterBlocks|Q\(0) & \PROC|Multiplexar|Equal4~1_combout\)))) # (!\PROC|REGISTERS:5:RegisterBlocks|Q\(0) & 
-- (((\PROC|REGISTERS:4:RegisterBlocks|Q\(0) & \PROC|Multiplexar|Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|REGISTERS:5:RegisterBlocks|Q\(0),
	datab => \PROC|Multiplexar|Equal5~1_combout\,
	datac => \PROC|REGISTERS:4:RegisterBlocks|Q\(0),
	datad => \PROC|Multiplexar|Equal4~1_combout\,
	combout => \PROC|Multiplexar|Selector15~0_combout\);

-- Location: FF_X24_Y21_N23
\PROC|REGISTERS:2:RegisterBlocks|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector15~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector20~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:2:RegisterBlocks|Q\(0));

-- Location: LCCOMB_X23_Y20_N2
\PROC|Multiplexar|Selector15~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector15~3_combout\ = (\PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\PROC|Multiplexar|Equal2~0_combout\ & (\PROC|Multiplexar|Mbus~1_combout\ & \PROC|Multiplexar|Mbus~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|ProgramCounterBlock|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datab => \PROC|Multiplexar|Equal2~0_combout\,
	datac => \PROC|Multiplexar|Mbus~1_combout\,
	datad => \PROC|Multiplexar|Mbus~0_combout\,
	combout => \PROC|Multiplexar|Selector15~3_combout\);

-- Location: LCCOMB_X24_Y21_N22
\PROC|Multiplexar|Selector15~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector15~5_combout\ = (\PROC|Multiplexar|Selector15~4_combout\) # ((\PROC|Multiplexar|Selector15~3_combout\) # ((\PROC|Multiplexar|Equal2~2_combout\ & \PROC|REGISTERS:2:RegisterBlocks|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Selector15~4_combout\,
	datab => \PROC|Multiplexar|Equal2~2_combout\,
	datac => \PROC|REGISTERS:2:RegisterBlocks|Q\(0),
	datad => \PROC|Multiplexar|Selector15~3_combout\,
	combout => \PROC|Multiplexar|Selector15~5_combout\);

-- Location: FF_X25_Y21_N13
\PROC|REGISTERS:0:RegisterBlocks|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector15~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector22~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|REGISTERS:0:RegisterBlocks|Q\(0));

-- Location: LCCOMB_X25_Y21_N12
\PROC|Multiplexar|Selector15~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector15~2_combout\ = (\PROC|REGISTERS:1:RegisterBlocks|Q\(0) & ((\PROC|Multiplexar|Equal1~0_combout\) # ((\PROC|Multiplexar|Equal0~2_combout\ & \PROC|REGISTERS:0:RegisterBlocks|Q\(0))))) # (!\PROC|REGISTERS:1:RegisterBlocks|Q\(0) & 
-- (\PROC|Multiplexar|Equal0~2_combout\ & (\PROC|REGISTERS:0:RegisterBlocks|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|REGISTERS:1:RegisterBlocks|Q\(0),
	datab => \PROC|Multiplexar|Equal0~2_combout\,
	datac => \PROC|REGISTERS:0:RegisterBlocks|Q\(0),
	datad => \PROC|Multiplexar|Equal1~0_combout\,
	combout => \PROC|Multiplexar|Selector15~2_combout\);

-- Location: LCCOMB_X22_Y21_N0
\PROC|Multiplexar|Selector15~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|Multiplexar|Selector15~6_combout\ = (\PROC|Multiplexar|Selector15~1_combout\) # ((\PROC|Multiplexar|Selector15~0_combout\) # ((\PROC|Multiplexar|Selector15~5_combout\) # (\PROC|Multiplexar|Selector15~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|Multiplexar|Selector15~1_combout\,
	datab => \PROC|Multiplexar|Selector15~0_combout\,
	datac => \PROC|Multiplexar|Selector15~5_combout\,
	datad => \PROC|Multiplexar|Selector15~2_combout\,
	combout => \PROC|Multiplexar|Selector15~6_combout\);

-- Location: LCCOMB_X27_Y21_N20
\PROC|DOUT_Register|Q[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|DOUT_Register|Q[0]~feeder_combout\ = \PROC|Multiplexar|Selector15~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|Multiplexar|Selector15~6_combout\,
	combout => \PROC|DOUT_Register|Q[0]~feeder_combout\);

-- Location: FF_X27_Y21_N21
\PROC|DOUT_Register|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|DOUT_Register|Q[0]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|DOUTin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|DOUT_Register|Q\(0));

-- Location: LCCOMB_X27_Y19_N0
\LEDREGISTER|Q[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LEDREGISTER|Q[0]~feeder_combout\ = \PROC|DOUT_Register|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|DOUT_Register|Q\(0),
	combout => \LEDREGISTER|Q[0]~feeder_combout\);

-- Location: LCCOMB_X23_Y18_N4
\PROC|ADDR_Register|Q[12]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ADDR_Register|Q[12]~feeder_combout\ = \PROC|Multiplexar|Selector3~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|Multiplexar|Selector3~6_combout\,
	combout => \PROC|ADDR_Register|Q[12]~feeder_combout\);

-- Location: FF_X23_Y18_N5
\PROC|ADDR_Register|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|ADDR_Register|Q[12]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ADDR_Register|Q\(12));

-- Location: LCCOMB_X20_Y20_N24
\PROC|ADDR_Register|Q[15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ADDR_Register|Q[15]~feeder_combout\ = \PROC|Multiplexar|Selector0~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|Multiplexar|Selector0~6_combout\,
	combout => \PROC|ADDR_Register|Q[15]~feeder_combout\);

-- Location: FF_X20_Y20_N25
\PROC|ADDR_Register|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|ADDR_Register|Q[15]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ADDR_Register|Q\(15));

-- Location: FF_X23_Y18_N3
\PROC|ADDR_Register|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|Multiplexar|Selector2~6_combout\,
	sload => VCC,
	ena => \PROC|ControlUnityBlock|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ADDR_Register|Q\(13));

-- Location: LCCOMB_X23_Y18_N24
\PROC|ADDR_Register|Q[14]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PROC|ADDR_Register|Q[14]~feeder_combout\ = \PROC|Multiplexar|Selector1~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PROC|Multiplexar|Selector1~6_combout\,
	combout => \PROC|ADDR_Register|Q[14]~feeder_combout\);

-- Location: FF_X23_Y18_N25
\PROC|ADDR_Register|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \PROC|ADDR_Register|Q[14]~feeder_combout\,
	ena => \PROC|ControlUnityBlock|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PROC|ADDR_Register|Q\(14));

-- Location: LCCOMB_X23_Y18_N2
\wr_en~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \wr_en~0_combout\ = (\PROC|W~q\ & (!\PROC|ADDR_Register|Q\(15) & (!\PROC|ADDR_Register|Q\(13) & !\PROC|ADDR_Register|Q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PROC|W~q\,
	datab => \PROC|ADDR_Register|Q\(15),
	datac => \PROC|ADDR_Register|Q\(13),
	datad => \PROC|ADDR_Register|Q\(14),
	combout => \wr_en~0_combout\);

-- Location: LCCOMB_X23_Y18_N6
Qin : cycloneiv_lcell_comb
-- Equation(s):
-- \Qin~combout\ = (\PROC|ADDR_Register|Q\(12) & \wr_en~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PROC|ADDR_Register|Q\(12),
	datad => \wr_en~0_combout\,
	combout => \Qin~combout\);

-- Location: FF_X27_Y19_N1
\LEDREGISTER|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \LEDREGISTER|Q[0]~feeder_combout\,
	ena => \Qin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDREGISTER|Q\(0));

-- Location: LCCOMB_X27_Y18_N0
\LEDREGISTER|Q[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LEDREGISTER|Q[1]~feeder_combout\ = \PROC|DOUT_Register|Q\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|DOUT_Register|Q\(1),
	combout => \LEDREGISTER|Q[1]~feeder_combout\);

-- Location: FF_X27_Y18_N1
\LEDREGISTER|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \LEDREGISTER|Q[1]~feeder_combout\,
	ena => \Qin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDREGISTER|Q\(1));

-- Location: FF_X27_Y18_N27
\LEDREGISTER|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|DOUT_Register|Q\(2),
	sload => VCC,
	ena => \Qin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDREGISTER|Q\(2));

-- Location: LCCOMB_X27_Y18_N28
\LEDREGISTER|Q[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LEDREGISTER|Q[3]~feeder_combout\ = \PROC|DOUT_Register|Q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|DOUT_Register|Q\(3),
	combout => \LEDREGISTER|Q[3]~feeder_combout\);

-- Location: FF_X27_Y18_N29
\LEDREGISTER|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \LEDREGISTER|Q[3]~feeder_combout\,
	ena => \Qin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDREGISTER|Q\(3));

-- Location: LCCOMB_X27_Y21_N16
\LEDREGISTER|Q[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LEDREGISTER|Q[4]~feeder_combout\ = \PROC|DOUT_Register|Q\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|DOUT_Register|Q\(4),
	combout => \LEDREGISTER|Q[4]~feeder_combout\);

-- Location: FF_X27_Y21_N17
\LEDREGISTER|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \LEDREGISTER|Q[4]~feeder_combout\,
	ena => \Qin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDREGISTER|Q\(4));

-- Location: LCCOMB_X27_Y18_N30
\LEDREGISTER|Q[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LEDREGISTER|Q[5]~feeder_combout\ = \PROC|DOUT_Register|Q\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|DOUT_Register|Q\(5),
	combout => \LEDREGISTER|Q[5]~feeder_combout\);

-- Location: FF_X27_Y18_N31
\LEDREGISTER|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \LEDREGISTER|Q[5]~feeder_combout\,
	ena => \Qin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDREGISTER|Q\(5));

-- Location: LCCOMB_X27_Y18_N4
\LEDREGISTER|Q[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LEDREGISTER|Q[6]~feeder_combout\ = \PROC|DOUT_Register|Q\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|DOUT_Register|Q\(6),
	combout => \LEDREGISTER|Q[6]~feeder_combout\);

-- Location: FF_X27_Y18_N5
\LEDREGISTER|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \LEDREGISTER|Q[6]~feeder_combout\,
	ena => \Qin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDREGISTER|Q\(6));

-- Location: FF_X27_Y18_N19
\LEDREGISTER|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|DOUT_Register|Q\(7),
	sload => VCC,
	ena => \Qin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDREGISTER|Q\(7));

-- Location: FF_X22_Y18_N25
\LEDREGISTER|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|DOUT_Register|Q\(8),
	sload => VCC,
	ena => \Qin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDREGISTER|Q\(8));

-- Location: FF_X27_Y21_N3
\LEDREGISTER|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|DOUT_Register|Q\(9),
	sload => VCC,
	ena => \Qin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDREGISTER|Q\(9));

-- Location: LCCOMB_X27_Y18_N8
\LEDREGISTER|Q[10]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LEDREGISTER|Q[10]~feeder_combout\ = \PROC|DOUT_Register|Q\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|DOUT_Register|Q\(10),
	combout => \LEDREGISTER|Q[10]~feeder_combout\);

-- Location: FF_X27_Y18_N9
\LEDREGISTER|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \LEDREGISTER|Q[10]~feeder_combout\,
	ena => \Qin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDREGISTER|Q\(10));

-- Location: FF_X27_Y18_N7
\LEDREGISTER|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|DOUT_Register|Q\(11),
	sload => VCC,
	ena => \Qin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDREGISTER|Q\(11));

-- Location: FF_X22_Y18_N7
\LEDREGISTER|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \PROC|DOUT_Register|Q\(12),
	sload => VCC,
	ena => \Qin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDREGISTER|Q\(12));

-- Location: LCCOMB_X27_Y18_N20
\LEDREGISTER|Q[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LEDREGISTER|Q[13]~feeder_combout\ = \PROC|DOUT_Register|Q\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|DOUT_Register|Q\(13),
	combout => \LEDREGISTER|Q[13]~feeder_combout\);

-- Location: FF_X27_Y18_N21
\LEDREGISTER|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \LEDREGISTER|Q[13]~feeder_combout\,
	ena => \Qin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDREGISTER|Q\(13));

-- Location: LCCOMB_X27_Y18_N22
\LEDREGISTER|Q[14]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LEDREGISTER|Q[14]~feeder_combout\ = \PROC|DOUT_Register|Q\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|DOUT_Register|Q\(14),
	combout => \LEDREGISTER|Q[14]~feeder_combout\);

-- Location: FF_X27_Y18_N23
\LEDREGISTER|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \LEDREGISTER|Q[14]~feeder_combout\,
	ena => \Qin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDREGISTER|Q\(14));

-- Location: LCCOMB_X27_Y18_N16
\LEDREGISTER|Q[15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LEDREGISTER|Q[15]~feeder_combout\ = \PROC|DOUT_Register|Q\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PROC|DOUT_Register|Q\(15),
	combout => \LEDREGISTER|Q[15]~feeder_combout\);

-- Location: FF_X27_Y18_N17
\LEDREGISTER|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \LEDREGISTER|Q[15]~feeder_combout\,
	ena => \Qin~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDREGISTER|Q\(15));

ww_LEDs(0) <= \LEDs[0]~output_o\;

ww_LEDs(1) <= \LEDs[1]~output_o\;

ww_LEDs(2) <= \LEDs[2]~output_o\;

ww_LEDs(3) <= \LEDs[3]~output_o\;

ww_LEDs(4) <= \LEDs[4]~output_o\;

ww_LEDs(5) <= \LEDs[5]~output_o\;

ww_LEDs(6) <= \LEDs[6]~output_o\;

ww_LEDs(7) <= \LEDs[7]~output_o\;

ww_LEDs(8) <= \LEDs[8]~output_o\;

ww_LEDs(9) <= \LEDs[9]~output_o\;

ww_LEDs(10) <= \LEDs[10]~output_o\;

ww_LEDs(11) <= \LEDs[11]~output_o\;

ww_LEDs(12) <= \LEDs[12]~output_o\;

ww_LEDs(13) <= \LEDs[13]~output_o\;

ww_LEDs(14) <= \LEDs[14]~output_o\;

ww_LEDs(15) <= \LEDs[15]~output_o\;
END structure;


