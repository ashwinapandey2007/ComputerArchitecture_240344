library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DECODER_2TO4 is
    port (
        A  : in  STD_LOGIC_VECTOR(1 downto 0); -- 2-bit input
        EN : in  STD_LOGIC;                    -- Enable
        Y  : out STD_LOGIC_VECTOR(3 downto 0)  -- 4 outputs
    );
end entity DECODER_2TO4;

architecture Behavioral of DECODER_2TO4 is
begin
    process(A, EN)
    begin
        if EN = '1' then
            case A is
                when "00" => Y <= "0001";
                when "01" => Y <= "0010";
                when "10" => Y <= "0100";
                when "11" => Y <= "1000";
                when others => Y <= "0000";
            end case;
        else
            Y <= "0000";
        end if;
    end process;
end architecture Behavioral;