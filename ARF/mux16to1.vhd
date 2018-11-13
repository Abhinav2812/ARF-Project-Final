library ieee;
use ieee.std_logic_1164.all;
entity mux16to1 is port(
	S0X,S1X,S2X,S3X,S4X,S5X,S6X,S7X,S8X,S9X,S10X,S11X,S12X,S13X,S14X,S15X: IN STD_LOGIC_VECTOR(15 downto 0);
	sel: IN STD_LOGIC_VECTOR(3 downto 0);
	O: OUT STD_LOGIC_VECTOR(15 downto 0)
);
end entity;
architecture behavioral of mux16to1 is
begin
process(S0X,S1X,S2X,S3X,S4X,S5X,S6X,S7X,S8X,S9X,S10X,S11X,S12X,S13X,S14X,S15X,sel)
begin
	case sel is
	when "0000" => O <= S0X;
   when "0001" => O <= S1X;
	when "0010" => O <= S2X;
   when "0011" => O <= S3X;
	when "0100" => O <= S4X;
   when "0101" => O <= S5X;
	when "0110" => O <= S6X;
   when "0111" => O <= S7X;
	when "1000" => O <= S8X;
   when "1001" => O <= S9X;
	when "1010" => O <= S10X;
   when "1011" => O <= S11X;
	when "1100" => O <= S12X;
   when "1101" => O <= S13X;
	when "1110" => O <= S14X;
   when "1111" => O <= S15X;
	end case;
end process;
end architecture;