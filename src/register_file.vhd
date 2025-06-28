----------------------------------------------------------------------------------
-- File        : register_file.vhd
-- Author      : Saje Cowell
--
-- Description : Manages all 16 registers which takes 2 input register sources and a destination register. 
--               Will output the input data to the destination register if write_en is enabled.
--
-- Inputs      : 
--
-- Outputs     : 
--
-- Dependencies: 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity register_file is
    Port (
        clk         : in  std_logic;
        reset       : in  std_logic;
        write_en    : in  std_logic;
        read_addr1  : in  std_logic_vector(3 downto 0);
        read_addr2  : in  std_logic_vector(3 downto 0);
        write_addr  : in  std_logic_vector(3 downto 0);
        write_data  : in  std_logic_vector(15 downto 0);
        read_data1  : out std_logic_vector(15 downto 0);
        read_data2  : out std_logic_vector(15 downto 0)
    );
end register_file;

architecture Behavioral of register_file is

    -- Registers Array: 16 registers each 16 bits wide
    type registers_arr is array (0 to 15) of std_logic_vector(15 downto 0);
    signal registers : registers_arr := (others => (others => '0'));

begin

    read_data1 <= registers(to_integer(unsigned(read_addr1)));
    read_data2 <= registers(to_integer(unsigned(read_addr2)));

    process(clk, reset)
    begin
        if reset = '1' then
            registers <= (others => (others => '0'));
        elsif rising_edge(clk) then
            if write_en = '1' then
                registers(to_integer(unsigned(write_addr))) <= write_data;
            end if;
        end if;
    end process;

end Behavioral;