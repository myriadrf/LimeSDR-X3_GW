--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
--Date        : Thu Oct 24 11:39:26 2019
--Host        : DESKTOP-FOO3KS1 running 64-bit major release  (build 9200)
--Command     : generate_target mb_subsystem_wrapper.bd
--Design      : mb_subsystem_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity mb_subsystem_wrapper is
  port (
    Clk : in STD_LOGIC;
    extm_0_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    extm_0_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    extm_0_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    extm_0_axi_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    extm_0_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    extm_0_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    extm_0_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    extm_0_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    extm_0_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    extm_0_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    extm_0_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    extm_0_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    extm_0_axi_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    extm_0_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    extm_0_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    extm_0_axi_sel_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    extm_0_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    extm_0_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    extm_0_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    extm_0_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    extm_axi_resetn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    fifo_read_0_almost_empty : in STD_LOGIC;
    fifo_read_0_empty : in STD_LOGIC;
    fifo_read_0_rd_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_read_0_rd_en : out STD_LOGIC;
    fifo_write_0_aclr : out STD_LOGIC;
    fifo_write_0_almost_full : in STD_LOGIC;
    fifo_write_0_full : in STD_LOGIC;
    fifo_write_0_wr_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_write_0_wr_en : out STD_LOGIC;
    gpio_0_tri_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gpio_1_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    iic_0_scl_io : inout STD_LOGIC;
    iic_0_sda_io : inout STD_LOGIC;
    pll_c0 : out STD_LOGIC;
    pll_c1 : out STD_LOGIC;
    pll_locked : out STD_LOGIC;
    pll_rst_tri_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pllcfg_cmd_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pllcfg_stat_tri_o : out STD_LOGIC_VECTOR ( 9 downto 0 );
    reset_n : in STD_LOGIC;
    smpl_cmp_cnt_tri_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smpl_cmp_en_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    smpl_cmp_status_tri_io : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    spi_0_io0_io : inout STD_LOGIC;
    spi_0_io1_io : inout STD_LOGIC;
    spi_0_sck_io : inout STD_LOGIC;
    spi_0_ss_io : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    spi_1_io0_io : inout STD_LOGIC;
    spi_1_io1_io : inout STD_LOGIC;
    spi_1_sck_io : inout STD_LOGIC;
    spi_1_ss_io : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    spi_2_io0_io : inout STD_LOGIC;
    spi_2_io1_io : inout STD_LOGIC;
    spi_2_sck_io : inout STD_LOGIC;
    spi_2_ss_io : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    uart_0_rxd : in STD_LOGIC;
    uart_0_txd : out STD_LOGIC
  );
end mb_subsystem_wrapper;

architecture STRUCTURE of mb_subsystem_wrapper is
  component mb_subsystem is
  port (
    Clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    fifo_write_0_aclr : out STD_LOGIC;
    spi_0_io0_i : in STD_LOGIC;
    spi_0_io0_o : out STD_LOGIC;
    spi_0_io0_t : out STD_LOGIC;
    spi_0_io1_i : in STD_LOGIC;
    spi_0_io1_o : out STD_LOGIC;
    spi_0_io1_t : out STD_LOGIC;
    spi_0_sck_i : in STD_LOGIC;
    spi_0_sck_o : out STD_LOGIC;
    spi_0_sck_t : out STD_LOGIC;
    spi_0_ss_i : in STD_LOGIC_VECTOR ( 8 downto 0 );
    spi_0_ss_o : out STD_LOGIC_VECTOR ( 8 downto 0 );
    spi_0_ss_t : out STD_LOGIC;
    spi_1_io0_i : in STD_LOGIC;
    spi_1_io0_o : out STD_LOGIC;
    spi_1_io0_t : out STD_LOGIC;
    spi_1_io1_i : in STD_LOGIC;
    spi_1_io1_o : out STD_LOGIC;
    spi_1_io1_t : out STD_LOGIC;
    spi_1_sck_i : in STD_LOGIC;
    spi_1_sck_o : out STD_LOGIC;
    spi_1_sck_t : out STD_LOGIC;
    spi_1_ss_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    spi_1_ss_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    spi_1_ss_t : out STD_LOGIC;
    gpio_0_tri_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    iic_0_scl_i : in STD_LOGIC;
    iic_0_scl_o : out STD_LOGIC;
    iic_0_scl_t : out STD_LOGIC;
    iic_0_sda_i : in STD_LOGIC;
    iic_0_sda_o : out STD_LOGIC;
    iic_0_sda_t : out STD_LOGIC;
    gpio_1_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    fifo_write_0_wr_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_write_0_almost_full : in STD_LOGIC;
    fifo_write_0_wr_en : out STD_LOGIC;
    fifo_write_0_full : in STD_LOGIC;
    uart_0_rxd : in STD_LOGIC;
    uart_0_txd : out STD_LOGIC;
    fifo_read_0_almost_empty : in STD_LOGIC;
    fifo_read_0_rd_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_read_0_rd_en : out STD_LOGIC;
    fifo_read_0_empty : in STD_LOGIC;
    spi_2_io0_i : in STD_LOGIC;
    spi_2_io0_o : out STD_LOGIC;
    spi_2_io0_t : out STD_LOGIC;
    spi_2_io1_i : in STD_LOGIC;
    spi_2_io1_o : out STD_LOGIC;
    spi_2_io1_t : out STD_LOGIC;
    spi_2_sck_i : in STD_LOGIC;
    spi_2_sck_o : out STD_LOGIC;
    spi_2_sck_t : out STD_LOGIC;
    spi_2_ss_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    spi_2_ss_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    spi_2_ss_t : out STD_LOGIC;
    pllcfg_stat_tri_o : out STD_LOGIC_VECTOR ( 9 downto 0 );
    pllcfg_cmd_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pll_rst_tri_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pll_c0 : out STD_LOGIC;
    pll_locked : out STD_LOGIC;
    pll_c1 : out STD_LOGIC;
    extm_0_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    extm_0_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    extm_0_axi_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    extm_0_axi_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    extm_0_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    extm_0_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    extm_0_axi_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    extm_0_axi_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    extm_0_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    extm_0_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    extm_0_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    extm_0_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    extm_0_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    extm_0_axi_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    extm_0_axi_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    extm_0_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    extm_0_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    extm_0_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    extm_0_axi_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    extm_0_axi_sel_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    extm_axi_resetn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    smpl_cmp_en_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    smpl_cmp_cnt_tri_o : out STD_LOGIC_VECTOR ( 15 downto 0 );
    smpl_cmp_status_tri_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    smpl_cmp_status_tri_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    smpl_cmp_status_tri_t : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component mb_subsystem;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal iic_0_scl_i : STD_LOGIC;
  signal iic_0_scl_o : STD_LOGIC;
  signal iic_0_scl_t : STD_LOGIC;
  signal iic_0_sda_i : STD_LOGIC;
  signal iic_0_sda_o : STD_LOGIC;
  signal iic_0_sda_t : STD_LOGIC;
  signal smpl_cmp_status_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal smpl_cmp_status_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal smpl_cmp_status_tri_i_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal smpl_cmp_status_tri_i_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal smpl_cmp_status_tri_i_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal smpl_cmp_status_tri_i_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal smpl_cmp_status_tri_i_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal smpl_cmp_status_tri_i_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal smpl_cmp_status_tri_i_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal smpl_cmp_status_tri_i_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal smpl_cmp_status_tri_i_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal smpl_cmp_status_tri_i_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal smpl_cmp_status_tri_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal smpl_cmp_status_tri_i_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal smpl_cmp_status_tri_i_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal smpl_cmp_status_tri_i_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal smpl_cmp_status_tri_i_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal smpl_cmp_status_tri_i_24 : STD_LOGIC_VECTOR ( 24 to 24 );
  signal smpl_cmp_status_tri_i_25 : STD_LOGIC_VECTOR ( 25 to 25 );
  signal smpl_cmp_status_tri_i_26 : STD_LOGIC_VECTOR ( 26 to 26 );
  signal smpl_cmp_status_tri_i_27 : STD_LOGIC_VECTOR ( 27 to 27 );
  signal smpl_cmp_status_tri_i_28 : STD_LOGIC_VECTOR ( 28 to 28 );
  signal smpl_cmp_status_tri_i_29 : STD_LOGIC_VECTOR ( 29 to 29 );
  signal smpl_cmp_status_tri_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal smpl_cmp_status_tri_i_30 : STD_LOGIC_VECTOR ( 30 to 30 );
  signal smpl_cmp_status_tri_i_31 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal smpl_cmp_status_tri_i_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal smpl_cmp_status_tri_i_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal smpl_cmp_status_tri_i_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal smpl_cmp_status_tri_i_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal smpl_cmp_status_tri_i_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal smpl_cmp_status_tri_i_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal smpl_cmp_status_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal smpl_cmp_status_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal smpl_cmp_status_tri_io_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal smpl_cmp_status_tri_io_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal smpl_cmp_status_tri_io_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal smpl_cmp_status_tri_io_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal smpl_cmp_status_tri_io_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal smpl_cmp_status_tri_io_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal smpl_cmp_status_tri_io_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal smpl_cmp_status_tri_io_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal smpl_cmp_status_tri_io_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal smpl_cmp_status_tri_io_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal smpl_cmp_status_tri_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal smpl_cmp_status_tri_io_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal smpl_cmp_status_tri_io_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal smpl_cmp_status_tri_io_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal smpl_cmp_status_tri_io_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal smpl_cmp_status_tri_io_24 : STD_LOGIC_VECTOR ( 24 to 24 );
  signal smpl_cmp_status_tri_io_25 : STD_LOGIC_VECTOR ( 25 to 25 );
  signal smpl_cmp_status_tri_io_26 : STD_LOGIC_VECTOR ( 26 to 26 );
  signal smpl_cmp_status_tri_io_27 : STD_LOGIC_VECTOR ( 27 to 27 );
  signal smpl_cmp_status_tri_io_28 : STD_LOGIC_VECTOR ( 28 to 28 );
  signal smpl_cmp_status_tri_io_29 : STD_LOGIC_VECTOR ( 29 to 29 );
  signal smpl_cmp_status_tri_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal smpl_cmp_status_tri_io_30 : STD_LOGIC_VECTOR ( 30 to 30 );
  signal smpl_cmp_status_tri_io_31 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal smpl_cmp_status_tri_io_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal smpl_cmp_status_tri_io_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal smpl_cmp_status_tri_io_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal smpl_cmp_status_tri_io_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal smpl_cmp_status_tri_io_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal smpl_cmp_status_tri_io_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal smpl_cmp_status_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal smpl_cmp_status_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal smpl_cmp_status_tri_o_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal smpl_cmp_status_tri_o_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal smpl_cmp_status_tri_o_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal smpl_cmp_status_tri_o_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal smpl_cmp_status_tri_o_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal smpl_cmp_status_tri_o_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal smpl_cmp_status_tri_o_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal smpl_cmp_status_tri_o_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal smpl_cmp_status_tri_o_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal smpl_cmp_status_tri_o_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal smpl_cmp_status_tri_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal smpl_cmp_status_tri_o_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal smpl_cmp_status_tri_o_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal smpl_cmp_status_tri_o_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal smpl_cmp_status_tri_o_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal smpl_cmp_status_tri_o_24 : STD_LOGIC_VECTOR ( 24 to 24 );
  signal smpl_cmp_status_tri_o_25 : STD_LOGIC_VECTOR ( 25 to 25 );
  signal smpl_cmp_status_tri_o_26 : STD_LOGIC_VECTOR ( 26 to 26 );
  signal smpl_cmp_status_tri_o_27 : STD_LOGIC_VECTOR ( 27 to 27 );
  signal smpl_cmp_status_tri_o_28 : STD_LOGIC_VECTOR ( 28 to 28 );
  signal smpl_cmp_status_tri_o_29 : STD_LOGIC_VECTOR ( 29 to 29 );
  signal smpl_cmp_status_tri_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal smpl_cmp_status_tri_o_30 : STD_LOGIC_VECTOR ( 30 to 30 );
  signal smpl_cmp_status_tri_o_31 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal smpl_cmp_status_tri_o_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal smpl_cmp_status_tri_o_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal smpl_cmp_status_tri_o_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal smpl_cmp_status_tri_o_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal smpl_cmp_status_tri_o_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal smpl_cmp_status_tri_o_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal smpl_cmp_status_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal smpl_cmp_status_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal smpl_cmp_status_tri_t_10 : STD_LOGIC_VECTOR ( 10 to 10 );
  signal smpl_cmp_status_tri_t_11 : STD_LOGIC_VECTOR ( 11 to 11 );
  signal smpl_cmp_status_tri_t_12 : STD_LOGIC_VECTOR ( 12 to 12 );
  signal smpl_cmp_status_tri_t_13 : STD_LOGIC_VECTOR ( 13 to 13 );
  signal smpl_cmp_status_tri_t_14 : STD_LOGIC_VECTOR ( 14 to 14 );
  signal smpl_cmp_status_tri_t_15 : STD_LOGIC_VECTOR ( 15 to 15 );
  signal smpl_cmp_status_tri_t_16 : STD_LOGIC_VECTOR ( 16 to 16 );
  signal smpl_cmp_status_tri_t_17 : STD_LOGIC_VECTOR ( 17 to 17 );
  signal smpl_cmp_status_tri_t_18 : STD_LOGIC_VECTOR ( 18 to 18 );
  signal smpl_cmp_status_tri_t_19 : STD_LOGIC_VECTOR ( 19 to 19 );
  signal smpl_cmp_status_tri_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal smpl_cmp_status_tri_t_20 : STD_LOGIC_VECTOR ( 20 to 20 );
  signal smpl_cmp_status_tri_t_21 : STD_LOGIC_VECTOR ( 21 to 21 );
  signal smpl_cmp_status_tri_t_22 : STD_LOGIC_VECTOR ( 22 to 22 );
  signal smpl_cmp_status_tri_t_23 : STD_LOGIC_VECTOR ( 23 to 23 );
  signal smpl_cmp_status_tri_t_24 : STD_LOGIC_VECTOR ( 24 to 24 );
  signal smpl_cmp_status_tri_t_25 : STD_LOGIC_VECTOR ( 25 to 25 );
  signal smpl_cmp_status_tri_t_26 : STD_LOGIC_VECTOR ( 26 to 26 );
  signal smpl_cmp_status_tri_t_27 : STD_LOGIC_VECTOR ( 27 to 27 );
  signal smpl_cmp_status_tri_t_28 : STD_LOGIC_VECTOR ( 28 to 28 );
  signal smpl_cmp_status_tri_t_29 : STD_LOGIC_VECTOR ( 29 to 29 );
  signal smpl_cmp_status_tri_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal smpl_cmp_status_tri_t_30 : STD_LOGIC_VECTOR ( 30 to 30 );
  signal smpl_cmp_status_tri_t_31 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal smpl_cmp_status_tri_t_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal smpl_cmp_status_tri_t_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal smpl_cmp_status_tri_t_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal smpl_cmp_status_tri_t_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal smpl_cmp_status_tri_t_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal smpl_cmp_status_tri_t_9 : STD_LOGIC_VECTOR ( 9 to 9 );
  signal spi_0_io0_i : STD_LOGIC;
  signal spi_0_io0_o : STD_LOGIC;
  signal spi_0_io0_t : STD_LOGIC;
  signal spi_0_io1_i : STD_LOGIC;
  signal spi_0_io1_o : STD_LOGIC;
  signal spi_0_io1_t : STD_LOGIC;
  signal spi_0_sck_i : STD_LOGIC;
  signal spi_0_sck_o : STD_LOGIC;
  signal spi_0_sck_t : STD_LOGIC;
  signal spi_0_ss_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal spi_0_ss_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal spi_0_ss_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal spi_0_ss_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal spi_0_ss_i_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal spi_0_ss_i_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal spi_0_ss_i_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal spi_0_ss_i_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal spi_0_ss_i_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal spi_0_ss_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal spi_0_ss_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal spi_0_ss_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal spi_0_ss_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal spi_0_ss_io_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal spi_0_ss_io_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal spi_0_ss_io_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal spi_0_ss_io_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal spi_0_ss_io_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal spi_0_ss_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal spi_0_ss_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal spi_0_ss_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal spi_0_ss_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal spi_0_ss_o_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal spi_0_ss_o_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal spi_0_ss_o_6 : STD_LOGIC_VECTOR ( 6 to 6 );
  signal spi_0_ss_o_7 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal spi_0_ss_o_8 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal spi_0_ss_t : STD_LOGIC;
  signal spi_1_io0_i : STD_LOGIC;
  signal spi_1_io0_o : STD_LOGIC;
  signal spi_1_io0_t : STD_LOGIC;
  signal spi_1_io1_i : STD_LOGIC;
  signal spi_1_io1_o : STD_LOGIC;
  signal spi_1_io1_t : STD_LOGIC;
  signal spi_1_sck_i : STD_LOGIC;
  signal spi_1_sck_o : STD_LOGIC;
  signal spi_1_sck_t : STD_LOGIC;
  signal spi_1_ss_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal spi_1_ss_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal spi_1_ss_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal spi_1_ss_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal spi_1_ss_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal spi_1_ss_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal spi_1_ss_t : STD_LOGIC;
  signal spi_2_io0_i : STD_LOGIC;
  signal spi_2_io0_o : STD_LOGIC;
  signal spi_2_io0_t : STD_LOGIC;
  signal spi_2_io1_i : STD_LOGIC;
  signal spi_2_io1_o : STD_LOGIC;
  signal spi_2_io1_t : STD_LOGIC;
  signal spi_2_sck_i : STD_LOGIC;
  signal spi_2_sck_o : STD_LOGIC;
  signal spi_2_sck_t : STD_LOGIC;
  signal spi_2_ss_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal spi_2_ss_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal spi_2_ss_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal spi_2_ss_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal spi_2_ss_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal spi_2_ss_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal spi_2_ss_t : STD_LOGIC;
begin
iic_0_scl_iobuf: component IOBUF
     port map (
      I => iic_0_scl_o,
      IO => iic_0_scl_io,
      O => iic_0_scl_i,
      T => iic_0_scl_t
    );
iic_0_sda_iobuf: component IOBUF
     port map (
      I => iic_0_sda_o,
      IO => iic_0_sda_io,
      O => iic_0_sda_i,
      T => iic_0_sda_t
    );
mb_subsystem_i: component mb_subsystem
     port map (
      Clk => Clk,
      extm_0_axi_araddr(31 downto 0) => extm_0_axi_araddr(31 downto 0),
      extm_0_axi_arprot(2 downto 0) => extm_0_axi_arprot(2 downto 0),
      extm_0_axi_arready(0) => extm_0_axi_arready(0),
      extm_0_axi_arvalid(0) => extm_0_axi_arvalid(0),
      extm_0_axi_awaddr(31 downto 0) => extm_0_axi_awaddr(31 downto 0),
      extm_0_axi_awprot(2 downto 0) => extm_0_axi_awprot(2 downto 0),
      extm_0_axi_awready(0) => extm_0_axi_awready(0),
      extm_0_axi_awvalid(0) => extm_0_axi_awvalid(0),
      extm_0_axi_bready(0) => extm_0_axi_bready(0),
      extm_0_axi_bresp(1 downto 0) => extm_0_axi_bresp(1 downto 0),
      extm_0_axi_bvalid(0) => extm_0_axi_bvalid(0),
      extm_0_axi_rdata(31 downto 0) => extm_0_axi_rdata(31 downto 0),
      extm_0_axi_rready(0) => extm_0_axi_rready(0),
      extm_0_axi_rresp(1 downto 0) => extm_0_axi_rresp(1 downto 0),
      extm_0_axi_rvalid(0) => extm_0_axi_rvalid(0),
      extm_0_axi_sel_tri_o(3 downto 0) => extm_0_axi_sel_tri_o(3 downto 0),
      extm_0_axi_wdata(31 downto 0) => extm_0_axi_wdata(31 downto 0),
      extm_0_axi_wready(0) => extm_0_axi_wready(0),
      extm_0_axi_wstrb(3 downto 0) => extm_0_axi_wstrb(3 downto 0),
      extm_0_axi_wvalid(0) => extm_0_axi_wvalid(0),
      extm_axi_resetn_out(0) => extm_axi_resetn_out(0),
      fifo_read_0_almost_empty => fifo_read_0_almost_empty,
      fifo_read_0_empty => fifo_read_0_empty,
      fifo_read_0_rd_data(31 downto 0) => fifo_read_0_rd_data(31 downto 0),
      fifo_read_0_rd_en => fifo_read_0_rd_en,
      fifo_write_0_aclr => fifo_write_0_aclr,
      fifo_write_0_almost_full => fifo_write_0_almost_full,
      fifo_write_0_full => fifo_write_0_full,
      fifo_write_0_wr_data(31 downto 0) => fifo_write_0_wr_data(31 downto 0),
      fifo_write_0_wr_en => fifo_write_0_wr_en,
      gpio_0_tri_i(7 downto 0) => gpio_0_tri_i(7 downto 0),
      gpio_1_tri_o(7 downto 0) => gpio_1_tri_o(7 downto 0),
      iic_0_scl_i => iic_0_scl_i,
      iic_0_scl_o => iic_0_scl_o,
      iic_0_scl_t => iic_0_scl_t,
      iic_0_sda_i => iic_0_sda_i,
      iic_0_sda_o => iic_0_sda_o,
      iic_0_sda_t => iic_0_sda_t,
      pll_c0 => pll_c0,
      pll_c1 => pll_c1,
      pll_locked => pll_locked,
      pll_rst_tri_o(31 downto 0) => pll_rst_tri_o(31 downto 0),
      pllcfg_cmd_tri_i(3 downto 0) => pllcfg_cmd_tri_i(3 downto 0),
      pllcfg_stat_tri_o(9 downto 0) => pllcfg_stat_tri_o(9 downto 0),
      reset_n => reset_n,
      smpl_cmp_cnt_tri_o(15 downto 0) => smpl_cmp_cnt_tri_o(15 downto 0),
      smpl_cmp_en_tri_o(3 downto 0) => smpl_cmp_en_tri_o(3 downto 0),
      smpl_cmp_status_tri_i(31) => smpl_cmp_status_tri_i_31(31),
      smpl_cmp_status_tri_i(30) => smpl_cmp_status_tri_i_30(30),
      smpl_cmp_status_tri_i(29) => smpl_cmp_status_tri_i_29(29),
      smpl_cmp_status_tri_i(28) => smpl_cmp_status_tri_i_28(28),
      smpl_cmp_status_tri_i(27) => smpl_cmp_status_tri_i_27(27),
      smpl_cmp_status_tri_i(26) => smpl_cmp_status_tri_i_26(26),
      smpl_cmp_status_tri_i(25) => smpl_cmp_status_tri_i_25(25),
      smpl_cmp_status_tri_i(24) => smpl_cmp_status_tri_i_24(24),
      smpl_cmp_status_tri_i(23) => smpl_cmp_status_tri_i_23(23),
      smpl_cmp_status_tri_i(22) => smpl_cmp_status_tri_i_22(22),
      smpl_cmp_status_tri_i(21) => smpl_cmp_status_tri_i_21(21),
      smpl_cmp_status_tri_i(20) => smpl_cmp_status_tri_i_20(20),
      smpl_cmp_status_tri_i(19) => smpl_cmp_status_tri_i_19(19),
      smpl_cmp_status_tri_i(18) => smpl_cmp_status_tri_i_18(18),
      smpl_cmp_status_tri_i(17) => smpl_cmp_status_tri_i_17(17),
      smpl_cmp_status_tri_i(16) => smpl_cmp_status_tri_i_16(16),
      smpl_cmp_status_tri_i(15) => smpl_cmp_status_tri_i_15(15),
      smpl_cmp_status_tri_i(14) => smpl_cmp_status_tri_i_14(14),
      smpl_cmp_status_tri_i(13) => smpl_cmp_status_tri_i_13(13),
      smpl_cmp_status_tri_i(12) => smpl_cmp_status_tri_i_12(12),
      smpl_cmp_status_tri_i(11) => smpl_cmp_status_tri_i_11(11),
      smpl_cmp_status_tri_i(10) => smpl_cmp_status_tri_i_10(10),
      smpl_cmp_status_tri_i(9) => smpl_cmp_status_tri_i_9(9),
      smpl_cmp_status_tri_i(8) => smpl_cmp_status_tri_i_8(8),
      smpl_cmp_status_tri_i(7) => smpl_cmp_status_tri_i_7(7),
      smpl_cmp_status_tri_i(6) => smpl_cmp_status_tri_i_6(6),
      smpl_cmp_status_tri_i(5) => smpl_cmp_status_tri_i_5(5),
      smpl_cmp_status_tri_i(4) => smpl_cmp_status_tri_i_4(4),
      smpl_cmp_status_tri_i(3) => smpl_cmp_status_tri_i_3(3),
      smpl_cmp_status_tri_i(2) => smpl_cmp_status_tri_i_2(2),
      smpl_cmp_status_tri_i(1) => smpl_cmp_status_tri_i_1(1),
      smpl_cmp_status_tri_i(0) => smpl_cmp_status_tri_i_0(0),
      smpl_cmp_status_tri_o(31) => smpl_cmp_status_tri_o_31(31),
      smpl_cmp_status_tri_o(30) => smpl_cmp_status_tri_o_30(30),
      smpl_cmp_status_tri_o(29) => smpl_cmp_status_tri_o_29(29),
      smpl_cmp_status_tri_o(28) => smpl_cmp_status_tri_o_28(28),
      smpl_cmp_status_tri_o(27) => smpl_cmp_status_tri_o_27(27),
      smpl_cmp_status_tri_o(26) => smpl_cmp_status_tri_o_26(26),
      smpl_cmp_status_tri_o(25) => smpl_cmp_status_tri_o_25(25),
      smpl_cmp_status_tri_o(24) => smpl_cmp_status_tri_o_24(24),
      smpl_cmp_status_tri_o(23) => smpl_cmp_status_tri_o_23(23),
      smpl_cmp_status_tri_o(22) => smpl_cmp_status_tri_o_22(22),
      smpl_cmp_status_tri_o(21) => smpl_cmp_status_tri_o_21(21),
      smpl_cmp_status_tri_o(20) => smpl_cmp_status_tri_o_20(20),
      smpl_cmp_status_tri_o(19) => smpl_cmp_status_tri_o_19(19),
      smpl_cmp_status_tri_o(18) => smpl_cmp_status_tri_o_18(18),
      smpl_cmp_status_tri_o(17) => smpl_cmp_status_tri_o_17(17),
      smpl_cmp_status_tri_o(16) => smpl_cmp_status_tri_o_16(16),
      smpl_cmp_status_tri_o(15) => smpl_cmp_status_tri_o_15(15),
      smpl_cmp_status_tri_o(14) => smpl_cmp_status_tri_o_14(14),
      smpl_cmp_status_tri_o(13) => smpl_cmp_status_tri_o_13(13),
      smpl_cmp_status_tri_o(12) => smpl_cmp_status_tri_o_12(12),
      smpl_cmp_status_tri_o(11) => smpl_cmp_status_tri_o_11(11),
      smpl_cmp_status_tri_o(10) => smpl_cmp_status_tri_o_10(10),
      smpl_cmp_status_tri_o(9) => smpl_cmp_status_tri_o_9(9),
      smpl_cmp_status_tri_o(8) => smpl_cmp_status_tri_o_8(8),
      smpl_cmp_status_tri_o(7) => smpl_cmp_status_tri_o_7(7),
      smpl_cmp_status_tri_o(6) => smpl_cmp_status_tri_o_6(6),
      smpl_cmp_status_tri_o(5) => smpl_cmp_status_tri_o_5(5),
      smpl_cmp_status_tri_o(4) => smpl_cmp_status_tri_o_4(4),
      smpl_cmp_status_tri_o(3) => smpl_cmp_status_tri_o_3(3),
      smpl_cmp_status_tri_o(2) => smpl_cmp_status_tri_o_2(2),
      smpl_cmp_status_tri_o(1) => smpl_cmp_status_tri_o_1(1),
      smpl_cmp_status_tri_o(0) => smpl_cmp_status_tri_o_0(0),
      smpl_cmp_status_tri_t(31) => smpl_cmp_status_tri_t_31(31),
      smpl_cmp_status_tri_t(30) => smpl_cmp_status_tri_t_30(30),
      smpl_cmp_status_tri_t(29) => smpl_cmp_status_tri_t_29(29),
      smpl_cmp_status_tri_t(28) => smpl_cmp_status_tri_t_28(28),
      smpl_cmp_status_tri_t(27) => smpl_cmp_status_tri_t_27(27),
      smpl_cmp_status_tri_t(26) => smpl_cmp_status_tri_t_26(26),
      smpl_cmp_status_tri_t(25) => smpl_cmp_status_tri_t_25(25),
      smpl_cmp_status_tri_t(24) => smpl_cmp_status_tri_t_24(24),
      smpl_cmp_status_tri_t(23) => smpl_cmp_status_tri_t_23(23),
      smpl_cmp_status_tri_t(22) => smpl_cmp_status_tri_t_22(22),
      smpl_cmp_status_tri_t(21) => smpl_cmp_status_tri_t_21(21),
      smpl_cmp_status_tri_t(20) => smpl_cmp_status_tri_t_20(20),
      smpl_cmp_status_tri_t(19) => smpl_cmp_status_tri_t_19(19),
      smpl_cmp_status_tri_t(18) => smpl_cmp_status_tri_t_18(18),
      smpl_cmp_status_tri_t(17) => smpl_cmp_status_tri_t_17(17),
      smpl_cmp_status_tri_t(16) => smpl_cmp_status_tri_t_16(16),
      smpl_cmp_status_tri_t(15) => smpl_cmp_status_tri_t_15(15),
      smpl_cmp_status_tri_t(14) => smpl_cmp_status_tri_t_14(14),
      smpl_cmp_status_tri_t(13) => smpl_cmp_status_tri_t_13(13),
      smpl_cmp_status_tri_t(12) => smpl_cmp_status_tri_t_12(12),
      smpl_cmp_status_tri_t(11) => smpl_cmp_status_tri_t_11(11),
      smpl_cmp_status_tri_t(10) => smpl_cmp_status_tri_t_10(10),
      smpl_cmp_status_tri_t(9) => smpl_cmp_status_tri_t_9(9),
      smpl_cmp_status_tri_t(8) => smpl_cmp_status_tri_t_8(8),
      smpl_cmp_status_tri_t(7) => smpl_cmp_status_tri_t_7(7),
      smpl_cmp_status_tri_t(6) => smpl_cmp_status_tri_t_6(6),
      smpl_cmp_status_tri_t(5) => smpl_cmp_status_tri_t_5(5),
      smpl_cmp_status_tri_t(4) => smpl_cmp_status_tri_t_4(4),
      smpl_cmp_status_tri_t(3) => smpl_cmp_status_tri_t_3(3),
      smpl_cmp_status_tri_t(2) => smpl_cmp_status_tri_t_2(2),
      smpl_cmp_status_tri_t(1) => smpl_cmp_status_tri_t_1(1),
      smpl_cmp_status_tri_t(0) => smpl_cmp_status_tri_t_0(0),
      spi_0_io0_i => spi_0_io0_i,
      spi_0_io0_o => spi_0_io0_o,
      spi_0_io0_t => spi_0_io0_t,
      spi_0_io1_i => spi_0_io1_i,
      spi_0_io1_o => spi_0_io1_o,
      spi_0_io1_t => spi_0_io1_t,
      spi_0_sck_i => spi_0_sck_i,
      spi_0_sck_o => spi_0_sck_o,
      spi_0_sck_t => spi_0_sck_t,
      spi_0_ss_i(8) => spi_0_ss_i_8(8),
      spi_0_ss_i(7) => spi_0_ss_i_7(7),
      spi_0_ss_i(6) => spi_0_ss_i_6(6),
      spi_0_ss_i(5) => spi_0_ss_i_5(5),
      spi_0_ss_i(4) => spi_0_ss_i_4(4),
      spi_0_ss_i(3) => spi_0_ss_i_3(3),
      spi_0_ss_i(2) => spi_0_ss_i_2(2),
      spi_0_ss_i(1) => spi_0_ss_i_1(1),
      spi_0_ss_i(0) => spi_0_ss_i_0(0),
      spi_0_ss_o(8) => spi_0_ss_o_8(8),
      spi_0_ss_o(7) => spi_0_ss_o_7(7),
      spi_0_ss_o(6) => spi_0_ss_o_6(6),
      spi_0_ss_o(5) => spi_0_ss_o_5(5),
      spi_0_ss_o(4) => spi_0_ss_o_4(4),
      spi_0_ss_o(3) => spi_0_ss_o_3(3),
      spi_0_ss_o(2) => spi_0_ss_o_2(2),
      spi_0_ss_o(1) => spi_0_ss_o_1(1),
      spi_0_ss_o(0) => spi_0_ss_o_0(0),
      spi_0_ss_t => spi_0_ss_t,
      spi_1_io0_i => spi_1_io0_i,
      spi_1_io0_o => spi_1_io0_o,
      spi_1_io0_t => spi_1_io0_t,
      spi_1_io1_i => spi_1_io1_i,
      spi_1_io1_o => spi_1_io1_o,
      spi_1_io1_t => spi_1_io1_t,
      spi_1_sck_i => spi_1_sck_i,
      spi_1_sck_o => spi_1_sck_o,
      spi_1_sck_t => spi_1_sck_t,
      spi_1_ss_i(1) => spi_1_ss_i_1(1),
      spi_1_ss_i(0) => spi_1_ss_i_0(0),
      spi_1_ss_o(1) => spi_1_ss_o_1(1),
      spi_1_ss_o(0) => spi_1_ss_o_0(0),
      spi_1_ss_t => spi_1_ss_t,
      spi_2_io0_i => spi_2_io0_i,
      spi_2_io0_o => spi_2_io0_o,
      spi_2_io0_t => spi_2_io0_t,
      spi_2_io1_i => spi_2_io1_i,
      spi_2_io1_o => spi_2_io1_o,
      spi_2_io1_t => spi_2_io1_t,
      spi_2_sck_i => spi_2_sck_i,
      spi_2_sck_o => spi_2_sck_o,
      spi_2_sck_t => spi_2_sck_t,
      spi_2_ss_i(1) => spi_2_ss_i_1(1),
      spi_2_ss_i(0) => spi_2_ss_i_0(0),
      spi_2_ss_o(1) => spi_2_ss_o_1(1),
      spi_2_ss_o(0) => spi_2_ss_o_0(0),
      spi_2_ss_t => spi_2_ss_t,
      uart_0_rxd => uart_0_rxd,
      uart_0_txd => uart_0_txd
    );
smpl_cmp_status_tri_iobuf_0: component IOBUF
     port map (
      I => smpl_cmp_status_tri_o_0(0),
      IO => smpl_cmp_status_tri_io(0),
      O => smpl_cmp_status_tri_i_0(0),
      T => smpl_cmp_status_tri_t_0(0)
    );
smpl_cmp_status_tri_iobuf_1: component IOBUF
     port map (
      I => smpl_cmp_status_tri_o_1(1),
      IO => smpl_cmp_status_tri_io(1),
      O => smpl_cmp_status_tri_i_1(1),
      T => smpl_cmp_status_tri_t_1(1)
    );
smpl_cmp_status_tri_iobuf_10: component IOBUF
     port map (
      I => smpl_cmp_status_tri_o_10(10),
      IO => smpl_cmp_status_tri_io(10),
      O => smpl_cmp_status_tri_i_10(10),
      T => smpl_cmp_status_tri_t_10(10)
    );
smpl_cmp_status_tri_iobuf_11: component IOBUF
     port map (
      I => smpl_cmp_status_tri_o_11(11),
      IO => smpl_cmp_status_tri_io(11),
      O => smpl_cmp_status_tri_i_11(11),
      T => smpl_cmp_status_tri_t_11(11)
    );
smpl_cmp_status_tri_iobuf_12: component IOBUF
     port map (
      I => smpl_cmp_status_tri_o_12(12),
      IO => smpl_cmp_status_tri_io(12),
      O => smpl_cmp_status_tri_i_12(12),
      T => smpl_cmp_status_tri_t_12(12)
    );
smpl_cmp_status_tri_iobuf_13: component IOBUF
     port map (
      I => smpl_cmp_status_tri_o_13(13),
      IO => smpl_cmp_status_tri_io(13),
      O => smpl_cmp_status_tri_i_13(13),
      T => smpl_cmp_status_tri_t_13(13)
    );
smpl_cmp_status_tri_iobuf_14: component IOBUF
     port map (
      I => smpl_cmp_status_tri_o_14(14),
      IO => smpl_cmp_status_tri_io(14),
      O => smpl_cmp_status_tri_i_14(14),
      T => smpl_cmp_status_tri_t_14(14)
    );
smpl_cmp_status_tri_iobuf_15: component IOBUF
     port map (
      I => smpl_cmp_status_tri_o_15(15),
      IO => smpl_cmp_status_tri_io(15),
      O => smpl_cmp_status_tri_i_15(15),
      T => smpl_cmp_status_tri_t_15(15)
    );
smpl_cmp_status_tri_iobuf_16: component IOBUF
     port map (
      I => smpl_cmp_status_tri_o_16(16),
      IO => smpl_cmp_status_tri_io(16),
      O => smpl_cmp_status_tri_i_16(16),
      T => smpl_cmp_status_tri_t_16(16)
    );
smpl_cmp_status_tri_iobuf_17: component IOBUF
     port map (
      I => smpl_cmp_status_tri_o_17(17),
      IO => smpl_cmp_status_tri_io(17),
      O => smpl_cmp_status_tri_i_17(17),
      T => smpl_cmp_status_tri_t_17(17)
    );
smpl_cmp_status_tri_iobuf_18: component IOBUF
     port map (
      I => smpl_cmp_status_tri_o_18(18),
      IO => smpl_cmp_status_tri_io(18),
      O => smpl_cmp_status_tri_i_18(18),
      T => smpl_cmp_status_tri_t_18(18)
    );
smpl_cmp_status_tri_iobuf_19: component IOBUF
     port map (
      I => smpl_cmp_status_tri_o_19(19),
      IO => smpl_cmp_status_tri_io(19),
      O => smpl_cmp_status_tri_i_19(19),
      T => smpl_cmp_status_tri_t_19(19)
    );
smpl_cmp_status_tri_iobuf_2: component IOBUF
     port map (
      I => smpl_cmp_status_tri_o_2(2),
      IO => smpl_cmp_status_tri_io(2),
      O => smpl_cmp_status_tri_i_2(2),
      T => smpl_cmp_status_tri_t_2(2)
    );
smpl_cmp_status_tri_iobuf_20: component IOBUF
     port map (
      I => smpl_cmp_status_tri_o_20(20),
      IO => smpl_cmp_status_tri_io(20),
      O => smpl_cmp_status_tri_i_20(20),
      T => smpl_cmp_status_tri_t_20(20)
    );
smpl_cmp_status_tri_iobuf_21: component IOBUF
     port map (
      I => smpl_cmp_status_tri_o_21(21),
      IO => smpl_cmp_status_tri_io(21),
      O => smpl_cmp_status_tri_i_21(21),
      T => smpl_cmp_status_tri_t_21(21)
    );
smpl_cmp_status_tri_iobuf_22: component IOBUF
     port map (
      I => smpl_cmp_status_tri_o_22(22),
      IO => smpl_cmp_status_tri_io(22),
      O => smpl_cmp_status_tri_i_22(22),
      T => smpl_cmp_status_tri_t_22(22)
    );
smpl_cmp_status_tri_iobuf_23: component IOBUF
     port map (
      I => smpl_cmp_status_tri_o_23(23),
      IO => smpl_cmp_status_tri_io(23),
      O => smpl_cmp_status_tri_i_23(23),
      T => smpl_cmp_status_tri_t_23(23)
    );
smpl_cmp_status_tri_iobuf_24: component IOBUF
     port map (
      I => smpl_cmp_status_tri_o_24(24),
      IO => smpl_cmp_status_tri_io(24),
      O => smpl_cmp_status_tri_i_24(24),
      T => smpl_cmp_status_tri_t_24(24)
    );
smpl_cmp_status_tri_iobuf_25: component IOBUF
     port map (
      I => smpl_cmp_status_tri_o_25(25),
      IO => smpl_cmp_status_tri_io(25),
      O => smpl_cmp_status_tri_i_25(25),
      T => smpl_cmp_status_tri_t_25(25)
    );
smpl_cmp_status_tri_iobuf_26: component IOBUF
     port map (
      I => smpl_cmp_status_tri_o_26(26),
      IO => smpl_cmp_status_tri_io(26),
      O => smpl_cmp_status_tri_i_26(26),
      T => smpl_cmp_status_tri_t_26(26)
    );
smpl_cmp_status_tri_iobuf_27: component IOBUF
     port map (
      I => smpl_cmp_status_tri_o_27(27),
      IO => smpl_cmp_status_tri_io(27),
      O => smpl_cmp_status_tri_i_27(27),
      T => smpl_cmp_status_tri_t_27(27)
    );
smpl_cmp_status_tri_iobuf_28: component IOBUF
     port map (
      I => smpl_cmp_status_tri_o_28(28),
      IO => smpl_cmp_status_tri_io(28),
      O => smpl_cmp_status_tri_i_28(28),
      T => smpl_cmp_status_tri_t_28(28)
    );
smpl_cmp_status_tri_iobuf_29: component IOBUF
     port map (
      I => smpl_cmp_status_tri_o_29(29),
      IO => smpl_cmp_status_tri_io(29),
      O => smpl_cmp_status_tri_i_29(29),
      T => smpl_cmp_status_tri_t_29(29)
    );
smpl_cmp_status_tri_iobuf_3: component IOBUF
     port map (
      I => smpl_cmp_status_tri_o_3(3),
      IO => smpl_cmp_status_tri_io(3),
      O => smpl_cmp_status_tri_i_3(3),
      T => smpl_cmp_status_tri_t_3(3)
    );
smpl_cmp_status_tri_iobuf_30: component IOBUF
     port map (
      I => smpl_cmp_status_tri_o_30(30),
      IO => smpl_cmp_status_tri_io(30),
      O => smpl_cmp_status_tri_i_30(30),
      T => smpl_cmp_status_tri_t_30(30)
    );
smpl_cmp_status_tri_iobuf_31: component IOBUF
     port map (
      I => smpl_cmp_status_tri_o_31(31),
      IO => smpl_cmp_status_tri_io(31),
      O => smpl_cmp_status_tri_i_31(31),
      T => smpl_cmp_status_tri_t_31(31)
    );
smpl_cmp_status_tri_iobuf_4: component IOBUF
     port map (
      I => smpl_cmp_status_tri_o_4(4),
      IO => smpl_cmp_status_tri_io(4),
      O => smpl_cmp_status_tri_i_4(4),
      T => smpl_cmp_status_tri_t_4(4)
    );
smpl_cmp_status_tri_iobuf_5: component IOBUF
     port map (
      I => smpl_cmp_status_tri_o_5(5),
      IO => smpl_cmp_status_tri_io(5),
      O => smpl_cmp_status_tri_i_5(5),
      T => smpl_cmp_status_tri_t_5(5)
    );
smpl_cmp_status_tri_iobuf_6: component IOBUF
     port map (
      I => smpl_cmp_status_tri_o_6(6),
      IO => smpl_cmp_status_tri_io(6),
      O => smpl_cmp_status_tri_i_6(6),
      T => smpl_cmp_status_tri_t_6(6)
    );
smpl_cmp_status_tri_iobuf_7: component IOBUF
     port map (
      I => smpl_cmp_status_tri_o_7(7),
      IO => smpl_cmp_status_tri_io(7),
      O => smpl_cmp_status_tri_i_7(7),
      T => smpl_cmp_status_tri_t_7(7)
    );
smpl_cmp_status_tri_iobuf_8: component IOBUF
     port map (
      I => smpl_cmp_status_tri_o_8(8),
      IO => smpl_cmp_status_tri_io(8),
      O => smpl_cmp_status_tri_i_8(8),
      T => smpl_cmp_status_tri_t_8(8)
    );
smpl_cmp_status_tri_iobuf_9: component IOBUF
     port map (
      I => smpl_cmp_status_tri_o_9(9),
      IO => smpl_cmp_status_tri_io(9),
      O => smpl_cmp_status_tri_i_9(9),
      T => smpl_cmp_status_tri_t_9(9)
    );
spi_0_io0_iobuf: component IOBUF
     port map (
      I => spi_0_io0_o,
      IO => spi_0_io0_io,
      O => spi_0_io0_i,
      T => spi_0_io0_t
    );
spi_0_io1_iobuf: component IOBUF
     port map (
      I => spi_0_io1_o,
      IO => spi_0_io1_io,
      O => spi_0_io1_i,
      T => spi_0_io1_t
    );
spi_0_sck_iobuf: component IOBUF
     port map (
      I => spi_0_sck_o,
      IO => spi_0_sck_io,
      O => spi_0_sck_i,
      T => spi_0_sck_t
    );
spi_0_ss_iobuf_0: component IOBUF
     port map (
      I => spi_0_ss_o_0(0),
      IO => spi_0_ss_io(0),
      O => spi_0_ss_i_0(0),
      T => spi_0_ss_t
    );
spi_0_ss_iobuf_1: component IOBUF
     port map (
      I => spi_0_ss_o_1(1),
      IO => spi_0_ss_io(1),
      O => spi_0_ss_i_1(1),
      T => spi_0_ss_t
    );
spi_0_ss_iobuf_2: component IOBUF
     port map (
      I => spi_0_ss_o_2(2),
      IO => spi_0_ss_io(2),
      O => spi_0_ss_i_2(2),
      T => spi_0_ss_t
    );
spi_0_ss_iobuf_3: component IOBUF
     port map (
      I => spi_0_ss_o_3(3),
      IO => spi_0_ss_io(3),
      O => spi_0_ss_i_3(3),
      T => spi_0_ss_t
    );
spi_0_ss_iobuf_4: component IOBUF
     port map (
      I => spi_0_ss_o_4(4),
      IO => spi_0_ss_io(4),
      O => spi_0_ss_i_4(4),
      T => spi_0_ss_t
    );
spi_0_ss_iobuf_5: component IOBUF
     port map (
      I => spi_0_ss_o_5(5),
      IO => spi_0_ss_io(5),
      O => spi_0_ss_i_5(5),
      T => spi_0_ss_t
    );
spi_0_ss_iobuf_6: component IOBUF
     port map (
      I => spi_0_ss_o_6(6),
      IO => spi_0_ss_io(6),
      O => spi_0_ss_i_6(6),
      T => spi_0_ss_t
    );
spi_0_ss_iobuf_7: component IOBUF
     port map (
      I => spi_0_ss_o_7(7),
      IO => spi_0_ss_io(7),
      O => spi_0_ss_i_7(7),
      T => spi_0_ss_t
    );
spi_0_ss_iobuf_8: component IOBUF
     port map (
      I => spi_0_ss_o_8(8),
      IO => spi_0_ss_io(8),
      O => spi_0_ss_i_8(8),
      T => spi_0_ss_t
    );
spi_1_io0_iobuf: component IOBUF
     port map (
      I => spi_1_io0_o,
      IO => spi_1_io0_io,
      O => spi_1_io0_i,
      T => spi_1_io0_t
    );
spi_1_io1_iobuf: component IOBUF
     port map (
      I => spi_1_io1_o,
      IO => spi_1_io1_io,
      O => spi_1_io1_i,
      T => spi_1_io1_t
    );
spi_1_sck_iobuf: component IOBUF
     port map (
      I => spi_1_sck_o,
      IO => spi_1_sck_io,
      O => spi_1_sck_i,
      T => spi_1_sck_t
    );
spi_1_ss_iobuf_0: component IOBUF
     port map (
      I => spi_1_ss_o_0(0),
      IO => spi_1_ss_io(0),
      O => spi_1_ss_i_0(0),
      T => spi_1_ss_t
    );
spi_1_ss_iobuf_1: component IOBUF
     port map (
      I => spi_1_ss_o_1(1),
      IO => spi_1_ss_io(1),
      O => spi_1_ss_i_1(1),
      T => spi_1_ss_t
    );
spi_2_io0_iobuf: component IOBUF
     port map (
      I => spi_2_io0_o,
      IO => spi_2_io0_io,
      O => spi_2_io0_i,
      T => spi_2_io0_t
    );
spi_2_io1_iobuf: component IOBUF
     port map (
      I => spi_2_io1_o,
      IO => spi_2_io1_io,
      O => spi_2_io1_i,
      T => spi_2_io1_t
    );
spi_2_sck_iobuf: component IOBUF
     port map (
      I => spi_2_sck_o,
      IO => spi_2_sck_io,
      O => spi_2_sck_i,
      T => spi_2_sck_t
    );
spi_2_ss_iobuf_0: component IOBUF
     port map (
      I => spi_2_ss_o_0(0),
      IO => spi_2_ss_io(0),
      O => spi_2_ss_i_0(0),
      T => spi_2_ss_t
    );
spi_2_ss_iobuf_1: component IOBUF
     port map (
      I => spi_2_ss_o_1(1),
      IO => spi_2_ss_io(1),
      O => spi_2_ss_i_1(1),
      T => spi_2_ss_t
    );
end STRUCTURE;
