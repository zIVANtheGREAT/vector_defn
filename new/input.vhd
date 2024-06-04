----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/04/2024 12:57:28 PM
-- Design Name: 
-- Module Name: input - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity input is
    Port ( inum1 : in STD_LOGIC_VECTOR (7 downto 0);
           ires1 : out STD_LOGIC;
           ires2 : out STD_LOGIC_VECTOR (3 downto 0);
           ires3 : out STD_LOGIC_VECTOR (0 to 7));
end input;

architecture Behavioral of input is
begin
--selecting a bit from num1.
ires1 <= inum1(4);

--selecting 4 bits from num1.
ires2 <= inum1(5 downto 2);

--reversing the input.
ires3 <= inum1;

end Behavioral;
