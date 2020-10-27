--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:53:13 10/26/2020
-- Design Name:   
-- Module Name:   /media/omar/Documentos/Archivos v/Cursos/ElbertV2/VGA_controlador/generador_1sim.vhd
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
 
ENTITY generador_1sim IS
END generador_1sim;
 
ARCHITECTURE behavior OF generador_1sim IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Generador_magen
    PORT(
         --en : IN  std_logic;
         columna_in : IN  std_logic_vector(0 to 3);
         fila_in : IN  std_logic_vector(0 to 3);
         addr_out : OUT  std_logic_vector(0 to 7)
        );
    END COMPONENT;
    

   --Inputs
  -- signal en : std_logic := '0';
   signal columna_in : std_logic_vector(0 to 3) := (others => '0');
   signal fila_in : std_logic_vector(0 to 3) := (others => '0');

 	--Outputs
   signal addr_out : std_logic_vector(0 to 7);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Generador_magen PORT MAP (
         -- en => en,
          columna_in => columna_in,
          fila_in => fila_in,
          addr_out => addr_out
        );

   -- Clock process definitions
  
 

   -- Stimulus process
   stim_proc: process
   begin	
		--en<='1';
      columna_in<="0000";
		fila_in<="0000";
      wait for 100 ns;

      columna_in<="0001";
		fila_in<="0000";
      wait for 100 ns;

      columna_in<="0010";
		fila_in<="0000";
      wait for 100 ns;

      columna_in<="0011";
		fila_in<="0000";
      wait for 100 ns;

      columna_in<="0100";
		fila_in<="0000";
      wait for 100 ns;

      columna_in<="0101";
		fila_in<="0000";
      wait for 100 ns;

      columna_in<="0001";
		fila_in<="0010";
      wait for 100 ns;

      columna_in<="0010";
		fila_in<="1100";
      wait for 100 ns;

      columna_in<="0111";
		fila_in<="1111";
      wait for 100 ns;

      columna_in<="0100";
		fila_in<="0010";
      wait for 100 ns;		

      
   end process;

END;
