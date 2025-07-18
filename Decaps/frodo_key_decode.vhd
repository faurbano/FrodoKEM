-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2020.1
-- Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity frodo_key_decode is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    out_r_address1 : OUT STD_LOGIC_VECTOR (2 downto 0);
    out_r_ce1 : OUT STD_LOGIC;
    out_r_we1 : OUT STD_LOGIC_VECTOR (1 downto 0);
    out_r_d1 : OUT STD_LOGIC_VECTOR (15 downto 0);
    in_r_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    in_r_ce0 : OUT STD_LOGIC;
    in_r_q0 : IN STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of frodo_key_decode is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv7_8 : STD_LOGIC_VECTOR (6 downto 0) := "0001000";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv17_1000 : STD_LOGIC_VECTOR (16 downto 0) := "00001000000000000";
    constant ap_const_lv32_D : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001101";
    constant ap_const_lv32_E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001110";
    constant ap_const_lv32_10 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010000";
    constant ap_const_lv32_3F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000111111";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv4_3 : STD_LOGIC_VECTOR (3 downto 0) := "0011";
    constant ap_const_lv4_7 : STD_LOGIC_VECTOR (3 downto 0) := "0111";
    constant ap_const_lv5_F : STD_LOGIC_VECTOR (4 downto 0) := "01111";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv16_FFFF : STD_LOGIC_VECTOR (15 downto 0) := "1111111111111111";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal j_0_reg_149 : STD_LOGIC_VECTOR (3 downto 0);
    signal index_1_reg_161 : STD_LOGIC_VECTOR (6 downto 0);
    signal templong_0_reg_171 : STD_LOGIC_VECTOR (63 downto 0);
    signal icmp_ln13_fu_194_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal i_fu_200_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_reg_529 : STD_LOGIC_VECTOR (3 downto 0);
    signal index_fu_206_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal index_reg_534 : STD_LOGIC_VECTOR (6 downto 0);
    signal icmp_ln15_fu_212_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln15_reg_539 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_state3_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal j_fu_218_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal j_reg_543 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal add_ln20_fu_229_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal templong_fu_295_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal shl_ln23_fu_303_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal shl_ln23_reg_563 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal j_2_fu_319_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state3 : STD_LOGIC;
    signal i_0_reg_125 : STD_LOGIC_VECTOR (3 downto 0);
    signal icmp_ln22_fu_313_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal index_0_reg_137 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_phi_mux_j_0_phi_fu_153_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal j_1_reg_183 : STD_LOGIC_VECTOR (1 downto 0);
    signal zext_ln18_fu_224_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln23_13_fu_380_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal shl_ln23_4_fu_518_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal zext_ln18_1_fu_235_p1 : STD_LOGIC_VECTOR (16 downto 0);
    signal add_ln18_fu_239_p2 : STD_LOGIC_VECTOR (16 downto 0);
    signal trunc_ln_fu_245_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal shl_ln19_1_fu_259_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln19_fu_255_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal zext_ln19_1_fu_265_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln19_fu_275_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal shl_ln19_fu_269_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_6_fu_285_p4 : STD_LOGIC_VECTOR (47 downto 0);
    signal or_ln19_fu_279_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln23_fu_325_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal shl_ln_fu_329_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln23_fu_337_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal lshr_ln23_fu_341_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln22_fu_309_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln23_fu_351_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal shl_ln23_1_fu_360_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_4_fu_370_p4 : STD_LOGIC_VECTOR (2 downto 0);
    signal or_ln23_fu_385_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln23_s_fu_391_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal zext_ln23_12_fu_366_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln23_14_fu_399_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal trunc_ln23_2_fu_347_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln23_15_fu_409_p1 : STD_LOGIC_VECTOR (4 downto 0);
    signal icmp_ln23_fu_403_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal xor_ln23_fu_417_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal select_ln23_fu_423_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal select_ln23_4_fu_439_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal select_ln23_3_fu_431_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal xor_ln23_1_fu_447_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal zext_ln23_16_fu_413_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal zext_ln23_17_fu_453_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal shl_ln23_2_fu_465_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_5_fu_471_p4 : STD_LOGIC_VECTOR (15 downto 0);
    signal zext_ln23_18_fu_457_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal zext_ln23_19_fu_461_p1 : STD_LOGIC_VECTOR (15 downto 0);
    signal shl_ln23_3_fu_489_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal lshr_ln23_1_fu_495_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal select_ln23_5_fu_481_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal and_ln23_fu_501_p2 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln23_3_fu_356_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln23_20_fu_514_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((icmp_ln13_fu_194_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state3);
                elsif ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif (((icmp_ln13_fu_194_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_0_reg_125_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (icmp_ln22_fu_313_p2 = ap_const_lv1_1))) then 
                i_0_reg_125 <= i_reg_529;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                i_0_reg_125 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    index_0_reg_137_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state6) and (icmp_ln22_fu_313_p2 = ap_const_lv1_1))) then 
                index_0_reg_137 <= index_reg_534;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                index_0_reg_137 <= ap_const_lv7_0;
            end if; 
        end if;
    end process;

    index_1_reg_161_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln15_fu_212_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                index_1_reg_161 <= add_ln20_fu_229_p2;
            elsif (((icmp_ln13_fu_194_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                index_1_reg_161 <= index_0_reg_137;
            end if; 
        end if;
    end process;

    j_0_reg_149_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln15_reg_539 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                j_0_reg_149 <= j_reg_543;
            elsif (((icmp_ln13_fu_194_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                j_0_reg_149 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;

    j_1_reg_183_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                j_1_reg_183 <= ap_const_lv2_0;
            elsif (((icmp_ln22_fu_313_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                j_1_reg_183 <= j_2_fu_319_p2;
            end if; 
        end if;
    end process;

    templong_0_reg_171_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln15_reg_539 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                templong_0_reg_171 <= templong_fu_295_p3;
            elsif (((icmp_ln13_fu_194_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                templong_0_reg_171 <= ap_const_lv64_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                i_reg_529 <= i_fu_200_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln15_reg_539 <= icmp_ln15_fu_212_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln13_fu_194_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                index_reg_534 <= index_fu_206_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                j_reg_543 <= j_fu_218_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                    shl_ln23_reg_563(3 downto 1) <= shl_ln23_fu_303_p2(3 downto 1);
            end if;
        end if;
    end process;
    shl_ln23_reg_563(0) <= '0';

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, icmp_ln13_fu_194_p2, ap_CS_fsm_state2, icmp_ln15_fu_212_p2, ap_enable_reg_pp0_iter0, ap_CS_fsm_state6, ap_block_pp0_stage0_subdone, icmp_ln22_fu_313_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln13_fu_194_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (not(((icmp_ln15_fu_212_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif (((icmp_ln15_fu_212_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state6) and (icmp_ln22_fu_313_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;
    add_ln18_fu_239_p2 <= std_logic_vector(unsigned(ap_const_lv17_1000) + unsigned(zext_ln18_1_fu_235_p1));
    add_ln20_fu_229_p2 <= std_logic_vector(unsigned(ap_const_lv7_1) + unsigned(index_1_reg_161));
    add_ln23_fu_351_p2 <= std_logic_vector(unsigned(zext_ln22_fu_309_p1) + unsigned(shl_ln23_reg_563));
    add_ln23_s_fu_391_p3 <= (ap_const_lv1_0 & or_ln23_fu_385_p2);
    and_ln23_fu_501_p2 <= (shl_ln23_3_fu_489_p2 and lshr_ln23_1_fu_495_p2);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state5 <= ap_CS_fsm(3);
    ap_CS_fsm_state6 <= ap_CS_fsm(4);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state3_assign_proc : process(icmp_ln15_fu_212_p2)
    begin
        if ((icmp_ln15_fu_212_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, icmp_ln13_fu_194_p2, ap_CS_fsm_state2)
    begin
        if ((((icmp_ln13_fu_194_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_j_0_phi_fu_153_p4_assign_proc : process(j_0_reg_149, icmp_ln15_reg_539, ap_CS_fsm_pp0_stage0, j_reg_543, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
        if (((icmp_ln15_reg_539 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0))) then 
            ap_phi_mux_j_0_phi_fu_153_p4 <= j_reg_543;
        else 
            ap_phi_mux_j_0_phi_fu_153_p4 <= j_0_reg_149;
        end if; 
    end process;


    ap_ready_assign_proc : process(icmp_ln13_fu_194_p2, ap_CS_fsm_state2)
    begin
        if (((icmp_ln13_fu_194_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    i_fu_200_p2 <= std_logic_vector(unsigned(i_0_reg_125) + unsigned(ap_const_lv4_1));
    icmp_ln13_fu_194_p2 <= "1" when (i_0_reg_125 = ap_const_lv4_8) else "0";
    icmp_ln15_fu_212_p2 <= "1" when (ap_phi_mux_j_0_phi_fu_153_p4 = ap_const_lv4_8) else "0";
    icmp_ln22_fu_313_p2 <= "1" when (j_1_reg_183 = ap_const_lv2_2) else "0";
    icmp_ln23_fu_403_p2 <= "1" when (unsigned(zext_ln23_12_fu_366_p1) > unsigned(zext_ln23_14_fu_399_p1)) else "0";
    in_r_address0 <= zext_ln18_fu_224_p1(6 - 1 downto 0);

    in_r_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            in_r_ce0 <= ap_const_logic_1;
        else 
            in_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    index_fu_206_p2 <= std_logic_vector(unsigned(index_0_reg_137) + unsigned(ap_const_lv7_8));
    j_2_fu_319_p2 <= std_logic_vector(unsigned(j_1_reg_183) + unsigned(ap_const_lv2_1));
    j_fu_218_p2 <= std_logic_vector(unsigned(ap_phi_mux_j_0_phi_fu_153_p4) + unsigned(ap_const_lv4_1));
    lshr_ln23_1_fu_495_p2 <= std_logic_vector(shift_right(unsigned(ap_const_lv16_FFFF),to_integer(unsigned('0' & zext_ln23_19_fu_461_p1(16-1 downto 0)))));
    lshr_ln23_fu_341_p2 <= std_logic_vector(shift_right(unsigned(templong_0_reg_171),to_integer(unsigned('0' & zext_ln23_fu_337_p1(31-1 downto 0)))));
    or_ln19_fu_279_p2 <= (trunc_ln19_fu_275_p1 or shl_ln19_fu_269_p2);
    or_ln23_fu_385_p2 <= (shl_ln23_1_fu_360_p2 or ap_const_lv4_7);
    out_r_address1 <= zext_ln23_13_fu_380_p1(3 - 1 downto 0);

    out_r_ce1_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            out_r_ce1 <= ap_const_logic_1;
        else 
            out_r_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    out_r_d1 <= (select_ln23_5_fu_481_p3 and and_ln23_fu_501_p2);

    out_r_we1_assign_proc : process(ap_CS_fsm_state6, icmp_ln22_fu_313_p2, shl_ln23_4_fu_518_p2)
    begin
        if (((icmp_ln22_fu_313_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            out_r_we1 <= shl_ln23_4_fu_518_p2;
        else 
            out_r_we1 <= ap_const_lv2_0;
        end if; 
    end process;

    select_ln23_3_fu_431_p3 <= 
        add_ln23_s_fu_391_p3 when (icmp_ln23_fu_403_p2(0) = '1') else 
        zext_ln23_15_fu_409_p1;
    select_ln23_4_fu_439_p3 <= 
        xor_ln23_fu_417_p2 when (icmp_ln23_fu_403_p2(0) = '1') else 
        zext_ln23_15_fu_409_p1;
    select_ln23_5_fu_481_p3 <= 
        tmp_5_fu_471_p4 when (icmp_ln23_fu_403_p2(0) = '1') else 
        shl_ln23_2_fu_465_p2;
    select_ln23_fu_423_p3 <= 
        zext_ln23_15_fu_409_p1 when (icmp_ln23_fu_403_p2(0) = '1') else 
        add_ln23_s_fu_391_p3;
    shl_ln19_1_fu_259_p2 <= std_logic_vector(shift_left(unsigned(j_0_reg_149),to_integer(unsigned('0' & ap_const_lv4_1(4-1 downto 0)))));
    shl_ln19_fu_269_p2 <= std_logic_vector(shift_left(unsigned(zext_ln19_fu_255_p1),to_integer(unsigned('0' & zext_ln19_1_fu_265_p1(16-1 downto 0)))));
    shl_ln23_1_fu_360_p2 <= std_logic_vector(shift_left(unsigned(add_ln23_fu_351_p2),to_integer(unsigned('0' & ap_const_lv4_3(4-1 downto 0)))));
    shl_ln23_2_fu_465_p2 <= std_logic_vector(shift_left(unsigned(zext_ln23_16_fu_413_p1),to_integer(unsigned('0' & zext_ln23_17_fu_453_p1(16-1 downto 0)))));
    shl_ln23_3_fu_489_p2 <= std_logic_vector(shift_left(unsigned(ap_const_lv16_FFFF),to_integer(unsigned('0' & zext_ln23_18_fu_457_p1(16-1 downto 0)))));
    shl_ln23_4_fu_518_p2 <= std_logic_vector(shift_left(unsigned(ap_const_lv2_1),to_integer(unsigned('0' & zext_ln23_20_fu_514_p1(2-1 downto 0)))));
    shl_ln23_fu_303_p2 <= std_logic_vector(shift_left(unsigned(i_0_reg_125),to_integer(unsigned('0' & ap_const_lv4_1(4-1 downto 0)))));
    shl_ln_fu_329_p3 <= (trunc_ln23_fu_325_p1 & ap_const_lv3_0);
    templong_fu_295_p3 <= (tmp_6_fu_285_p4 & or_ln19_fu_279_p2);
    tmp_4_fu_370_p4 <= add_ln23_fu_351_p2(3 downto 1);
    
    tmp_5_fu_471_p4_proc : process(shl_ln23_2_fu_465_p2)
    variable vlo_cpy : STD_LOGIC_VECTOR(16+32 - 1 downto 0);
    variable vhi_cpy : STD_LOGIC_VECTOR(16+32 - 1 downto 0);
    variable v0_cpy : STD_LOGIC_VECTOR(16 - 1 downto 0);
    variable tmp_5_fu_471_p4_i : integer;
    variable section : STD_LOGIC_VECTOR(16 - 1 downto 0);
    variable tmp_mask : STD_LOGIC_VECTOR(16 - 1 downto 0);
    variable resvalue, res_value, res_mask : STD_LOGIC_VECTOR(16 - 1 downto 0);
    begin
        vlo_cpy := (others => '0');
        vlo_cpy(4 - 1 downto 0) := ap_const_lv32_F(4 - 1 downto 0);
        vhi_cpy := (others => '0');
        vhi_cpy(4 - 1 downto 0) := ap_const_lv32_0(4 - 1 downto 0);
        v0_cpy := shl_ln23_2_fu_465_p2;
        if (vlo_cpy(4 - 1 downto 0) > vhi_cpy(4 - 1 downto 0)) then
            vhi_cpy(4-1 downto 0) := std_logic_vector(16-1-unsigned(ap_const_lv32_0(4-1 downto 0)));
            vlo_cpy(4-1 downto 0) := std_logic_vector(16-1-unsigned(ap_const_lv32_F(4-1 downto 0)));
            for tmp_5_fu_471_p4_i in 0 to 16-1 loop
                v0_cpy(tmp_5_fu_471_p4_i) := shl_ln23_2_fu_465_p2(16-1-tmp_5_fu_471_p4_i);
            end loop;
        end if;
        res_value := std_logic_vector(shift_right(unsigned(v0_cpy), to_integer(unsigned('0' & vlo_cpy(4-1 downto 0)))));

        section := (others=>'0');
        section(4-1 downto 0) := std_logic_vector(unsigned(vhi_cpy(4-1 downto 0)) - unsigned(vlo_cpy(4-1 downto 0)));
        tmp_mask := (others => '1');
        res_mask := std_logic_vector(shift_left(unsigned(tmp_mask),to_integer(unsigned('0' & section(16-1 downto 0)))));
        res_mask := res_mask(16-2 downto 0) & '0';
        resvalue := res_value and not res_mask;
        tmp_5_fu_471_p4 <= resvalue(16-1 downto 0);
    end process;

    tmp_6_fu_285_p4 <= templong_0_reg_171(63 downto 16);
    trunc_ln19_fu_275_p1 <= templong_0_reg_171(16 - 1 downto 0);
    trunc_ln23_2_fu_347_p1 <= lshr_ln23_fu_341_p2(8 - 1 downto 0);
    trunc_ln23_3_fu_356_p1 <= add_ln23_fu_351_p2(1 - 1 downto 0);
    trunc_ln23_fu_325_p1 <= j_1_reg_183(1 - 1 downto 0);
    trunc_ln_fu_245_p4 <= add_ln18_fu_239_p2(14 downto 13);
    xor_ln23_1_fu_447_p2 <= (select_ln23_fu_423_p3 xor ap_const_lv5_F);
    xor_ln23_fu_417_p2 <= (zext_ln23_15_fu_409_p1 xor ap_const_lv5_F);
    zext_ln18_1_fu_235_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(in_r_q0),17));
    zext_ln18_fu_224_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(index_1_reg_161),64));
    zext_ln19_1_fu_265_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln19_1_fu_259_p2),16));
    zext_ln19_fu_255_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln_fu_245_p4),16));
    zext_ln22_fu_309_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_1_reg_183),4));
    zext_ln23_12_fu_366_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln23_1_fu_360_p2),64));
    zext_ln23_13_fu_380_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_4_fu_370_p4),64));
    zext_ln23_14_fu_399_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln23_s_fu_391_p3),64));
    zext_ln23_15_fu_409_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln23_1_fu_360_p2),5));
    zext_ln23_16_fu_413_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln23_2_fu_347_p1),16));
    zext_ln23_17_fu_453_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln23_4_fu_439_p3),16));
    zext_ln23_18_fu_457_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln23_3_fu_431_p3),16));
    zext_ln23_19_fu_461_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(xor_ln23_1_fu_447_p2),16));
    zext_ln23_20_fu_514_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln23_3_fu_356_p1),2));
    zext_ln23_fu_337_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln_fu_329_p3),64));
end behav;
