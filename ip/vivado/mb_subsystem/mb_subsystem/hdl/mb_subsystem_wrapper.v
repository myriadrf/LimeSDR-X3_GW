//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Tue Oct  8 11:52:22 2019
//Host        : DESKTOP-FOO3KS1 running 64-bit major release  (build 9200)
//Command     : generate_target mb_subsystem_wrapper.bd
//Design      : mb_subsystem_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mb_subsystem_wrapper
   (Clk,
    fifo_read_0_almost_empty,
    fifo_read_0_empty,
    fifo_read_0_rd_data,
    fifo_read_0_rd_en,
    fifo_write_0_aclr,
    fifo_write_0_almost_full,
    fifo_write_0_full,
    fifo_write_0_wr_data,
    fifo_write_0_wr_en,
    gpio_0_tri_i,
    gpio_1_tri_o,
    iic_0_scl_io,
    iic_0_sda_io,
    reset_n,
    spi_0_io0_io,
    spi_0_io1_io,
    spi_0_sck_io,
    spi_0_ss_io,
    spi_1_io0_io,
    spi_1_io1_io,
    spi_1_sck_io,
    spi_1_ss_io,
    spi_2_io0_io,
    spi_2_io1_io,
    spi_2_sck_io,
    spi_2_ss_io,
    uart_0_rxd,
    uart_0_txd);
  input Clk;
  input fifo_read_0_almost_empty;
  input fifo_read_0_empty;
  input [31:0]fifo_read_0_rd_data;
  output fifo_read_0_rd_en;
  output fifo_write_0_aclr;
  input fifo_write_0_almost_full;
  input fifo_write_0_full;
  output [31:0]fifo_write_0_wr_data;
  output fifo_write_0_wr_en;
  input [7:0]gpio_0_tri_i;
  output [7:0]gpio_1_tri_o;
  inout iic_0_scl_io;
  inout iic_0_sda_io;
  input reset_n;
  inout spi_0_io0_io;
  inout spi_0_io1_io;
  inout spi_0_sck_io;
  inout [8:0]spi_0_ss_io;
  inout spi_1_io0_io;
  inout spi_1_io1_io;
  inout spi_1_sck_io;
  inout [0:0]spi_1_ss_io;
  inout spi_2_io0_io;
  inout spi_2_io1_io;
  inout spi_2_sck_io;
  inout [1:0]spi_2_ss_io;
  input uart_0_rxd;
  output uart_0_txd;

  wire Clk;
  wire fifo_read_0_almost_empty;
  wire fifo_read_0_empty;
  wire [31:0]fifo_read_0_rd_data;
  wire fifo_read_0_rd_en;
  wire fifo_write_0_aclr;
  wire fifo_write_0_almost_full;
  wire fifo_write_0_full;
  wire [31:0]fifo_write_0_wr_data;
  wire fifo_write_0_wr_en;
  wire [7:0]gpio_0_tri_i;
  wire [7:0]gpio_1_tri_o;
  wire iic_0_scl_i;
  wire iic_0_scl_io;
  wire iic_0_scl_o;
  wire iic_0_scl_t;
  wire iic_0_sda_i;
  wire iic_0_sda_io;
  wire iic_0_sda_o;
  wire iic_0_sda_t;
  wire reset_n;
  wire spi_0_io0_i;
  wire spi_0_io0_io;
  wire spi_0_io0_o;
  wire spi_0_io0_t;
  wire spi_0_io1_i;
  wire spi_0_io1_io;
  wire spi_0_io1_o;
  wire spi_0_io1_t;
  wire spi_0_sck_i;
  wire spi_0_sck_io;
  wire spi_0_sck_o;
  wire spi_0_sck_t;
  wire [0:0]spi_0_ss_i_0;
  wire [1:1]spi_0_ss_i_1;
  wire [2:2]spi_0_ss_i_2;
  wire [3:3]spi_0_ss_i_3;
  wire [4:4]spi_0_ss_i_4;
  wire [5:5]spi_0_ss_i_5;
  wire [6:6]spi_0_ss_i_6;
  wire [7:7]spi_0_ss_i_7;
  wire [8:8]spi_0_ss_i_8;
  wire [0:0]spi_0_ss_io_0;
  wire [1:1]spi_0_ss_io_1;
  wire [2:2]spi_0_ss_io_2;
  wire [3:3]spi_0_ss_io_3;
  wire [4:4]spi_0_ss_io_4;
  wire [5:5]spi_0_ss_io_5;
  wire [6:6]spi_0_ss_io_6;
  wire [7:7]spi_0_ss_io_7;
  wire [8:8]spi_0_ss_io_8;
  wire [0:0]spi_0_ss_o_0;
  wire [1:1]spi_0_ss_o_1;
  wire [2:2]spi_0_ss_o_2;
  wire [3:3]spi_0_ss_o_3;
  wire [4:4]spi_0_ss_o_4;
  wire [5:5]spi_0_ss_o_5;
  wire [6:6]spi_0_ss_o_6;
  wire [7:7]spi_0_ss_o_7;
  wire [8:8]spi_0_ss_o_8;
  wire spi_0_ss_t;
  wire spi_1_io0_i;
  wire spi_1_io0_io;
  wire spi_1_io0_o;
  wire spi_1_io0_t;
  wire spi_1_io1_i;
  wire spi_1_io1_io;
  wire spi_1_io1_o;
  wire spi_1_io1_t;
  wire spi_1_sck_i;
  wire spi_1_sck_io;
  wire spi_1_sck_o;
  wire spi_1_sck_t;
  wire [0:0]spi_1_ss_i_0;
  wire [0:0]spi_1_ss_io_0;
  wire [0:0]spi_1_ss_o_0;
  wire spi_1_ss_t;
  wire spi_2_io0_i;
  wire spi_2_io0_io;
  wire spi_2_io0_o;
  wire spi_2_io0_t;
  wire spi_2_io1_i;
  wire spi_2_io1_io;
  wire spi_2_io1_o;
  wire spi_2_io1_t;
  wire spi_2_sck_i;
  wire spi_2_sck_io;
  wire spi_2_sck_o;
  wire spi_2_sck_t;
  wire [0:0]spi_2_ss_i_0;
  wire [1:1]spi_2_ss_i_1;
  wire [0:0]spi_2_ss_io_0;
  wire [1:1]spi_2_ss_io_1;
  wire [0:0]spi_2_ss_o_0;
  wire [1:1]spi_2_ss_o_1;
  wire spi_2_ss_t;
  wire uart_0_rxd;
  wire uart_0_txd;

  IOBUF iic_0_scl_iobuf
       (.I(iic_0_scl_o),
        .IO(iic_0_scl_io),
        .O(iic_0_scl_i),
        .T(iic_0_scl_t));
  IOBUF iic_0_sda_iobuf
       (.I(iic_0_sda_o),
        .IO(iic_0_sda_io),
        .O(iic_0_sda_i),
        .T(iic_0_sda_t));
  mb_subsystem mb_subsystem_i
       (.Clk(Clk),
        .fifo_read_0_almost_empty(fifo_read_0_almost_empty),
        .fifo_read_0_empty(fifo_read_0_empty),
        .fifo_read_0_rd_data(fifo_read_0_rd_data),
        .fifo_read_0_rd_en(fifo_read_0_rd_en),
        .fifo_write_0_aclr(fifo_write_0_aclr),
        .fifo_write_0_almost_full(fifo_write_0_almost_full),
        .fifo_write_0_full(fifo_write_0_full),
        .fifo_write_0_wr_data(fifo_write_0_wr_data),
        .fifo_write_0_wr_en(fifo_write_0_wr_en),
        .gpio_0_tri_i(gpio_0_tri_i),
        .gpio_1_tri_o(gpio_1_tri_o),
        .iic_0_scl_i(iic_0_scl_i),
        .iic_0_scl_o(iic_0_scl_o),
        .iic_0_scl_t(iic_0_scl_t),
        .iic_0_sda_i(iic_0_sda_i),
        .iic_0_sda_o(iic_0_sda_o),
        .iic_0_sda_t(iic_0_sda_t),
        .reset_n(reset_n),
        .spi_0_io0_i(spi_0_io0_i),
        .spi_0_io0_o(spi_0_io0_o),
        .spi_0_io0_t(spi_0_io0_t),
        .spi_0_io1_i(spi_0_io1_i),
        .spi_0_io1_o(spi_0_io1_o),
        .spi_0_io1_t(spi_0_io1_t),
        .spi_0_sck_i(spi_0_sck_i),
        .spi_0_sck_o(spi_0_sck_o),
        .spi_0_sck_t(spi_0_sck_t),
        .spi_0_ss_i({spi_0_ss_i_8,spi_0_ss_i_7,spi_0_ss_i_6,spi_0_ss_i_5,spi_0_ss_i_4,spi_0_ss_i_3,spi_0_ss_i_2,spi_0_ss_i_1,spi_0_ss_i_0}),
        .spi_0_ss_o({spi_0_ss_o_8,spi_0_ss_o_7,spi_0_ss_o_6,spi_0_ss_o_5,spi_0_ss_o_4,spi_0_ss_o_3,spi_0_ss_o_2,spi_0_ss_o_1,spi_0_ss_o_0}),
        .spi_0_ss_t(spi_0_ss_t),
        .spi_1_io0_i(spi_1_io0_i),
        .spi_1_io0_o(spi_1_io0_o),
        .spi_1_io0_t(spi_1_io0_t),
        .spi_1_io1_i(spi_1_io1_i),
        .spi_1_io1_o(spi_1_io1_o),
        .spi_1_io1_t(spi_1_io1_t),
        .spi_1_sck_i(spi_1_sck_i),
        .spi_1_sck_o(spi_1_sck_o),
        .spi_1_sck_t(spi_1_sck_t),
        .spi_1_ss_i(spi_1_ss_i_0),
        .spi_1_ss_o(spi_1_ss_o_0),
        .spi_1_ss_t(spi_1_ss_t),
        .spi_2_io0_i(spi_2_io0_i),
        .spi_2_io0_o(spi_2_io0_o),
        .spi_2_io0_t(spi_2_io0_t),
        .spi_2_io1_i(spi_2_io1_i),
        .spi_2_io1_o(spi_2_io1_o),
        .spi_2_io1_t(spi_2_io1_t),
        .spi_2_sck_i(spi_2_sck_i),
        .spi_2_sck_o(spi_2_sck_o),
        .spi_2_sck_t(spi_2_sck_t),
        .spi_2_ss_i({spi_2_ss_i_1,spi_2_ss_i_0}),
        .spi_2_ss_o({spi_2_ss_o_1,spi_2_ss_o_0}),
        .spi_2_ss_t(spi_2_ss_t),
        .uart_0_rxd(uart_0_rxd),
        .uart_0_txd(uart_0_txd));
  IOBUF spi_0_io0_iobuf
       (.I(spi_0_io0_o),
        .IO(spi_0_io0_io),
        .O(spi_0_io0_i),
        .T(spi_0_io0_t));
  IOBUF spi_0_io1_iobuf
       (.I(spi_0_io1_o),
        .IO(spi_0_io1_io),
        .O(spi_0_io1_i),
        .T(spi_0_io1_t));
  IOBUF spi_0_sck_iobuf
       (.I(spi_0_sck_o),
        .IO(spi_0_sck_io),
        .O(spi_0_sck_i),
        .T(spi_0_sck_t));
  IOBUF spi_0_ss_iobuf_0
       (.I(spi_0_ss_o_0),
        .IO(spi_0_ss_io[0]),
        .O(spi_0_ss_i_0),
        .T(spi_0_ss_t));
  IOBUF spi_0_ss_iobuf_1
       (.I(spi_0_ss_o_1),
        .IO(spi_0_ss_io[1]),
        .O(spi_0_ss_i_1),
        .T(spi_0_ss_t));
  IOBUF spi_0_ss_iobuf_2
       (.I(spi_0_ss_o_2),
        .IO(spi_0_ss_io[2]),
        .O(spi_0_ss_i_2),
        .T(spi_0_ss_t));
  IOBUF spi_0_ss_iobuf_3
       (.I(spi_0_ss_o_3),
        .IO(spi_0_ss_io[3]),
        .O(spi_0_ss_i_3),
        .T(spi_0_ss_t));
  IOBUF spi_0_ss_iobuf_4
       (.I(spi_0_ss_o_4),
        .IO(spi_0_ss_io[4]),
        .O(spi_0_ss_i_4),
        .T(spi_0_ss_t));
  IOBUF spi_0_ss_iobuf_5
       (.I(spi_0_ss_o_5),
        .IO(spi_0_ss_io[5]),
        .O(spi_0_ss_i_5),
        .T(spi_0_ss_t));
  IOBUF spi_0_ss_iobuf_6
       (.I(spi_0_ss_o_6),
        .IO(spi_0_ss_io[6]),
        .O(spi_0_ss_i_6),
        .T(spi_0_ss_t));
  IOBUF spi_0_ss_iobuf_7
       (.I(spi_0_ss_o_7),
        .IO(spi_0_ss_io[7]),
        .O(spi_0_ss_i_7),
        .T(spi_0_ss_t));
  IOBUF spi_0_ss_iobuf_8
       (.I(spi_0_ss_o_8),
        .IO(spi_0_ss_io[8]),
        .O(spi_0_ss_i_8),
        .T(spi_0_ss_t));
  IOBUF spi_1_io0_iobuf
       (.I(spi_1_io0_o),
        .IO(spi_1_io0_io),
        .O(spi_1_io0_i),
        .T(spi_1_io0_t));
  IOBUF spi_1_io1_iobuf
       (.I(spi_1_io1_o),
        .IO(spi_1_io1_io),
        .O(spi_1_io1_i),
        .T(spi_1_io1_t));
  IOBUF spi_1_sck_iobuf
       (.I(spi_1_sck_o),
        .IO(spi_1_sck_io),
        .O(spi_1_sck_i),
        .T(spi_1_sck_t));
  IOBUF spi_1_ss_iobuf_0
       (.I(spi_1_ss_o_0),
        .IO(spi_1_ss_io[0]),
        .O(spi_1_ss_i_0),
        .T(spi_1_ss_t));
  IOBUF spi_2_io0_iobuf
       (.I(spi_2_io0_o),
        .IO(spi_2_io0_io),
        .O(spi_2_io0_i),
        .T(spi_2_io0_t));
  IOBUF spi_2_io1_iobuf
       (.I(spi_2_io1_o),
        .IO(spi_2_io1_io),
        .O(spi_2_io1_i),
        .T(spi_2_io1_t));
  IOBUF spi_2_sck_iobuf
       (.I(spi_2_sck_o),
        .IO(spi_2_sck_io),
        .O(spi_2_sck_i),
        .T(spi_2_sck_t));
  IOBUF spi_2_ss_iobuf_0
       (.I(spi_2_ss_o_0),
        .IO(spi_2_ss_io[0]),
        .O(spi_2_ss_i_0),
        .T(spi_2_ss_t));
  IOBUF spi_2_ss_iobuf_1
       (.I(spi_2_ss_o_1),
        .IO(spi_2_ss_io[1]),
        .O(spi_2_ss_i_1),
        .T(spi_2_ss_t));
endmodule
