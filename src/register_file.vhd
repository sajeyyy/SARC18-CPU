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
            write_en : in std_logic;
            rs_in : in std_logic_vector(3 downto 0);
            rt_in : in std_logic_vector(3 downto 0);
            register_dest : in std_logic_vector(3 downto 0);
            write_data : in std_logic_vector(15 downto 0);
            rs_out : out std_logic_vector(3 downto 0);
            rt_out : out std_logic_vector(3 downto 0)
    );
end register_file;

architecture Behavioral of register_file is

    signal reg_in_1 : unsigned(3 downto 0);
    signal reg_in_2 : unsigned(3 downto 0);
    
begin

    reg_in_1 <= unsigned(rs_in);
    reg_in_2 <= unsigned(rt_in);
    




end Behavioral;
