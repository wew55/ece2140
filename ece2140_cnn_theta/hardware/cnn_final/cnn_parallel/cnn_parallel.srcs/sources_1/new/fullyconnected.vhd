----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.03.2017 15:17:27
-- Design Name: 
-- Module Name: fullyconnected - rtl
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fullyconnected is
Port (	
   input: in std_logic_vector(15 downto 0);
   mode_sel: in STD_logic;
   valid_in: in STD_logic;
   valid_out: out STD_logic;
   output: out std_logic_vector(15 downto 0)
   );
end fullyconnected;

architecture behavioral of fullyconnected is
    
    begin
    
    relu: process(input, valid_in, mode_sel)
          begin
            if valid_in = '1' then
                  if mode_sel = '1' then
                      if input(15) = '1' then
                            output <= (others => '0');
                      else
                            output <= input;
                      end if;
                  else
                      output <= input;
                  end if;
                  valid_out <= valid_in;
            else
                  output <= (others => '0');
                  valid_out <= '0';
            end if; 
          end process;
    
end behavioral;