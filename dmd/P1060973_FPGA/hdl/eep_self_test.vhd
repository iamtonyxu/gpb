---------------------------------------------------------------------
-- Project:    MSSB-Hdw
-- Company:    Varian Medical
-- Language:   VHDL
-- File:       eep_self_test.vhd (VHDL Source)
--
-- Description:
--   This module performs a self-test of the EEPROM upon exiting reset.
--   It returns normal access to the EEPROM a the conclusion of the test.
--   It expects that the EEPROM has been pre-programmed with three
--   sectors, and that we have a signature register in each sector.
--   Further, the signature value is neither all "1"s or all "0"s.
--   Having the correct value in all three locations is needed to
--   pass the test.
--
--   This is intended to be used in drive serial_eeprom_if.vhd or similar
--   code.
--   
-- History
--   2016Jul20  Rich Chew  First Code
---------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity eep_self_test is

generic
  (
     FIRST_ADDR                          : std_logic_vector (15 downto 0) := x"003C";
     SECOND_ADDR                         : std_logic_vector (15 downto 0) := x"013C";
     THIRD_ADDR                          : std_logic_vector (15 downto 0) := x"023C";
     SIG_VALUE                           : std_logic_vector (7 downto 0) :=x"AA"
  );
port
     (
          reset_i             : in      std_logic;
          clk_i               : in      std_logic;
          strobe_1s_i         : in      std_logic;

          -- user interface
          m_start_i           : in      std_logic;
          m_addr_i            : in      std_logic_vector(15 downto 0);
          m_wrdata_i          : in      std_logic_vector(7 downto 0);
          m_rddata_o          : out     std_logic_vector(7 downto 0);
          m_done_o            : out     std_logic;
          m_inst_i            : in      std_logic_vector(3 downto 0);
          m_en_i              : in      std_logic;

          -- to serial_eeprom_if
          e_start_o           : out     std_logic;
          e_addr_o            : out     std_logic_vector(15 downto 0);
          e_wrdata_o          : out     std_logic_vector(7 downto 0);
          e_rddata_i          : in      std_logic_vector(7 downto 0);
          e_done_i            : in      std_logic;
          e_inst_o            : out     std_logic_vector(3 downto 0);
          e_en_o              : out     std_logic;

          eep_ok_o            : out     std_logic
     );
end eep_self_test;


architecture RTL of eep_self_test is

     type eeprom_cycle_state_TYPE is (  DELAY_START,
                                        REQ_FIRST,
                                        WAIT_FIRST,
                                        REQ_SECOND,
                                        WAIT_SECOND,
                                        REQ_THIRD,
                                        WAIT_THIRD,
                                        NORMAL_OP
                                   );

     constant TERM_COUNT                          : std_logic_vector (1 downto 0) := "11";
     constant READ_INSTRUCTION                    : std_logic_vector(3 downto 0) := X"0";
     constant WRITE_INSTRUCTION                   : std_logic_vector(7 downto 0) := X"02";
     constant WREN_INSTRUCTION                    : std_logic_vector(7 downto 0) := X"06";
     constant RDSR_INSTRUCTION                    : std_logic_vector(7 downto 0) := X"05";
     --constant WRSR_INSTRUCTION                  : std_logic_vector(7 downto 0) := X"01";
     
     --constant TYPE_READ                              : std_logic := '0';
     constant TYPE_READ                           : std_logic_vector(1 downto 0) := "00";
     --constant TYPE_WRITE                             : std_logic := '1';
     --constant TYPE_WRITE                             : std_logic_vector(1 downto 0) := "01";
     
     signal eep_state                             : eeprom_cycle_state_TYPE;
     signal del_count                             : std_logic_vector (1 downto 0);
     signal dum_addr                              : std_logic_vector (7 downto 0);
     signal onedel                                : std_logic;


begin


  my_states : process (reset_i, clk_i)
  begin
    if (reset_i = '1') then
      m_rddata_o <= (others => '0');
      m_done_o <= '0';
      e_start_o <= '0';
      e_addr_o <= (others => '0');
      e_wrdata_o <= (others => '0');
      e_inst_o <= (others => '0');
      e_en_o <= '0';
      del_count <= (others => '0');
      eep_state <= DELAY_START;
      eep_ok_o <= '0';
      onedel <= '0';
    elsif rising_edge (clk_i) then
      case eep_state is
        when DELAY_START =>
          m_rddata_o <= (others => '1');
          m_done_o <= '0';
          e_start_o <= '0';
          e_addr_o <= (others => '0');
          e_wrdata_o <= (others => '0');
          e_inst_o <= (others => '0');
          e_en_o <= '0';
          eep_ok_o <= '0';
          if (del_count = TERM_COUNT) then
            eep_state <= REQ_FIRST;
            del_count <= (others => '0');
          elsif (strobe_1s_i = '1') then
            del_count <= std_logic_vector (unsigned (del_count) + 1);
          end if;
        when REQ_FIRST =>
          e_start_o <= '1';
          e_addr_o <= FIRST_ADDR;
          e_inst_o <= READ_INSTRUCTION;
          e_en_o <= '1';
          eep_state <= WAIT_FIRST;
          dum_addr <= FIRST_ADDR (7 downto 0);
          m_rddata_o <= x"FE";
        when WAIT_FIRST =>
          e_start_o <= '0';
          e_en_o <= '0';
          if (e_done_i = '1') then
          m_rddata_o <= x"FD";
--            m_rddata_o <= e_rddata_i;
            if (e_rddata_i = SIG_VALUE) then
              eep_state <= REQ_SECOND;
            else
              if (onedel = '0') then
                onedel <= '1';
                eep_state <= DELAY_START;
              else
              eep_state <= NORMAL_OP;
              eep_ok_o <= '0';
              end if;
            end if;
          end if;
        when REQ_SECOND =>
          e_start_o <= '1';
          e_addr_o <= SECOND_ADDR;
          e_inst_o <= READ_INSTRUCTION;
          e_en_o <= '1';
          eep_state <= WAIT_SECOND;
        when WAIT_SECOND =>
          e_start_o <= '0';
          e_en_o <= '0';
          if (e_done_i = '1') then
          m_rddata_o <= x"FB";
--            m_rddata_o <= e_rddata_i;
            if (e_rddata_i = SIG_VALUE) then
              eep_state <= REQ_THIRD;
            else
              eep_state <= NORMAL_OP;
              eep_ok_o <= '0';
            end if;
          end if;
        when REQ_THIRD =>
          e_start_o <= '1';
          e_addr_o <= THIRD_ADDR;
          e_inst_o <= READ_INSTRUCTION;
          e_en_o <= '1';
          eep_state <= WAIT_THIRD;
        when WAIT_THIRD =>
          e_start_o <= '0';
          e_en_o <= '0';
          if (e_done_i = '1') then
          m_rddata_o <= x"F7";
--            m_rddata_o <= e_rddata_i;
            eep_state <= NORMAL_OP;
            if (e_rddata_i = SIG_VALUE) then
              eep_ok_o <= '1';
            else
              eep_ok_o <= '0';
            end if;
          end if;
        when NORMAL_OP =>
--          m_rddata_o <= e_rddata_i; -- freeze for debug
          if (e_done_i = '1') then
            m_rddata_o <= e_rddata_i;
          end if;
          m_done_o <= e_done_i;
          e_start_o <= m_start_i;
          e_addr_o <= m_addr_i;
          e_wrdata_o <= m_wrdata_i;
          e_inst_o <= m_inst_i;
          e_en_o <= m_en_i;
        when others =>
          eep_state <= DELAY_START;
      end case;
    end if;
  end process;

end RTL;

