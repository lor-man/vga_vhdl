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
	     constant ROM : rom_type:=(   x"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF"
												,X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF"
												,X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"DB",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF"
												,X"FF",X"FF",X"FF",X"FF",X"FF",X"DB",X"00",X"00",X"00",X"92",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF"
												,X"FF",X"FF",X"FF",X"FF",X"DB",X"24",X"6D",X"92",X"92",X"24",X"92",X"FF",X"FF",X"FF",X"FF",X"FF"
												,X"FF",X"FF",X"FF",X"FF",X"92",X"6D",X"6D",X"FF",X"92",X"6D",X"6D",X"FF",X"FF",X"FF",X"FF",X"FF"
												,X"FF",X"FF",X"FF",X"FF",X"6D",X"92",X"91",X"DA",X"91",X"B6",X"49",X"FF",X"FF",X"FF",X"FF",X"FF"
												,X"FF",X"FF",X"FF",X"6D",X"24",X"DB",X"FF",X"D9",X"FF",X"FF",X"49",X"24",X"FF",X"FF",X"FF",X"FF"
												,X"FF",X"FF",X"FF",X"00",X"49",X"FF",X"FF",X"FF",X"FF",X"FF",X"B6",X"00",X"DB",X"FF",X"FF",X"FF"
												,X"FF",X"FF",X"FF",X"49",X"49",X"FF",X"FF",X"FF",X"FF",X"FF",X"6D",X"00",X"FF",X"FF",X"FF",X"FF"
												,X"FF",X"FF",X"FF",X"FF",X"24",X"92",X"FF",X"FF",X"FF",X"DB",X"24",X"DB",X"FF",X"FF",X"FF",X"FF"
												,X"FF",X"FF",X"FF",X"FF",X"FF",X"D5",X"91",X"49",X"6D",X"D5",X"DB",X"FF",X"FF",X"FF",X"FF",X"FF"
												,X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"DB",X"DB",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF"
												,X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF"
												,X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF"
												,X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF");

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
--manzana jajajaja
--
--											 X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF"
--											,X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF"
--											,X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"DB",X"BB",X"DF",X"4D",X"96",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF"
--											,X"FF",X"FF",X"DB",X"B6",X"71",X"4D",X"9A",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FB",X"D2",X"6D",X"B6",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF"
--											,X"FF",X"FF",X"FF",X"FF",X"FF",X"B2",X"89",X"84",X"84",X"88",X"D2",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FB",X"8D",X"CD",X"A4",X"A4",X"84",X"64",X"FF"
--											,X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"89",X"C9",X"C4",X"C5",X"80",X"64",X"FB",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FB",X"89",X"60",X"80"
--											,X"80",X"80",X"AD",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FB",X"AD",X"89",X"84",X"89",X"D7",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF"
--											,X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF"
--											,X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF",X"FF"
--											,X"FF",X"FF",X"FF",X"FF"