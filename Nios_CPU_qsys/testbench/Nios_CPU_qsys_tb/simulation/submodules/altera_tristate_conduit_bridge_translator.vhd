library IEEE;
use IEEE.std_logic_1164.all;

entity altera_tristate_conduit_bridge_translator is 
  port (
    in_tcm_address_out : in std_logic_vector (27-1 downto 0);

    tcm_address_out : out std_logic_vector (27-1 downto 0);

    in_tcm_read_n_out : in std_logic_vector (1-1 downto 0);

    tcm_read_n_out : out std_logic_vector (1-1 downto 0);

    in_tcm_write_n_out : in std_logic_vector (1-1 downto 0);

    tcm_write_n_out : out std_logic_vector (1-1 downto 0);

    in_tcm_data_out : inout std_logic_vector (16-1 downto 0) := "ZZZZZZZZZZZZZZZZ";

    tcm_data_out : inout std_logic_vector (16-1 downto 0) := "ZZZZZZZZZZZZZZZZ";

    in_tcm_chipselect_n_out : in std_logic_vector (1-1 downto 0);

    tcm_chipselect_n_out : out std_logic_vector (1-1 downto 0)

  );
end altera_tristate_conduit_bridge_translator;

  architecture rtl of altera_tristate_conduit_bridge_translator is

    component altera_inout
      generic (
	WIDTH_A : POSITIVE;
	WIDTH_B : POSITIVE;
	CHAIN_LENGTH : POSITIVE := 4
      );
      port (
	a : INOUT STD_LOGIC_VECTOR(WIDTH_A-1 downto 0);
	b : INOUT STD_LOGIC_VECTOR(WIDTH_B-1 downto 0)
      );
    end component;

    begin -- rtl
    tcm_address_out <= in_tcm_address_out;
    tcm_read_n_out <= in_tcm_read_n_out;
    tcm_write_n_out <= in_tcm_write_n_out;
       tcm_data_out_inout_module : altera_inout
         generic map (
           WIDTH_A => 16,
           WIDTH_B => 16
         )
         port map (
           a => tcm_data_out,
           b => in_tcm_data_out
         );
    tcm_chipselect_n_out <= in_tcm_chipselect_n_out;
  end rtl;

