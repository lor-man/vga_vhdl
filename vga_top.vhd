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
	enable,HSync,VSync,CLKIN_IBUFG_OUT,CLK0_OUT:out std_logic;
	Red,Green: out std_logic_vector(2 downto 0);
	Blue: out std_logic_vector(2 downto 1)
);
end vga_top;

architecture Behavioral of vga_top is
signal clk_25,ena: std_logic;
signal columna: std_logic_vector (0 to 3);--std_logic_vector (1023 downto 0);
signal fila: std_logic_vector (0 to 3);--std_logic_vector (511 downto 0);
signal addr: std_logic_vector (0 to 7);-- std_logic_vector(524287 downto 0);
signal addr_dato:std_logic_vector(7 downto 0);
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
-------------------------------------------------------------
----Memoria rom donde se almacena una imagen de 16x16 pixeles
	COMPONENT rom_2
	PORT(
		CLK : IN std_logic;
		EN : IN std_logic;
		ADDR : IN std_logic_vector(0 to 7);          
		DATA : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
-------------------------------------------------------------	
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
		Inst_vga_clk_25: vga_clk_25 PORT MAP(
		CLKIN_IN => clk_12 ,
		CLKFX_OUT => clk_25 ,
		CLKIN_IBUFG_OUT => CLKIN_IBUFG_OUT ,
		CLK0_OUT => CLK0_OUT
	);

	Inst_VGA_sync: VGA_sync PORT MAP(
		clk_in => clk_25 ,
		hsync =>HSync ,
		vsync =>VSync ,
		columna => columna ,
		fila => fila ,
		enable => ena
	);
	
	Inst_Generador_magen: Generador_magen PORT MAP(
		--en => ena,
		columna_in => columna ,
		fila_in => fila ,
		addr_out => addr 
	);
	
		Inst_rom_2: rom_2 PORT MAP(
		CLK => clk_25 ,
		EN => ena ,
		ADDR => addr,
		DATA => addr_dato
	);


	Inst_Desplegador: Desplegador PORT MAP(
		en_desplegador => ena ,
		rgb_dato => addr_dato ,
		red => Red,
		green => Green ,
		blue => blue 
	);

 enable<=ena;
--	columna: out std_logic_vector(1023 downto 0);
--	fila: out std_logic_vector(511 downto 0);
end Behavioral;

