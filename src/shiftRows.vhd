library ieee;
use ieee.std_logic_1164.all;


entity shiftRows is 
port (
       data_in : in std_logic_vector(127 downto 0);
       data_out : out std_logic_vector(127 downto 0)

);
end entity;

architecture shiftRows_arch of shiftRows is 

begin
     data_out(8*1 - 1 downto 8*0)   <= data_in(8*1 - 1 downto 8*0);
     data_out(8*2 - 1 downto 8*1)   <= data_in(8*6 - 1 downto 8*5);
     data_out(8*3 - 1 downto 8*2)   <= data_in(8*11 - 1 downto 8*10);
     data_out(8*4 - 1 downto 8*3)   <= data_in(8*16 - 1 downto 8*15);
     data_out(8*5 - 1 downto 8*4)   <= data_in(8*5 - 1 downto 8*4);
     data_out(8*6 - 1 downto 8*5)   <= data_in(8*10 - 1 downto 8*9);
     data_out(8*7 - 1 downto 8*6)   <= data_in(8*15 - 1 downto 8*14);
     data_out(8*8 - 1 downto 8*7)   <= data_in(8*4 - 1 downto 8*3);
     data_out(8*9 - 1 downto 8*8)   <= data_in(8*9 - 1 downto 8*8);
     data_out(8*10 - 1 downto 8*9)  <= data_in(8*14 - 1 downto 8*13);
     data_out(8*11 - 1 downto 8*10) <= data_in(8*3 - 1 downto 8*2);
     data_out(8*12 - 1 downto 8*11) <= data_in(8*8 - 1 downto 8*7);
     data_out(8*13 - 1 downto 8*12) <= data_in(8*13 - 1 downto 8*12);
     data_out(8*14 - 1 downto 8*13) <= data_in(8*2 - 1 downto 8*1);
     data_out(8*15 - 1 downto 8*14) <= data_in(8*7 - 1 downto 8*6);
     data_out(8*16 - 1 downto 8*15) <= data_in(8*12 - 1 downto 8*11);     
end architecture ;