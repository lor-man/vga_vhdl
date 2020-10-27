--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:27:54 10/26/2020
-- Design Name:   
-- Module Name:   /media/omar/Documentos/Archivos v/Cursos/ElbertV2/VGA_controlador/rom_sim.vhd
-- Project Name:  VGA_controlador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: rom_1
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY rom_sim IS
END rom_sim;
 
ARCHITECTURE behavior OF rom_sim IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT rom_1
    PORT(
         CLK : IN  std_logic;
         EN : IN  std_logic;
         ADDR : IN  std_logic;
         DATA : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal EN : std_logic := '0';
   signal ADDR : std_logic := '0';

 	--Outputs
   signal DATA : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: rom_1 PORT MAP (
          CLK => CLK,
          EN => EN,
          ADDR => ADDR,
          DATA => DATA
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      EN<='1';-- hold reset state for 100 ns.
      wait for 100 ns;	
		ADDR<="00";
		wait for 100 ns;
		ADDR<="01";
		wait for 100 ns;
		ADDR<="11";
		wait for 100 ns;

   end process;

END;
