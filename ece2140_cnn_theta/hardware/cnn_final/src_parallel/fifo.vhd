---------------------------------------------------------------------------
-- By Wen
-- Implementing FIFO and pooling layer
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

entity fifo is
    port(
        clk : in STD_LOGIC;
        rst : in STD_LOGIC;
        wr_en1 : in STD_LOGIC;
        --rd_en1 : in STD_LOGIC;
        wr_en2 : in STD_LOGIC;
        --rd_en2 : in STD_LOGIC;
        data_in1 : in STD_LOGIC_VECTOR (15 downto 0);
        --data_out1 : out STD_LOGIC_VECTOR (15 downto 0);
        data_in2 : in STD_LOGIC_VECTOR (15 downto 0);
        --data_out2 : out STD_LOGIC_VECTOR (15 downto 0);
        data_label : out STD_LOGIC_VECTOR (15 downto 0);
        --empty1 : out STD_LOGIC;
        --full1 : out STD_LOGIC;
        --empty2 : out STD_LOGIC;
        --full2 : out STD_LOGIC;
        --empty : out STD_LOGIC;
        full : out STD_LOGIC        
        );
end fifo;

architecture behavioral of fifo is

    signal all_full : STD_LOGIC;
    signal all_full_q : STD_LOGIC;
	type fifo_mem is array (0 to 1) of STD_LOGIC_VECTOR (15 downto 0);

    signal mem1 : fifo_mem;
    signal mem2 : fifo_mem;

    signal fifo_head1: STD_LOGIC;
    signal fifo_loop1: STD_LOGIC;
    signal fifo_head2: STD_LOGIC;
    signal fifo_loop2: STD_LOGIC;
    signal mem1_full: STD_LOGIC;
    signal mem2_full: STD_LOGIC;
    signal mem1_empty: STD_LOGIC;
    signal mem2_empty: STD_LOGIC;     
	type fifo_mem_int is array (0 to 3) of integer;
	signal mem_int : fifo_mem_int;
	signal fifo_max: integer range 0 to 3;
	signal j : integer range 0 to 3;
        
    constant flush_fifo: STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";

	
begin

    reg: process(clk)
    begin
    
        if (clk'event and clk = '1') then
        

            full <= all_full;
        end if;
    end process;

	
	fifo_proc1: process (clk, rst)
	begin
		if (rst = '1') then
            fifo_head1 <= '0';
            fifo_loop1 <= '0';
            mem1_full <= '0';
            mem1_empty <= '1';
            for m in 0 to 1 loop
                mem1(m) <= flush_fifo;
            end loop;
		elsif (clk'event and clk = '1') then 
            if (wr_en1 = '1') then
                -- Not empty fifo
                if all_full = '1' then
                   for m in 0 to 1 loop
                       mem1(m) <= flush_fifo;
                   --  mem2(m) <= flush_fifo;
                   end loop;               
                elsif ((fifo_loop1 = '0') or (fifo_head1 /= '0')) then                
                    if(fifo_head1 = '1') then
                        mem1(1) <= data_in1;
                    elsif(fifo_head1 = '0') then
                        mem1(0) <= data_in1;
                    end if;
                    --mem1(fifo_head1) <= data_in1;
                    if (fifo_head1 = '1') then
                        fifo_head1 <= '0';
                        fifo_loop1 <= '1';
                    else
                        --fifo_head1 := fifo_head1 + 1;
                        if(fifo_head1 = '1') then
                            fifo_head1 <= '0';

                        elsif(fifo_head1 = '0') then
                            fifo_head1 <= '1';
                        end if;
                    end if;
                end if;
            end if;
            if all_full = '1' then
            	mem1_full <= '0';
            	
                fifo_head1 <= '0';
                fifo_loop1 <= '0';
                 --fifo_head2 <= '0';
              --   fifo_loop2 <= '0';
         --        mem1_full <= '0';
                 mem1_empty <= '1';
             --    mem2_full <= '0';
               --  mem2_empty <= '1';
            elsif( fifo_head1 = '0') then
                if fifo_loop1 = '1' then
                    mem1_full <= '1';
                else
                    mem1_empty <= '1';
                end if;
            else

                mem1_full <= '0';
                mem1_empty <= '0';
            end if;					
		end if;	
	end process;
	-----------------------------------------------------------------
	fifo_proc2: process (clk, rst)
	
	begin
		if (rst = '1') then
            fifo_head2 <= '0';
            fifo_loop2 <= '0';
            mem2_full <= '0';
            mem2_empty <= '1';
            for m in 0 to 1 loop
                mem2(m) <= flush_fifo;
            end loop;
        elsif (clk'event and clk = '1') then     			
            if (wr_en2 = '1') then
                -- Not empty fifo
                if all_full = '1' then
                   for m in 0 to 1 loop
                       --mem1(m) <= flush_fifo;
                       mem2(m) <= flush_fifo;
                   end loop;
                elsif ((fifo_loop2 = '0') or (fifo_head2 /= '0')) then
                    if(fifo_head2 = '1') then
                        mem2(1) <= data_in2;
                    elsif(fifo_head2 = '0') then
                        mem2(0) <= data_in2;
                    end if;
                    --mem2(fifo_head2) <= data_in2;
                    if (fifo_head2 = '1') then
                        fifo_head2 <= '0';
                        fifo_loop2 <= '1';
                    else
                        if(fifo_head2 = '1') then
                            fifo_head2 <= '0';

                        elsif(fifo_head2 = '0') then
                            fifo_head2 <= '1';
                        end if;
                    
                    
                        --fifo_head2 := fifo_head2 + 1;
                    end if;
                end if;
            end if;	
            
            if all_full = '1' then               
                 fifo_head2 <= '0';
                 fifo_loop2 <= '0';
                 mem2_full <= '0';
                 mem2_empty <= '1';	
            elsif( fifo_head2 = '0') then
                if fifo_loop2 = '1' then
                    mem2_full <= '1';
                else
                    mem2_empty <= '1';
                end if;
            else
                mem2_full <= '0';
                mem2_empty <= '0';
            end if;				
		end if;	
	end process;
	-----------------------------------------------------------------
	pooling_proc: process (clk, rst)
	begin
        if (rst = '1') then
            all_full <= '0';
            for k in 0 to 3 loop
                mem_int(k) <=0;
            end loop;
            data_label <= (others => '0');
        elsif (clk'event and clk = '1') then
            if(mem1_full = '1') and (mem2_full = '1') then
                for i in 0 to 1 loop
                    mem_int(i) <= to_integer(signed(mem1(i)));
                end loop;
                for i in 0 to 1 loop
                    mem_int(i+2) <= to_integer(signed(mem2(i)));
                end loop;
                --fifo_max <= 0;
                --for j in 0 to 3 loop
                    --if mem_int(j) >= mem_int(fifo_max) then
                        --fifo_max <= j;
                    --end if;
                --end loop;
               if all_full_q = '1' then
                if (fifo_max <= 1) then
                   data_label <= mem1(fifo_max);
               else
                   data_label <= mem2(fifo_max-2);
               end if;
                all_full <= '1';
                end if;

            else
                all_full <= '0';
            end if;
            if(mem1_empty = '1') and (mem2_empty = '1') then
                all_full<= '0';
            end if;

            if (all_full = '1') then
      
                --fifo_head1 <= '0';
               -- fifo_loop1 <= '0';
                --fifo_head2 <= '0';
             --   fifo_loop2 <= '0';
        --        mem1_full <= '0';
          --      mem1_empty <= '1';
            --    mem2_full <= '0';
              --  mem2_empty <= '1';
                for k in 0 to 3 loop
                    mem_int(k) <= 0;
                end loop;
               -- for m in 0 to 1 loop
                  --  mem1(m) <= flush_fifo;
                  --  mem2(m) <= flush_fifo;
               -- end loop;
                all_full <= '0';               
            end if;
		end if;
	end process;
    -----------------------------------------------------------------
    comp_proc: process(clk)
    begin

            --for j in 0 to 3 loop
                if (clk'event and clk = '1') then
                        
                        if(all_full = '1') then
                            fifo_max <= 0;
                            j <= 0;
                            
                        elsif(mem1_full = '1') and (mem2_full = '1') then
                            --fifo_max <= 0;
                                j <= j + 1;
                                all_full_q <= '0';

                                if j = 3 then
                                    j <= 0;
                                    all_full_q <= '1';
                                end if;
                            if to_signed(mem_int(j), 16) >= to_signed(mem_int(fifo_max), 16) then
                                fifo_max <= j;
                            end if;
                        end if;
                 end if;
            --end loop;
    end process;
end behavioral;

