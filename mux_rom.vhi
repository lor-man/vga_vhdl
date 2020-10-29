
-- VHDL Instantiation Created from source file mux_rom.vhd -- 23:18:08 10/28/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT mux_rom
	PORT(
		mux_selector_in : IN std_logic_vector(3 downto 0);
		rom_0 : IN std_logic_vector(7 downto 0);
		rom_1 : IN std_logic_vector(7 downto 0);
		rom_2 : IN std_logic_vector(7 downto 0);
		rom_3 : IN std_logic_vector(7 downto 0);
		rom_4 : IN std_logic_vector(7 downto 0);
		rom_5 : IN std_logic_vector(7 downto 0);
		rom_6 : IN std_logic_vector(7 downto 0);
		rom_7 : IN std_logic_vector(7 downto 0);
		rom_8 : IN std_logic_vector(7 downto 0);
		rom_9 : IN std_logic_vector(7 downto 0);
		rom_10 : IN std_logic_vector(7 downto 0);
		rom_11 : IN std_logic_vector(7 downto 0);
		rom_12 : IN std_logic_vector(7 downto 0);
		rom_13 : IN std_logic_vector(7 downto 0);
		rom_14 : IN std_logic_vector(7 downto 0);
		rom_15 : IN std_logic_vector(7 downto 0);          
		mux_data_out : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_mux_rom: mux_rom PORT MAP(
		mux_selector_in => ,
		rom_0 => ,
		rom_1 => ,
		rom_2 => ,
		rom_3 => ,
		rom_4 => ,
		rom_5 => ,
		rom_6 => ,
		rom_7 => ,
		rom_8 => ,
		rom_9 => ,
		rom_10 => ,
		rom_11 => ,
		rom_12 => ,
		rom_13 => ,
		rom_14 => ,
		rom_15 => ,
		mux_data_out => 
	);


