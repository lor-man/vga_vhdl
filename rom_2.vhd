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

entity rom_2 is
port(
		CLK : in std_logic;
      EN : in std_logic;
      ADDR : in std_logic_vector(0 to 7) ;--std_logic_vector(524287 downto 0);
      DATA : out std_logic_vector(7 downto 0)
		);
end rom_2;

architecture Behavioral of rom_2 is

    type rom_type is array (0 to 255) of std_logic_vector (7 downto 0); 
	     constant ROM : rom_type:=( X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",
X"FF",X"24",X"FF",X"FF",X"00",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"24",X"FF",X"FF",X"24",X"FF",
X"FF",X"00",X"FF",X"FF",X"00",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"24",X"FF",X"FF",X"24",X"FF",
X"FF",X"00",X"FF",X"FF",X"24",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"00",X"FF",X"FF",X"24",X"FF",
X"FF",X"FF",X"24",X"FF",X"FF",X"24",X"FF",X"FF",X"FF",X"FF",X"24",X"FF",X"FF",X"00",X"FF",X"FF",
X"FF",X"FF",X"FF",X"24",X"FF",X"24",X"24",X"24",X"00",X"00",X"24",X"FF",X"24",X"FF",X"FF",X"FF",
X"FF",X"FF",X"FF",X"FF",X"64",X"43",X"47",X"43",X"43",X"43",X"43",X"00",X"FF",X"FF",X"FF",X"FF",
X"FF",X"FF",X"FF",X"00",X"E8",X"E8",X"FF",X"47",X"47",X"FF",X"E8",X"ED",X"24",X"FF",X"FF",X"FF",
X"FF",X"FF",X"00",X"E8",X"E8",X"E8",X"FF",X"43",X"43",X"FF",X"E8",X"E8",X"E8",X"64",X"FF",X"FF",
X"FF",X"24",X"E8",X"E4",X"E8",X"E8",X"BC",X"FF",X"FF",X"BC",X"E8",X"E8",X"ED",X"E8",X"00",X"FF",
X"FF",X"00",X"E4",X"E4",X"E8",X"BC",X"F1",X"EC",X"F1",X"F1",X"BC",X"E8",X"E8",X"E8",X"00",X"FF",
X"FF",X"FF",X"24",X"E8",X"BD",X"E8",X"F1",X"EC",X"EC",X"F1",X"E8",X"BC",X"E8",X"24",X"FF",X"FF",
X"FF",X"FF",X"FF",X"24",X"E8",X"E4",X"EC",X"EC",X"EC",X"EC",X"E8",X"E8",X"64",X"FF",X"FF",X"FF",
X"FF",X"FF",X"FF",X"FF",X"24",X"24",X"00",X"00",X"20",X"20",X"00",X"24",X"FF",X"FF",X"FF",X"FF",
X"FF",X"FF",X"FF",X"FF",X"24",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"00",X"FF",X"FF",X"FF",X"FF",
X"FF",X"FF",X"FF",X"FF",X"24",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"24",X"FF",X"FF",X"FF",X"FF");

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