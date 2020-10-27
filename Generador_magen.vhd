----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:45:53 10/25/2020 
-- Design Name: 
-- Module Name:    Generador_magen - Behavioral 
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
--use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Generador_magen is
generic(
sum: std_logic_vector:="0001";
mult: std_logic_vector:="1111"
);
port(

	columna_in: in std_logic_vector(0 to 3);
	fila_in: in std_logic_vector(0 to 3) ;
	addr_out: out std_logic_vector(0 to 7) 
);
end Generador_magen;
architecture Behavioral of Generador_magen is
	begin
		addr_out<= ((fila_in*mult)+fila_in)+columna_in;	-- para convertir de 2 dimensiones a 1 se usa la siguiente ecuacion
end Behavioral;                                       -- addr=fila*Col_max+columna

