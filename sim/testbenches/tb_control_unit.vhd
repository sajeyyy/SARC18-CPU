-- Testbench for control_unit.vhd
-- Author: Saje Cowell

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_control_unit is
end tb_control_unit;

architecture behavior of tb_control_unit is

    signal op_func       : std_logic_vector(5 downto 0);
    signal is_Rtype      : std_logic;
    signal alu_src       : std_logic;
    signal pc_src        : std_logic;
    signal mem_en_read   : std_logic;
    signal mem_en_write  : std_logic;
    signal reg_en_write  : std_logic;
    
    component control_unit
        Port ( 
            op_func       : in std_logic_vector(5 downto 0);
            is_Rtype      : out std_logic;
            alu_src       : out std_logic;
            pc_src        : out std_logic;
            mem_en_read   : out std_logic;
            mem_en_write  : out std_logic;
            reg_en_write  : out std_logic
        );
    end component;

begin

    uut: control_unit port map (
        op_func       => op_func,
        is_Rtype      => is_Rtype,
        alu_src       => alu_src,
        pc_src        => pc_src,
        mem_en_read   => mem_en_read,
        mem_en_write  => mem_en_write,
        reg_en_write  => reg_en_write
    );

    stim_proc: process
    begin
        -- R-Type ADD
        op_func <= "000000";
        wait for 10 ns;

        -- I-Type STR
        op_func <= "010000";
        wait for 10 ns;

        -- I-Type LDR
        op_func <= "010001";
        wait for 10 ns;

        -- I-Type ADDI
        op_func <= "010010";
        wait for 10 ns;

        -- I-Type SUBI
        op_func <= "010011";
        wait for 10 ns;

        -- I-Type MOVI
        op_func <= "010100";
        wait for 10 ns;

        -- J-Type BEQZ
        op_func <= "110000";
        wait for 10 ns;

        -- Undefined
        op_func <= "100000";
        wait for 10 ns;

        wait;
    end process;
end behavior;
