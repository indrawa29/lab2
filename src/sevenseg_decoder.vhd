----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2025 08:30:55 AM
-- Design Name: 
-- Module Name: sevenseg_decoder - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sevenseg_decoder is
    Port ( i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
           o_seg_n : out STD_LOGIC_VECTOR (6 downto 0));
end sevenseg_decoder;

architecture Behavioral of sevenseg_decoder is

begin
with i_Hex select
o_seg_n <= "0111111" when x"0",
           "1001111" when x"1", 
           "0010010" when x"2",
           "0000110" when x"3",
           "1001100" when x"4",
           "0100100" when x"5", 
           "0100000" when x"6", 
           "0001111" when x"7",  
           "0000000" when x"8",    
           "0001100" when x"9", 
           "0001000" when x"A",
           "1111100" when x"B", 
           "0110001" when x"C", 
           "0011100" when x"D", 
           "0100010" when x"E", 
           "0100110" when x"F";

end Behavioral;
