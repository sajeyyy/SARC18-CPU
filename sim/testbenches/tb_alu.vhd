-- Testbench for alu.vhd

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_alu is
end tb_alu;

architecture Behavioral of tb_alu is

    component alu
        Port (
            in1        : in  STD_LOGIC_VECTOR(15 downto 0);
            in2        : in  STD_LOGIC_VECTOR(15 downto 0);
            op_sel     : in  STD_LOGIC_VECTOR(3 downto 0);
            alu_result : out STD_LOGIC_VECTOR(15 downto 0)
        );
    end component;

    signal in1        : STD_LOGIC_VECTOR(15 downto 0);
    signal in2        : STD_LOGIC_VECTOR(15 downto 0);
    signal op_sel     : STD_LOGIC_VECTOR(3 downto 0);
    signal alu_result : STD_LOGIC_VECTOR(15 downto 0);

begin

    uut: alu
        port map (
            in1 => in1,
            in2 => in2,
            op_sel => op_sel,
            alu_result => alu_result
        );

    stim_proc: process
    begin
        -- ADD (Signed)
        in1 <= x"0002";
        in2 <= x"0003";
        op_sel <= "0000";
        wait for 10 ns;

        -- SUB (Signed)
        in1 <= x"0005";
        in2 <= x"0002";
        op_sel <= "0001";  
        wait for 10 ns;

        -- MUL (Signed)
        in1 <= x"0002";
        in2 <= x"0004";
        op_sel <= "0010"; 
        wait for 10 ns;

        -- DIV (Signed)
        in1 <= x"0008";
        in2 <= x"0002";
        op_sel <= "0011"; 
        wait for 10 ns;

        -- AND
        in1 <= x"00F0";
        in2 <= x"0F0F";
        op_sel <= "0100";
        wait for 10 ns;

        -- OR
        in1 <= x"00F0";
        in2 <= x"0F0F";
        op_sel <= "0101";
        wait for 10 ns;

        -- XOR
        in1 <= x"00F0";
        in2 <= x"0F0F";
        op_sel <= "0110";
        wait for 10 ns;

        -- NAND
        in1 <= x"00F0";
        in2 <= x"0F0F";
        op_sel <= "0111"; 
        wait for 10 ns;

        -- MOD (Signed)
        in1 <= x"0009";
        in2 <= x"0004";
        op_sel <= "1000";
        wait for 10 ns;

        -- CMP (Signed)
        in1 <= x"0003";
        in2 <= x"0003";
        op_sel <= "1001";
        wait for 10 ns;

        -- SLL
        in1 <= x"0001";
        in2 <= x"0002";
        op_sel <= "1010";  
        wait for 10 ns;

        -- SRL
        in1 <= x"0008";
        in2 <= x"0002";
        op_sel <= "1011";  
        wait for 10 ns;

        -- ADDU (Unsigned)
        in1 <= x"FFFF";
        in2 <= x"0001";
        op_sel <= "1100";  
        wait for 10 ns;

        -- SUBU (Unsigned)
        in1 <= x"0000";
        in2 <= x"0001";
        op_sel <= "1101";  
        wait for 10 ns;

        -- CMPU (Unsigned)
        in1 <= x"0002";
        in2 <= x"0003";
        op_sel <= "1110"; 
        wait for 10 ns;

        wait;
    end process;

end Behavioral;