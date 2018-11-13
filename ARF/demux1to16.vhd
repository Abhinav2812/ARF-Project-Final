library ieee;
use ieee.std_logic_1164.all;
entity demux1to16 is port(
	S0X,S1X,S2X,S3X,S4X,S5X,S6X,S7X,S8X,S9X,S10X,S11X,S12X,S13X,S14X,S15X: OUT STD_LOGIC_VECTOR(15 downto 0);
	sel: IN STD_LOGIC_VECTOR(3 downto 0);
	I: IN STD_LOGIC_VECTOR(15 downto 0)
);
end entity;
architecture behavioral of demux1to16 is
begin
process(I,sel)
begin
	S0X <= x"0000";
	S1X <= x"0000";
	S2X <= x"0000";
	S3X <= x"0000";
	S4X <= x"0000";
	S5X <= x"0000";
	S6X <= x"0000";
	S7X <= x"0000";
	S8X <= x"0000";
	S9X <= x"0000";
	S10X <= x"0000";
	S11X <= x"0000";
	S12X <= x"0000";
	S13X <= x"0000";
	S14X <= x"0000";
	S15X <= x"0000";	
	case sel is
	when "0000" => S0X <= I;
   when "0001" => S1X <= I;
	when "0010" => S2X <= I;
   when "0011" => S3X <= I;
	when "0100" => S4X <= I;
   when "0101" => S5X <= I;
	when "0110" => S6X <= I;
   when "0111" => S7X <= I;
	when "1000" => S8X <= I;
   when "1001" => S9X <= I;
	when "1010" => S10X <= I;
   when "1011" => S11X <= I;
	when "1100" => S12X <= I;
   when "1101" => S13X <= I;
	when "1110" => S14X <= I;
   when "1111" => S15X <= I;
	end case;
end process;
end architecture;