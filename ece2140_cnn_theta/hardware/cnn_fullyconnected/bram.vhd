-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
use IEEE.NUMERIC_STD.ALL;
use std.textio.all;
use work.txt_util.all;

entity bram is
	generic (WIDTH: integer := 16; DEPTH: integer := 4);
	port (
	clk				: in STD_LOGIC;
	enable			: in STD_LOGIC;
		
	write_enable	: in STD_LOGIC;
	addr_write 		: in STD_LOGIC_VECTOR(DEPTH - 1 downto 0);
	data_in 		: in STD_LOGIC_VECTOR(WIDTH - 1 DOWNTO 0);
	
	read_enable		: in STD_LOGIC;
	addr_read		: in STD_LOGIC_VECTOR(DEPTH - 1 downto 0);
	data_out		: out STD_LOGIC_VECTOR(WIDTH - 1 DOWNTO 0)
	
	);
end entity;

architecture behavior of bram is 

    type RAM_array is array (0 to 2**DEPTH - 1) of STD_LOGIC_VECTOR(WIDTH - 1 DOWNTO 0);
    
    impure function InitRamFromFile(RamFileName: in string) return RAM_array is
        FILE input_file: text;
        variable rdata: line;
        variable word: std_logic_vector(63 downto 0);
        variable raminit: RAM_array;
        variable i: integer;
        begin
        file_open(input_file, RamFileName, READ_MODE);
        i := 0;
        while not endfile(input_file) loop
            readline(input_file, rdata);
            hread(rdata, word);
            raminit(i) := word;
            i := i + 1;
        end loop;
    return raminit;
    end function;
   
	signal RAM: RAM_array := InitRamFromFile("C:/Users/Darius/FC/exponential_input.txt");
	
	begin
	
	process (clk, enable)
	begin
		if enable = '1' then 
			if rising_edge(clk) then 
				if write_enable = '1' then
					RAM(to_integer(unsigned(addr_write))) <= data_in;
				end if;
			end if;
		end if;				
	end process;
	
	process (clk, enable)
	begin
		if enable = '1' then 
			if rising_edge(clk) then 
				if read_enable = '1' then
					data_out <= RAM(to_integer(unsigned(addr_read)));
				end if;
			end if;
		end if;				
	end process;

	end architecture;
    architecture rtl of bram is 
    
        type RAM_array is array (0 to 2**DEPTH - 1) of STD_LOGIC_VECTOR(WIDTH - 1 DOWNTO 0);
        signal RAM: RAM_array;
        
        begin
        
        process (clk, enable)
        begin
            if enable = '1' then 
                if rising_edge(clk) then 
                    if write_enable = '1' then
                        RAM(to_integer(unsigned(addr_write))) <= data_in;
                    end if;
                end if;
            end if;                
        end process;
        
        process (clk, enable)
        begin
            if enable = '1' then 
                if rising_edge(clk) then 
                    if read_enable = '1' then
                        data_out <= RAM(to_integer(unsigned(addr_read)));
                    end if;
                end if;
            end if;                
        end process;
    
        end architecture;
