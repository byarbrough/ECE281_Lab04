----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:11:01 04/09/2014 
-- Design Name: 
-- Module Name:    line_register - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity line_register is
    Port ( clk : in  STD_LOGIC;
           clear : in  STD_LOGIC;
			  load : in STD_LOGIC;
           dataIn : in  STD_LOGIC_VECTOR (3 downto 0);
           dataOut : out  STD_LOGIC_VECTOR (3 downto 0));
end line_register;

architecture Behavioral of line_register is

begin

	process(clear, clk)
  	begin
	--reset was pushed
		if (clear = '0') then
			dataOut <= "0000";
		--synchronous 
		elsif (rising_edge(clk)) then
			--if hight
			if(load = '1') then
				--pass data
				dataOut <= dataIn;
			end if;
		end if;
  	end process;


end Behavioral;

