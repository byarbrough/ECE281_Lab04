-------------------------------------------------------------------------------
--
-- Title       : ALU Top File
-- Design      : ALU
-- Author      : usafa C16 Brian Yarbrough
-- Company     : usafa ECE 281
--
-------------------------------------------------------------------------------
--
-- File        : ALU.vhd
-- Generated   : Fri Mar 30 11:16:54 2007
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.20
--
-------------------------------------------------------------------------------
--
-- Description : Provides instructions for an Arithmetic Logic Unit. This unit is capable of performing eight different commands.
--						It accepts data in and can interact with the accumulator.
--						When part of a microcomputer it is linked with the Datapath.
--						Combined, these are two important components of a microcomuter.
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {ALU} architecture {ALU}}

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU is
	 port(
		 OpSel : in STD_LOGIC_VECTOR(2 downto 0);
		 Data : in STD_LOGIC_VECTOR(3 downto 0);
		 Accumulator : in STD_LOGIC_VECTOR(3 downto 0);
		 Result : out STD_LOGIC_VECTOR(3 downto 0)
	     );
end ALU;

--}} End of automatically maintained section

architecture ALU of ALU is	   


begin
	
-- fill in details to create result as a function of Data and Accumulator, based on OpSel.
 -- e.g : Build a multiplexer choosing between the eight ALU operations.  Either use a case statement (and thus a process)
 --       or a conditional signal assignment statement ( x <= Y when <condition> else . . .)
 -- ALU Operations are defined as:
 -- OpSel : Function
--  0     : AND
--  1     : NEG (2s complement)
--  2     : NOT (invert)
--  3     : ROR
--  4     : OR
--  5     : IN
--  6     : ADD
--  7     : LD
aluswitch: process (Accumulator, Data, OpSel)
        begin
		case OpSel is
			when "000" => --AND
				Result <= Data and Accumulator;
			when "001" => --NEG
				Result <= std_logic_vector(UNSIGNED(not Data) + 1);
			when "010" => --NOT
				Result <= not Data;
			when "011" => --ROR
				Result(3) <= Accumulator(0);
				Result(2) <= Accumulator(3);
				Result(1) <= Accumulator(2);
				Result(0) <= Accumulator(1);
			when "100" => --OR
				Result <= Data or Accumulator;
			when "101" => --IN
				Result <= Data;
			when "110" => --ADD
				Result <= Data + Accumulator;
			when "111" => --LD
				Result <= Data;
			when others =>
				Result <= "0000";
			end case;
		end process;

end ALU;

