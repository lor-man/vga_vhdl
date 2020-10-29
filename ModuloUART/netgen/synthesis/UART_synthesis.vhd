--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: UART_synthesis.vhd
-- /___/   /\     Timestamp: Tue Oct 27 19:36:46 2020
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm UART -w -dir netgen/synthesis -ofmt vhdl -sim UART.ngc UART_synthesis.vhd 
-- Device	: xc3s50a-5-tq144
-- Input file	: UART.ngc
-- Output file	: C:\E3\ModuloUART\netgen\synthesis\UART_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: UART
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity UART is
  port (
    Clk : in STD_LOGIC := 'X'; 
    RX_DV : out STD_LOGIC; 
    TX_Start : in STD_LOGIC := 'X'; 
    TX_Active : out STD_LOGIC; 
    TX_Done : out STD_LOGIC; 
    TX_Serial : out STD_LOGIC; 
    RX_Serial : in STD_LOGIC := 'X'; 
    RX_Byte : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    TX_Byte : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end UART;

architecture Structure of UART is
  signal Clk_BUFGP_1 : STD_LOGIC; 
  signal Inst_UART_RX_Madd_r_Clk_Count_share0000_cy_2_Q : STD_LOGIC; 
  signal Inst_UART_RX_Madd_r_Clk_Count_share0000_cy_4_Q : STD_LOGIC; 
  signal Inst_UART_RX_Mshreg_r_RX_Data_4 : STD_LOGIC; 
  signal Inst_UART_RX_N01 : STD_LOGIC; 
  signal Inst_UART_RX_N15 : STD_LOGIC; 
  signal Inst_UART_RX_N3 : STD_LOGIC; 
  signal Inst_UART_RX_N5 : STD_LOGIC; 
  signal Inst_UART_RX_r_Bit_Index_mux0001_0_Q : STD_LOGIC; 
  signal Inst_UART_RX_r_Bit_Index_mux0001_1_31_13 : STD_LOGIC; 
  signal Inst_UART_RX_r_Bit_Index_mux0001_1_34 : STD_LOGIC; 
  signal Inst_UART_RX_r_Bit_Index_mux0001_2_Q : STD_LOGIC; 
  signal Inst_UART_RX_r_RX_Byte_0_not0001 : STD_LOGIC; 
  signal Inst_UART_RX_r_RX_Byte_1_not0001 : STD_LOGIC; 
  signal Inst_UART_RX_r_RX_Byte_2_not0001 : STD_LOGIC; 
  signal Inst_UART_RX_r_RX_Byte_3_not0001 : STD_LOGIC; 
  signal Inst_UART_RX_r_RX_Byte_4_not0001 : STD_LOGIC; 
  signal Inst_UART_RX_r_RX_Byte_5_not0001 : STD_LOGIC; 
  signal Inst_UART_RX_r_RX_Byte_6_not0001 : STD_LOGIC; 
  signal Inst_UART_RX_r_RX_Byte_7_not0001 : STD_LOGIC; 
  signal Inst_UART_RX_r_RX_DV_46 : STD_LOGIC; 
  signal Inst_UART_RX_r_RX_DV_mux00001_47 : STD_LOGIC; 
  signal Inst_UART_RX_r_RX_Data_48 : STD_LOGIC; 
  signal Inst_UART_RX_r_SM_Main_FSM_FFd1_49 : STD_LOGIC; 
  signal Inst_UART_RX_r_SM_Main_FSM_FFd1_In : STD_LOGIC; 
  signal Inst_UART_RX_r_SM_Main_FSM_FFd2_51 : STD_LOGIC; 
  signal Inst_UART_RX_r_SM_Main_FSM_FFd2_In_52 : STD_LOGIC; 
  signal Inst_UART_RX_r_SM_Main_FSM_FFd3_53 : STD_LOGIC; 
  signal Inst_UART_RX_r_SM_Main_FSM_FFd3_In22_54 : STD_LOGIC; 
  signal Inst_UART_RX_r_SM_Main_FSM_FFd3_In26 : STD_LOGIC; 
  signal Inst_UART_RX_r_SM_Main_cmp_eq0000_56 : STD_LOGIC; 
  signal Inst_UART_RX_r_SM_Main_cmp_lt0000 : STD_LOGIC; 
  signal Inst_UART_RX_r_SM_Main_cmp_ne0000 : STD_LOGIC; 
  signal Inst_UART_TX_Madd_r_Clk_Count_addsub0000_cy_2_Q : STD_LOGIC; 
  signal Inst_UART_TX_Madd_r_Clk_Count_addsub0000_cy_4_Q : STD_LOGIC; 
  signal Inst_UART_TX_N11 : STD_LOGIC; 
  signal Inst_UART_TX_N2 : STD_LOGIC; 
  signal Inst_UART_TX_o_TX_Active_63 : STD_LOGIC; 
  signal Inst_UART_TX_o_TX_Active_mux0000 : STD_LOGIC; 
  signal Inst_UART_TX_o_TX_Serial_65 : STD_LOGIC; 
  signal Inst_UART_TX_o_TX_Serial_mux0000114_66 : STD_LOGIC; 
  signal Inst_UART_TX_o_TX_Serial_mux000014_67 : STD_LOGIC; 
  signal Inst_UART_TX_o_TX_Serial_mux0000154 : STD_LOGIC; 
  signal Inst_UART_TX_o_TX_Serial_mux000022_69 : STD_LOGIC; 
  signal Inst_UART_TX_o_TX_Serial_mux000035_70 : STD_LOGIC; 
  signal Inst_UART_TX_o_TX_Serial_mux000059_71 : STD_LOGIC; 
  signal Inst_UART_TX_o_TX_Serial_mux000075_72 : STD_LOGIC; 
  signal Inst_UART_TX_o_TX_Serial_mux000088_73 : STD_LOGIC; 
  signal Inst_UART_TX_r_SM_Main_FSM_FFd1_94 : STD_LOGIC; 
  signal Inst_UART_TX_r_SM_Main_FSM_FFd1_In1 : STD_LOGIC; 
  signal Inst_UART_TX_r_SM_Main_FSM_FFd2_96 : STD_LOGIC; 
  signal Inst_UART_TX_r_SM_Main_FSM_FFd2_In : STD_LOGIC; 
  signal Inst_UART_TX_r_SM_Main_FSM_FFd3_98 : STD_LOGIC; 
  signal Inst_UART_TX_r_SM_Main_FSM_FFd3_In_99 : STD_LOGIC; 
  signal Inst_UART_TX_r_SM_Main_cmp_lt0000 : STD_LOGIC; 
  signal Inst_UART_TX_r_TX_Data_not0001 : STD_LOGIC; 
  signal Inst_UART_TX_r_TX_Done_110 : STD_LOGIC; 
  signal Inst_UART_TX_r_TX_Done_mux00001_111 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal N43 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal N71 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal N75 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N77 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal N83 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal N85 : STD_LOGIC; 
  signal N86 : STD_LOGIC; 
  signal RX_Serial_IBUF_172 : STD_LOGIC; 
  signal TX_Byte_0_IBUF_182 : STD_LOGIC; 
  signal TX_Byte_1_IBUF_183 : STD_LOGIC; 
  signal TX_Byte_2_IBUF_184 : STD_LOGIC; 
  signal TX_Byte_3_IBUF_185 : STD_LOGIC; 
  signal TX_Byte_4_IBUF_186 : STD_LOGIC; 
  signal TX_Byte_5_IBUF_187 : STD_LOGIC; 
  signal TX_Byte_6_IBUF_188 : STD_LOGIC; 
  signal TX_Byte_7_IBUF_189 : STD_LOGIC; 
  signal TX_Start_IBUF_193 : STD_LOGIC; 
  signal Inst_UART_RX_r_Bit_Index : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Inst_UART_RX_r_Clk_Count : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal Inst_UART_RX_r_Clk_Count_mux0000 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal Inst_UART_RX_r_RX_Byte : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Inst_UART_TX_r_Bit_Index : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Inst_UART_TX_r_Bit_Index_mux0001 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal Inst_UART_TX_r_Clk_Count : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal Inst_UART_TX_r_Clk_Count_mux0000 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal Inst_UART_TX_r_TX_Data : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  Inst_UART_RX_r_SM_Main_FSM_FFd2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => Inst_UART_RX_r_SM_Main_FSM_FFd2_In_52,
      Q => Inst_UART_RX_r_SM_Main_FSM_FFd2_51
    );
  Inst_UART_RX_r_SM_Main_FSM_FFd1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => Inst_UART_RX_r_SM_Main_FSM_FFd1_In,
      Q => Inst_UART_RX_r_SM_Main_FSM_FFd1_49
    );
  Inst_UART_RX_r_RX_Byte_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => Inst_UART_RX_r_RX_Byte_6_not0001,
      D => Inst_UART_RX_r_RX_Data_48,
      Q => Inst_UART_RX_r_RX_Byte(6)
    );
  Inst_UART_RX_r_RX_Byte_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => Inst_UART_RX_r_RX_Byte_5_not0001,
      D => Inst_UART_RX_r_RX_Data_48,
      Q => Inst_UART_RX_r_RX_Byte(5)
    );
  Inst_UART_RX_r_RX_Byte_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => Inst_UART_RX_r_RX_Byte_7_not0001,
      D => Inst_UART_RX_r_RX_Data_48,
      Q => Inst_UART_RX_r_RX_Byte(7)
    );
  Inst_UART_RX_r_RX_Byte_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => Inst_UART_RX_r_RX_Byte_4_not0001,
      D => Inst_UART_RX_r_RX_Data_48,
      Q => Inst_UART_RX_r_RX_Byte(4)
    );
  Inst_UART_RX_r_RX_Byte_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => Inst_UART_RX_r_RX_Byte_3_not0001,
      D => Inst_UART_RX_r_RX_Data_48,
      Q => Inst_UART_RX_r_RX_Byte(3)
    );
  Inst_UART_RX_r_RX_Byte_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => Inst_UART_RX_r_RX_Byte_2_not0001,
      D => Inst_UART_RX_r_RX_Data_48,
      Q => Inst_UART_RX_r_RX_Byte(2)
    );
  Inst_UART_RX_r_RX_Byte_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => Inst_UART_RX_r_RX_Byte_1_not0001,
      D => Inst_UART_RX_r_RX_Data_48,
      Q => Inst_UART_RX_r_RX_Byte(1)
    );
  Inst_UART_RX_r_RX_Byte_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => Inst_UART_RX_r_RX_Byte_0_not0001,
      D => Inst_UART_RX_r_RX_Data_48,
      Q => Inst_UART_RX_r_RX_Byte(0)
    );
  Inst_UART_RX_r_Clk_Count_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => Inst_UART_RX_r_Clk_Count_mux0000(0),
      Q => Inst_UART_RX_r_Clk_Count(6)
    );
  Inst_UART_RX_r_Clk_Count_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => Inst_UART_RX_r_Clk_Count_mux0000(1),
      Q => Inst_UART_RX_r_Clk_Count(5)
    );
  Inst_UART_RX_r_Clk_Count_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => Inst_UART_RX_r_Clk_Count_mux0000(2),
      Q => Inst_UART_RX_r_Clk_Count(4)
    );
  Inst_UART_RX_r_Clk_Count_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => Inst_UART_RX_r_Clk_Count_mux0000(3),
      Q => Inst_UART_RX_r_Clk_Count(3)
    );
  Inst_UART_RX_r_Clk_Count_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => Inst_UART_RX_r_Clk_Count_mux0000(4),
      Q => Inst_UART_RX_r_Clk_Count(2)
    );
  Inst_UART_RX_r_Clk_Count_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => Inst_UART_RX_r_Clk_Count_mux0000(5),
      Q => Inst_UART_RX_r_Clk_Count(1)
    );
  Inst_UART_RX_r_Clk_Count_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => Inst_UART_RX_r_Clk_Count_mux0000(6),
      Q => Inst_UART_RX_r_Clk_Count(0)
    );
  Inst_UART_RX_r_Bit_Index_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => Inst_UART_RX_r_Bit_Index_mux0001_0_Q,
      Q => Inst_UART_RX_r_Bit_Index(2)
    );
  Inst_UART_RX_r_Bit_Index_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => Inst_UART_RX_r_Bit_Index_mux0001_2_Q,
      Q => Inst_UART_RX_r_Bit_Index(0)
    );
  Inst_UART_TX_r_SM_Main_FSM_FFd2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => Inst_UART_TX_r_SM_Main_FSM_FFd2_In,
      Q => Inst_UART_TX_r_SM_Main_FSM_FFd2_96
    );
  Inst_UART_TX_r_SM_Main_FSM_FFd3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => Inst_UART_TX_r_SM_Main_FSM_FFd3_In_99,
      Q => Inst_UART_TX_r_SM_Main_FSM_FFd3_98
    );
  Inst_UART_TX_r_Clk_Count_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => Inst_UART_TX_r_Clk_Count_mux0000(0),
      Q => Inst_UART_TX_r_Clk_Count(6)
    );
  Inst_UART_TX_r_Clk_Count_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => Inst_UART_TX_r_Clk_Count_mux0000(1),
      Q => Inst_UART_TX_r_Clk_Count(5)
    );
  Inst_UART_TX_r_Clk_Count_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => Inst_UART_TX_r_Clk_Count_mux0000(2),
      Q => Inst_UART_TX_r_Clk_Count(4)
    );
  Inst_UART_TX_r_Clk_Count_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => Inst_UART_TX_r_Clk_Count_mux0000(3),
      Q => Inst_UART_TX_r_Clk_Count(3)
    );
  Inst_UART_TX_r_Clk_Count_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => Inst_UART_TX_r_Clk_Count_mux0000(4),
      Q => Inst_UART_TX_r_Clk_Count(2)
    );
  Inst_UART_TX_r_Clk_Count_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => Inst_UART_TX_r_Clk_Count_mux0000(5),
      Q => Inst_UART_TX_r_Clk_Count(1)
    );
  Inst_UART_TX_r_Clk_Count_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => Inst_UART_TX_r_Clk_Count_mux0000(6),
      Q => Inst_UART_TX_r_Clk_Count(0)
    );
  Inst_UART_TX_r_TX_Data_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => Inst_UART_TX_r_TX_Data_not0001,
      D => TX_Byte_7_IBUF_189,
      Q => Inst_UART_TX_r_TX_Data(7)
    );
  Inst_UART_TX_r_TX_Data_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => Inst_UART_TX_r_TX_Data_not0001,
      D => TX_Byte_6_IBUF_188,
      Q => Inst_UART_TX_r_TX_Data(6)
    );
  Inst_UART_TX_r_TX_Data_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => Inst_UART_TX_r_TX_Data_not0001,
      D => TX_Byte_5_IBUF_187,
      Q => Inst_UART_TX_r_TX_Data(5)
    );
  Inst_UART_TX_r_TX_Data_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => Inst_UART_TX_r_TX_Data_not0001,
      D => TX_Byte_4_IBUF_186,
      Q => Inst_UART_TX_r_TX_Data(4)
    );
  Inst_UART_TX_r_TX_Data_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => Inst_UART_TX_r_TX_Data_not0001,
      D => TX_Byte_3_IBUF_185,
      Q => Inst_UART_TX_r_TX_Data(3)
    );
  Inst_UART_TX_r_TX_Data_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => Inst_UART_TX_r_TX_Data_not0001,
      D => TX_Byte_2_IBUF_184,
      Q => Inst_UART_TX_r_TX_Data(2)
    );
  Inst_UART_TX_r_TX_Data_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => Inst_UART_TX_r_TX_Data_not0001,
      D => TX_Byte_1_IBUF_183,
      Q => Inst_UART_TX_r_TX_Data(1)
    );
  Inst_UART_TX_r_TX_Data_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      CE => Inst_UART_TX_r_TX_Data_not0001,
      D => TX_Byte_0_IBUF_182,
      Q => Inst_UART_TX_r_TX_Data(0)
    );
  Inst_UART_TX_r_Bit_Index_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => Inst_UART_TX_r_Bit_Index_mux0001(0),
      Q => Inst_UART_TX_r_Bit_Index(2)
    );
  Inst_UART_TX_r_Bit_Index_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => Inst_UART_TX_r_Bit_Index_mux0001(1),
      Q => Inst_UART_TX_r_Bit_Index(1)
    );
  Inst_UART_TX_r_Bit_Index_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => Inst_UART_TX_r_Bit_Index_mux0001(2),
      Q => Inst_UART_TX_r_Bit_Index(0)
    );
  Inst_UART_TX_o_TX_Active : FD
    port map (
      C => Clk_BUFGP_1,
      D => Inst_UART_TX_o_TX_Active_mux0000,
      Q => Inst_UART_TX_o_TX_Active_63
    );
  Inst_UART_TX_r_TX_Data_not00011 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => Inst_UART_TX_r_SM_Main_FSM_FFd1_94,
      I1 => Inst_UART_TX_r_SM_Main_FSM_FFd2_96,
      I2 => Inst_UART_TX_r_SM_Main_FSM_FFd3_98,
      I3 => TX_Start_IBUF_193,
      O => Inst_UART_TX_r_TX_Data_not0001
    );
  Inst_UART_TX_o_TX_Active_mux00001 : LUT4
    generic map(
      INIT => X"4E44"
    )
    port map (
      I0 => Inst_UART_TX_r_SM_Main_FSM_FFd2_96,
      I1 => Inst_UART_TX_r_SM_Main_FSM_FFd3_98,
      I2 => Inst_UART_TX_r_SM_Main_FSM_FFd1_94,
      I3 => Inst_UART_TX_o_TX_Active_63,
      O => Inst_UART_TX_o_TX_Active_mux0000
    );
  Inst_UART_RX_r_SM_Main_FSM_FFd2_In_SW1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Inst_UART_RX_r_SM_Main_FSM_FFd3_53,
      I1 => Inst_UART_RX_r_RX_Data_48,
      O => N3
    );
  Inst_UART_RX_r_SM_Main_FSM_FFd2_In : LUT4
    generic map(
      INIT => X"EC20"
    )
    port map (
      I0 => Inst_UART_RX_r_SM_Main_cmp_eq0000_56,
      I1 => Inst_UART_RX_r_SM_Main_FSM_FFd2_51,
      I2 => N3,
      I3 => N77,
      O => Inst_UART_RX_r_SM_Main_FSM_FFd2_In_52
    );
  Inst_UART_RX_r_Bit_Index_mux0001_2_1 : LUT4
    generic map(
      INIT => X"A868"
    )
    port map (
      I0 => Inst_UART_RX_r_Bit_Index(0),
      I1 => Inst_UART_RX_r_SM_Main_FSM_FFd2_51,
      I2 => Inst_UART_RX_r_SM_Main_FSM_FFd3_53,
      I3 => Inst_UART_RX_r_SM_Main_cmp_lt0000,
      O => Inst_UART_RX_r_Bit_Index_mux0001_2_Q
    );
  Inst_UART_RX_r_SM_Main_FSM_FFd1_In1 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => Inst_UART_RX_r_SM_Main_FSM_FFd1_49,
      I1 => Inst_UART_RX_r_SM_Main_FSM_FFd2_51,
      I2 => Inst_UART_RX_r_SM_Main_FSM_FFd3_53,
      I3 => Inst_UART_RX_r_SM_Main_cmp_lt0000,
      O => Inst_UART_RX_r_SM_Main_FSM_FFd1_In
    );
  Inst_UART_TX_r_SM_Main_FSM_FFd3_In_SW0 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => Inst_UART_TX_r_SM_Main_FSM_FFd2_96,
      I1 => TX_Start_IBUF_193,
      O => N7
    );
  Inst_UART_TX_r_SM_Main_FSM_FFd3_In : LUT4
    generic map(
      INIT => X"AF27"
    )
    port map (
      I0 => Inst_UART_TX_r_SM_Main_FSM_FFd3_98,
      I1 => N8,
      I2 => N7,
      I3 => Inst_UART_TX_r_SM_Main_cmp_lt0000,
      O => Inst_UART_TX_r_SM_Main_FSM_FFd3_In_99
    );
  Inst_UART_RX_r_RX_Byte_6_not00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => Inst_UART_RX_r_Bit_Index(1),
      I1 => Inst_UART_RX_r_Bit_Index(2),
      I2 => N85,
      O => Inst_UART_RX_r_RX_Byte_6_not0001
    );
  Inst_UART_RX_r_RX_Byte_5_not00011 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => Inst_UART_RX_r_Bit_Index(2),
      I1 => Inst_UART_RX_r_SM_Main_cmp_ne0000,
      I2 => Inst_UART_RX_N15,
      O => Inst_UART_RX_r_RX_Byte_5_not0001
    );
  Inst_UART_RX_r_RX_Byte_4_not00011 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => Inst_UART_RX_r_Bit_Index(2),
      I1 => Inst_UART_RX_r_Bit_Index(1),
      I2 => Inst_UART_RX_N5,
      O => Inst_UART_RX_r_RX_Byte_4_not0001
    );
  Inst_UART_RX_r_RX_Byte_2_not00011 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => Inst_UART_RX_r_Bit_Index(1),
      I1 => Inst_UART_RX_r_Bit_Index(2),
      I2 => Inst_UART_RX_N5,
      O => Inst_UART_RX_r_RX_Byte_2_not0001
    );
  Inst_UART_RX_r_RX_Byte_1_not00011 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => N78,
      I1 => Inst_UART_RX_r_Bit_Index(2),
      I2 => Inst_UART_RX_N15,
      O => Inst_UART_RX_r_RX_Byte_1_not0001
    );
  Inst_UART_RX_r_RX_Byte_0_not00011 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => Inst_UART_RX_r_Bit_Index(2),
      I1 => Inst_UART_RX_r_Bit_Index(1),
      I2 => Inst_UART_RX_N5,
      O => Inst_UART_RX_r_RX_Byte_0_not0001
    );
  Inst_UART_TX_r_Clk_Count_mux0000_5_1 : LUT4
    generic map(
      INIT => X"E6A0"
    )
    port map (
      I0 => Inst_UART_TX_r_Clk_Count(1),
      I1 => Inst_UART_TX_r_Clk_Count(0),
      I2 => Inst_UART_TX_N2,
      I3 => N86,
      O => Inst_UART_TX_r_Clk_Count_mux0000(5)
    );
  Inst_UART_TX_r_Clk_Count_mux0000_3_1 : LUT4
    generic map(
      INIT => X"E6A0"
    )
    port map (
      I0 => Inst_UART_TX_r_Clk_Count(3),
      I1 => Inst_UART_TX_Madd_r_Clk_Count_addsub0000_cy_2_Q,
      I2 => N76,
      I3 => Inst_UART_TX_N11,
      O => Inst_UART_TX_r_Clk_Count_mux0000(3)
    );
  Inst_UART_TX_r_Clk_Count_mux0000_1_1 : LUT4
    generic map(
      INIT => X"DA88"
    )
    port map (
      I0 => Inst_UART_TX_r_Clk_Count(5),
      I1 => Inst_UART_TX_N2,
      I2 => Inst_UART_TX_Madd_r_Clk_Count_addsub0000_cy_4_Q,
      I3 => Inst_UART_TX_N11,
      O => Inst_UART_TX_r_Clk_Count_mux0000(1)
    );
  Inst_UART_RX_r_Clk_Count_mux0000_5_1 : LUT4
    generic map(
      INIT => X"E6C0"
    )
    port map (
      I0 => Inst_UART_RX_r_Clk_Count(0),
      I1 => Inst_UART_RX_r_Clk_Count(1),
      I2 => Inst_UART_RX_N01,
      I3 => N81,
      O => Inst_UART_RX_r_Clk_Count_mux0000(5)
    );
  Inst_UART_RX_r_Clk_Count_mux0000_3_1 : LUT4
    generic map(
      INIT => X"E6A0"
    )
    port map (
      I0 => Inst_UART_RX_r_Clk_Count(3),
      I1 => Inst_UART_RX_Madd_r_Clk_Count_share0000_cy_2_Q,
      I2 => N79,
      I3 => Inst_UART_RX_N3,
      O => Inst_UART_RX_r_Clk_Count_mux0000(3)
    );
  Inst_UART_RX_r_Clk_Count_mux0000_1_1 : LUT4
    generic map(
      INIT => X"E6A0"
    )
    port map (
      I0 => Inst_UART_RX_r_Clk_Count(5),
      I1 => Inst_UART_RX_Madd_r_Clk_Count_share0000_cy_4_Q,
      I2 => Inst_UART_RX_N01,
      I3 => Inst_UART_RX_N3,
      O => Inst_UART_RX_r_Clk_Count_mux0000(1)
    );
  Inst_UART_TX_r_TX_Done_mux0000_SW1 : LUT3
    generic map(
      INIT => X"C8"
    )
    port map (
      I0 => Inst_UART_TX_r_SM_Main_FSM_FFd3_98,
      I1 => Inst_UART_TX_r_TX_Done_110,
      I2 => Inst_UART_TX_r_SM_Main_FSM_FFd2_96,
      O => N11
    );
  Inst_UART_RX_r_Clk_Count_mux0000_0_1_SW0 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => Inst_UART_RX_r_SM_Main_FSM_FFd1_49,
      I1 => Inst_UART_RX_r_SM_Main_FSM_FFd2_51,
      O => N13
    );
  Inst_UART_RX_r_Clk_Count_mux0000_0_1_SW1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => Inst_UART_RX_r_RX_Data_48,
      I1 => Inst_UART_RX_r_SM_Main_FSM_FFd2_51,
      O => N14
    );
  Inst_UART_TX_o_TX_Serial_mux000014 : LUT4
    generic map(
      INIT => X"3313"
    )
    port map (
      I0 => Inst_UART_TX_r_SM_Main_FSM_FFd1_94,
      I1 => Inst_UART_TX_r_SM_Main_FSM_FFd3_98,
      I2 => Inst_UART_TX_r_SM_Main_FSM_FFd2_96,
      I3 => Inst_UART_TX_o_TX_Serial_65,
      O => Inst_UART_TX_o_TX_Serial_mux000014_67
    );
  Inst_UART_TX_o_TX_Serial_mux000022 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Inst_UART_TX_r_Bit_Index(2),
      I1 => Inst_UART_TX_r_TX_Data(3),
      I2 => Inst_UART_TX_r_TX_Data(7),
      O => Inst_UART_TX_o_TX_Serial_mux000022_69
    );
  Inst_UART_TX_o_TX_Serial_mux000059 : LUT4
    generic map(
      INIT => X"A820"
    )
    port map (
      I0 => Inst_UART_TX_r_Bit_Index(0),
      I1 => Inst_UART_TX_r_Bit_Index(1),
      I2 => Inst_UART_TX_o_TX_Serial_mux000035_70,
      I3 => Inst_UART_TX_o_TX_Serial_mux000022_69,
      O => Inst_UART_TX_o_TX_Serial_mux000059_71
    );
  Inst_UART_TX_o_TX_Serial_mux000075 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Inst_UART_TX_r_Bit_Index(2),
      I1 => Inst_UART_TX_r_TX_Data(2),
      I2 => Inst_UART_TX_r_TX_Data(6),
      O => Inst_UART_TX_o_TX_Serial_mux000075_72
    );
  Inst_UART_TX_o_TX_Serial_mux0000114 : LUT4
    generic map(
      INIT => X"0E04"
    )
    port map (
      I0 => Inst_UART_TX_r_Bit_Index(1),
      I1 => Inst_UART_TX_o_TX_Serial_mux000088_73,
      I2 => Inst_UART_TX_r_Bit_Index(0),
      I3 => Inst_UART_TX_o_TX_Serial_mux000075_72,
      O => Inst_UART_TX_o_TX_Serial_mux0000114_66
    );
  Inst_UART_TX_Madd_r_Clk_Count_addsub0000_cy_2_11 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => Inst_UART_TX_r_Clk_Count(2),
      I1 => Inst_UART_TX_r_Clk_Count(1),
      I2 => Inst_UART_TX_r_Clk_Count(0),
      O => Inst_UART_TX_Madd_r_Clk_Count_addsub0000_cy_2_Q
    );
  Inst_UART_RX_Madd_r_Clk_Count_share0000_cy_2_11 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => Inst_UART_RX_r_Clk_Count(2),
      I1 => Inst_UART_RX_r_Clk_Count(1),
      I2 => Inst_UART_RX_r_Clk_Count(0),
      O => Inst_UART_RX_Madd_r_Clk_Count_share0000_cy_2_Q
    );
  Inst_UART_RX_r_Clk_Count_mux0000_0_Q : LUT4
    generic map(
      INIT => X"E6A0"
    )
    port map (
      I0 => Inst_UART_RX_r_Clk_Count(6),
      I1 => N16,
      I2 => Inst_UART_RX_N01,
      I3 => Inst_UART_RX_N3,
      O => Inst_UART_RX_r_Clk_Count_mux0000(0)
    );
  Inst_UART_RX_r_SM_Main_FSM_FFd3_In22 : LUT4
    generic map(
      INIT => X"1131"
    )
    port map (
      I0 => Inst_UART_RX_r_RX_Data_48,
      I1 => Inst_UART_RX_r_SM_Main_FSM_FFd2_51,
      I2 => Inst_UART_RX_r_SM_Main_FSM_FFd3_53,
      I3 => Inst_UART_RX_r_SM_Main_cmp_eq0000_56,
      O => Inst_UART_RX_r_SM_Main_FSM_FFd3_In22_54
    );
  Inst_UART_RX_r_Bit_Index_mux0001_1_311 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => Inst_UART_RX_r_SM_Main_FSM_FFd3_53,
      I1 => Inst_UART_RX_r_SM_Main_FSM_FFd2_51,
      I2 => N84,
      O => Inst_UART_RX_r_Bit_Index_mux0001_1_31_13
    );
  Inst_UART_RX_r_SM_Main_cmp_eq0000 : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => Inst_UART_RX_r_Clk_Count(6),
      I1 => Inst_UART_RX_r_Clk_Count(2),
      I2 => Inst_UART_RX_r_Clk_Count(1),
      I3 => N80,
      O => Inst_UART_RX_r_SM_Main_cmp_eq0000_56
    );
  Inst_UART_TX_r_Clk_Count_mux0000_4_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Inst_UART_TX_r_Clk_Count(1),
      I1 => Inst_UART_TX_r_Clk_Count(0),
      O => N23
    );
  Inst_UART_TX_r_Clk_Count_mux0000_4_Q : LUT4
    generic map(
      INIT => X"E6A0"
    )
    port map (
      I0 => Inst_UART_TX_r_Clk_Count(2),
      I1 => N23,
      I2 => Inst_UART_TX_N2,
      I3 => Inst_UART_TX_N11,
      O => Inst_UART_TX_r_Clk_Count_mux0000(4)
    );
  Inst_UART_TX_r_Clk_Count_mux0000_2_Q : LUT4
    generic map(
      INIT => X"E6A0"
    )
    port map (
      I0 => Inst_UART_TX_r_Clk_Count(4),
      I1 => N25,
      I2 => Inst_UART_TX_N2,
      I3 => Inst_UART_TX_N11,
      O => Inst_UART_TX_r_Clk_Count_mux0000(2)
    );
  Inst_UART_TX_r_Clk_Count_mux0000_0_Q : LUT4
    generic map(
      INIT => X"DA88"
    )
    port map (
      I0 => Inst_UART_TX_r_Clk_Count(6),
      I1 => Inst_UART_TX_N2,
      I2 => N27,
      I3 => Inst_UART_TX_N11,
      O => Inst_UART_TX_r_Clk_Count_mux0000(0)
    );
  Inst_UART_RX_r_Clk_Count_mux0000_4_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Inst_UART_RX_r_Clk_Count(1),
      I1 => Inst_UART_RX_r_Clk_Count(0),
      O => N29
    );
  Inst_UART_RX_r_Clk_Count_mux0000_4_Q : LUT4
    generic map(
      INIT => X"E6A0"
    )
    port map (
      I0 => Inst_UART_RX_r_Clk_Count(2),
      I1 => N29,
      I2 => Inst_UART_RX_N01,
      I3 => Inst_UART_RX_N3,
      O => Inst_UART_RX_r_Clk_Count_mux0000(4)
    );
  Inst_UART_RX_r_Clk_Count_mux0000_2_Q : LUT4
    generic map(
      INIT => X"E6A0"
    )
    port map (
      I0 => Inst_UART_RX_r_Clk_Count(4),
      I1 => N31,
      I2 => Inst_UART_RX_N01,
      I3 => Inst_UART_RX_N3,
      O => Inst_UART_RX_r_Clk_Count_mux0000(2)
    );
  Inst_UART_RX_r_SM_Main_cmp_lt00001 : LUT4
    generic map(
      INIT => X"777F"
    )
    port map (
      I0 => Inst_UART_RX_r_Clk_Count(5),
      I1 => Inst_UART_RX_r_Clk_Count(6),
      I2 => Inst_UART_RX_r_Clk_Count(4),
      I3 => N82,
      O => Inst_UART_RX_r_SM_Main_cmp_lt0000
    );
  Inst_UART_TX_r_SM_Main_cmp_lt00001 : LUT4
    generic map(
      INIT => X"57FF"
    )
    port map (
      I0 => Inst_UART_TX_r_Clk_Count(6),
      I1 => N83,
      I2 => Inst_UART_TX_r_Clk_Count(4),
      I3 => Inst_UART_TX_r_Clk_Count(5),
      O => Inst_UART_TX_r_SM_Main_cmp_lt0000
    );
  TX_Start_IBUF : IBUF
    port map (
      I => TX_Start,
      O => TX_Start_IBUF_193
    );
  RX_Serial_IBUF : IBUF
    port map (
      I => RX_Serial,
      O => RX_Serial_IBUF_172
    );
  TX_Byte_7_IBUF : IBUF
    port map (
      I => TX_Byte(7),
      O => TX_Byte_7_IBUF_189
    );
  TX_Byte_6_IBUF : IBUF
    port map (
      I => TX_Byte(6),
      O => TX_Byte_6_IBUF_188
    );
  TX_Byte_5_IBUF : IBUF
    port map (
      I => TX_Byte(5),
      O => TX_Byte_5_IBUF_187
    );
  TX_Byte_4_IBUF : IBUF
    port map (
      I => TX_Byte(4),
      O => TX_Byte_4_IBUF_186
    );
  TX_Byte_3_IBUF : IBUF
    port map (
      I => TX_Byte(3),
      O => TX_Byte_3_IBUF_185
    );
  TX_Byte_2_IBUF : IBUF
    port map (
      I => TX_Byte(2),
      O => TX_Byte_2_IBUF_184
    );
  TX_Byte_1_IBUF : IBUF
    port map (
      I => TX_Byte(1),
      O => TX_Byte_1_IBUF_183
    );
  TX_Byte_0_IBUF : IBUF
    port map (
      I => TX_Byte(0),
      O => TX_Byte_0_IBUF_182
    );
  RX_DV_OBUF : OBUF
    port map (
      I => Inst_UART_RX_r_RX_DV_46,
      O => RX_DV
    );
  TX_Active_OBUF : OBUF
    port map (
      I => Inst_UART_TX_o_TX_Active_63,
      O => TX_Active
    );
  TX_Done_OBUF : OBUF
    port map (
      I => Inst_UART_TX_r_TX_Done_110,
      O => TX_Done
    );
  TX_Serial_OBUF : OBUF
    port map (
      I => Inst_UART_TX_o_TX_Serial_65,
      O => TX_Serial
    );
  RX_Byte_7_OBUF : OBUF
    port map (
      I => Inst_UART_RX_r_RX_Byte(7),
      O => RX_Byte(7)
    );
  RX_Byte_6_OBUF : OBUF
    port map (
      I => Inst_UART_RX_r_RX_Byte(6),
      O => RX_Byte(6)
    );
  RX_Byte_5_OBUF : OBUF
    port map (
      I => Inst_UART_RX_r_RX_Byte(5),
      O => RX_Byte(5)
    );
  RX_Byte_4_OBUF : OBUF
    port map (
      I => Inst_UART_RX_r_RX_Byte(4),
      O => RX_Byte(4)
    );
  RX_Byte_3_OBUF : OBUF
    port map (
      I => Inst_UART_RX_r_RX_Byte(3),
      O => RX_Byte(3)
    );
  RX_Byte_2_OBUF : OBUF
    port map (
      I => Inst_UART_RX_r_RX_Byte(2),
      O => RX_Byte(2)
    );
  RX_Byte_1_OBUF : OBUF
    port map (
      I => Inst_UART_RX_r_RX_Byte(1),
      O => RX_Byte(1)
    );
  RX_Byte_0_OBUF : OBUF
    port map (
      I => Inst_UART_RX_r_RX_Byte(0),
      O => RX_Byte(0)
    );
  Inst_UART_RX_r_SM_Main_FSM_FFd3 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => Inst_UART_RX_r_SM_Main_FSM_FFd3_In26,
      S => Inst_UART_RX_r_SM_Main_FSM_FFd3_In22_54,
      Q => Inst_UART_RX_r_SM_Main_FSM_FFd3_53
    );
  Inst_UART_RX_r_RX_DV : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => Inst_UART_RX_r_RX_DV_mux00001_47,
      S => Inst_UART_RX_r_SM_Main_FSM_FFd1_In,
      Q => Inst_UART_RX_r_RX_DV_46
    );
  Inst_UART_RX_r_Bit_Index_1 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => Inst_UART_RX_r_Bit_Index_mux0001_1_34,
      S => Inst_UART_RX_r_Bit_Index_mux0001_1_31_13,
      Q => Inst_UART_RX_r_Bit_Index(1)
    );
  Inst_UART_TX_r_SM_Main_FSM_FFd1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => Inst_UART_TX_r_SM_Main_FSM_FFd1_In1,
      R => Inst_UART_TX_r_SM_Main_FSM_FFd3_98,
      Q => Inst_UART_TX_r_SM_Main_FSM_FFd1_94
    );
  Inst_UART_TX_r_SM_Main_FSM_FFd1_In11 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => Inst_UART_TX_r_SM_Main_cmp_lt0000,
      I1 => Inst_UART_TX_r_SM_Main_FSM_FFd1_94,
      I2 => Inst_UART_TX_r_SM_Main_FSM_FFd2_96,
      O => Inst_UART_TX_r_SM_Main_FSM_FFd1_In1
    );
  Inst_UART_TX_o_TX_Serial : FDS
    port map (
      C => Clk_BUFGP_1,
      D => Inst_UART_TX_o_TX_Serial_mux0000154,
      S => Inst_UART_TX_o_TX_Serial_mux000014_67,
      Q => Inst_UART_TX_o_TX_Serial_65
    );
  Inst_UART_TX_r_TX_Done : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => Inst_UART_TX_r_TX_Done_mux00001_111,
      S => Inst_UART_TX_r_SM_Main_FSM_FFd1_94,
      Q => Inst_UART_TX_r_TX_Done_110
    );
  Inst_UART_TX_r_TX_Done_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Inst_UART_TX_r_SM_Main_cmp_lt0000,
      I1 => N10,
      I2 => N11,
      O => Inst_UART_TX_r_TX_Done_mux00001_111
    );
  Inst_UART_RX_r_Clk_Count_mux0000_0_2_SW0 : LUT4
    generic map(
      INIT => X"3337"
    )
    port map (
      I0 => Inst_UART_RX_r_Clk_Count(2),
      I1 => Inst_UART_RX_r_SM_Main_FSM_FFd3_53,
      I2 => N41,
      I3 => N18,
      O => N20
    );
  Inst_UART_TX_r_Bit_Index_mux0001_2_2 : LUT4
    generic map(
      INIT => X"9CC0"
    )
    port map (
      I0 => Inst_UART_TX_r_SM_Main_cmp_lt0000,
      I1 => Inst_UART_TX_r_Bit_Index(0),
      I2 => Inst_UART_TX_r_SM_Main_FSM_FFd2_96,
      I3 => Inst_UART_TX_r_SM_Main_FSM_FFd3_98,
      O => Inst_UART_TX_r_Bit_Index_mux0001(2)
    );
  Inst_UART_TX_r_SM_Main_FSM_FFd2_In1 : LUT4
    generic map(
      INIT => X"C4F4"
    )
    port map (
      I0 => Inst_UART_TX_r_SM_Main_cmp_lt0000,
      I1 => Inst_UART_TX_r_SM_Main_FSM_FFd3_98,
      I2 => Inst_UART_TX_r_SM_Main_FSM_FFd2_96,
      I3 => Inst_UART_TX_r_SM_Main_FSM_FFd1_94,
      O => Inst_UART_TX_r_SM_Main_FSM_FFd2_In
    );
  Inst_UART_RX_r_SM_Main_cmp_lt00001_SW1 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => Inst_UART_RX_r_Clk_Count(5),
      I1 => Inst_UART_RX_r_Bit_Index(0),
      I2 => Inst_UART_RX_r_Bit_Index(1),
      O => N43
    );
  Inst_UART_TX_r_Clk_Count_mux0000_0_11_SW0 : LUT3
    generic map(
      INIT => X"23"
    )
    port map (
      I0 => Inst_UART_TX_r_SM_Main_FSM_FFd1_94,
      I1 => Inst_UART_TX_r_SM_Main_FSM_FFd3_98,
      I2 => Inst_UART_TX_r_SM_Main_FSM_FFd2_96,
      O => N45
    );
  Inst_UART_TX_r_Clk_Count_mux0000_6_1 : LUT4
    generic map(
      INIT => X"CE02"
    )
    port map (
      I0 => Inst_UART_TX_r_SM_Main_cmp_lt0000,
      I1 => Inst_UART_TX_r_Clk_Count(0),
      I2 => N45,
      I3 => Inst_UART_TX_N2,
      O => Inst_UART_TX_r_Clk_Count_mux0000(6)
    );
  Inst_UART_RX_r_SM_Main_cmp_lt00001_SW2 : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => Inst_UART_RX_r_Clk_Count(5),
      I1 => Inst_UART_RX_r_Clk_Count(6),
      I2 => Inst_UART_RX_r_Bit_Index(0),
      O => N47
    );
  Inst_UART_RX_r_Bit_Index_mux0001_1_10_SW0 : LUT3
    generic map(
      INIT => X"83"
    )
    port map (
      I0 => Inst_UART_RX_r_Bit_Index(0),
      I1 => Inst_UART_RX_r_SM_Main_FSM_FFd3_53,
      I2 => Inst_UART_RX_r_SM_Main_FSM_FFd2_51,
      O => N49
    );
  Inst_UART_RX_r_Bit_Index_mux0001_1_10_SW1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Inst_UART_RX_r_SM_Main_FSM_FFd3_53,
      I1 => Inst_UART_RX_r_SM_Main_FSM_FFd2_51,
      O => N50
    );
  Inst_UART_RX_r_Bit_Index_mux0001_1_341 : LUT4
    generic map(
      INIT => X"A022"
    )
    port map (
      I0 => Inst_UART_RX_r_Bit_Index(1),
      I1 => N49,
      I2 => N50,
      I3 => Inst_UART_RX_r_SM_Main_cmp_lt0000,
      O => Inst_UART_RX_r_Bit_Index_mux0001_1_34
    );
  Inst_UART_TX_r_Bit_Index_mux0001_1_SW0_SW1 : LUT3
    generic map(
      INIT => X"97"
    )
    port map (
      I0 => Inst_UART_TX_r_SM_Main_FSM_FFd3_98,
      I1 => Inst_UART_TX_r_SM_Main_FSM_FFd2_96,
      I2 => Inst_UART_TX_r_Bit_Index(1),
      O => N53
    );
  Inst_UART_TX_r_Bit_Index_mux0001_1_Q : LUT4
    generic map(
      INIT => X"515D"
    )
    port map (
      I0 => N52,
      I1 => Inst_UART_TX_r_Bit_Index(0),
      I2 => Inst_UART_TX_r_SM_Main_cmp_lt0000,
      I3 => N53,
      O => Inst_UART_TX_r_Bit_Index_mux0001(1)
    );
  Inst_UART_TX_r_Bit_Index_mux0001_0_SW0_SW0 : LUT3
    generic map(
      INIT => X"1F"
    )
    port map (
      I0 => Inst_UART_TX_r_SM_Main_FSM_FFd2_96,
      I1 => Inst_UART_TX_r_SM_Main_FSM_FFd3_98,
      I2 => Inst_UART_TX_r_Bit_Index(2),
      O => N55
    );
  Inst_UART_TX_r_Bit_Index_mux0001_0_SW0_SW1 : LUT4
    generic map(
      INIT => X"971F"
    )
    port map (
      I0 => Inst_UART_TX_r_SM_Main_FSM_FFd2_96,
      I1 => Inst_UART_TX_r_SM_Main_FSM_FFd3_98,
      I2 => Inst_UART_TX_r_Bit_Index(2),
      I3 => Inst_UART_TX_r_Bit_Index(0),
      O => N56
    );
  Inst_UART_TX_r_Bit_Index_mux0001_0_Q : LUT4
    generic map(
      INIT => X"515D"
    )
    port map (
      I0 => N55,
      I1 => Inst_UART_TX_r_Bit_Index(1),
      I2 => Inst_UART_TX_r_SM_Main_cmp_lt0000,
      I3 => N56,
      O => Inst_UART_TX_r_Bit_Index_mux0001(0)
    );
  Inst_UART_RX_r_RX_Byte_7_not00011 : LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => Inst_UART_RX_r_Bit_Index(1),
      I1 => N58,
      I2 => Inst_UART_RX_r_SM_Main_cmp_ne0000,
      I3 => Inst_UART_RX_r_SM_Main_cmp_lt0000,
      O => Inst_UART_RX_r_RX_Byte_7_not0001
    );
  Inst_UART_RX_r_RX_Byte_3_not00011 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => Inst_UART_RX_r_Bit_Index(1),
      I1 => N60,
      I2 => Inst_UART_RX_r_SM_Main_cmp_ne0000,
      I3 => Inst_UART_RX_r_SM_Main_cmp_lt0000,
      O => Inst_UART_RX_r_RX_Byte_3_not0001
    );
  Inst_UART_RX_r_Bit_Index_mux0001_0_21_SW3 : LUT4
    generic map(
      INIT => X"971F"
    )
    port map (
      I0 => Inst_UART_RX_r_SM_Main_FSM_FFd3_53,
      I1 => Inst_UART_RX_r_SM_Main_FSM_FFd2_51,
      I2 => Inst_UART_RX_r_Bit_Index(2),
      I3 => Inst_UART_RX_r_Bit_Index(0),
      O => N63
    );
  Inst_UART_RX_r_Bit_Index_mux0001_0_1 : LUT4
    generic map(
      INIT => X"515D"
    )
    port map (
      I0 => N62,
      I1 => Inst_UART_RX_r_Bit_Index(1),
      I2 => Inst_UART_RX_r_SM_Main_cmp_lt0000,
      I3 => N63,
      O => Inst_UART_RX_r_Bit_Index_mux0001_0_Q
    );
  Inst_UART_RX_r_Bit_Index_mux0001_0_21_SW4 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => Inst_UART_RX_r_Bit_Index(1),
      I1 => Inst_UART_RX_r_Bit_Index(0),
      I2 => Inst_UART_RX_r_Bit_Index(2),
      O => N65
    );
  Inst_UART_RX_r_SM_Main_FSM_FFd3_In261 : LUT4
    generic map(
      INIT => X"C040"
    )
    port map (
      I0 => N65,
      I1 => Inst_UART_RX_r_SM_Main_FSM_FFd3_53,
      I2 => Inst_UART_RX_r_SM_Main_FSM_FFd2_51,
      I3 => Inst_UART_RX_r_SM_Main_cmp_lt0000,
      O => Inst_UART_RX_r_SM_Main_FSM_FFd3_In26
    );
  Inst_UART_TX_o_TX_Serial_mux00001541 : LUT4
    generic map(
      INIT => X"8880"
    )
    port map (
      I0 => Inst_UART_TX_r_SM_Main_FSM_FFd3_98,
      I1 => Inst_UART_TX_r_SM_Main_FSM_FFd2_96,
      I2 => Inst_UART_TX_o_TX_Serial_mux000059_71,
      I3 => Inst_UART_TX_o_TX_Serial_mux0000114_66,
      O => Inst_UART_TX_o_TX_Serial_mux0000154
    );
  Inst_UART_TX_r_Clk_Count_mux0000_2_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Inst_UART_TX_r_Clk_Count(3),
      I1 => Inst_UART_TX_r_Clk_Count(2),
      I2 => Inst_UART_TX_r_Clk_Count(1),
      I3 => Inst_UART_TX_r_Clk_Count(0),
      O => N25
    );
  Inst_UART_RX_r_Clk_Count_mux0000_2_SW0 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Inst_UART_RX_r_Clk_Count(3),
      I1 => Inst_UART_RX_r_Clk_Count(2),
      I2 => Inst_UART_RX_r_Clk_Count(1),
      I3 => Inst_UART_RX_r_Clk_Count(0),
      O => N31
    );
  Inst_UART_RX_r_Clk_Count_mux0000_6_1 : MUXF5
    port map (
      I0 => N70,
      I1 => N71,
      S => Inst_UART_RX_r_Clk_Count(0),
      O => Inst_UART_RX_r_Clk_Count_mux0000(6)
    );
  Inst_UART_RX_r_Clk_Count_mux0000_6_1_F : LUT4
    generic map(
      INIT => X"B111"
    )
    port map (
      I0 => Inst_UART_RX_r_SM_Main_FSM_FFd2_51,
      I1 => N20,
      I2 => N2,
      I3 => Inst_UART_RX_r_SM_Main_cmp_lt0000,
      O => N70
    );
  Inst_UART_RX_r_Clk_Count_mux0000_6_1_G : LUT4
    generic map(
      INIT => X"1B11"
    )
    port map (
      I0 => Inst_UART_RX_r_SM_Main_FSM_FFd3_53,
      I1 => N13,
      I2 => N14,
      I3 => Inst_UART_RX_r_SM_Main_cmp_eq0000_56,
      O => N71
    );
  Inst_UART_TX_r_SM_Main_cmp_lt00001_SW2 : MUXF5
    port map (
      I0 => N72,
      I1 => N73,
      S => Inst_UART_TX_r_SM_Main_FSM_FFd3_98,
      O => N68
    );
  Inst_UART_TX_r_SM_Main_cmp_lt00001_SW2_F : LUT4
    generic map(
      INIT => X"F8FF"
    )
    port map (
      I0 => Inst_UART_TX_r_Clk_Count(6),
      I1 => Inst_UART_TX_r_Clk_Count(5),
      I2 => Inst_UART_TX_r_SM_Main_FSM_FFd1_94,
      I3 => Inst_UART_TX_r_SM_Main_FSM_FFd2_96,
      O => N72
    );
  Inst_UART_TX_r_SM_Main_cmp_lt00001_SW2_G : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Inst_UART_TX_r_Clk_Count(6),
      I1 => Inst_UART_TX_r_Clk_Count(5),
      O => N73
    );
  Inst_UART_RX_r_RX_DV_mux00001 : LUT4
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => Inst_UART_RX_r_SM_Main_FSM_FFd3_53,
      I1 => Inst_UART_RX_r_RX_DV_46,
      I2 => Inst_UART_RX_r_SM_Main_FSM_FFd1_49,
      I3 => Inst_UART_RX_r_SM_Main_FSM_FFd2_51,
      O => Inst_UART_RX_r_RX_DV_mux00001_47
    );
  Clk_BUFGP : BUFGP
    port map (
      I => Clk,
      O => Clk_BUFGP_1
    );
  XST_GND : GND
    port map (
      G => N75
    );
  Inst_UART_TX_r_Clk_Count_mux0000_0_21 : LUT3_D
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => Inst_UART_TX_r_SM_Main_FSM_FFd2_96,
      I1 => Inst_UART_TX_r_SM_Main_FSM_FFd3_98,
      I2 => Inst_UART_TX_r_SM_Main_FSM_FFd1_94,
      LO => N76,
      O => Inst_UART_TX_N2
    );
  Inst_UART_RX_r_SM_Main_FSM_FFd2_In_SW0 : LUT2_D
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => Inst_UART_RX_r_SM_Main_FSM_FFd1_49,
      I1 => Inst_UART_RX_r_SM_Main_FSM_FFd3_53,
      LO => N77,
      O => N2
    );
  Inst_UART_RX_r_SM_Main_FSM_Out41 : LUT3_D
    generic map(
      INIT => X"BF"
    )
    port map (
      I0 => Inst_UART_RX_r_SM_Main_FSM_FFd1_49,
      I1 => Inst_UART_RX_r_SM_Main_FSM_FFd2_51,
      I2 => Inst_UART_RX_r_SM_Main_FSM_FFd3_53,
      LO => N78,
      O => Inst_UART_RX_r_SM_Main_cmp_ne0000
    );
  Inst_UART_TX_r_SM_Main_FSM_FFd3_In_SW1 : LUT4_L
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Inst_UART_TX_r_Bit_Index(2),
      I1 => Inst_UART_TX_r_SM_Main_FSM_FFd2_96,
      I2 => Inst_UART_TX_r_Bit_Index(1),
      I3 => Inst_UART_TX_r_Bit_Index(0),
      LO => N8
    );
  Inst_UART_TX_r_TX_Done_mux0000_SW0 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Inst_UART_TX_r_SM_Main_FSM_FFd3_98,
      I1 => Inst_UART_TX_r_SM_Main_FSM_FFd2_96,
      I2 => Inst_UART_TX_r_TX_Done_110,
      LO => N10
    );
  Inst_UART_RX_r_Clk_Count_mux0000_0_1 : LUT4_D
    generic map(
      INIT => X"1B11"
    )
    port map (
      I0 => Inst_UART_RX_r_SM_Main_FSM_FFd3_53,
      I1 => N13,
      I2 => N14,
      I3 => Inst_UART_RX_r_SM_Main_cmp_eq0000_56,
      LO => N79,
      O => Inst_UART_RX_N01
    );
  Inst_UART_TX_o_TX_Serial_mux000035 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Inst_UART_TX_r_Bit_Index(2),
      I1 => Inst_UART_TX_r_TX_Data(1),
      I2 => Inst_UART_TX_r_TX_Data(5),
      LO => Inst_UART_TX_o_TX_Serial_mux000035_70
    );
  Inst_UART_TX_o_TX_Serial_mux000088 : LUT3_L
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Inst_UART_TX_r_Bit_Index(2),
      I1 => Inst_UART_TX_r_TX_Data(0),
      I2 => Inst_UART_TX_r_TX_Data(4),
      LO => Inst_UART_TX_o_TX_Serial_mux000088_73
    );
  Inst_UART_TX_Madd_r_Clk_Count_addsub0000_cy_4_11 : LUT3_L
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => Inst_UART_TX_r_Clk_Count(4),
      I1 => Inst_UART_TX_r_Clk_Count(3),
      I2 => Inst_UART_TX_Madd_r_Clk_Count_addsub0000_cy_2_Q,
      LO => Inst_UART_TX_Madd_r_Clk_Count_addsub0000_cy_4_Q
    );
  Inst_UART_RX_Madd_r_Clk_Count_share0000_cy_4_11 : LUT3_L
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => Inst_UART_RX_r_Clk_Count(4),
      I1 => Inst_UART_RX_r_Clk_Count(3),
      I2 => Inst_UART_RX_Madd_r_Clk_Count_share0000_cy_2_Q,
      LO => Inst_UART_RX_Madd_r_Clk_Count_share0000_cy_4_Q
    );
  Inst_UART_RX_r_SM_Main_cmp_eq0000_SW0 : LUT4_D
    generic map(
      INIT => X"DFFF"
    )
    port map (
      I0 => Inst_UART_RX_r_Clk_Count(5),
      I1 => Inst_UART_RX_r_Clk_Count(3),
      I2 => Inst_UART_RX_r_Clk_Count(4),
      I3 => Inst_UART_RX_r_Clk_Count(0),
      LO => N80,
      O => N18
    );
  Inst_UART_RX_r_Clk_Count_mux0000_0_2 : LUT4_D
    generic map(
      INIT => X"B111"
    )
    port map (
      I0 => Inst_UART_RX_r_SM_Main_FSM_FFd2_51,
      I1 => N20,
      I2 => N2,
      I3 => Inst_UART_RX_r_SM_Main_cmp_lt0000,
      LO => N81,
      O => Inst_UART_RX_N3
    );
  Inst_UART_RX_r_SM_Main_cmp_lt00001_SW0 : LUT4_D
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => Inst_UART_RX_r_Clk_Count(2),
      I1 => Inst_UART_RX_r_Clk_Count(1),
      I2 => Inst_UART_RX_r_Clk_Count(0),
      I3 => Inst_UART_RX_r_Clk_Count(3),
      LO => N82,
      O => N33
    );
  Inst_UART_TX_r_SM_Main_cmp_lt00001_SW0 : LUT4_D
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => Inst_UART_TX_r_Clk_Count(2),
      I1 => Inst_UART_TX_r_Clk_Count(1),
      I2 => Inst_UART_TX_r_Clk_Count(0),
      I3 => Inst_UART_TX_r_Clk_Count(3),
      LO => N83,
      O => N39
    );
  Inst_UART_RX_r_SM_Main_cmp_eq0000_SW1 : LUT2_L
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => Inst_UART_RX_r_Clk_Count(6),
      I1 => Inst_UART_RX_r_Clk_Count(1),
      LO => N41
    );
  Inst_UART_RX_r_Clk_Count_mux0000_0_SW0 : LUT4_L
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Inst_UART_RX_r_Clk_Count(5),
      I1 => Inst_UART_RX_r_Clk_Count(4),
      I2 => Inst_UART_RX_r_Clk_Count(3),
      I3 => Inst_UART_RX_Madd_r_Clk_Count_share0000_cy_2_Q,
      LO => N16
    );
  Inst_UART_TX_r_Clk_Count_mux0000_0_SW0 : LUT4_L
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Inst_UART_TX_r_Clk_Count(5),
      I1 => Inst_UART_TX_r_Clk_Count(4),
      I2 => Inst_UART_TX_r_Clk_Count(3),
      I3 => Inst_UART_TX_Madd_r_Clk_Count_addsub0000_cy_2_Q,
      LO => N27
    );
  Inst_UART_RX_r_Bit_Index_mux0001_1_31 : LUT4_D
    generic map(
      INIT => X"00A8"
    )
    port map (
      I0 => Inst_UART_RX_r_Clk_Count(6),
      I1 => Inst_UART_RX_r_Clk_Count(4),
      I2 => N33,
      I3 => N43,
      LO => N84,
      O => Inst_UART_RX_N15
    );
  Inst_UART_RX_r_RX_Byte_0_not000111 : LUT4_D
    generic map(
      INIT => X"0032"
    )
    port map (
      I0 => Inst_UART_RX_r_Clk_Count(4),
      I1 => N47,
      I2 => N33,
      I3 => Inst_UART_RX_r_SM_Main_cmp_ne0000,
      LO => N85,
      O => Inst_UART_RX_N5
    );
  Inst_UART_TX_r_Bit_Index_mux0001_1_SW0_SW0 : LUT3_L
    generic map(
      INIT => X"1F"
    )
    port map (
      I0 => Inst_UART_TX_r_SM_Main_FSM_FFd2_96,
      I1 => Inst_UART_TX_r_SM_Main_FSM_FFd3_98,
      I2 => Inst_UART_TX_r_Bit_Index(1),
      LO => N52
    );
  Inst_UART_RX_r_Bit_Index_mux0001_0_21_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Inst_UART_RX_r_Bit_Index(0),
      I1 => Inst_UART_RX_r_Bit_Index(2),
      LO => N58
    );
  Inst_UART_RX_r_Bit_Index_mux0001_0_21_SW1 : LUT2_L
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => Inst_UART_RX_r_Bit_Index(2),
      I1 => Inst_UART_RX_r_Bit_Index(0),
      LO => N60
    );
  Inst_UART_RX_r_Bit_Index_mux0001_0_21_SW2 : LUT3_L
    generic map(
      INIT => X"1F"
    )
    port map (
      I0 => Inst_UART_RX_r_SM_Main_FSM_FFd2_51,
      I1 => Inst_UART_RX_r_SM_Main_FSM_FFd3_53,
      I2 => Inst_UART_RX_r_Bit_Index(2),
      LO => N62
    );
  Inst_UART_TX_r_Clk_Count_mux0000_0_11 : LUT4_D
    generic map(
      INIT => X"01EF"
    )
    port map (
      I0 => Inst_UART_TX_r_Clk_Count(4),
      I1 => N39,
      I2 => N45,
      I3 => N68,
      LO => N86,
      O => Inst_UART_TX_N11
    );
  Inst_UART_RX_Mshreg_r_RX_Data : SRL16
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => N75,
      A1 => N75,
      A2 => N75,
      A3 => N75,
      CLK => Clk_BUFGP_1,
      D => RX_Serial_IBUF_172,
      Q => Inst_UART_RX_Mshreg_r_RX_Data_4
    );
  Inst_UART_RX_r_RX_Data : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => Clk_BUFGP_1,
      D => Inst_UART_RX_Mshreg_r_RX_Data_4,
      Q => Inst_UART_RX_r_RX_Data_48
    );

end Structure;

