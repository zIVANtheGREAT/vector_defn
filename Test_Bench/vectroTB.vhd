----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/04/2024 01:15:49 PM
-- Design Name: 
-- Module Name: vectroTB - Behavioral
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


entity vectroTB is
end vectroTB;

architecture Behavioral of vectroTB is

component vectorTOP
Port ( num1 :  in STD_LOGIC_VECTOR (7 downto 0);
       res1 : out STD_LOGIC;
       res2 : out STD_LOGIC_VECTOR (3 downto 0);
       res3 : out STD_LOGIC_VECTOR (0 to 7));
end component;

signal in1  : std_logic_vector (7 downto 0);
signal out1 : std_logic;
signal out2 : std_logic_vector (3 downto 0);
signal out3 : std_logic_vector (0 to 7);

begin

UUT : vectorTOP port map (num1 => in1, res1 => out1, res2 => out2, res3 => out3);

process
begin
    
    in1 <= "00000000";
    wait for 20ns;
    
    in1 <= "10011001";
    wait for 20ns;
    
    in1 <= "01100110";
    wait for 20ns;
    
    in1 <= "11001100";
    wait for 20ns;
    
    in1 <= "00110011";
    wait for 20ns;
    
    in1 <= "00101011";
    wait for 20ns;
    
    in1 <= "11101010";
    wait;
    
    
end process;

end Behavioral;
