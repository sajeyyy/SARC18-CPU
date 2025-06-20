----------------------------------------------------------------------------------
-- File        : sarc18_top.vhd
-- Author      : Saje Cowell
--
-- Description : Top-level design for the SARC18 16-bit RISC CPU. Integrates all
--               components including Program Counter, Register File, ALU,
--               Control Unit, ROM, and Memory Controller.
--
-- Inputs      : clk  - Global clock
--               rst  - Global reset
--
-- Outputs     : 
--
-- Dependencies: 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sarc18_top is
    Port (
        clk : in std_logic;
        rst : in std_logic
     );
end sarc18_top;

architecture Behavioral of sarc18_top is

    component alu is
        Port( 
               in1 : in STD_LOGIC_VECTOR (15 downto 0);
               in2 : in STD_LOGIC_VECTOR (15 downto 0);
               op_sel : in STD_LOGIC_VECTOR (3 downto 0);
               alu_result : out STD_LOGIC_VECTOR (15 downto 0));
    end component alu;

    component program_counter is
        Port ( 
               clk : in STD_LOGIC;
               rst : in STD_LOGIC;
               next_pc : in std_logic_vector(7 downto 0); -- Next PC
               pc_out : out std_logic_vector(7 downto 0) -- Updated PC
              );
    end component program_counter;

begin


end Behavioral;
