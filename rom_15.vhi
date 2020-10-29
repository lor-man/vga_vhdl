
-- VHDL Instantiation Created from source file rom_15.vhd -- 22:59:02 10/28/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT rom_15
	PORT(
		CLK : IN std_logic;
		EN : IN std_logic;
		ADDR : IN std_logic_vector(0 to 7);          
		DATA : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_rom_15: rom_15 PORT MAP(
		CLK => ,
		EN => ,
		ADDR => ,
		DATA => 
	);


