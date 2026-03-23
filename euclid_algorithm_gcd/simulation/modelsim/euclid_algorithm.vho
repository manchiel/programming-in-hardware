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

-- DATE "03/23/2026 19:40:26"

-- 
-- Device: Altera 10M16SAU169C8G Package UFBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_G1,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_F5,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_E7,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_C4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_C5,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	euclid_algorithm IS
    PORT (
	iCLK : IN std_logic;
	iRST : IN std_logic;
	iA : IN std_logic_vector(15 DOWNTO 0);
	iB : IN std_logic_vector(15 DOWNTO 0);
	oGCD : OUT std_logic_vector(15 DOWNTO 0)
	);
END euclid_algorithm;

-- Design Ports Information
-- oGCD[0]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oGCD[1]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oGCD[2]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oGCD[3]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oGCD[4]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oGCD[5]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oGCD[6]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oGCD[7]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oGCD[8]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oGCD[9]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oGCD[10]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oGCD[11]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oGCD[12]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oGCD[13]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oGCD[14]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- oGCD[15]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[0]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iCLK	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iRST	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[1]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[2]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[3]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[4]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[5]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[6]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[7]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[8]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[9]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[10]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[11]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[12]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[13]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[14]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iA[15]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[2]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[3]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[4]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[5]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[6]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[7]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[10]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[11]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[12]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[13]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[14]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[15]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[8]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iB[9]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF euclid_algorithm IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_iCLK : std_logic;
SIGNAL ww_iRST : std_logic;
SIGNAL ww_iA : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_iB : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_oGCD : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Equal5~10clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \iCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \iRST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \oGCD[0]~output_o\ : std_logic;
SIGNAL \oGCD[1]~output_o\ : std_logic;
SIGNAL \oGCD[2]~output_o\ : std_logic;
SIGNAL \oGCD[3]~output_o\ : std_logic;
SIGNAL \oGCD[4]~output_o\ : std_logic;
SIGNAL \oGCD[5]~output_o\ : std_logic;
SIGNAL \oGCD[6]~output_o\ : std_logic;
SIGNAL \oGCD[7]~output_o\ : std_logic;
SIGNAL \oGCD[8]~output_o\ : std_logic;
SIGNAL \oGCD[9]~output_o\ : std_logic;
SIGNAL \oGCD[10]~output_o\ : std_logic;
SIGNAL \oGCD[11]~output_o\ : std_logic;
SIGNAL \oGCD[12]~output_o\ : std_logic;
SIGNAL \oGCD[13]~output_o\ : std_logic;
SIGNAL \oGCD[14]~output_o\ : std_logic;
SIGNAL \oGCD[15]~output_o\ : std_logic;
SIGNAL \iCLK~input_o\ : std_logic;
SIGNAL \iCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \iB[6]~input_o\ : std_logic;
SIGNAL \iB[7]~input_o\ : std_logic;
SIGNAL \iB[5]~input_o\ : std_logic;
SIGNAL \iB[4]~input_o\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \iA[15]~input_o\ : std_logic;
SIGNAL \iA[12]~input_o\ : std_logic;
SIGNAL \iA[14]~input_o\ : std_logic;
SIGNAL \iA[13]~input_o\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \iA[8]~input_o\ : std_logic;
SIGNAL \iA[11]~input_o\ : std_logic;
SIGNAL \iA[9]~input_o\ : std_logic;
SIGNAL \iA[10]~input_o\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \iA[5]~input_o\ : std_logic;
SIGNAL \iA[7]~input_o\ : std_logic;
SIGNAL \iA[4]~input_o\ : std_logic;
SIGNAL \iA[6]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \iA[1]~input_o\ : std_logic;
SIGNAL \iA[3]~input_o\ : std_logic;
SIGNAL \iA[0]~input_o\ : std_logic;
SIGNAL \iA[2]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \iB[0]~input_o\ : std_logic;
SIGNAL \iB[3]~input_o\ : std_logic;
SIGNAL \iB[2]~input_o\ : std_logic;
SIGNAL \iB[1]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \iB[15]~input_o\ : std_logic;
SIGNAL \iB[12]~input_o\ : std_logic;
SIGNAL \iB[14]~input_o\ : std_logic;
SIGNAL \iB[13]~input_o\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \iB[8]~input_o\ : std_logic;
SIGNAL \iB[9]~input_o\ : std_logic;
SIGNAL \iB[11]~input_o\ : std_logic;
SIGNAL \iB[10]~input_o\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \sSTATE.T0~0_combout\ : std_logic;
SIGNAL \iRST~input_o\ : std_logic;
SIGNAL \iRST~inputclkctrl_outclk\ : std_logic;
SIGNAL \sSTATE.T0~q\ : std_logic;
SIGNAL \sBMux[0]~0_combout\ : std_logic;
SIGNAL \sAMux[15]~15_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \sSTATE.T1~q\ : std_logic;
SIGNAL \sBMux[6]~10_combout\ : std_logic;
SIGNAL \sAMux[5]~5_combout\ : std_logic;
SIGNAL \sBMux[4]~12_combout\ : std_logic;
SIGNAL \sBMux[3]~13_combout\ : std_logic;
SIGNAL \sBMux[2]~14_combout\ : std_logic;
SIGNAL \sBMux[1]~15_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Equal5~10_combout\ : std_logic;
SIGNAL \Equal5~10clkctrl_outclk\ : std_logic;
SIGNAL \sAMux[1]~1_combout\ : std_logic;
SIGNAL \Add1~4\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \sAMux[2]~2_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9_combout\ : std_logic;
SIGNAL \Add1~11_combout\ : std_logic;
SIGNAL \sAMux[3]~3_combout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \sAMux[4]~4_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add1~17_combout\ : std_logic;
SIGNAL \sBMux[5]~11_combout\ : std_logic;
SIGNAL \Add1~16\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \sAMux[6]~6_combout\ : std_logic;
SIGNAL \sBMux[7]~9_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add1~23_combout\ : std_logic;
SIGNAL \sAMux[7]~7_combout\ : std_logic;
SIGNAL \Equal5~3_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~4_combout\ : std_logic;
SIGNAL \sNEXT_STATE.T3~0_combout\ : std_logic;
SIGNAL \sSTATE.T3~q\ : std_logic;
SIGNAL \sAEnable~combout\ : std_logic;
SIGNAL \sBMux[14]~2_combout\ : std_logic;
SIGNAL \sAMux[13]~13_combout\ : std_logic;
SIGNAL \sBMux[12]~4_combout\ : std_logic;
SIGNAL \sBMux[11]~5_combout\ : std_logic;
SIGNAL \sBMux[10]~6_combout\ : std_logic;
SIGNAL \sAMux[9]~9_combout\ : std_logic;
SIGNAL \sBMux[8]~8_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~27_combout\ : std_logic;
SIGNAL \Add1~29_combout\ : std_logic;
SIGNAL \sBMux[9]~7_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add1~28\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \sAMux[10]~10_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~33_combout\ : std_logic;
SIGNAL \Add1~35_combout\ : std_logic;
SIGNAL \sAMux[11]~11_combout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \sAMux[12]~12_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~39_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add1~41_combout\ : std_logic;
SIGNAL \sBMux[13]~3_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add1~40\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \sAMux[14]~14_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~45_combout\ : std_logic;
SIGNAL \Add1~47_combout\ : std_logic;
SIGNAL \sBMux[15]~1_combout\ : std_logic;
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
SIGNAL \LessThan0~30_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \sAMux[8]~8_combout\ : std_logic;
SIGNAL \Equal5~5_combout\ : std_logic;
SIGNAL \Equal5~7_combout\ : std_logic;
SIGNAL \Equal5~6_combout\ : std_logic;
SIGNAL \Equal5~8_combout\ : std_logic;
SIGNAL \Equal5~9_combout\ : std_logic;
SIGNAL \sNEXT_STATE.T2~0_combout\ : std_logic;
SIGNAL \sSTATE.T2~q\ : std_logic;
SIGNAL \sBEnable~combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \sAMux[0]~0_combout\ : std_logic;
SIGNAL sA : std_logic_vector(15 DOWNTO 0);
SIGNAL sB : std_logic_vector(15 DOWNTO 0);
SIGNAL sResult : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_iRST~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_iCLK <= iCLK;
ww_iRST <= iRST;
ww_iA <= iA;
ww_iB <= iB;
oGCD <= ww_oGCD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Equal5~10clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Equal5~10_combout\);

\iCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \iCLK~input_o\);

\iRST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \iRST~input_o\);
\ALT_INV_iRST~inputclkctrl_outclk\ <= NOT \iRST~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y19_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X0_Y15_N23
\oGCD[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sA(0),
	devoe => ww_devoe,
	o => \oGCD[0]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\oGCD[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sA(1),
	devoe => ww_devoe,
	o => \oGCD[1]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\oGCD[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sA(2),
	devoe => ww_devoe,
	o => \oGCD[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\oGCD[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sA(3),
	devoe => ww_devoe,
	o => \oGCD[3]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\oGCD[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sA(4),
	devoe => ww_devoe,
	o => \oGCD[4]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\oGCD[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sA(5),
	devoe => ww_devoe,
	o => \oGCD[5]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\oGCD[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sA(6),
	devoe => ww_devoe,
	o => \oGCD[6]~output_o\);

-- Location: IOOBUF_X14_Y17_N23
\oGCD[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sA(7),
	devoe => ww_devoe,
	o => \oGCD[7]~output_o\);

-- Location: IOOBUF_X14_Y17_N2
\oGCD[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sA(8),
	devoe => ww_devoe,
	o => \oGCD[8]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\oGCD[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sA(9),
	devoe => ww_devoe,
	o => \oGCD[9]~output_o\);

-- Location: IOOBUF_X8_Y0_N23
\oGCD[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sA(10),
	devoe => ww_devoe,
	o => \oGCD[10]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\oGCD[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sA(11),
	devoe => ww_devoe,
	o => \oGCD[11]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\oGCD[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sA(12),
	devoe => ww_devoe,
	o => \oGCD[12]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\oGCD[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sA(13),
	devoe => ww_devoe,
	o => \oGCD[13]~output_o\);

-- Location: IOOBUF_X0_Y3_N23
\oGCD[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sA(14),
	devoe => ww_devoe,
	o => \oGCD[14]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\oGCD[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sA(15),
	devoe => ww_devoe,
	o => \oGCD[15]~output_o\);

-- Location: IOIBUF_X0_Y8_N15
\iCLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iCLK,
	o => \iCLK~input_o\);

-- Location: CLKCTRL_G3
\iCLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \iCLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \iCLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X14_Y0_N8
\iB[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(6),
	o => \iB[6]~input_o\);

-- Location: IOIBUF_X8_Y0_N15
\iB[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(7),
	o => \iB[7]~input_o\);

-- Location: IOIBUF_X8_Y0_N29
\iB[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(5),
	o => \iB[5]~input_o\);

-- Location: IOIBUF_X8_Y0_N8
\iB[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(4),
	o => \iB[4]~input_o\);

-- Location: LCCOMB_X4_Y9_N10
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\iB[6]~input_o\ & (!\iB[7]~input_o\ & (!\iB[5]~input_o\ & !\iB[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[6]~input_o\,
	datab => \iB[7]~input_o\,
	datac => \iB[5]~input_o\,
	datad => \iB[4]~input_o\,
	combout => \Equal1~1_combout\);

-- Location: IOIBUF_X0_Y7_N22
\iA[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(15),
	o => \iA[15]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\iA[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(12),
	o => \iA[12]~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\iA[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(14),
	o => \iA[14]~input_o\);

-- Location: IOIBUF_X10_Y17_N8
\iA[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(13),
	o => \iA[13]~input_o\);

-- Location: LCCOMB_X2_Y10_N16
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\iA[15]~input_o\ & (!\iA[12]~input_o\ & (!\iA[14]~input_o\ & !\iA[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[15]~input_o\,
	datab => \iA[12]~input_o\,
	datac => \iA[14]~input_o\,
	datad => \iA[13]~input_o\,
	combout => \Equal0~3_combout\);

-- Location: IOIBUF_X6_Y0_N8
\iA[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(8),
	o => \iA[8]~input_o\);

-- Location: IOIBUF_X12_Y17_N15
\iA[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(11),
	o => \iA[11]~input_o\);

-- Location: IOIBUF_X12_Y17_N29
\iA[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(9),
	o => \iA[9]~input_o\);

-- Location: IOIBUF_X8_Y17_N22
\iA[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(10),
	o => \iA[10]~input_o\);

-- Location: LCCOMB_X4_Y11_N26
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\iA[8]~input_o\ & (!\iA[11]~input_o\ & (!\iA[9]~input_o\ & !\iA[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[8]~input_o\,
	datab => \iA[11]~input_o\,
	datac => \iA[9]~input_o\,
	datad => \iA[10]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: IOIBUF_X6_Y0_N15
\iA[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(5),
	o => \iA[5]~input_o\);

-- Location: IOIBUF_X6_Y0_N29
\iA[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(7),
	o => \iA[7]~input_o\);

-- Location: IOIBUF_X12_Y17_N1
\iA[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(4),
	o => \iA[4]~input_o\);

-- Location: IOIBUF_X12_Y17_N22
\iA[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(6),
	o => \iA[6]~input_o\);

-- Location: LCCOMB_X4_Y9_N8
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\iA[5]~input_o\ & (!\iA[7]~input_o\ & (!\iA[4]~input_o\ & !\iA[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[5]~input_o\,
	datab => \iA[7]~input_o\,
	datac => \iA[4]~input_o\,
	datad => \iA[6]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: IOIBUF_X10_Y17_N15
\iA[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(1),
	o => \iA[1]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\iA[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(3),
	o => \iA[3]~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\iA[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(0),
	o => \iA[0]~input_o\);

-- Location: IOIBUF_X0_Y14_N1
\iA[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iA(2),
	o => \iA[2]~input_o\);

-- Location: LCCOMB_X3_Y12_N24
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\iA[1]~input_o\ & (!\iA[3]~input_o\ & (!\iA[0]~input_o\ & !\iA[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[1]~input_o\,
	datab => \iA[3]~input_o\,
	datac => \iA[0]~input_o\,
	datad => \iA[2]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X4_Y9_N20
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~2_combout\ & (\Equal0~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: IOIBUF_X8_Y17_N1
\iB[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(0),
	o => \iB[0]~input_o\);

-- Location: IOIBUF_X0_Y3_N15
\iB[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(3),
	o => \iB[3]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\iB[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(2),
	o => \iB[2]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\iB[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(1),
	o => \iB[1]~input_o\);

-- Location: LCCOMB_X2_Y9_N26
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\iB[0]~input_o\ & (!\iB[3]~input_o\ & (!\iB[2]~input_o\ & !\iB[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[0]~input_o\,
	datab => \iB[3]~input_o\,
	datac => \iB[2]~input_o\,
	datad => \iB[1]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: IOIBUF_X0_Y3_N8
\iB[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(15),
	o => \iB[15]~input_o\);

-- Location: IOIBUF_X3_Y0_N15
\iB[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(12),
	o => \iB[12]~input_o\);

-- Location: IOIBUF_X0_Y3_N1
\iB[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(14),
	o => \iB[14]~input_o\);

-- Location: IOIBUF_X8_Y17_N15
\iB[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(13),
	o => \iB[13]~input_o\);

-- Location: LCCOMB_X2_Y10_N22
\Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!\iB[15]~input_o\ & (!\iB[12]~input_o\ & (!\iB[14]~input_o\ & !\iB[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[15]~input_o\,
	datab => \iB[12]~input_o\,
	datac => \iB[14]~input_o\,
	datad => \iB[13]~input_o\,
	combout => \Equal1~3_combout\);

-- Location: IOIBUF_X10_Y17_N1
\iB[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(8),
	o => \iB[8]~input_o\);

-- Location: IOIBUF_X16_Y17_N22
\iB[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(9),
	o => \iB[9]~input_o\);

-- Location: IOIBUF_X12_Y17_N8
\iB[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(11),
	o => \iB[11]~input_o\);

-- Location: IOIBUF_X14_Y17_N29
\iB[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iB(10),
	o => \iB[10]~input_o\);

-- Location: LCCOMB_X3_Y12_N10
\Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!\iB[11]~input_o\ & !\iB[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[11]~input_o\,
	datad => \iB[10]~input_o\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X3_Y12_N14
\Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~3_combout\ & (!\iB[8]~input_o\ & (!\iB[9]~input_o\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~3_combout\,
	datab => \iB[8]~input_o\,
	datac => \iB[9]~input_o\,
	datad => \Equal1~2_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X4_Y9_N26
\process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (\Equal0~4_combout\) # ((\Equal1~1_combout\ & (\Equal1~0_combout\ & \Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal1~0_combout\,
	datad => \Equal1~4_combout\,
	combout => \process_1~0_combout\);

-- Location: LCCOMB_X2_Y11_N6
\sSTATE.T0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sSTATE.T0~0_combout\ = (\sSTATE.T0~q\) # (!\process_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sSTATE.T0~q\,
	datad => \process_1~0_combout\,
	combout => \sSTATE.T0~0_combout\);

-- Location: IOIBUF_X0_Y8_N22
\iRST~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iRST,
	o => \iRST~input_o\);

-- Location: CLKCTRL_G1
\iRST~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \iRST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \iRST~inputclkctrl_outclk\);

-- Location: FF_X2_Y11_N7
\sSTATE.T0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sSTATE.T0~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sSTATE.T0~q\);

-- Location: LCCOMB_X3_Y12_N30
\sBMux[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sBMux[0]~0_combout\ = (\sSTATE.T0~q\ & ((sResult(0)))) # (!\sSTATE.T0~q\ & (\iB[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sSTATE.T0~q\,
	datac => \iB[0]~input_o\,
	datad => sResult(0),
	combout => \sBMux[0]~0_combout\);

-- Location: LCCOMB_X2_Y10_N10
\sAMux[15]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sAMux[15]~15_combout\ = (\sSTATE.T0~q\ & ((sResult(15)))) # (!\sSTATE.T0~q\ & (\iA[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sSTATE.T0~q\,
	datac => \iA[15]~input_o\,
	datad => sResult(15),
	combout => \sAMux[15]~15_combout\);

-- Location: LCCOMB_X2_Y11_N14
\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\sSTATE.T3~q\) # ((\sSTATE.T2~q\) # ((!\process_1~0_combout\ & !\sSTATE.T0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSTATE.T3~q\,
	datab => \process_1~0_combout\,
	datac => \sSTATE.T2~q\,
	datad => \sSTATE.T0~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X2_Y11_N15
\sSTATE.T1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sSTATE.T1~q\);

-- Location: LCCOMB_X4_Y9_N22
\sBMux[6]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sBMux[6]~10_combout\ = (\sSTATE.T0~q\ & ((sResult(6)))) # (!\sSTATE.T0~q\ & (\iB[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[6]~input_o\,
	datac => \sSTATE.T0~q\,
	datad => sResult(6),
	combout => \sBMux[6]~10_combout\);

-- Location: FF_X4_Y9_N23
\sB[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~input_o\,
	d => \sBMux[6]~10_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \sBEnable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sB(6));

-- Location: LCCOMB_X4_Y9_N18
\sAMux[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sAMux[5]~5_combout\ = (\sSTATE.T0~q\ & ((sResult(5)))) # (!\sSTATE.T0~q\ & (\iA[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[5]~input_o\,
	datac => \sSTATE.T0~q\,
	datad => sResult(5),
	combout => \sAMux[5]~5_combout\);

-- Location: FF_X4_Y9_N19
\sA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~input_o\,
	d => \sAMux[5]~5_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \sAEnable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sA(5));

-- Location: LCCOMB_X4_Y9_N6
\sBMux[4]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sBMux[4]~12_combout\ = (\sSTATE.T0~q\ & ((sResult(4)))) # (!\sSTATE.T0~q\ & (\iB[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iB[4]~input_o\,
	datac => \sSTATE.T0~q\,
	datad => sResult(4),
	combout => \sBMux[4]~12_combout\);

-- Location: FF_X4_Y9_N7
\sB[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~input_o\,
	d => \sBMux[4]~12_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \sBEnable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sB(4));

-- Location: LCCOMB_X2_Y9_N18
\sBMux[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sBMux[3]~13_combout\ = (\sSTATE.T0~q\ & ((sResult(3)))) # (!\sSTATE.T0~q\ & (\iB[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iB[3]~input_o\,
	datac => \sSTATE.T0~q\,
	datad => sResult(3),
	combout => \sBMux[3]~13_combout\);

-- Location: FF_X2_Y9_N19
\sB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~input_o\,
	d => \sBMux[3]~13_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \sBEnable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sB(3));

-- Location: LCCOMB_X2_Y9_N24
\sBMux[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sBMux[2]~14_combout\ = (\sSTATE.T0~q\ & ((sResult(2)))) # (!\sSTATE.T0~q\ & (\iB[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iB[2]~input_o\,
	datac => \sSTATE.T0~q\,
	datad => sResult(2),
	combout => \sBMux[2]~14_combout\);

-- Location: FF_X2_Y9_N25
\sB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~input_o\,
	d => \sBMux[2]~14_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \sBEnable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sB(2));

-- Location: LCCOMB_X2_Y9_N4
\sBMux[1]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sBMux[1]~15_combout\ = (\sSTATE.T0~q\ & ((sResult(1)))) # (!\sSTATE.T0~q\ & (\iB[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iB[1]~input_o\,
	datac => \sSTATE.T0~q\,
	datad => sResult(1),
	combout => \sBMux[1]~15_combout\);

-- Location: FF_X2_Y9_N5
\sB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~input_o\,
	d => \sBMux[1]~15_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \sBEnable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sB(1));

-- Location: LCCOMB_X3_Y9_N0
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (sA(0) & (sB(0) $ (VCC))) # (!sA(0) & ((sB(0)) # (GND)))
-- \Add1~1\ = CARRY((sB(0)) # (!sA(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sA(0),
	datab => sB(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X3_Y9_N2
\Add1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (sA(1) & ((sB(1) & (!\Add1~1\)) # (!sB(1) & ((\Add1~1\) # (GND))))) # (!sA(1) & ((sB(1) & (\Add1~1\ & VCC)) # (!sB(1) & (!\Add1~1\))))
-- \Add1~4\ = CARRY((sA(1) & ((!\Add1~1\) # (!sB(1)))) # (!sA(1) & (!sB(1) & !\Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sA(1),
	datab => sB(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~3_combout\,
	cout => \Add1~4\);

-- Location: LCCOMB_X3_Y10_N0
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (sA(0) & ((GND) # (!sB(0)))) # (!sA(0) & (sB(0) $ (GND)))
-- \Add0~1\ = CARRY((sA(0)) # (!sB(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sA(0),
	datab => sB(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X3_Y10_N2
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (sA(1) & ((sB(1) & (!\Add0~1\)) # (!sB(1) & (\Add0~1\ & VCC)))) # (!sA(1) & ((sB(1) & ((\Add0~1\) # (GND))) # (!sB(1) & (!\Add0~1\))))
-- \Add0~3\ = CARRY((sA(1) & (sB(1) & !\Add0~1\)) # (!sA(1) & ((sB(1)) # (!\Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sA(1),
	datab => sB(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X2_Y11_N0
\Add1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~5_combout\ = (\LessThan0~30_combout\ & ((\Add0~2_combout\))) # (!\LessThan0~30_combout\ & (\Add1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~3_combout\,
	datab => \LessThan0~30_combout\,
	datac => \Add0~2_combout\,
	combout => \Add1~5_combout\);

-- Location: LCCOMB_X1_Y12_N22
\Equal5~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~10_combout\ = (\Equal5~4_combout\ & \Equal5~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal5~4_combout\,
	datad => \Equal5~9_combout\,
	combout => \Equal5~10_combout\);

-- Location: CLKCTRL_G4
\Equal5~10clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Equal5~10clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Equal5~10clkctrl_outclk\);

-- Location: LCCOMB_X2_Y11_N4
\sResult[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sResult(1) = (GLOBAL(\Equal5~10clkctrl_outclk\) & ((sResult(1)))) # (!GLOBAL(\Equal5~10clkctrl_outclk\) & (\Add1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~5_combout\,
	datac => sResult(1),
	datad => \Equal5~10clkctrl_outclk\,
	combout => sResult(1));

-- Location: LCCOMB_X2_Y11_N8
\sAMux[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sAMux[1]~1_combout\ = (\sSTATE.T0~q\ & ((sResult(1)))) # (!\sSTATE.T0~q\ & (\iA[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSTATE.T0~q\,
	datab => \iA[1]~input_o\,
	datac => sResult(1),
	combout => \sAMux[1]~1_combout\);

-- Location: FF_X2_Y11_N9
\sA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~input_o\,
	d => \sAMux[1]~1_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \sAEnable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sA(1));

-- Location: LCCOMB_X3_Y9_N4
\Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = ((sB(2) $ (sA(2) $ (\Add1~4\)))) # (GND)
-- \Add1~7\ = CARRY((sB(2) & ((!\Add1~4\) # (!sA(2)))) # (!sB(2) & (!sA(2) & !\Add1~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sB(2),
	datab => sA(2),
	datad => VCC,
	cin => \Add1~4\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X3_Y10_N4
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((sA(2) $ (sB(2) $ (\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((sA(2) & ((!\Add0~3\) # (!sB(2)))) # (!sA(2) & (!sB(2) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sA(2),
	datab => sB(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X2_Y9_N28
\Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\LessThan0~30_combout\ & ((\Add0~4_combout\))) # (!\LessThan0~30_combout\ & (\Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Add0~4_combout\,
	datac => \LessThan0~30_combout\,
	combout => \Add1~8_combout\);

-- Location: LCCOMB_X2_Y9_N20
\sResult[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sResult(2) = (GLOBAL(\Equal5~10clkctrl_outclk\) & ((sResult(2)))) # (!GLOBAL(\Equal5~10clkctrl_outclk\) & (\Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~8_combout\,
	datac => \Equal5~10clkctrl_outclk\,
	datad => sResult(2),
	combout => sResult(2));

-- Location: LCCOMB_X2_Y9_N12
\sAMux[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sAMux[2]~2_combout\ = (\sSTATE.T0~q\ & ((sResult(2)))) # (!\sSTATE.T0~q\ & (\iA[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSTATE.T0~q\,
	datac => \iA[2]~input_o\,
	datad => sResult(2),
	combout => \sAMux[2]~2_combout\);

-- Location: FF_X2_Y9_N13
\sA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~input_o\,
	d => \sAMux[2]~2_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \sAEnable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sA(2));

-- Location: LCCOMB_X3_Y10_N6
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (sB(3) & ((sA(3) & (!\Add0~5\)) # (!sA(3) & ((\Add0~5\) # (GND))))) # (!sB(3) & ((sA(3) & (\Add0~5\ & VCC)) # (!sA(3) & (!\Add0~5\))))
-- \Add0~7\ = CARRY((sB(3) & ((!\Add0~5\) # (!sA(3)))) # (!sB(3) & (!sA(3) & !\Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sB(3),
	datab => sA(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X3_Y9_N6
\Add1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~9_combout\ = (sA(3) & ((sB(3) & (!\Add1~7\)) # (!sB(3) & ((\Add1~7\) # (GND))))) # (!sA(3) & ((sB(3) & (\Add1~7\ & VCC)) # (!sB(3) & (!\Add1~7\))))
-- \Add1~10\ = CARRY((sA(3) & ((!\Add1~7\) # (!sB(3)))) # (!sA(3) & (!sB(3) & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sA(3),
	datab => sB(3),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~9_combout\,
	cout => \Add1~10\);

-- Location: LCCOMB_X2_Y9_N6
\Add1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~11_combout\ = (\LessThan0~30_combout\ & (\Add0~6_combout\)) # (!\LessThan0~30_combout\ & ((\Add1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Add1~9_combout\,
	datac => \LessThan0~30_combout\,
	combout => \Add1~11_combout\);

-- Location: LCCOMB_X2_Y9_N2
\sResult[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sResult(3) = (GLOBAL(\Equal5~10clkctrl_outclk\) & ((sResult(3)))) # (!GLOBAL(\Equal5~10clkctrl_outclk\) & (\Add1~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~11_combout\,
	datac => \Equal5~10clkctrl_outclk\,
	datad => sResult(3),
	combout => sResult(3));

-- Location: LCCOMB_X2_Y9_N0
\sAMux[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sAMux[3]~3_combout\ = (\sSTATE.T0~q\ & ((sResult(3)))) # (!\sSTATE.T0~q\ & (\iA[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iA[3]~input_o\,
	datac => \sSTATE.T0~q\,
	datad => sResult(3),
	combout => \sAMux[3]~3_combout\);

-- Location: FF_X2_Y9_N1
\sA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~input_o\,
	d => \sAMux[3]~3_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \sAEnable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sA(3));

-- Location: LCCOMB_X3_Y9_N8
\Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((sA(4) $ (sB(4) $ (\Add1~10\)))) # (GND)
-- \Add1~13\ = CARRY((sA(4) & (sB(4) & !\Add1~10\)) # (!sA(4) & ((sB(4)) # (!\Add1~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sA(4),
	datab => sB(4),
	datad => VCC,
	cin => \Add1~10\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X3_Y10_N8
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((sB(4) $ (sA(4) $ (\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((sB(4) & (sA(4) & !\Add0~7\)) # (!sB(4) & ((sA(4)) # (!\Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sB(4),
	datab => sA(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X4_Y9_N16
\Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\LessThan0~30_combout\ & ((\Add0~8_combout\))) # (!\LessThan0~30_combout\ & (\Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datac => \LessThan0~30_combout\,
	datad => \Add0~8_combout\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X4_Y9_N24
\sResult[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sResult(4) = (GLOBAL(\Equal5~10clkctrl_outclk\) & ((sResult(4)))) # (!GLOBAL(\Equal5~10clkctrl_outclk\) & (\Add1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~14_combout\,
	datac => \Equal5~10clkctrl_outclk\,
	datad => sResult(4),
	combout => sResult(4));

-- Location: LCCOMB_X4_Y9_N2
\sAMux[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sAMux[4]~4_combout\ = (\sSTATE.T0~q\ & ((sResult(4)))) # (!\sSTATE.T0~q\ & (\iA[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSTATE.T0~q\,
	datac => \iA[4]~input_o\,
	datad => sResult(4),
	combout => \sAMux[4]~4_combout\);

-- Location: FF_X4_Y9_N3
\sA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~input_o\,
	d => \sAMux[4]~4_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \sAEnable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sA(4));

-- Location: LCCOMB_X3_Y9_N10
\Add1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~15_combout\ = (sB(5) & ((sA(5) & (!\Add1~13\)) # (!sA(5) & (\Add1~13\ & VCC)))) # (!sB(5) & ((sA(5) & ((\Add1~13\) # (GND))) # (!sA(5) & (!\Add1~13\))))
-- \Add1~16\ = CARRY((sB(5) & (sA(5) & !\Add1~13\)) # (!sB(5) & ((sA(5)) # (!\Add1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sB(5),
	datab => sA(5),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~15_combout\,
	cout => \Add1~16\);

-- Location: LCCOMB_X3_Y10_N10
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (sA(5) & ((sB(5) & (!\Add0~9\)) # (!sB(5) & (\Add0~9\ & VCC)))) # (!sA(5) & ((sB(5) & ((\Add0~9\) # (GND))) # (!sB(5) & (!\Add0~9\))))
-- \Add0~11\ = CARRY((sA(5) & (sB(5) & !\Add0~9\)) # (!sA(5) & ((sB(5)) # (!\Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sA(5),
	datab => sB(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X4_Y9_N12
\Add1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~17_combout\ = (\LessThan0~30_combout\ & ((\Add0~10_combout\))) # (!\LessThan0~30_combout\ & (\Add1~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~30_combout\,
	datac => \Add1~15_combout\,
	datad => \Add0~10_combout\,
	combout => \Add1~17_combout\);

-- Location: LCCOMB_X4_Y9_N0
\sResult[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sResult(5) = (GLOBAL(\Equal5~10clkctrl_outclk\) & ((sResult(5)))) # (!GLOBAL(\Equal5~10clkctrl_outclk\) & (\Add1~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~17_combout\,
	datac => \Equal5~10clkctrl_outclk\,
	datad => sResult(5),
	combout => sResult(5));

-- Location: LCCOMB_X4_Y9_N14
\sBMux[5]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sBMux[5]~11_combout\ = (\sSTATE.T0~q\ & ((sResult(5)))) # (!\sSTATE.T0~q\ & (\iB[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[5]~input_o\,
	datac => \sSTATE.T0~q\,
	datad => sResult(5),
	combout => \sBMux[5]~11_combout\);

-- Location: FF_X4_Y9_N15
\sB[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~input_o\,
	d => \sBMux[5]~11_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \sBEnable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sB(5));

-- Location: LCCOMB_X3_Y9_N12
\Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = ((sA(6) $ (sB(6) $ (\Add1~16\)))) # (GND)
-- \Add1~19\ = CARRY((sA(6) & (sB(6) & !\Add1~16\)) # (!sA(6) & ((sB(6)) # (!\Add1~16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sA(6),
	datab => sB(6),
	datad => VCC,
	cin => \Add1~16\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X3_Y10_N12
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((sB(6) $ (sA(6) $ (\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((sB(6) & (sA(6) & !\Add0~11\)) # (!sB(6) & ((sA(6)) # (!\Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sB(6),
	datab => sA(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X4_Y9_N4
\Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (\LessThan0~30_combout\ & ((\Add0~12_combout\))) # (!\LessThan0~30_combout\ & (\Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~30_combout\,
	datab => \Add1~18_combout\,
	datac => \Add0~12_combout\,
	combout => \Add1~20_combout\);

-- Location: LCCOMB_X4_Y9_N28
\sResult[6]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sResult(6) = (GLOBAL(\Equal5~10clkctrl_outclk\) & ((sResult(6)))) # (!GLOBAL(\Equal5~10clkctrl_outclk\) & (\Add1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~20_combout\,
	datac => \Equal5~10clkctrl_outclk\,
	datad => sResult(6),
	combout => sResult(6));

-- Location: LCCOMB_X4_Y9_N30
\sAMux[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sAMux[6]~6_combout\ = (\sSTATE.T0~q\ & ((sResult(6)))) # (!\sSTATE.T0~q\ & (\iA[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[6]~input_o\,
	datac => \sSTATE.T0~q\,
	datad => sResult(6),
	combout => \sAMux[6]~6_combout\);

-- Location: FF_X4_Y9_N31
\sA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~input_o\,
	d => \sAMux[6]~6_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \sAEnable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sA(6));

-- Location: LCCOMB_X2_Y9_N16
\sBMux[7]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sBMux[7]~9_combout\ = (\sSTATE.T0~q\ & ((sResult(7)))) # (!\sSTATE.T0~q\ & (\iB[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[7]~input_o\,
	datac => \sSTATE.T0~q\,
	datad => sResult(7),
	combout => \sBMux[7]~9_combout\);

-- Location: FF_X2_Y9_N17
\sB[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~input_o\,
	d => \sBMux[7]~9_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \sBEnable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sB(7));

-- Location: LCCOMB_X3_Y9_N14
\Add1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~21_combout\ = (sB(7) & ((sA(7) & (!\Add1~19\)) # (!sA(7) & (\Add1~19\ & VCC)))) # (!sB(7) & ((sA(7) & ((\Add1~19\) # (GND))) # (!sA(7) & (!\Add1~19\))))
-- \Add1~22\ = CARRY((sB(7) & (sA(7) & !\Add1~19\)) # (!sB(7) & ((sA(7)) # (!\Add1~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sB(7),
	datab => sA(7),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~21_combout\,
	cout => \Add1~22\);

-- Location: LCCOMB_X3_Y10_N14
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (sA(7) & ((sB(7) & (!\Add0~13\)) # (!sB(7) & (\Add0~13\ & VCC)))) # (!sA(7) & ((sB(7) & ((\Add0~13\) # (GND))) # (!sB(7) & (!\Add0~13\))))
-- \Add0~15\ = CARRY((sA(7) & (sB(7) & !\Add0~13\)) # (!sA(7) & ((sB(7)) # (!\Add0~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sA(7),
	datab => sB(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X2_Y11_N16
\Add1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~23_combout\ = (\LessThan0~30_combout\ & ((\Add0~14_combout\))) # (!\LessThan0~30_combout\ & (\Add1~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~30_combout\,
	datac => \Add1~21_combout\,
	datad => \Add0~14_combout\,
	combout => \Add1~23_combout\);

-- Location: LCCOMB_X2_Y11_N18
\sResult[7]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sResult(7) = (GLOBAL(\Equal5~10clkctrl_outclk\) & (sResult(7))) # (!GLOBAL(\Equal5~10clkctrl_outclk\) & ((\Add1~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sResult(7),
	datac => \Equal5~10clkctrl_outclk\,
	datad => \Add1~23_combout\,
	combout => sResult(7));

-- Location: LCCOMB_X2_Y11_N12
\sAMux[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sAMux[7]~7_combout\ = (\sSTATE.T0~q\ & ((sResult(7)))) # (!\sSTATE.T0~q\ & (\iA[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSTATE.T0~q\,
	datac => \iA[7]~input_o\,
	datad => sResult(7),
	combout => \sAMux[7]~7_combout\);

-- Location: FF_X2_Y11_N13
\sA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~input_o\,
	d => \sAMux[7]~7_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \sAEnable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sA(7));

-- Location: LCCOMB_X2_Y9_N22
\Equal5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~3_combout\ = (sA(6) & (sB(6) & (sA(7) $ (!sB(7))))) # (!sA(6) & (!sB(6) & (sA(7) $ (!sB(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sA(6),
	datab => sA(7),
	datac => sB(6),
	datad => sB(7),
	combout => \Equal5~3_combout\);

-- Location: LCCOMB_X2_Y9_N14
\Equal5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (sA(2) & (sB(2) & (sB(3) $ (!sA(3))))) # (!sA(2) & (!sB(2) & (sB(3) $ (!sA(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sA(2),
	datab => sB(3),
	datac => sA(3),
	datad => sB(2),
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X2_Y9_N8
\Equal5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = (sB(5) & (sA(5) & (sB(4) $ (!sA(4))))) # (!sB(5) & (!sA(5) & (sB(4) $ (!sA(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sB(5),
	datab => sA(5),
	datac => sB(4),
	datad => sA(4),
	combout => \Equal5~2_combout\);

-- Location: LCCOMB_X2_Y9_N10
\Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (sA(0) & (sB(0) & (sB(1) $ (!sA(1))))) # (!sA(0) & (!sB(0) & (sB(1) $ (!sA(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sA(0),
	datab => sB(1),
	datac => sA(1),
	datad => sB(0),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X2_Y9_N30
\Equal5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~4_combout\ = (\Equal5~3_combout\ & (\Equal5~1_combout\ & (\Equal5~2_combout\ & \Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~3_combout\,
	datab => \Equal5~1_combout\,
	datac => \Equal5~2_combout\,
	datad => \Equal5~0_combout\,
	combout => \Equal5~4_combout\);

-- Location: LCCOMB_X2_Y11_N10
\sNEXT_STATE.T3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sNEXT_STATE.T3~0_combout\ = (\sSTATE.T1~q\ & (!\LessThan0~30_combout\ & ((!\Equal5~4_combout\) # (!\Equal5~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSTATE.T1~q\,
	datab => \Equal5~9_combout\,
	datac => \LessThan0~30_combout\,
	datad => \Equal5~4_combout\,
	combout => \sNEXT_STATE.T3~0_combout\);

-- Location: FF_X2_Y11_N11
\sSTATE.T3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sNEXT_STATE.T3~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sSTATE.T3~q\);

-- Location: LCCOMB_X2_Y11_N28
sAEnable : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sAEnable~combout\ = (\sSTATE.T3~q\) # (!\sSTATE.T0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSTATE.T3~q\,
	datad => \sSTATE.T0~q\,
	combout => \sAEnable~combout\);

-- Location: FF_X2_Y10_N11
\sA[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~input_o\,
	d => \sAMux[15]~15_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \sAEnable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sA(15));

-- Location: LCCOMB_X2_Y10_N30
\sBMux[14]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sBMux[14]~2_combout\ = (\sSTATE.T0~q\ & ((sResult(14)))) # (!\sSTATE.T0~q\ & (\iB[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sSTATE.T0~q\,
	datac => \iB[14]~input_o\,
	datad => sResult(14),
	combout => \sBMux[14]~2_combout\);

-- Location: FF_X2_Y10_N31
\sB[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~input_o\,
	d => \sBMux[14]~2_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \sBEnable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sB(14));

-- Location: LCCOMB_X3_Y12_N8
\sAMux[13]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sAMux[13]~13_combout\ = (\sSTATE.T0~q\ & ((sResult(13)))) # (!\sSTATE.T0~q\ & (\iA[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sSTATE.T0~q\,
	datac => \iA[13]~input_o\,
	datad => sResult(13),
	combout => \sAMux[13]~13_combout\);

-- Location: FF_X3_Y12_N9
\sA[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~input_o\,
	d => \sAMux[13]~13_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \sAEnable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sA(13));

-- Location: LCCOMB_X3_Y12_N12
\sBMux[12]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sBMux[12]~4_combout\ = (\sSTATE.T0~q\ & ((sResult(12)))) # (!\sSTATE.T0~q\ & (\iB[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sSTATE.T0~q\,
	datac => \iB[12]~input_o\,
	datad => sResult(12),
	combout => \sBMux[12]~4_combout\);

-- Location: FF_X3_Y12_N13
\sB[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~input_o\,
	d => \sBMux[12]~4_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \sBEnable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sB(12));

-- Location: LCCOMB_X4_Y11_N22
\sBMux[11]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sBMux[11]~5_combout\ = (\sSTATE.T0~q\ & ((sResult(11)))) # (!\sSTATE.T0~q\ & (\iB[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSTATE.T0~q\,
	datab => \iB[11]~input_o\,
	datad => sResult(11),
	combout => \sBMux[11]~5_combout\);

-- Location: FF_X4_Y11_N23
\sB[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~input_o\,
	d => \sBMux[11]~5_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \sBEnable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sB(11));

-- Location: LCCOMB_X4_Y11_N8
\sBMux[10]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sBMux[10]~6_combout\ = (\sSTATE.T0~q\ & ((sResult(10)))) # (!\sSTATE.T0~q\ & (\iB[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSTATE.T0~q\,
	datab => \iB[10]~input_o\,
	datad => sResult(10),
	combout => \sBMux[10]~6_combout\);

-- Location: FF_X4_Y11_N9
\sB[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~input_o\,
	d => \sBMux[10]~6_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \sBEnable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sB(10));

-- Location: LCCOMB_X4_Y11_N20
\sAMux[9]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sAMux[9]~9_combout\ = (\sSTATE.T0~q\ & ((sResult(9)))) # (!\sSTATE.T0~q\ & (\iA[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSTATE.T0~q\,
	datac => \iA[9]~input_o\,
	datad => sResult(9),
	combout => \sAMux[9]~9_combout\);

-- Location: FF_X4_Y11_N21
\sA[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~input_o\,
	d => \sAMux[9]~9_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \sAEnable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sA(9));

-- Location: LCCOMB_X4_Y11_N14
\sBMux[8]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sBMux[8]~8_combout\ = (\sSTATE.T0~q\ & ((sResult(8)))) # (!\sSTATE.T0~q\ & (\iB[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSTATE.T0~q\,
	datab => \iB[8]~input_o\,
	datad => sResult(8),
	combout => \sBMux[8]~8_combout\);

-- Location: FF_X4_Y11_N15
\sB[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~input_o\,
	d => \sBMux[8]~8_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \sBEnable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sB(8));

-- Location: LCCOMB_X3_Y10_N16
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((sB(8) $ (sA(8) $ (\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((sB(8) & (sA(8) & !\Add0~15\)) # (!sB(8) & ((sA(8)) # (!\Add0~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sB(8),
	datab => sA(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X3_Y10_N18
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (sB(9) & ((sA(9) & (!\Add0~17\)) # (!sA(9) & ((\Add0~17\) # (GND))))) # (!sB(9) & ((sA(9) & (\Add0~17\ & VCC)) # (!sA(9) & (!\Add0~17\))))
-- \Add0~19\ = CARRY((sB(9) & ((!\Add0~17\) # (!sA(9)))) # (!sB(9) & (!sA(9) & !\Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sB(9),
	datab => sA(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X3_Y9_N16
\Add1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = ((sA(8) $ (sB(8) $ (\Add1~22\)))) # (GND)
-- \Add1~25\ = CARRY((sA(8) & (sB(8) & !\Add1~22\)) # (!sA(8) & ((sB(8)) # (!\Add1~22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sA(8),
	datab => sB(8),
	datad => VCC,
	cin => \Add1~22\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X3_Y9_N18
\Add1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~27_combout\ = (sB(9) & ((sA(9) & (!\Add1~25\)) # (!sA(9) & (\Add1~25\ & VCC)))) # (!sB(9) & ((sA(9) & ((\Add1~25\) # (GND))) # (!sA(9) & (!\Add1~25\))))
-- \Add1~28\ = CARRY((sB(9) & (sA(9) & !\Add1~25\)) # (!sB(9) & ((sA(9)) # (!\Add1~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sB(9),
	datab => sA(9),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~27_combout\,
	cout => \Add1~28\);

-- Location: LCCOMB_X4_Y11_N6
\Add1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~29_combout\ = (\LessThan0~30_combout\ & (\Add0~18_combout\)) # (!\LessThan0~30_combout\ & ((\Add1~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datac => \LessThan0~30_combout\,
	datad => \Add1~27_combout\,
	combout => \Add1~29_combout\);

-- Location: LCCOMB_X4_Y11_N12
\sResult[9]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sResult(9) = (GLOBAL(\Equal5~10clkctrl_outclk\) & (sResult(9))) # (!GLOBAL(\Equal5~10clkctrl_outclk\) & ((\Add1~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sResult(9),
	datac => \Add1~29_combout\,
	datad => \Equal5~10clkctrl_outclk\,
	combout => sResult(9));

-- Location: LCCOMB_X4_Y11_N2
\sBMux[9]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sBMux[9]~7_combout\ = (\sSTATE.T0~q\ & ((sResult(9)))) # (!\sSTATE.T0~q\ & (\iB[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSTATE.T0~q\,
	datac => \iB[9]~input_o\,
	datad => sResult(9),
	combout => \sBMux[9]~7_combout\);

-- Location: FF_X4_Y11_N3
\sB[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~input_o\,
	d => \sBMux[9]~7_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \sBEnable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sB(9));

-- Location: LCCOMB_X3_Y10_N20
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((sA(10) $ (sB(10) $ (\Add0~19\)))) # (GND)
-- \Add0~21\ = CARRY((sA(10) & ((!\Add0~19\) # (!sB(10)))) # (!sA(10) & (!sB(10) & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sA(10),
	datab => sB(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X3_Y9_N20
\Add1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = ((sB(10) $ (sA(10) $ (\Add1~28\)))) # (GND)
-- \Add1~31\ = CARRY((sB(10) & ((!\Add1~28\) # (!sA(10)))) # (!sB(10) & (!sA(10) & !\Add1~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sB(10),
	datab => sA(10),
	datad => VCC,
	cin => \Add1~28\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X4_Y11_N30
\Add1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (\LessThan0~30_combout\ & (\Add0~20_combout\)) # (!\LessThan0~30_combout\ & ((\Add1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datac => \LessThan0~30_combout\,
	datad => \Add1~30_combout\,
	combout => \Add1~32_combout\);

-- Location: LCCOMB_X4_Y11_N16
\sResult[10]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sResult(10) = (GLOBAL(\Equal5~10clkctrl_outclk\) & ((sResult(10)))) # (!GLOBAL(\Equal5~10clkctrl_outclk\) & (\Add1~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~32_combout\,
	datab => sResult(10),
	datad => \Equal5~10clkctrl_outclk\,
	combout => sResult(10));

-- Location: LCCOMB_X4_Y11_N10
\sAMux[10]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sAMux[10]~10_combout\ = (\sSTATE.T0~q\ & ((sResult(10)))) # (!\sSTATE.T0~q\ & (\iA[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[10]~input_o\,
	datac => \sSTATE.T0~q\,
	datad => sResult(10),
	combout => \sAMux[10]~10_combout\);

-- Location: FF_X4_Y11_N11
\sA[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~input_o\,
	d => \sAMux[10]~10_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \sAEnable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sA(10));

-- Location: LCCOMB_X3_Y10_N22
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (sB(11) & ((sA(11) & (!\Add0~21\)) # (!sA(11) & ((\Add0~21\) # (GND))))) # (!sB(11) & ((sA(11) & (\Add0~21\ & VCC)) # (!sA(11) & (!\Add0~21\))))
-- \Add0~23\ = CARRY((sB(11) & ((!\Add0~21\) # (!sA(11)))) # (!sB(11) & (!sA(11) & !\Add0~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sB(11),
	datab => sA(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X3_Y9_N22
\Add1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~33_combout\ = (sA(11) & ((sB(11) & (!\Add1~31\)) # (!sB(11) & ((\Add1~31\) # (GND))))) # (!sA(11) & ((sB(11) & (\Add1~31\ & VCC)) # (!sB(11) & (!\Add1~31\))))
-- \Add1~34\ = CARRY((sA(11) & ((!\Add1~31\) # (!sB(11)))) # (!sA(11) & (!sB(11) & !\Add1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sA(11),
	datab => sB(11),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~33_combout\,
	cout => \Add1~34\);

-- Location: LCCOMB_X4_Y11_N0
\Add1~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~35_combout\ = (\LessThan0~30_combout\ & (\Add0~22_combout\)) # (!\LessThan0~30_combout\ & ((\Add1~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~22_combout\,
	datac => \LessThan0~30_combout\,
	datad => \Add1~33_combout\,
	combout => \Add1~35_combout\);

-- Location: LCCOMB_X4_Y11_N24
\sResult[11]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sResult(11) = (GLOBAL(\Equal5~10clkctrl_outclk\) & (sResult(11))) # (!GLOBAL(\Equal5~10clkctrl_outclk\) & ((\Add1~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sResult(11),
	datac => \Add1~35_combout\,
	datad => \Equal5~10clkctrl_outclk\,
	combout => sResult(11));

-- Location: LCCOMB_X4_Y11_N28
\sAMux[11]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sAMux[11]~11_combout\ = (\sSTATE.T0~q\ & ((sResult(11)))) # (!\sSTATE.T0~q\ & (\iA[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSTATE.T0~q\,
	datab => \iA[11]~input_o\,
	datad => sResult(11),
	combout => \sAMux[11]~11_combout\);

-- Location: FF_X4_Y11_N29
\sA[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~input_o\,
	d => \sAMux[11]~11_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \sAEnable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sA(11));

-- Location: LCCOMB_X3_Y9_N24
\Add1~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = ((sA(12) $ (sB(12) $ (\Add1~34\)))) # (GND)
-- \Add1~37\ = CARRY((sA(12) & (sB(12) & !\Add1~34\)) # (!sA(12) & ((sB(12)) # (!\Add1~34\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sA(12),
	datab => sB(12),
	datad => VCC,
	cin => \Add1~34\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X3_Y10_N24
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((sA(12) $ (sB(12) $ (\Add0~23\)))) # (GND)
-- \Add0~25\ = CARRY((sA(12) & ((!\Add0~23\) # (!sB(12)))) # (!sA(12) & (!sB(12) & !\Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sA(12),
	datab => sB(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X3_Y12_N26
\Add1~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (\LessThan0~30_combout\ & ((\Add0~24_combout\))) # (!\LessThan0~30_combout\ & (\Add1~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~36_combout\,
	datac => \Add0~24_combout\,
	datad => \LessThan0~30_combout\,
	combout => \Add1~38_combout\);

-- Location: LCCOMB_X3_Y12_N6
\sResult[12]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sResult(12) = (GLOBAL(\Equal5~10clkctrl_outclk\) & ((sResult(12)))) # (!GLOBAL(\Equal5~10clkctrl_outclk\) & (\Add1~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~38_combout\,
	datac => sResult(12),
	datad => \Equal5~10clkctrl_outclk\,
	combout => sResult(12));

-- Location: LCCOMB_X2_Y10_N26
\sAMux[12]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sAMux[12]~12_combout\ = (\sSTATE.T0~q\ & ((sResult(12)))) # (!\sSTATE.T0~q\ & (\iA[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iA[12]~input_o\,
	datac => \sSTATE.T0~q\,
	datad => sResult(12),
	combout => \sAMux[12]~12_combout\);

-- Location: FF_X2_Y10_N27
\sA[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~input_o\,
	d => \sAMux[12]~12_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \sAEnable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sA(12));

-- Location: LCCOMB_X3_Y9_N26
\Add1~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~39_combout\ = (sB(13) & ((sA(13) & (!\Add1~37\)) # (!sA(13) & (\Add1~37\ & VCC)))) # (!sB(13) & ((sA(13) & ((\Add1~37\) # (GND))) # (!sA(13) & (!\Add1~37\))))
-- \Add1~40\ = CARRY((sB(13) & (sA(13) & !\Add1~37\)) # (!sB(13) & ((sA(13)) # (!\Add1~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sB(13),
	datab => sA(13),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~39_combout\,
	cout => \Add1~40\);

-- Location: LCCOMB_X3_Y10_N26
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (sB(13) & ((sA(13) & (!\Add0~25\)) # (!sA(13) & ((\Add0~25\) # (GND))))) # (!sB(13) & ((sA(13) & (\Add0~25\ & VCC)) # (!sA(13) & (!\Add0~25\))))
-- \Add0~27\ = CARRY((sB(13) & ((!\Add0~25\) # (!sA(13)))) # (!sB(13) & (!sA(13) & !\Add0~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sB(13),
	datab => sA(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X3_Y12_N18
\Add1~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~41_combout\ = (\LessThan0~30_combout\ & ((\Add0~26_combout\))) # (!\LessThan0~30_combout\ & (\Add1~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~39_combout\,
	datac => \Add0~26_combout\,
	datad => \LessThan0~30_combout\,
	combout => \Add1~41_combout\);

-- Location: LCCOMB_X3_Y12_N16
\sResult[13]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sResult(13) = (GLOBAL(\Equal5~10clkctrl_outclk\) & ((sResult(13)))) # (!GLOBAL(\Equal5~10clkctrl_outclk\) & (\Add1~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~41_combout\,
	datab => sResult(13),
	datad => \Equal5~10clkctrl_outclk\,
	combout => sResult(13));

-- Location: LCCOMB_X3_Y12_N20
\sBMux[13]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sBMux[13]~3_combout\ = (\sSTATE.T0~q\ & ((sResult(13)))) # (!\sSTATE.T0~q\ & (\iB[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sSTATE.T0~q\,
	datac => \iB[13]~input_o\,
	datad => sResult(13),
	combout => \sBMux[13]~3_combout\);

-- Location: FF_X3_Y12_N21
\sB[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~input_o\,
	d => \sBMux[13]~3_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \sBEnable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sB(13));

-- Location: LCCOMB_X3_Y10_N28
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = ((sA(14) $ (sB(14) $ (\Add0~27\)))) # (GND)
-- \Add0~29\ = CARRY((sA(14) & ((!\Add0~27\) # (!sB(14)))) # (!sA(14) & (!sB(14) & !\Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sA(14),
	datab => sB(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X3_Y9_N28
\Add1~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = ((sB(14) $ (sA(14) $ (\Add1~40\)))) # (GND)
-- \Add1~43\ = CARRY((sB(14) & ((!\Add1~40\) # (!sA(14)))) # (!sB(14) & (!sA(14) & !\Add1~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sB(14),
	datab => sA(14),
	datad => VCC,
	cin => \Add1~40\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X2_Y10_N28
\Add1~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (\LessThan0~30_combout\ & (\Add0~28_combout\)) # (!\LessThan0~30_combout\ & ((\Add1~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datab => \LessThan0~30_combout\,
	datac => \Add1~42_combout\,
	combout => \Add1~44_combout\);

-- Location: LCCOMB_X2_Y10_N20
\sResult[14]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sResult(14) = (GLOBAL(\Equal5~10clkctrl_outclk\) & ((sResult(14)))) # (!GLOBAL(\Equal5~10clkctrl_outclk\) & (\Add1~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~44_combout\,
	datac => sResult(14),
	datad => \Equal5~10clkctrl_outclk\,
	combout => sResult(14));

-- Location: LCCOMB_X2_Y10_N12
\sAMux[14]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sAMux[14]~14_combout\ = (\sSTATE.T0~q\ & ((sResult(14)))) # (!\sSTATE.T0~q\ & (\iA[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iA[14]~input_o\,
	datab => \sSTATE.T0~q\,
	datad => sResult(14),
	combout => \sAMux[14]~14_combout\);

-- Location: FF_X2_Y10_N13
\sA[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~input_o\,
	d => \sAMux[14]~14_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \sAEnable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sA(14));

-- Location: LCCOMB_X3_Y10_N30
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = sA(15) $ (\Add0~29\ $ (!sB(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sA(15),
	datad => sB(15),
	cin => \Add0~29\,
	combout => \Add0~30_combout\);

-- Location: LCCOMB_X3_Y9_N30
\Add1~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~45_combout\ = sA(15) $ (\Add1~43\ $ (!sB(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sA(15),
	datad => sB(15),
	cin => \Add1~43\,
	combout => \Add1~45_combout\);

-- Location: LCCOMB_X2_Y10_N6
\Add1~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~47_combout\ = (\LessThan0~30_combout\ & (\Add0~30_combout\)) # (!\LessThan0~30_combout\ & ((\Add1~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \LessThan0~30_combout\,
	datac => \Add1~45_combout\,
	combout => \Add1~47_combout\);

-- Location: LCCOMB_X2_Y10_N24
\sResult[15]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sResult(15) = (GLOBAL(\Equal5~10clkctrl_outclk\) & ((sResult(15)))) # (!GLOBAL(\Equal5~10clkctrl_outclk\) & (\Add1~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~47_combout\,
	datac => sResult(15),
	datad => \Equal5~10clkctrl_outclk\,
	combout => sResult(15));

-- Location: LCCOMB_X2_Y10_N14
\sBMux[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sBMux[15]~1_combout\ = (\sSTATE.T0~q\ & ((sResult(15)))) # (!\sSTATE.T0~q\ & (\iB[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iB[15]~input_o\,
	datab => \sSTATE.T0~q\,
	datad => sResult(15),
	combout => \sBMux[15]~1_combout\);

-- Location: FF_X2_Y10_N15
\sB[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~input_o\,
	d => \sBMux[15]~1_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \sBEnable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sB(15));

-- Location: LCCOMB_X3_Y11_N0
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((sA(0) & !sB(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sA(0),
	datab => sB(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X3_Y11_N2
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((sA(1) & (sB(1) & !\LessThan0~1_cout\)) # (!sA(1) & ((sB(1)) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sA(1),
	datab => sB(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X3_Y11_N4
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((sB(2) & (sA(2) & !\LessThan0~3_cout\)) # (!sB(2) & ((sA(2)) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sB(2),
	datab => sA(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X3_Y11_N6
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((sA(3) & (sB(3) & !\LessThan0~5_cout\)) # (!sA(3) & ((sB(3)) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sA(3),
	datab => sB(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X3_Y11_N8
\LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((sA(4) & ((!\LessThan0~7_cout\) # (!sB(4)))) # (!sA(4) & (!sB(4) & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sA(4),
	datab => sB(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X3_Y11_N10
\LessThan0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((sB(5) & ((!\LessThan0~9_cout\) # (!sA(5)))) # (!sB(5) & (!sA(5) & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sB(5),
	datab => sA(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X3_Y11_N12
\LessThan0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((sA(6) & ((!\LessThan0~11_cout\) # (!sB(6)))) # (!sA(6) & (!sB(6) & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sA(6),
	datab => sB(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X3_Y11_N14
\LessThan0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((sB(7) & ((!\LessThan0~13_cout\) # (!sA(7)))) # (!sB(7) & (!sA(7) & !\LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sB(7),
	datab => sA(7),
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X3_Y11_N16
\LessThan0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((sB(8) & (sA(8) & !\LessThan0~15_cout\)) # (!sB(8) & ((sA(8)) # (!\LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sB(8),
	datab => sA(8),
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X3_Y11_N18
\LessThan0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((sB(9) & ((!\LessThan0~17_cout\) # (!sA(9)))) # (!sB(9) & (!sA(9) & !\LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sB(9),
	datab => sA(9),
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X3_Y11_N20
\LessThan0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((sB(10) & (sA(10) & !\LessThan0~19_cout\)) # (!sB(10) & ((sA(10)) # (!\LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sB(10),
	datab => sA(10),
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

-- Location: LCCOMB_X3_Y11_N22
\LessThan0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((sA(11) & (sB(11) & !\LessThan0~21_cout\)) # (!sA(11) & ((sB(11)) # (!\LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sA(11),
	datab => sB(11),
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

-- Location: LCCOMB_X3_Y11_N24
\LessThan0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((sB(12) & (sA(12) & !\LessThan0~23_cout\)) # (!sB(12) & ((sA(12)) # (!\LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sB(12),
	datab => sA(12),
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

-- Location: LCCOMB_X3_Y11_N26
\LessThan0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~27_cout\ = CARRY((sB(13) & ((!\LessThan0~25_cout\) # (!sA(13)))) # (!sB(13) & (!sA(13) & !\LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sB(13),
	datab => sA(13),
	datad => VCC,
	cin => \LessThan0~25_cout\,
	cout => \LessThan0~27_cout\);

-- Location: LCCOMB_X3_Y11_N28
\LessThan0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~29_cout\ = CARRY((sB(14) & (sA(14) & !\LessThan0~27_cout\)) # (!sB(14) & ((sA(14)) # (!\LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sB(14),
	datab => sA(14),
	datad => VCC,
	cin => \LessThan0~27_cout\,
	cout => \LessThan0~29_cout\);

-- Location: LCCOMB_X3_Y11_N30
\LessThan0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~30_combout\ = (sB(15) & (\LessThan0~29_cout\ & sA(15))) # (!sB(15) & ((\LessThan0~29_cout\) # (sA(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sB(15),
	datad => sA(15),
	cin => \LessThan0~29_cout\,
	combout => \LessThan0~30_combout\);

-- Location: LCCOMB_X2_Y11_N30
\Add1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (\LessThan0~30_combout\ & (\Add0~16_combout\)) # (!\LessThan0~30_combout\ & ((\Add1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~30_combout\,
	datac => \Add0~16_combout\,
	datad => \Add1~24_combout\,
	combout => \Add1~26_combout\);

-- Location: LCCOMB_X2_Y11_N20
\sResult[8]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sResult(8) = (GLOBAL(\Equal5~10clkctrl_outclk\) & (sResult(8))) # (!GLOBAL(\Equal5~10clkctrl_outclk\) & ((\Add1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sResult(8),
	datac => \Add1~26_combout\,
	datad => \Equal5~10clkctrl_outclk\,
	combout => sResult(8));

-- Location: LCCOMB_X2_Y11_N22
\sAMux[8]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sAMux[8]~8_combout\ = (\sSTATE.T0~q\ & ((sResult(8)))) # (!\sSTATE.T0~q\ & (\iA[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sSTATE.T0~q\,
	datac => \iA[8]~input_o\,
	datad => sResult(8),
	combout => \sAMux[8]~8_combout\);

-- Location: FF_X2_Y11_N23
\sA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~input_o\,
	d => \sAMux[8]~8_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \sAEnable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sA(8));

-- Location: LCCOMB_X4_Y11_N18
\Equal5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~5_combout\ = (sA(8) & (sB(8) & (sA(9) $ (!sB(9))))) # (!sA(8) & (!sB(8) & (sA(9) $ (!sB(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sA(8),
	datab => sA(9),
	datac => sB(8),
	datad => sB(9),
	combout => \Equal5~5_combout\);

-- Location: LCCOMB_X2_Y10_N0
\Equal5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~7_combout\ = (sB(13) & (sA(13) & (sA(12) $ (!sB(12))))) # (!sB(13) & (!sA(13) & (sA(12) $ (!sB(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sB(13),
	datab => sA(13),
	datac => sA(12),
	datad => sB(12),
	combout => \Equal5~7_combout\);

-- Location: LCCOMB_X4_Y11_N4
\Equal5~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~6_combout\ = (sB(11) & (sA(11) & (sB(10) $ (!sA(10))))) # (!sB(11) & (!sA(11) & (sB(10) $ (!sA(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sB(11),
	datab => sA(11),
	datac => sB(10),
	datad => sA(10),
	combout => \Equal5~6_combout\);

-- Location: LCCOMB_X2_Y10_N18
\Equal5~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~8_combout\ = (sA(15) & (sB(15) & (sB(14) $ (!sA(14))))) # (!sA(15) & (!sB(15) & (sB(14) $ (!sA(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sA(15),
	datab => sB(15),
	datac => sB(14),
	datad => sA(14),
	combout => \Equal5~8_combout\);

-- Location: LCCOMB_X2_Y11_N2
\Equal5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~9_combout\ = (\Equal5~5_combout\ & (\Equal5~7_combout\ & (\Equal5~6_combout\ & \Equal5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~5_combout\,
	datab => \Equal5~7_combout\,
	datac => \Equal5~6_combout\,
	datad => \Equal5~8_combout\,
	combout => \Equal5~9_combout\);

-- Location: LCCOMB_X2_Y11_N26
\sNEXT_STATE.T2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sNEXT_STATE.T2~0_combout\ = (\LessThan0~30_combout\ & (\sSTATE.T1~q\ & ((!\Equal5~4_combout\) # (!\Equal5~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~9_combout\,
	datab => \LessThan0~30_combout\,
	datac => \sSTATE.T1~q\,
	datad => \Equal5~4_combout\,
	combout => \sNEXT_STATE.T2~0_combout\);

-- Location: FF_X2_Y11_N27
\sSTATE.T2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sNEXT_STATE.T2~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sSTATE.T2~q\);

-- Location: LCCOMB_X2_Y11_N24
sBEnable : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sBEnable~combout\ = (\sSTATE.T2~q\) # (!\sSTATE.T0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sSTATE.T2~q\,
	datad => \sSTATE.T0~q\,
	combout => \sBEnable~combout\);

-- Location: FF_X3_Y12_N31
\sB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~input_o\,
	d => \sBMux[0]~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \sBEnable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sB(0));

-- Location: LCCOMB_X3_Y12_N22
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\LessThan0~30_combout\ & (\Add0~0_combout\)) # (!\LessThan0~30_combout\ & ((\Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~0_combout\,
	datac => \LessThan0~30_combout\,
	datad => \Add1~0_combout\,
	combout => \Add1~2_combout\);

-- Location: LCCOMB_X3_Y12_N28
\sResult[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- sResult(0) = (GLOBAL(\Equal5~10clkctrl_outclk\) & ((sResult(0)))) # (!GLOBAL(\Equal5~10clkctrl_outclk\) & (\Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => sResult(0),
	datad => \Equal5~10clkctrl_outclk\,
	combout => sResult(0));

-- Location: LCCOMB_X2_Y12_N22
\sAMux[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sAMux[0]~0_combout\ = (\sSTATE.T0~q\ & ((sResult(0)))) # (!\sSTATE.T0~q\ & (\iA[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sSTATE.T0~q\,
	datac => \iA[0]~input_o\,
	datad => sResult(0),
	combout => \sAMux[0]~0_combout\);

-- Location: FF_X2_Y12_N23
\sA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \sAMux[0]~0_combout\,
	clrn => \ALT_INV_iRST~inputclkctrl_outclk\,
	ena => \sAEnable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sA(0));

-- Location: UNVM_X0_Y18_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X25_Y28_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_oGCD(0) <= \oGCD[0]~output_o\;

ww_oGCD(1) <= \oGCD[1]~output_o\;

ww_oGCD(2) <= \oGCD[2]~output_o\;

ww_oGCD(3) <= \oGCD[3]~output_o\;

ww_oGCD(4) <= \oGCD[4]~output_o\;

ww_oGCD(5) <= \oGCD[5]~output_o\;

ww_oGCD(6) <= \oGCD[6]~output_o\;

ww_oGCD(7) <= \oGCD[7]~output_o\;

ww_oGCD(8) <= \oGCD[8]~output_o\;

ww_oGCD(9) <= \oGCD[9]~output_o\;

ww_oGCD(10) <= \oGCD[10]~output_o\;

ww_oGCD(11) <= \oGCD[11]~output_o\;

ww_oGCD(12) <= \oGCD[12]~output_o\;

ww_oGCD(13) <= \oGCD[13]~output_o\;

ww_oGCD(14) <= \oGCD[14]~output_o\;

ww_oGCD(15) <= \oGCD[15]~output_o\;
END structure;


