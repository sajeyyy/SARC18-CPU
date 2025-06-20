----------------------------------------------------------------------------------
-- File        : program_counter.vhd
-- Author      : Saje Cowell
--
-- Description : Program Counter for the CPU which is a basic DFF
--
--
-- Inputs      : in1 - Value 1 to perform operation on
--               in2 - Value 2 to perform operation with
--               op_sel - Select the correct operand's rseult to output
--
-- Outputs     : alu_result - Output of the precomputated result of the selected operation 
--
-- Dependencies:
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity alu is
    Port ( 
           in1 : in STD_LOGIC_VECTOR (15 downto 0);
           in2 : in STD_LOGIC_VECTOR (15 downto 0);
           op_sel : in STD_LOGIC_VECTOR (3 downto 0);
           alu_result : out STD_LOGIC_VECTOR (15 downto 0));
end alu;

architecture Behavioral of alu is
    
    constant OP_ADD  : std_logic_vector(3 downto 0) := "0000"; -- 0x0
    constant OP_SUB  : std_logic_vector(3 downto 0) := "0001"; -- 0x1
    constant OP_MULT : std_logic_vector(3 downto 0) := "0010"; -- 0x2
--  constant OP_DIV  : std_logic_vector(3 downto 0) := "0011"; -- 0x3
    constant OP_AND  : std_logic_vector(3 downto 0) := "0100"; -- 0x4
    constant OP_OR   : std_logic_vector(3 downto 0) := "0101"; -- 0x5
    constant OP_XOR  : std_logic_vector(3 downto 0) := "0110"; -- 0x6
    constant OP_NAND : std_logic_vector(3 downto 0) := "0111"; -- 0x7
--  constant OP_MOD  : std_logic_vector(3 downto 0) := "1000"; -- 0x8
    constant OP_CMP  : std_logic_vector(3 downto 0) := "1001"; -- 0x9
    constant OP_SLL  : std_logic_vector(3 downto 0) := "1010"; -- 0xA
    constant OP_SRL  : std_logic_vector(3 downto 0) := "1011"; -- 0xB
    constant OP_ADDU : std_logic_vector(3 downto 0) := "1100"; -- 0xC
    constant OP_SUBU : std_logic_vector(3 downto 0) := "1101"; -- 0xD
    constant OP_CMPU : std_logic_vector(3 downto 0) := "1110"; -- 0xE
--  constant Placeholder  : std_logic_vector(3 downto 0) := "1111"; -- 0xF
    
    
begin    
    process(op_sel)
    begin
        case op_sel is
            When OP_ADD => alu_result <= std_logic_vector(signed(in1) + signed(in2));
            When OP_SUB => alu_result <= std_logic_vector(signed(in1) - signed(in2));
            When OP_MULT => alu_result <= std_logic_vector(signed(in1) * signed(in2));
--          When OP_DIV => alu_result <= (others => '0'); -- Not yet supported division
            When OP_AND => alu_result <= in1 AND in2;
            When OP_OR => alu_result <= in1 OR in2;
            When OP_XOR => alu_result <= in1 XOR in2;
            When OP_NAND => alu_result <= in1 NAND in2;
--          When "1000" => alu_result <= (others => '0'); -- Not yet supported modulo
            
            When OP_CMP => if(signed(in1) < signed(in2)) then -- If in1 < in2, set LSB of alu_result to '1' else '0'
                               alu_result <= "0000000000000001";
                           else
                               alu_result <= (others => '0');
                           end if;

            When OP_SLL => alu_result <= std_logic_vector(shift_left(unsigned(in1), to_integer(unsigned((in2)))));
            When OP_SRL => alu_result <= std_logic_vector(shift_right(unsigned(in1), to_integer(unsigned((in2)))));
            When OP_ADDU => alu_result <= std_logic_vector(unsigned(in1) + unsigned(in2));
            When OP_SUBU => alu_result <= std_logic_vector(unsigned(in1) - unsigned(in2));        
            
            When OP_CMPU => if(unsigned(in1) < unsigned(in2)) then -- If in1 < in2, set LSB of alu_result to '1' else '0'
                               alu_result <= "0000000000000001";
                           else
                               alu_result <= (others => '0');
                           end if;

--          When "1111" => alu_result <= -- Reserved for future operation
            When others => alu_result <= (others => '0');
        
        end case;
    end process;
end Behavioral;