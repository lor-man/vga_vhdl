--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:46:44 10/26/2020
-- Design Name:   
-- Module Name:   /media/omar/Documentos/Archivos v/Cursos/ElbertV2/VGA_controlador/rom_1_sim.vhd
-- Project Name:  VGA_controlador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: rom_2
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
 
ENTITY rom_1_sim IS
END rom_1_sim;
 
ARCHITECTURE behavior OF rom_1_sim IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT rom_2
    PORT(
         CLK : IN  std_logic;
         EN : IN  std_logic;
         ADDR : IN  std_logic_vector(0 to 7);
         DATA : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal EN : std_logic := '0';
   signal ADDR : std_logic_vector(0 to 7) := (others => '0');

 	--Outputs
   signal DATA : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: rom_2 PORT MAP (
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
		EN<='1';
		ADDR<="00000000";
      wait for 100 ns;	
		ADDR<="00000001";
      wait for 100 ns;	

		ADDR<="00000010";
      wait for 100 ns;	

		ADDR<="00000011";
      wait for 100 ns;	

		ADDR<="00000100";
      wait for 100 ns;	

		ADDR<="00000101";
      wait for 100 ns;	

		ADDR<="00000111";
      wait for 100 ns;	


   end process;

END;
