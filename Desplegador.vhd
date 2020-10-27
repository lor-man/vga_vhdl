----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:06:57 10/26/2020 
-- Design Name: 
-- Module Name:    Desplegador - Behavioral 
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
entity Desplegador is
port(
	en_desplegador: in std_logic;
	rgb_dato: in std_logic_vector (7 downto 0);
	red,green: out std_logic_vector (2 downto 0);
	blue: out std_logic_vector (2 downto 1));
end Desplegador;

architecture Behavioral of Desplegador is

begin
	process(en_desplegador,rgb_dato) -- si el proceso se encuentra en la parte visible de la pantalla al rededor de 400x400 pixeles
	begin                            -- entonces el dato recibido de la memoria rom se traslada a la salida de los vectores
		if(en_desplegador='1')then    -- Red,Green,Blue el dato en la memoria rom se encuntra guardadod e la siguiente forma
			red(2)<=rgb_dato(7);       --  los 3 bits mas significativos [7:5] son los valores del color rojo
			red(1)<=rgb_dato(6);       --  los 3 bits siguientes [4:2] son los valores del color verde
			red(0)<=rgb_dato(5);       --  los 2 bits finales [1:0] son los valores del color azul
			green(2)<=rgb_dato(4);     --
			green(1)<=rgb_dato(3);
			green(0)<=rgb_dato(2);
			blue(2)<=rgb_dato(1);
			blue(1)<=rgb_dato(0);
		else                         -- si se encuentra en la zona no visible y fuera del marco de 400x400 pixeles entonces se manda una se;la de
			red<="000";               -- un color equivalente al negro
			green<="000";
			blue<="00";
		end if;
	end process;

end Behavioral;

