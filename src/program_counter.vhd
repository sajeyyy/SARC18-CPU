----------------------------------------------------------------------------------
-- File        : program_counter.vhd
-- Author      : Saje Cowell
--
-- Description : Program Counter for the CPU which is a basic DFF
--
--
-- Inputs      : next_pc - Recieve the next PC which will incremented by 1 or jump
--               clk  - Global clock
--               rst  - Global reset
--
-- Outputs     : pc_out - Provides the ROM the next instruction to read
--
-- Dependencies:
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.NUMERIC_STD.ALL;

entity program_counter is
    Port ( 
           clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           next_pc : in std_logic_vector(7 downto 0); -- Next PC
           pc_out : out std_logic_vector(7 downto 0) -- Updated PC
          );
end program_counter;

architecture Behavioral of program_counter is

begin
    
    process(clk)
        begin
            if(rst = '1') then
                pc_out <= (others => '0');     
            elsif rising_edge(clk) then
                pc_out <= next_pc;
            end if;
    end process;
    
end Behavioral;
