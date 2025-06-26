----------------------------------------------------------------------------------
-- File        : control_unit.vhd
-- Author      : Saje Cowell
--
-- Description : Uses the opcode and func in order to determine what signals need to be enabled for other components and muxes.
--
-- Inputs      : op_func - 6 bit opcode and func code
--
-- Outputs     : is_Rtype - Returns '1' if opcode is R-Type
--               alu_src - Returns '1' if opcode is I-type
--               pc_src - Returns '1' if opcode is J-type
--               mem_en_read - If I-Type instruction, will return 1 if func is LDR
--               mem_en_write - If I-Type instruction, will return 1 if func is STR
--               reg_en_write - Will enable writing to register file on specific instructions

-- Dependencies:
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity control_unit is
    Port ( 
        op_func : in STD_LOGIC_VECTOR (5 downto 0);
        is_Rtype : out std_logic;
        alu_src : out std_logic;
        pc_src : out std_logic;
        mem_en_read : out std_logic;
        mem_en_write : out std_logic;
        reg_en_write : out std_logic      
    );
end control_unit;

architecture Behavioral of control_unit is

    signal opcode : std_logic_vector(1 downto 0);
    signal func : std_logic_vector(3 downto 0);

begin
    
    opcode <= op_func(5 downto 4);
    func <= op_func(3 downto 0);
    
    
   process(opcode, func)
    begin
        if(opcode = "00") then
            is_Rtype <= '1';
            alu_src <= '0';
            pc_src <= '0';
            reg_en_write <= '1';
            mem_en_read <= '0';
            mem_en_write <= '0';
            
        elsif(opcode = "01") then
            is_Rtype <= '0';
            alu_src <= '1';
            pc_src <= '0';

            if(func = "0000") then
                mem_en_read <= '0';
                mem_en_write <= '1';
                reg_en_write <= '0';
            elsif(func = "0001") then  
                mem_en_read <= '1';
                mem_en_write <= '0';
                reg_en_write <= '1';
            elsif(func = "0010" OR func = "0011" OR func = "0100") then
                mem_en_read <= '0';
                mem_en_write <= '0';
                reg_en_write <= '1';
            else
                mem_en_read <= '0';
                mem_en_write <= '0';
                reg_en_write <= '0';
            end if;
        
        elsif(opcode = "11") then
            is_Rtype <= '0';
            alu_src <= '0';
            pc_src <= '1';
            reg_en_write <= '0';
            mem_en_read <= '0';
            mem_en_write <= '0';
        else
            is_Rtype <= '0';
            alu_src <= '0';
            pc_src <= '0';
            reg_en_write <= '0';
            mem_en_read <= '0';
            mem_en_write <= '0';               
        end if;
    end process;        
end Behavioral;