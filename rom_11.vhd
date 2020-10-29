----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:20:49 10/26/2020 
-- Design Name: 
-- Module Name:    rom_2 - Behavioral 
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
use ieee.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;
--paisaje
entity rom_11 is
port(
     CLK : in std_logic;
      EN : in std_logic;
      ADDR : in std_logic_vector(0 to 7) ;
      DATA : out std_logic_vector(7 downto 0)
		);
end rom_11;

architecture Behavioral of rom_11 is

    type rom_type is array (0 to 255) of std_logic_vector (7 downto 0); 
	     constant ROM : rom_type:=(
			X"77",X"FC",X"FC",X"77",X"77",X"77",X"77",X"77",X"77",X"77",X"77",X"77",X"77",X"A4",X"A4",X"77",X"FC",X"FE",X"FE",X"FC",X"77",X"77",X"FF",X"BB",X"DB",X"DB",X"77",X"77",X"A4",X"A4",X"A4",X"A4",
X"FC",X"FE",X"FE",X"FC",X"77",X"77",X"FF",X"FF",X"FF",X"DF",X"77",X"A4",X"A9",X"FF",X"A9",X"A9",X"77",X"FC",X"FC",X"77",X"77",X"77",X"77",X"BB",X"FF",X"97",X"77",X"A4",X"A9",X"A9",X"A9",X"FF",
X"77",X"77",X"77",X"69",X"69",X"69",X"69",X"77",X"77",X"77",X"77",X"A4",X"FF",X"A9",X"A9",X"A9",X"77",X"77",X"6D",X"69",X"6D",X"6D",X"6D",X"6D",X"77",X"77",X"77",X"A4",X"A4",X"49",X"49",X"A4",
X"77",X"77",X"77",X"77",X"69",X"64",X"77",X"77",X"77",X"77",X"77",X"77",X"77",X"69",X"49",X"77",X"77",X"77",X"77",X"77",X"6D",X"64",X"77",X"77",X"77",X"77",X"77",X"77",X"44",X"44",X"44",X"44",
X"77",X"77",X"77",X"77",X"6D",X"64",X"77",X"77",X"77",X"77",X"77",X"44",X"44",X"64",X"64",X"64",X"77",X"77",X"77",X"77",X"6D",X"64",X"77",X"77",X"77",X"77",X"44",X"44",X"64",X"64",X"64",X"64",
X"77",X"77",X"77",X"77",X"6D",X"64",X"44",X"44",X"44",X"44",X"64",X"64",X"6D",X"6D",X"6D",X"6D",X"77",X"77",X"D5",X"D5",X"44",X"44",X"64",X"64",X"64",X"64",X"6D",X"6D",X"92",X"92",X"92",X"92",
X"77",X"D5",X"D5",X"44",X"64",X"64",X"6D",X"6D",X"6D",X"6D",X"92",X"92",X"92",X"92",X"92",X"92",X"D5",X"D5",X"44",X"44",X"64",X"6D",X"92",X"92",X"92",X"92",X"92",X"92",X"92",X"92",X"92",X"92",
X"D5",X"44",X"64",X"6D",X"6D",X"92",X"92",X"92",X"92",X"92",X"92",X"92",X"92",X"92",X"92",X"92",X"44",X"64",X"6D",X"92",X"92",X"92",X"92",X"92",X"92",X"92",X"92",X"92",X"92",X"92",X"92",X"92"
		);

    signal rdata : std_logic_vector(7 downto 0); -- se;al utilizada para obtener un dato de la memoria rom
begin
	 rdata <=  ROM(conv_integer(ADDR));--Asigna el dato de la memria con direccion ADDR obtenidad con el modulo anterior de generador
    process (CLK,ADDR) -- la lectura es sincrona con el reloj de 25MHz
    begin
        if (CLK'event and CLK = '1') then  -- si el reloj tiene una transicion de estado bajo a alto y la memoria esta abilitada entonces
            if (EN = '1') then             -- el valor de la se;al rdata se traslada a la salida de la memoria rom
                DATA <= rdata;
            end if;
        end if;
    end process;
end Behavioral;

