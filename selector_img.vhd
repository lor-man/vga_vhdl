----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:41:01 10/28/2020 
-- Design Name: 
-- Module Name:    selector_img - Behavioral 
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

entity selector_img is
    Port ( no_img : in  STD_LOGIC_VECTOR (3 downto 0);
           rom_enable_0 : out  STD_LOGIC;
			  rom_enable_1 : out  STD_LOGIC;
			  rom_enable_2 : out  STD_LOGIC;
			  rom_enable_3 : out  STD_LOGIC;
			  rom_enable_4 : out  STD_LOGIC;
			  rom_enable_5 : out  STD_LOGIC;
			  rom_enable_6 : out  STD_LOGIC;
			  rom_enable_7 : out  STD_LOGIC;
			  rom_enable_8 : out  STD_LOGIC;
			  rom_enable_9 : out  STD_LOGIC;
			  rom_enable_10 : out  STD_LOGIC;
			  rom_enable_11 : out  STD_LOGIC;
			  rom_enable_12 : out  STD_LOGIC;
			  rom_enable_13 : out  STD_LOGIC;
			  rom_enable_14 : out  STD_LOGIC;
			  rom_enable_15 : out  STD_LOGIC;
           mux_img_selector : out  STD_LOGIC_VECTOR (3 downto 0));
end selector_img;

architecture Behavioral of selector_img is
signal rom_enable: std_logic_vector(15 downto 0):="0000000000000000";
begin
with no_img select 
	    rom_enable<= x"0001" when "0000",
						  x"0002" when "0001",
						  x"0004" when "0010",
						  x"0008" when "0011",
						  x"0010" when "0100",
						  x"0020" when "0101",
						  x"0040" when "0110",
						  x"0080" when "0111",
						  x"0100" when "1000",
						  x"0200" when "1001",
						  x"0400" when "1010",
						  x"0800" when "1011",
						  x"1000" when "1100",
						  x"2000" when "1101",
						  x"4000" when "1110",
						  x"8000" when "1111",
						  x"0000" when others;
           rom_enable_0 <= rom_enable(0);
			  rom_enable_1 <= rom_enable(1);
			  rom_enable_2 <= rom_enable(2);
			  rom_enable_3 <= rom_enable(3);
			  rom_enable_4 <= rom_enable(4);
			  rom_enable_5 <= rom_enable(5);
			  rom_enable_6 <= rom_enable(6);
			  rom_enable_7 <= rom_enable(7);
			  rom_enable_8 <= rom_enable(8);
			  rom_enable_9 <= rom_enable(9);
			  rom_enable_10 <= rom_enable(10);
			  rom_enable_11 <= rom_enable(11);
			  rom_enable_12 <= rom_enable(12);
			  rom_enable_13 <= rom_enable(13);
			  rom_enable_14 <= rom_enable(14);
			  rom_enable_15 <= rom_enable(15);
			  
			mux_img_selector<=no_img;
			  

end Behavioral;

