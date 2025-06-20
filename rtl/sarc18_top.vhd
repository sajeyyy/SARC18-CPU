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

begin


end Behavioral;
