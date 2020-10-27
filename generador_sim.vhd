--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:50:30 10/26/2020
-- Design Name:   
-- Module Name:   /media/omar/Documentos/Archivos v/Cursos/ElbertV2/VGA_controlador/generador_sim.vhd
-- Project Name:  VGA_controlador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Generador_magen
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
 
ENTITY generador_sim IS
END generador_sim;
 
ARCHITECTURE behavior OF generador_sim IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Generador_magen
    PORT(
         en : IN  std_logic;
         columna_in : IN  std_logic_vector(0 to 3);
         fila_in : IN  std_logic_vector(0 to 3);
         addr_out : OUT  std_logic_vector(0 to 7)
        );
    END COMPONENT;
    

   --Inputs
   signal en : std_logic := '0';
   signal columna_in : std_logic_vector(0 to 3) := (others => '0');
   signal fila_in : std_logic_vector(0 to 3) := (others => '0');

 	--Outputs
   signal addr_out : std_logic_vector(0 to 7);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Generador_magen PORT MAP (
          en => en,
          columna_in => columna_in,
          fila_in => fila_in,
          addr_out => addr_out
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
