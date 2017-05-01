---------------------------------------------------------------------------
-- By Wen
-- Implementing STD TESTBENCH for FIFO and pooling layer
-- Labeling the maximum data for every four neighbouring pixels
-- Refer to: 
-- 1. http://www.deathbylogic.com/2013/07/vhdl-standard-fifo/
-- 2. https://www.csee.umbc.edu/portal/help/VHDL/
-- 3. http://www.eng.auburn.edu/~strouce/class/elec4200/vhdlmods.pdf
-- 4. http://electronics.stackexchange.com/questions/4482/vhdl-converting-from-an-integer-type-to-a-std-logic-vector
-- 5. https://www.xilinx.com/support/answers/45213.html
-- 6. http://www.bitweenie.com/listings/vhdl-type-conversion/
---------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_fifo is
end tb_fifo;

architecture behavioral of tb_fifo is

    component fifo
        port(
        clk : in STD_LOGIC;
        rst : in STD_LOGIC;
        wr_en1 : in STD_LOGIC;
        wr_en2 : in STD_LOGIC;
        data_in1 : in STD_LOGIC_VECTOR (15 downto 0);
        data_in2 : in STD_LOGIC_VECTOR (15 downto 0);
        data_label : out STD_LOGIC_VECTOR (15 downto 0);

        full : out STD_LOGIC        
        );
    end component;


    signal clk : STD_LOGIC := '0';
    signal rst : STD_LOGIC := '0';
    signal wr_en1 :  STD_LOGIC :='0';
    signal wr_en2 :  STD_LOGIC :='0';
    signal data_in1 :  STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
    signal data_in2 :  STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
    signal data_label : STD_LOGIC_VECTOR (15 downto 0);

    signal full : STD_LOGIC;
       
    constant clk_period : time := 10 ns;

begin

    uut: fifo
        port map (
            clk => clk,
            rst => rst,
            data_in1 => data_in1,
            wr_en1 => wr_en1,        
            data_in2 => data_in2,
            wr_en2 => wr_en2,
            data_label => data_label,                
            full => full
                 );
    clk_process : process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

    rst_process : process
    begin
       wait for clk_period * 5;
       rst <= '1';
       wait for clk_period *5;
       rst <= '0';
       wait;

    end process;


	write_process : process
	    variable counter : unsigned (15 downto 0) := (others => '0');
	    constant test_data_first : std_logic_vector (15 downto 0) := "1010000000000010";
	    constant test_data_second : std_logic_vector (15 downto 0) := "1011100000000001";
	    constant test_data_third : std_logic_vector (15 downto 0) := "1000100000001000";
	    constant test_data_fourth : std_logic_vector (15 downto 0) := "1011000000000100";

	begin		
		wait for clk_period * 20;
		for i in 1 to 3 loop
			counter := counter + 1;
			data_in1 <= std_logic_vector(counter);
			wait for clk_period * 1;
			data_in2 <= std_logic_vector(counter+3);

			wait for clk_period * 1;
			data_in1 <= test_data_first;
			wait for clk_period * 1;
			data_in1 <= test_data_third;


			wr_en1 <= '1';
			wait for clk_period * 1;
			data_in2 <= test_data_second;
			wait for clk_period * 1;

            data_in2 <= test_data_fourth;
			wr_en2 <= '1';
			wait for clk_period * 1;
			wr_en1 <= '0';
			wait for clk_period * 1;

			wr_en2 <= '0';
		end loop;
		
		wait for clk_period * 5;
		

            data_in1 <= test_data_first;
            wait for clk_period * 1;
            wr_en1 <= '1';
            wait for clk_period * 1;
            wr_en1 <= '0';

            data_in2 <= test_data_second;
            wait for clk_period * 1;
            wr_en2 <= '1';
            wait for clk_period * 1;
            wr_en2 <= '0';

            
            data_in1 <= test_data_third;
            wait for clk_period * 1;
            wr_en1 <= '1';
            wait for clk_period * 1;
            wr_en1 <= '0';
            
            data_in2 <= test_data_fourth;
            wait for clk_period * 1;
            wr_en2 <= '1';
            wait for clk_period * 1;
            wr_en2 <= '0';
        
		wait for clk_period * 10;
		
		for i in 1 to 32 loop
			counter := counter + 1;
			data_in1 <= std_logic_vector(counter);
			wait for clk_period * 5;
			data_in2 <= std_logic_vector(counter+5);

			wait for clk_period * 1;
			wr_en1 <= '1';
			wait for clk_period * 1;
			wr_en1 <= '0';
			wait for clk_period * 1;
            wr_en2 <= '1';
            wait for clk_period * 1;
            wr_en2 <= '0';
		end loop;
		
		wait;
	end process;
end behavioral;

