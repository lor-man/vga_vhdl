----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:09:48 10/25/2020 
-- Design Name: 
-- Module Name:    rom_1 - Behavioral 
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
use std.textio.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity rom_1 is
	port(
		CLK : in std_logic;
      EN : in std_logic;
      ADDR : in integer range 0 to 524287 ;--std_logic_vector(524287 downto 0);
      DATA : out std_logic_vector(7 downto 0)
		);
end rom_1;

architecture Behavioral of rom_1 is
    type rom_type is array (0 to 307200) of std_logic_vector (7 downto 0); 
	     signal ROM : rom_type;
		  attribute ram_init_file: string;
		  attribute ram_init_file of ROM: signal is "ciudad.coe";
    signal rdata : std_logic_vector(7 downto 0);
begin
    rdata <= ROM(ADDR);--conv_integer(ADDR)

    process (CLK)
    begin
        if (CLK'event and CLK = '1') then
            if (EN = '1') then
                DATA <= rdata;
            end if;
        end if;
    end process;

end Behavioral;

