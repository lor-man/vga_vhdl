----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:19:03 10/23/2020 
-- Design Name: 
-- Module Name:    vga_top - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity vga_top is
port(
	clk_12: in std_logic;
	HSync,VSync,CLKIN_IBUFG_OUT,CLK0_OUT:out std_logic;
	Red,Green: out std_logic_vector(2 downto 0);
	Blue: out std_logic_vector(2 downto 1);
	img_selector:in std_logic_vector(3 downto 0)
);
end vga_top;

architecture Behavioral of vga_top is
signal clk_25,ena,ena_0,ena_1,ena_2,ena_3,ena_4,ena_5,ena_6,ena_7,ena_8,ena_9,ena_10,ena_11,ena_12,ena_13,ena_14,ena_15,ena_16: std_logic;
signal columna: std_logic_vector (0 to 3);--std_logic_vector (1023 downto 0);
signal fila: std_logic_vector (0 to 3);--std_logic_vector (511 downto 0);
signal addr: std_logic_vector (0 to 7);-- std_logic_vector(524287 downto 0);
signal dato_addr_rom_0,dato_addr_rom_1,dato_addr_rom_2,dato_addr_rom_3,dato_addr_rom_4,dato_addr_rom_5,dato_addr_rom_6,
dato_addr_rom_7,dato_addr_rom_8,dato_addr_rom_9,dato_addr_rom_10,dato_addr_rom_11,dato_addr_rom_12,dato_addr_rom_13,dato_addr_rom_14,dato_addr_rom_15,dato_addr_rom_16,mux_data_out:std_logic_vector(7 downto 0);
signal mux_selector_memoria:std_logic_vector(3 downto 0);
---------------------------------------------------------
----reloj de 25 MHz---
	COMPONENT vga_clk_25
	PORT(
		CLKIN_IN : IN std_logic;          
		CLKFX_OUT : OUT std_logic;
		CLKIN_IBUFG_OUT : OUT std_logic;
		CLK0_OUT : OUT std_logic
		);
	END COMPONENT;	
---------------------------------------------------------
----Generador de se;ales de control-----
	COMPONENT VGA_sync
	PORT(
		clk_in : IN std_logic;          
		hsync : OUT std_logic;
		vsync : OUT std_logic;
		columna : OUT std_logic_vector(0 to 3);
		fila : OUT std_logic_vector(0 to 3);
		enable : OUT std_logic
		);
	END COMPONENT;
--------------------------------------------------------
----Generador de direccion de memoria de 0 a 255
	COMPONENT Generador_magen
	PORT(
		--en : IN std_logic;
		columna_in : IN std_logic_vector(0 to 3);
		fila_in : IN std_logic_vector(0 to 3);          
		addr_out : OUT std_logic_vector(0 to 7)
		);
	END COMPONENT;
--Selector de rom y habilitador de mux
	COMPONENT selector_img
	PORT(
		no_img : IN std_logic_vector(3 downto 0);          
		rom_enable_0 : OUT std_logic;
		rom_enable_1 : OUT std_logic;
		rom_enable_2 : OUT std_logic;
		rom_enable_3 : OUT std_logic;
		rom_enable_4 : OUT std_logic;
		rom_enable_5 : OUT std_logic;
		rom_enable_6 : OUT std_logic;
		rom_enable_7 : OUT std_logic;
		rom_enable_8 : OUT std_logic;
		rom_enable_9 : OUT std_logic;
		rom_enable_10 : OUT std_logic;
		rom_enable_11 : OUT std_logic;
		rom_enable_12 : OUT std_logic;
		rom_enable_13 : OUT std_logic;
		rom_enable_14 : OUT std_logic;
		rom_enable_15 : OUT std_logic;
		mux_img_selector : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
-------------------------------------------------------------
-------------------------------------------------------------
----------------MEMORIAS-------------------------------------
-------------------------------------------------------------
-------------------------------------------------------------
--ROM 0
	COMPONENT rom_0
	PORT(
		CLK : IN std_logic;
		EN : IN std_logic;
		ADDR : IN std_logic_vector(0 to 7);          
		DATA : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
--ROM 1
		COMPONENT rom_1
	PORT(
		CLK : IN std_logic;
		EN : IN std_logic;
		ADDR : IN std_logic_vector(0 to 7);          
		DATA : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
--ROM 2
	COMPONENT rom_2
	PORT(
		CLK : IN std_logic;
		EN : IN std_logic;
		ADDR : IN std_logic_vector(0 to 7);          
		DATA : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
--ROM 3
	COMPONENT rom_3
	PORT(
		CLK : IN std_logic;
		EN : IN std_logic;
		ADDR : IN std_logic_vector(0 to 7);          
		DATA : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
--ROM 4
	COMPONENT rom_4
	PORT(
		CLK : IN std_logic;
		EN : IN std_logic;
		ADDR : IN std_logic_vector(0 to 7);          
		DATA : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
--ROM 5
	COMPONENT rom_5
	PORT(
		CLK : IN std_logic;
		EN : IN std_logic;
		ADDR : IN std_logic_vector(0 to 7);          
		DATA : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
--ROM 6
	COMPONENT rom_6
	PORT(
		CLK : IN std_logic;
		EN : IN std_logic;
		ADDR : IN std_logic_vector(0 to 7);          
		DATA : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
--ROM 7
	COMPONENT rom_7
	PORT(
		CLK : IN std_logic;
		EN : IN std_logic;
		ADDR : IN std_logic_vector(0 to 7);          
		DATA : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
--ROM 8
	COMPONENT rom_8
	PORT(
		CLK : IN std_logic;
		EN : IN std_logic;
		ADDR : IN std_logic_vector(0 to 7);          
		DATA : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
--ROM 9
	COMPONENT rom_9
	PORT(
		CLK : IN std_logic;
		EN : IN std_logic;
		ADDR : IN std_logic_vector(0 to 7);          
		DATA : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
--ROM 10
	COMPONENT rom_10
	PORT(
		CLK : IN std_logic;
		EN : IN std_logic;
		ADDR : IN std_logic_vector(0 to 7);          
		DATA : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
--ROM 11
	COMPONENT rom_11
	PORT(
		CLK : IN std_logic;
		EN : IN std_logic;
		ADDR : IN std_logic_vector(0 to 7);          
		DATA : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
--ROM 12
	COMPONENT rom_12
	PORT(
		CLK : IN std_logic;
		EN : IN std_logic;
		ADDR : IN std_logic_vector(0 to 7);          
		DATA : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
--ROM 13
	COMPONENT rom_13
	PORT(
		CLK : IN std_logic;
		EN : IN std_logic;
		ADDR : IN std_logic_vector(0 to 7);          
		DATA : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
--ROM 14
	COMPONENT rom_14
	PORT(
		CLK : IN std_logic;
		EN : IN std_logic;
		ADDR : IN std_logic_vector(0 to 7);          
		DATA : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

--ROM 15
	COMPONENT rom_15
	PORT(
		CLK : IN std_logic;
		EN : IN std_logic;
		ADDR : IN std_logic_vector(0 to 7);          
		DATA : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
--ROM 16
	COMPONENT rom_16
	PORT(
		CLK : IN std_logic;
		EN : IN std_logic;
		ADDR : IN std_logic_vector(0 to 7);          
		DATA : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
-------------------------------------------------------------	
-------------------------------------------------------------
-------------------------------------------------------------
-------------------------------------------------------------
-------------------------------------------------------------
--Multiplexor de roms
	COMPONENT mux_rom
	PORT(
		mux_selector_in : IN std_logic_vector(3 downto 0);
		rom_0 : IN std_logic_vector(7 downto 0);
		rom_1 : IN std_logic_vector(7 downto 0);
		rom_2 : IN std_logic_vector(7 downto 0);
		rom_3 : IN std_logic_vector(7 downto 0);
		rom_4 : IN std_logic_vector(7 downto 0);
		rom_5 : IN std_logic_vector(7 downto 0);
		rom_6 : IN std_logic_vector(7 downto 0);
		rom_7 : IN std_logic_vector(7 downto 0);
		rom_8 : IN std_logic_vector(7 downto 0);
		rom_9 : IN std_logic_vector(7 downto 0);
		rom_10 : IN std_logic_vector(7 downto 0);
		rom_11 : IN std_logic_vector(7 downto 0);
		rom_12 : IN std_logic_vector(7 downto 0);
		rom_13 : IN std_logic_vector(7 downto 0);
		rom_14 : IN std_logic_vector(7 downto 0);
		rom_15 : IN std_logic_vector(7 downto 0);          
		mux_data_out : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

----Encargado de trasladar los valores obtenidos de la memoria
----Rom a la salida cuando se encuentra en la parte visible
	COMPONENT Desplegador
	PORT(
		en_desplegador : IN std_logic;
		rgb_dato : IN std_logic_vector(7 downto 0);          
		red : OUT std_logic_vector(2 downto 0);
		green : OUT std_logic_vector(2 downto 0);
		blue : OUT std_logic_vector(2 downto 1)
		);
	END COMPONENT;
------------------------------------------------------------	
begin
-----------------------------------------------------------
--Reloj 25MHz
		Inst_vga_clk_25: vga_clk_25 PORT MAP(
		CLKIN_IN => clk_12 ,
		CLKFX_OUT => clk_25 ,
		CLKIN_IBUFG_OUT => CLKIN_IBUFG_OUT ,
		CLK0_OUT => CLK0_OUT
	);
--Generador de se;ales vga
	Inst_VGA_sync: VGA_sync PORT MAP(
		clk_in => clk_25 ,
		hsync =>HSync ,
		vsync =>VSync ,
		columna => columna ,
		fila => fila ,
		enable => ena
	);
--Generador de direcciones de memoria
	Inst_Generador_magen: Generador_magen PORT MAP(
		columna_in => columna ,
		fila_in => fila ,
		addr_out => addr 
	);
--Habilitdor de rom y mux
	Inst_selector_img: selector_img PORT MAP(
		no_img =>img_selector ,
		rom_enable_0 => ena_0,
		rom_enable_1 => ena_1,
		rom_enable_2 => ena_2 ,
		rom_enable_3 => ena_3,
		rom_enable_4 => ena_4,
		rom_enable_5 => ena_5,
		rom_enable_6 => ena_6,
		rom_enable_7 => ena_7,
		rom_enable_8 => ena_8,
		rom_enable_9 => ena_9,
		rom_enable_10 => ena_10,
		rom_enable_11 => ena_11,
		rom_enable_12 => ena_12,
		rom_enable_13 => ena_13,
		rom_enable_14 => ena_14,
		rom_enable_15 => ena_15,
		mux_img_selector => mux_selector_memoria
	);

------------------------------------------------------------------------
------------------------------------------------------------------------	
--ROM 0
	Inst_rom_0: rom_0 PORT MAP(
		CLK => clk_25,
		EN => ena_0,
		ADDR => addr,
		DATA => dato_addr_rom_0
	);
--ROM 1
	Inst_rom_1: rom_1 PORT MAP(
		CLK => clk_25,
		EN => ena_1,
		ADDR => addr,
		DATA =>dato_addr_rom_1 
	);
--ROM 2
		Inst_rom_2: rom_2 PORT MAP(
		CLK => clk_25 ,
		EN => ena_2 ,
		ADDR => addr,
		DATA => dato_addr_rom_2
	);
--ROM 3

	Inst_rom_3: rom_3 PORT MAP(
		CLK => clk_25,
		EN => ena_3 ,
		ADDR => addr,
		DATA => dato_addr_rom_3
	);
--ROM 4
	Inst_rom_4: rom_4 PORT MAP(
		CLK =>clk_25 ,
		EN => ena_4,
		ADDR => addr ,
		DATA => dato_addr_rom_4
	);
--ROM 5
	Inst_rom_5: rom_5 PORT MAP(
		CLK =>clk_25 ,
		EN => ena_5 ,
		ADDR => addr,
		DATA => dato_addr_rom_5
	);
--ROM 6
	Inst_rom_6: rom_6 PORT MAP(
		CLK =>clk_25 ,
		EN => ena_6 ,
		ADDR => addr,
		DATA => dato_addr_rom_6
	);
--ROM 7
	Inst_rom_7: rom_7 PORT MAP(
		CLK =>clk_25 ,
		EN => ena_7,
		ADDR => addr,
		DATA => dato_addr_rom_7
	);
--ROM 8
	Inst_rom_8: rom_8 PORT MAP(
		CLK =>clk_25 ,
		EN => ena_8,
		ADDR => addr,
		DATA => dato_addr_rom_8
	);
--ROM 9
	Inst_rom_9: rom_9 PORT MAP(
		CLK =>clk_25 ,
		EN => ena_9 ,
		ADDR => addr ,
		DATA => dato_addr_rom_9
	);
--ROM 10
	Inst_rom_10: rom_10 PORT MAP(
		CLK =>clk_25 ,
		EN => ena_10 ,
		ADDR => addr,
		DATA => dato_addr_rom_10
	);
--ROM 11
	Inst_rom_11: rom_11 PORT MAP(
		CLK => clk_25,
		EN => ena_11 ,
		ADDR =>addr ,
		DATA => dato_addr_rom_11
	);
--ROM 12
	Inst_rom_12: rom_12 PORT MAP(
		CLK =>clk_25 ,
		EN => ena_12 ,
		ADDR =>addr ,
		DATA => dato_addr_rom_12
	);
--ROM 13
	Inst_rom_13: rom_13 PORT MAP(
		CLK =>clk_25 ,
		EN => ena_13 ,
		ADDR => addr,
		DATA => dato_addr_rom_13
	);
--ROM 14
	Inst_rom_14: rom_14 PORT MAP(
		CLK =>clk_25 ,
		EN => ena_14 ,
		ADDR => addr,
		DATA => dato_addr_rom_14
	);
--ROM 15
	Inst_rom_15: rom_15 PORT MAP(
		CLK =>clk_25 ,
		EN => ena_15,
		ADDR =>addr ,
		DATA => dato_addr_rom_15
	);
--ROM 16
	Inst_rom_16: rom_16 PORT MAP(
		CLK =>clk_25 ,
		EN => ena_16,
		ADDR =>addr ,
		DATA => dato_addr_rom_16
	);
------------------------------------------------------------------------
------------------------------------------------------------------------
	Inst_mux_rom: mux_rom PORT MAP(
		mux_selector_in => mux_selector_memoria ,
		rom_0 => dato_addr_rom_0,
		rom_1 => dato_addr_rom_1,
		rom_2 => dato_addr_rom_2,
		rom_3 => dato_addr_rom_3,
		rom_4 => dato_addr_rom_4,
		rom_5 => dato_addr_rom_5,
		rom_6 => dato_addr_rom_6,
		rom_7 => dato_addr_rom_7,
		rom_8 => dato_addr_rom_8,
		rom_9 => dato_addr_rom_9,
		rom_10 => dato_addr_rom_10,
		rom_11 => dato_addr_rom_11,
		rom_12 => dato_addr_rom_12,
		rom_13 => dato_addr_rom_13,
		rom_14 => dato_addr_rom_14,
		rom_15 => dato_addr_rom_15,
		mux_data_out => mux_data_out
	);

	
---------------------------------------------------------------------


	Inst_Desplegador: Desplegador PORT MAP(
		en_desplegador => ena ,
		rgb_dato => mux_data_out,
		red => Red,
		green => Green ,
		blue => blue 
	);


--	columna: out std_logic_vector(1023 downto 0);
--	fila: out std_logic_vector(511 downto 0);
end Behavioral;

