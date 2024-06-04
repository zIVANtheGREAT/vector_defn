----------------------------------------------------------------------------------
-- Engineer: zIVANthGREAT
-- 
-- Create Date: 06/04/2024 12:23:40 PM
-- Design Name: Vectors in VHDL
-- Module Name: vectorTOP - Behavioral
-- Project Name: vector_defn
-- Target Devices: 
-- Tool Versions: 2023.2
-- Description: 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity vectorTOP is
    Port ( num1 : in STD_LOGIC_VECTOR (7 downto 0);
           res1 : out STD_LOGIC;
           res2 : out STD_LOGIC_VECTOR (3 downto 0);
           res3 : out STD_LOGIC_VECTOR (0 to 7));
end vectorTOP;

architecture Behavioral of vectorTOP is

component input
port (inum1 : in STD_LOGIC_VECTOR (7 downto 0);
      ires1 : out STD_LOGIC;
      ires2 : out STD_LOGIC_VECTOR (3 DOWNTO 0);
      ires3 : out STD_LOGIC_VECTOR (0 to 7));
end component;

begin
U1 : input port map (inum1 => num1, ires1 => res1, ires2=>res2, ires3=>res3);

end Behavioral;
