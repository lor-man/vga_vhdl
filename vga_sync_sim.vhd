--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:26:19 10/26/2020
-- Design Name:   
-- Module Name:   /media/omar/Documentos/Archivos v/Cursos/ElbertV2/VGA_controlador/vga_sync_sim.vhd
-- Project Name:  VGA_controlador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: VGA_sync
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
 
ENTITY vga_sync_sim IS
END vga_sync_sim;
 
ARCHITECTURE behavior OF vga_sync_sim IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT VGA_sync
    PORT(
         clk_in : IN  std_logic;
         hsync : OUT  std_logic;
         vsync : OUT  std_logic;
         columna : OUT  std_logic_vector(0 to 3);
         fila : OUT  std_logic_vector(0 to 3);
         enable : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk_in : std_logic := '0';

 	--Outputs
   signal hsync : std_logic;
   signal vsync : std_logic;
   signal columna : std_logic_vector(0 to 3);
   signal fila : std_logic_vector(0 to 3);
   signal enable : std_logic;

   -- Clock period definitions
   constant clk_in_period : time := 40 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: VGA_sync PORT MAP (
          clk_in => clk_in,
          hsync => hsync,
          vsync => vsync,
          columna => columna,
          fila => fila,
          enable => enable
        );

   -- Clock process definitions
   clk_in_process :process
   begin
		clk_in <= '0';
		wait for clk_in_period/2;
		clk_in <= '1';
		wait for clk_in_period/2;
   end process;

END;
