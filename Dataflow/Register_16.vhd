library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Register_16 is
    port (
        DIN : in std_logic_vector(15 downto 0);
		  DOUT : out std_logic_vector(15 downto 0);
        CLK, WE : in std_logic
    );
end entity Register_16;

architecture Register_16_Arch of Register_16 is
begin
    process(CLK, WE, DIN)
    variable stored_DIN : std_logic_vector(15 downto 0);
    begin
        if rising_edge(CLK) then
            if WE = '1' then
                stored_DIN := DIN;
            else 
                null;
            end if;
        else 
            null;
        end if;
        DOUT <= stored_DIN after 5ns;
    end process;
end architecture Register_16_Arch;