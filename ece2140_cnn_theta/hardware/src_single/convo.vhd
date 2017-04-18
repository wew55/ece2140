-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity convo is 
port (
    weight: in std_logic_vector(15 downto 0);
    input: in std_logic_vector(15 downto 0);
    bias: in std_logic_vector(15 downto 0);
    output: out std_logic_vector(15 downto 0);
    clk: in STD_logic;
    rst: in STD_logic;
    next_output: in STD_logic;
    enable: in STD_logic;
    valid_in: in STD_logic;
    valid_out: out STD_logic
    );
end convo;

architecture rtl of convo is 
    signal sum_out: std_logic_vector(15 downto 0);
    signal sum_in: std_logic_vector(15 downto 0);
    signal temp_sum_in: std_logic_vector(15 downto 0);
    signal mult_out: std_logic_vector(15 downto 0);
    signal mult_out_shift: std_logic_vector(31 downto 0);
    signal mult_in_input: std_logic_vector(15 downto 0);
    signal mult_in_weight: std_logic_vector(15 downto 0);
    signal reg_bias: std_logic_vector(15 downto 0);
    signal temp_output: std_logic_vector(15 downto 0);
    signal valid_q: STD_logic;
    signal valid_qq: STD_logic;
    signal valid_qqq: STD_logic;
    signal valid: STD_logic;
	--we register next output
    signal next_output_q: STD_LOGIC;
    signal next_output_qq: STD_LOGIC;
    signal next_output_qqq: STD_LOGIC;
     signal next_output_qqqq: STD_LOGIC;
     signal next_output_qqqqq: STD_LOGIC;
     
    COMPONENT mult_gen_0 PORT( A : IN std_logic_vector(15 downto 0);
                               B : In std_logic_vector(15 downto 0);
                               P : OUT std_logic_vector(31 downto 0)
                               --CLK : IN std_logic
                               ); 
     END COMPONENT;
    COMPONENT c_addsub_0 PORT( A : IN std_logic_vector(15 downto 0);
                                B : In std_logic_vector(15 downto 0);
                                S : OUT std_logic_vector(15 downto 0)
                                --CLK : IN std_logic
                                ); 
      END COMPONENT;
    begin
    
        m1 : mult_gen_0 port map(A => mult_in_input,
                                 B => mult_in_weight,
                                 P => mult_out_shift
                                 --CLK => clk
                                );
        process(mult_out_shift)
        begin
            if (mult_out_shift(30 downto 27) = "0000" and mult_out_shift(31) = '1') then
                mult_out <= mult_out_shift(31) & "000" & mult_out_shift(23 downto 12);
           elsif (mult_out_shift(30 downto 27) = "1111" and mult_out_shift(31) = '0') then 
                mult_out <= mult_out_shift(31) & "111" & mult_out_shift(23 downto 12); 
	       else 
	          mult_out <= mult_out_shift(31) & mult_out_shift(26 downto 24) & mult_out_shift(23 downto 12);
	       end if;
	   end process;
	                     
        add1 : c_addsub_0 port map(A => temp_sum_in,
                                 B => sum_in,
                                 S => sum_out
                                 --CLK => clk
                                 );
                
        reg_3: process(clk, rst)
        begin
            if rst = '1' then
                temp_output <= (others => '0');
                valid_q <= '0';
                 next_output_qqq <= '0';
                  next_output_qqqq <= '0';
                  next_output_qqqqq <= '0'; 
            elsif rising_edge(clk) then
            next_output_qqq <= next_output_qq;
            next_output_qqqq <=next_output_qqq;
            next_output_qqqqq <= next_output_qqqq;
		if enable = '1' then
		  if valid_qq = '1' or next_output_qqqq = '1' then
            temp_output <= sum_out; 
           end if;  
			if valid_in = '1' then 
                valid_q <= valid_in;
			else 
				valid_q <= '0';
			end if;
		end if;
            end if;
        end process;
        
        reg_2: process(clk, rst)
        begin
            if rst = '1' then
                sum_in <= (others => '0');
                reg_bias <= (others => '0');
                valid_qq <= '0';
                 next_output_qq <= '0';
            elsif rising_edge(clk) then
            next_output_qq <= next_output_q;
		if enable = '1' then
		            reg_bias <= bias;
		  --if Next_output_qqq = '1' then 
		      --sum_in <= (others => '0');
		  if valid_q = '1' then
              sum_in <= mult_out;
          end if;      	
                	valid_qq <= valid_q;
		end if;
            end if;
        end process;
             
        reg_1: process(clk, rst)
        begin
            if rst = '1' then
                mult_in_input <= (others => '0');
                mult_in_weight <= (others => '0');
                valid_qqq <= '0';
                next_output_q <= '0';
            elsif rising_edge(clk) then
            next_output_q <= next_output;
		if enable = '1' then
		  if valid_in = '1' then
                	mult_in_input <= input;
                	mult_in_weight <= weight;
           end if;     	
                valid_qqq <= valid_qq;
		end if;
            end if;
        end process;
        
        --multiply: process(mult_in_input, mult_in_weight)
            --begin
                --mult_out <= std_logic_vector(to_signed(to_integer(signed(mult_in_input)) * to_integer(signed(mult_in_weight)),16));
            --end process;
            
        mux: process(reg_bias, next_output_qqqq, temp_output)
            begin
                if next_output_qqqq = '1' then
                    temp_sum_in <= reg_bias;
                else
                    assert (next_output = '0') report "next_output is undefined" severity error;
                    temp_sum_in <= temp_output;
                end if;
            end process;
        
        check: process(valid_qqq, next_output_q)
            begin
                valid <= valid_qqq;
            end process;    
        
        valid_out <= valid and next_output_qqqq;
        --sum_out <= std_logic_vector(to_signed(to_integer(signed(temp_sum_in)) + to_integer(signed(sum_in)),16));
        
        output <= temp_output;
    end rtl;
    
