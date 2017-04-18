-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
use IEEE.NUMERIC_STD.ALL;
use std.textio.all;

use work.txt_util.all;


entity test_top is
end entity;

architecture behavioral of test_top is 
	signal clk: STD_LOGIC := '0';	
	signal rst: STD_LOGIC;
    signal input: std_logic_vector(31 downto 0);
    signal output: std_logic_vector(15 downto 0);
    signal last_input: STD_logic;
    signal enable: STD_logic;
    signal valid_in: STD_logic;
    signal valid_out: STD_logic;
    signal sim_write_enable: STD_logic;
    signal sim_address_write: std_logic_vector(8 downto 0);
    signal sim_data_in: std_logic_vector(63 downto 0);

	begin
    	-- Clock generation: Repeats forever
    clock: process
        begin
            -- Toggle clock signal
            clk <= not(clk);
            -- Wait for half of the clock period
            wait for 5 ns;
    end process;
    
    -- Reset Process
    process
        begin
            rst <= '0';
            -- Wait 1 clock cycle
            wait for 10 ns;
           -- Reset design for 5 clock cycles
            rst <= '1';
            wait for 50 ns;
            rst <= '0';
            -- Wait forever (so reset doesn't occur again)
            wait;
    end process;
    
	fullyconnected: entity work.fullyconnected(behavioral)
        port map(
        clk			=> clk,	
        rst 			=> rst,
        input => input,
        last_input => last_input,
        enable => enable,
        valid_in => valid_in,
        output => output,
        valid_out => valid_out,
        sim_write_enable => sim_write_enable,
        sim_address_write => sim_address_write,
        sim_data_in => sim_data_in
        );
	
	test: process
	       
        FILE input_file_in: text;       
        variable rdata: line;
        variable words: std_logic_vector(31 downto 0);
		
		begin
		
    --Fc
        last_input <= '0';
        enable <= '1';
        valid_in <= '0';
        sim_write_enable <= '0';
        
		wait for 50ns;
        file_open(input_file_in, "C:/Users/Darius/FC/input.txt", READ_MODE);
        wait for 10 ns;
        
        while not endfile(input_file_in) loop 
        wait for 10 ns;
        readline(input_file_in, rdata);
        hread(rdata, words);
        input <= words;
        valid_in <= '1';
        
        end loop;
        wait for 10 ns;
        last_input <= '1';
        valid_in <= '0';
        wait for 10 ns;
        last_input <= '0';
        wait for 100 ns;
        last_input <= '1';
        wait for 10 ns;
        last_input <= '0';
        file_close(input_file_in);
        wait;    

	end process;

		
end architecture;
