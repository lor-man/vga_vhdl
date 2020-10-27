--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:47:03 10/24/2020
-- Design Name:   
-- Module Name:   /media/omar/Documentos/Archivos v/Cursos/ElbertV2/VGA_controlador/sim.vhd
-- Project Name:  VGA_controlador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: vga_top
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
 
ENTITY sim IS
END sim;
 
ARCHITECTURE behavior OF sim IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT vga_top
    PORT(
         clk_12 : IN  std_logic;
         enable : OUT  std_logic;
         HSync : OUT  std_logic;
         VSync : OUT  std_logic;
         CLKIN_IBUFG_OUT : OUT  std_logic;
         CLK0_OUT : OUT  std_logic;
         Red : OUT  std_logic_vector(2 downto 0);
         Green : OUT  std_logic_vector(2 downto 0);
         Blue : OUT  std_logic_vector(2 downto 1)
        );
    END COMPONENT;
    

   --Inputs
   signal clk_12 : std_logic := '0';

 	--Outputs
   signal enable : std_logic;
   signal HSync : std_logic;
   signal VSync : std_logic;
   signal CLKIN_IBUFG_OUT : std_logic;
   signal CLK0_OUT : std_logic;
   signal Red : std_logic_vector(2 downto 0);
   signal Green : std_logic_vector(2 downto 0);
   signal Blue : std_logic_vector(2 downto 1);

   -- Clock period definitions
   constant clk_12_period : time := 83.33 ns;
   --constant CLKIN_IBUFG_OUT_period : time := 10 ns;
  -- constant CLK0_OUT_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: vga_top PORT MAP (
          clk_12 => clk_12,
          enable => enable,
          HSync => HSync,
          VSync => VSync,
          CLKIN_IBUFG_OUT => CLKIN_IBUFG_OUT,
          CLK0_OUT => CLK0_OUT,
          Red => Red,
          Green => Green,
          Blue => Blue
        );

   -- Clock process definitions
   clk_12_process :process
   begin
		clk_12 <= '0';
		wait for clk_12_period/2;
		clk_12 <= '1';
		wait for clk_12_period/2;
   end process;
 
--  CLKIN_IBUFG_OUT_process :process
--   begin
--		CLKIN_IBUFG_OUT <= '0';
--		wait for CLKIN_IBUFG_OUT_period/2;
--		CLKIN_IBUFG_OUT <= '1';
--		wait for CLKIN_IBUFG_OUT_period/2;
--  end process;
-- 
--  CLK0_OUT_process :process
--  begin
--		CLK0_OUT <= '0';
--		wait for CLK0_OUT_period/2;
--		CLK0_OUT <= '1';
--		wait for CLK0_OUT_period/2;
--   end process;
 

   -- Stimulus process
--   stim_proc: process
--   begin		
--      -- hold reset state for 100 ns.
--      wait for 100 ns;	

--      wait for clk_12_period*10;

      -- insert stimulus here 

--      wait;
--   end process;

END;
