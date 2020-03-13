--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
--Date        : Mon Feb 24 16:06:20 2020
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
    avmm_m0_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    avmm_m0_read : out STD_LOGIC;
    avmm_m0_readdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    avmm_m0_readdatavalid : in STD_LOGIC;
    avmm_m0_waitrequest : in STD_LOGIC;
    avmm_m0_write : out STD_LOGIC;
    avmm_m0_writedata : out STD_LOGIC_VECTOR ( 31 downto 0 );
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
    pllcfg_stat_tri_o : out STD_LOGIC_VECTOR ( 11 downto 0 );
    reset_n : in STD_LOGIC;
    smpl_cmp_en_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    smpl_cmp_sel_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    smpl_cmp_status_tri_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    spi_0_io0_io : inout STD_LOGIC;
    spi_0_io1_io : inout STD_LOGIC;
    spi_0_sck_io : inout STD_LOGIC;
    spi_0_ss_io : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    spi_1_io0_io : inout STD_LOGIC;
    spi_1_io1_io : inout STD_LOGIC;
    spi_1_sck_io : inout STD_LOGIC;
    spi_1_ss_io : inout STD_LOGIC_VECTOR ( 5 downto 0 );
    spi_2_io0_io : inout STD_LOGIC;
    spi_2_io1_io : inout STD_LOGIC;
    spi_2_sck_io : inout STD_LOGIC;
    spi_2_ss_io : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    uart_0_rxd : in STD_LOGIC;
    uart_0_txd : out STD_LOGIC;
    vctcxo_tamer_0_ctrl_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end mb_subsystem_wrapper;

architecture STRUCTURE of mb_subsystem_wrapper is
  component mb_subsystem is
  port (
    Clk : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    fifo_write_0_aclr : out STD_LOGIC;
    pll_c0 : out STD_LOGIC;
    pll_locked : out STD_LOGIC;
    pll_c1 : out STD_LOGIC;
    extm_axi_resetn_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gpio_0_tri_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    extm_0_axi_sel_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    iic_0_scl_i : in STD_LOGIC;
    iic_0_scl_o : out STD_LOGIC;
    iic_0_scl_t : out STD_LOGIC;
    iic_0_sda_i : in STD_LOGIC;
    iic_0_sda_o : out STD_LOGIC;
    iic_0_sda_t : out STD_LOGIC;
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
    smpl_cmp_status_tri_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    fifo_read_0_almost_empty : in STD_LOGIC;
    fifo_read_0_rd_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_read_0_rd_en : out STD_LOGIC;
    fifo_read_0_empty : in STD_LOGIC;
    smpl_cmp_sel_tri_o : out STD_LOGIC_VECTOR ( 0 to 0 );
    pllcfg_stat_tri_o : out STD_LOGIC_VECTOR ( 11 downto 0 );
    pll_rst_tri_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    spi_1_io0_i : in STD_LOGIC;
    spi_1_io0_o : out STD_LOGIC;
    spi_1_io0_t : out STD_LOGIC;
    spi_1_io1_i : in STD_LOGIC;
    spi_1_io1_o : out STD_LOGIC;
    spi_1_io1_t : out STD_LOGIC;
    spi_1_sck_i : in STD_LOGIC;
    spi_1_sck_o : out STD_LOGIC;
    spi_1_sck_t : out STD_LOGIC;
    spi_1_ss_i : in STD_LOGIC_VECTOR ( 5 downto 0 );
    spi_1_ss_o : out STD_LOGIC_VECTOR ( 5 downto 0 );
    spi_1_ss_t : out STD_LOGIC;
    smpl_cmp_en_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    fifo_write_0_wr_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_write_0_almost_full : in STD_LOGIC;
    fifo_write_0_wr_en : out STD_LOGIC;
    fifo_write_0_full : in STD_LOGIC;
    uart_0_rxd : in STD_LOGIC;
    uart_0_txd : out STD_LOGIC;
    avmm_m0_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    avmm_m0_read : out STD_LOGIC;
    avmm_m0_readdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    avmm_m0_readdatavalid : in STD_LOGIC;
    avmm_m0_waitrequest : in STD_LOGIC;
    avmm_m0_write : out STD_LOGIC;
    avmm_m0_writedata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    spi_0_io0_i : in STD_LOGIC;
    spi_0_io0_o : out STD_LOGIC;
    spi_0_io0_t : out STD_LOGIC;
    spi_0_io1_i : in STD_LOGIC;
    spi_0_io1_o : out STD_LOGIC;
    spi_0_io1_t : out STD_LOGIC;
    spi_0_sck_i : in STD_LOGIC;
    spi_0_sck_o : out STD_LOGIC;
    spi_0_sck_t : out STD_LOGIC;
    spi_0_ss_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    spi_0_ss_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    spi_0_ss_t : out STD_LOGIC;
    gpio_1_tri_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vctcxo_tamer_0_ctrl_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pllcfg_cmd_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
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
    spi_2_ss_t : out STD_LOGIC
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
  signal spi_0_ss_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal spi_0_ss_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal spi_0_ss_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal spi_0_ss_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal spi_0_ss_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal spi_0_ss_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal spi_0_ss_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal spi_0_ss_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
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
  signal spi_1_ss_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal spi_1_ss_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal spi_1_ss_i_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal spi_1_ss_i_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal spi_1_ss_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal spi_1_ss_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal spi_1_ss_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal spi_1_ss_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal spi_1_ss_io_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal spi_1_ss_io_5 : STD_LOGIC_VECTOR ( 5 to 5 );
  signal spi_1_ss_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal spi_1_ss_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal spi_1_ss_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal spi_1_ss_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal spi_1_ss_o_4 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal spi_1_ss_o_5 : STD_LOGIC_VECTOR ( 5 to 5 );
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
      avmm_m0_address(31 downto 0) => avmm_m0_address(31 downto 0),
      avmm_m0_read => avmm_m0_read,
      avmm_m0_readdata(31 downto 0) => avmm_m0_readdata(31 downto 0),
      avmm_m0_readdatavalid => avmm_m0_readdatavalid,
      avmm_m0_waitrequest => avmm_m0_waitrequest,
      avmm_m0_write => avmm_m0_write,
      avmm_m0_writedata(31 downto 0) => avmm_m0_writedata(31 downto 0),
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
      pllcfg_stat_tri_o(11 downto 0) => pllcfg_stat_tri_o(11 downto 0),
      reset_n => reset_n,
      smpl_cmp_en_tri_o(3 downto 0) => smpl_cmp_en_tri_o(3 downto 0),
      smpl_cmp_sel_tri_o(0) => smpl_cmp_sel_tri_o(0),
      smpl_cmp_status_tri_i(1 downto 0) => smpl_cmp_status_tri_i(1 downto 0),
      spi_0_io0_i => spi_0_io0_i,
      spi_0_io0_o => spi_0_io0_o,
      spi_0_io0_t => spi_0_io0_t,
      spi_0_io1_i => spi_0_io1_i,
      spi_0_io1_o => spi_0_io1_o,
      spi_0_io1_t => spi_0_io1_t,
      spi_0_sck_i => spi_0_sck_i,
      spi_0_sck_o => spi_0_sck_o,
      spi_0_sck_t => spi_0_sck_t,
      spi_0_ss_i(3) => spi_0_ss_i_3(3),
      spi_0_ss_i(2) => spi_0_ss_i_2(2),
      spi_0_ss_i(1) => spi_0_ss_i_1(1),
      spi_0_ss_i(0) => spi_0_ss_i_0(0),
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
      spi_1_ss_i(5) => spi_1_ss_i_5(5),
      spi_1_ss_i(4) => spi_1_ss_i_4(4),
      spi_1_ss_i(3) => spi_1_ss_i_3(3),
      spi_1_ss_i(2) => spi_1_ss_i_2(2),
      spi_1_ss_i(1) => spi_1_ss_i_1(1),
      spi_1_ss_i(0) => spi_1_ss_i_0(0),
      spi_1_ss_o(5) => spi_1_ss_o_5(5),
      spi_1_ss_o(4) => spi_1_ss_o_4(4),
      spi_1_ss_o(3) => spi_1_ss_o_3(3),
      spi_1_ss_o(2) => spi_1_ss_o_2(2),
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
      uart_0_txd => uart_0_txd,
      vctcxo_tamer_0_ctrl_tri_i(3 downto 0) => vctcxo_tamer_0_ctrl_tri_i(3 downto 0)
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
spi_1_ss_iobuf_2: component IOBUF
     port map (
      I => spi_1_ss_o_2(2),
      IO => spi_1_ss_io(2),
      O => spi_1_ss_i_2(2),
      T => spi_1_ss_t
    );
spi_1_ss_iobuf_3: component IOBUF
     port map (
      I => spi_1_ss_o_3(3),
      IO => spi_1_ss_io(3),
      O => spi_1_ss_i_3(3),
      T => spi_1_ss_t
    );
spi_1_ss_iobuf_4: component IOBUF
     port map (
      I => spi_1_ss_o_4(4),
      IO => spi_1_ss_io(4),
      O => spi_1_ss_i_4(4),
      T => spi_1_ss_t
    );
spi_1_ss_iobuf_5: component IOBUF
     port map (
      I => spi_1_ss_o_5(5),
      IO => spi_1_ss_io(5),
      O => spi_1_ss_i_5(5),
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
