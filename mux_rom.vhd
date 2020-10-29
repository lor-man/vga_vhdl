----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:45:47 10/28/2020 
-- Design Name: 
-- Module Name:    mux_rom - Behavioral 
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

entity mux_rom is
    Port ( mux_selector_in : in  STD_LOGIC_VECTOR (3 downto 0);
           rom_0 : in  STD_LOGIC_VECTOR (7 downto 0);
           rom_1 : in  STD_LOGIC_VECTOR (7 downto 0);
           rom_2 : in  STD_LOGIC_VECTOR (7 downto 0);
           rom_3 : in  STD_LOGIC_VECTOR (7 downto 0);
           rom_4 : in  STD_LOGIC_VECTOR (7 downto 0);
           rom_5 : in  STD_LOGIC_VECTOR (7 downto 0);
           rom_6 : in  STD_LOGIC_VECTOR (7 downto 0);
           rom_7 : in  STD_LOGIC_VECTOR (7 downto 0);
           rom_8 : in  STD_LOGIC_VECTOR (7 downto 0);
           rom_9 : in  STD_LOGIC_VECTOR (7 downto 0);
           rom_10 : in  STD_LOGIC_VECTOR (7 downto 0);
           rom_11 : in  STD_LOGIC_VECTOR (7 downto 0);
           rom_12 : in  STD_LOGIC_VECTOR (7 downto 0);
           rom_13 : in  STD_LOGIC_VECTOR (7 downto 0);
           rom_14 : in  STD_LOGIC_VECTOR (7 downto 0);
           rom_15 : in  STD_LOGIC_VECTOR (7 downto 0);
           mux_data_out : out  STD_LOGIC_VECTOR (7 downto 0));
end mux_rom;

architecture Behavioral of mux_rom is

begin
with mux_selector_in select
	mux_data_out <= rom_0 when "0000",
					    rom_1 when "0001",
						 rom_2 when "0010",
						 rom_3 when "0011",
						 rom_4 when "0100",
						 rom_5 when "0101",
						 rom_6 when "0110",
						 rom_7 when "0111",
						 rom_8 when "1000",
						 rom_9 when "1001",
						 rom_10 when "1010",
						 rom_11 when "1011",
						 rom_12 when "1100",
						 rom_13 when "1101",
						 rom_14 when "1110",
						 rom_15 when "1111",
						 x"00" when others;


end Behavioral;

