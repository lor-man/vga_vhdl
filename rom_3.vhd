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
-- IQ
entity rom_3 is
port(
     CLK : in std_logic;
      EN : in std_logic;
      ADDR : in std_logic_vector(0 to 7) ;
      DATA : out std_logic_vector(7 downto 0)
		);
end rom_3;

architecture Behavioral of rom_3 is

    type rom_type is array (0 to 255) of std_logic_vector (7 downto 0); 
	     constant ROM : rom_type:=(
		  X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"00",
X"00",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"00",X"00",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"D8",X"F8",X"F8",X"F8",X"00",
X"00",X"00",X"00",X"00",X"00",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"00",X"00",X"00",X"00",X"00",X"FF",X"FF",X"FF",X"FF",X"FF",X"00",X"F8",X"F8",X"F8",X"F8",X"00",X"FF",X"FF",X"FF",X"FF",X"FF",
X"FF",X"FF",X"00",X"00",X"FF",X"FF",X"00",X"F8",X"F8",X"00",X"FF",X"FF",X"00",X"00",X"FF",X"FF",X"00",X"FF",X"00",X"FF",X"FF",X"00",X"FF",X"00",X"00",X"FF",X"00",X"FF",X"FF",X"00",X"FF",X"00",
X"00",X"00",X"FF",X"FF",X"00",X"FF",X"00",X"F8",X"F8",X"00",X"FF",X"00",X"FF",X"FF",X"00",X"00",X"00",X"F8",X"00",X"FF",X"FF",X"00",X"F8",X"F8",X"F8",X"F8",X"00",X"FF",X"FF",X"00",X"F8",X"00",
X"00",X"F8",X"F8",X"00",X"00",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"00",X"00",X"F8",X"F8",X"00",X"00",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"00",
X"00",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"00",X"00",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"00",
X"00",X"D8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"F8",X"D8",X"F8",X"D8",X"F8",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00",X"00"
			
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
