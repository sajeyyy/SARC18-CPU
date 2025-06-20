library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_alu is
end tb_alu;

architecture Behavioral of tb_alu is

    -- Component Under Test (CUT)
    component alu
        Port (
            in1        : in  STD_LOGIC_VECTOR(15 downto 0);
            in2        : in  STD_LOGIC_VECTOR(15 downto 0);
            op_sel     : in  STD_LOGIC_VECTOR(3 downto 0);
            alu_result : out STD_LOGIC_VECTOR(15 downto 0)
        );
    end component;

    -- Signals to connect to ALU
    signal in1        : STD_LOGIC_VECTOR(15 downto 0);
    signal in2        : STD_LOGIC_VECTOR(15 downto 0);
    signal op_sel     : STD_LOGIC_VECTOR(3 downto 0);
    signal alu_result : STD_LOGIC_VECTOR(15 downto 0);

begin

    -- Instantiate the ALU
    uut: alu
        port map (
            in1 => in1,
            in2 => in2,
            op_sel => op_sel,
            alu_result => alu_result
        );

    process
    begin
        -- Test Case 1
        in1 <= x"0001";
        in2 <= x"0001";
        op_sel <= "1010"; -- SLL
        wait for 100 ns;
    
        -- Test Case 2
        in1 <= x"0003";
        in2 <= x"0001";
        op_sel <= "1011"; -- SRL
        wait for 100 ns;
    
        -- Test Case 3
        in1 <= x"0004";
        in2 <= x"0004";
        op_sel <= "0000"; -- ADD
        wait for 100 ns;
    
        wait;
    end process;

end Behavioral;