
// file: selectio_wiz_0_selectio_wiz.v
// (c) Copyright 2009 - 2013 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//----------------------------------------------------------------------------
// User entered comments
//----------------------------------------------------------------------------
// None
//----------------------------------------------------------------------------

`timescale 1ps/1ps
module max5878_io
   // width of the data for the system
 #(parameter SYS_W = 16,
   // IQSEL signal invert
   parameter INV_IQSEL = 0,
   // width of the data for the device
   parameter DEV_W = 32)
 (
  input clk,
  input clk_div, 
  input clk_fwd, 
  // From the device out to the system
  input  [DEV_W-1:0] data_out_from_device,
  output [SYS_W-1:0] data_out_to_pins_p,
  output [SYS_W-1:0] data_out_to_pins_n,
  output seliq_to_pins_p, 
  output seliq_to_pins_n,
  output  clk_to_pins_p,
  output  clk_to_pins_n,
  input              clk_reset,
  input              io_reset);
  localparam         num_serial_bits = DEV_W/SYS_W;
  wire clock_enable = 1'b1;
  // Signal declarations
  ////------------------------------
  wire clk_fwd_out;
  // Before the buffer
  wire   [SYS_W-1:0] data_out_to_pins_int;
  // Between the delay and serdes
  wire   [SYS_W-1:0] data_out_to_pins_predelay;
  // Array to use intermediately from the serdes to the internal
  //  devices. bus "0" is the leftmost bus
  wire [SYS_W-1:0]  oserdes_d[0:13];   // fills in starting with 13
  
  wire clk_out1;
  wire clk_out2;
  wire clk_out3;
  wire clk_out3_buf;
  
  wire seliq_to_pins;
  
  reg[15:0] data_out_from_device_reg;
  wire[31:0] data_out_from_device_mod;
  
  reg[2:0] reset_dly_counter;
  reg io_reset_int;
  
  always @(posedge clk_div) begin
    if (io_reset == 0) begin
        io_reset_int      <= 0;
        reset_dly_counter <= 0;
    end
    else begin
       if (reset_dly_counter >= 7)
            io_reset_int <= 1;
       else begin
            io_reset_int <= 0;
            reset_dly_counter <= reset_dly_counter + 1;
       end        
    end  
  end
  
  
  always @(posedge clk_div) begin
    data_out_from_device_reg = data_out_from_device[15:0];
  end
  assign data_out_from_device_mod[15:0] = INV_IQSEL ? data_out_from_device_reg : data_out_from_device[15:0];
  assign data_out_from_device_mod[31:16] = data_out_from_device[31:16];
  
  
  assign clk_in_int_buf =  clk;
  //assign clk_div = clk_out2;
  

  // We have multiple bits- step over every bit, instantiating the required elements
  genvar pin_count;
  genvar slice_count;
  generate for (pin_count = 0; pin_count < SYS_W; pin_count = pin_count + 1) begin: pins
    // Instantiate the buffers
    ////------------------------------
    // Instantiate a buffer for every bit of the data bus
    OBUFDS
      #(.IOSTANDARD ("LVDS_25"))
     obufds_inst
       (.O          (data_out_to_pins_p  [pin_count]),
        .OB         (data_out_to_pins_n  [pin_count]),
        .I          (data_out_to_pins_int[pin_count]));

    // Pass through the delay
    ////-------------------------------
   assign data_out_to_pins_int[pin_count]    = data_out_to_pins_predelay[pin_count];
 
     // Instantiate the serdes primitive
     ////------------------------------

     // declare the oserdes
     OSERDESE2
       # (
         .DATA_RATE_OQ   ("SDR"),
         .DATA_RATE_TQ   ("SDR"),
         .DATA_WIDTH     (2),
         .TRISTATE_WIDTH (1),
         .SERDES_MODE    ("MASTER"))
       oserdese2_master (
         .D1             (oserdes_d[13][pin_count]),
         .D2             (oserdes_d[12][pin_count]),
         .D3             (oserdes_d[11][pin_count]),
         .D4             (oserdes_d[10][pin_count]),
         .D5             (oserdes_d[9][pin_count]),
         .D6             (oserdes_d[8][pin_count]),
         .D7             (oserdes_d[7][pin_count]),
         .D8             (oserdes_d[6][pin_count]),
         .T1             (1'b0),
         .T2             (1'b0),
         .T3             (1'b0),
         .T4             (1'b0),
         .SHIFTIN1       (1'b0),
         .SHIFTIN2       (1'b0),
         .SHIFTOUT1      (),
         .SHIFTOUT2      (),
         .OCE            (clock_enable),
         .CLK            (clk_in_int_buf),
         .CLKDIV         (clk_div),
         .OQ             (data_out_to_pins_predelay[pin_count]),
         .TQ             (),
         .OFB            (),
         .TFB            (),
         .TBYTEIN        (1'b0),
         .TBYTEOUT       (),
         .TCE            (1'b0),
         .RST            (io_reset_int));

     // Concatenate the serdes outputs together. Keep the timesliced
     //   bits together, and placing the earliest bits on the right
     //   ie, if data comes in 0, 1, 2, 3, 4, 5, 6, 7, ...
     //       the output will be 3210, 7654, ...
     ////---------------------------------------------------------
     for (slice_count = 0; slice_count < num_serial_bits; slice_count = slice_count + 1) begin: out_slices
        // This places the first data in time on the right
        assign oserdes_d[14-slice_count-1] =
           data_out_from_device_mod[slice_count*SYS_W+:SYS_W];
        // To place the first data in time on the left, use the
        //   following code, instead
        // assign oserdes_d[slice_count] =
        //    data_out_from_device[slice_count*SYS_W+:SYS_W];
     end
  end
  endgenerate
  
       // IQ select signal
       OSERDESE2
       # (
         .DATA_RATE_OQ   ("SDR"),
         .DATA_RATE_TQ   ("SDR"),
         .DATA_WIDTH     (2),
         .TRISTATE_WIDTH (1),
         .SERDES_MODE    ("MASTER"))
       oserdese2_master (
         .D1             (!INV_IQSEL),//1'b1),
         .D2             (INV_IQSEL),//1'b0),
         .D3             (1'b0),
         .D4             (1'b0),
         .D5             (1'b0),
         .D6             (1'b0),
         .D7             (1'b0),
         .D8             (1'b0),
         .T1             (1'b0),
         .T2             (1'b0),
         .T3             (1'b0),
         .T4             (1'b0),
         .SHIFTIN1       (1'b0),
         .SHIFTIN2       (1'b0),
         .SHIFTOUT1      (),
         .SHIFTOUT2      (),
         .OCE            (clock_enable),
         .CLK            (clk_in_int_buf),
         .CLKDIV         (clk_div),
         .OQ             (seliq_to_pins),
         .TQ             (),
         .OFB            (),
         .TFB            (),
         .TBYTEIN        (1'b0),
         .TBYTEOUT       (),
         .TCE            (1'b0),
         .RST            (io_reset_int));
         
        // Differential buffer for SELIQ
    OBUFDS
      #(.IOSTANDARD ("LVDS_25"))
     obufds_inst
       (.O          (seliq_to_pins_p),
        .OB         (seliq_to_pins_n),
       .I          (seliq_to_pins));
  
//// NO ODELAY

//// clk fwd
///fuji
//// NO ODELAY
   // clock forwarding logic
  
         
   ODDR #(
      .DDR_CLK_EDGE("OPPOSITE_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE" 
      .INIT(1'b0),    // Initial value of Q: 1'b0 or 1'b1
      .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
   ) ODDR_inst (
      .Q(clk_fwd_out),   // 1-bit DDR output
      .C(clk_fwd),   // 1-bit clock input
      .CE(1'b1), // 1-bit clock enable input
      .D1(1'b1), // 1-bit data input (positive edge)
      .D2(1'b0), // 1-bit data input (negative edge)
      .R(1'b0),   // 1-bit reset
      .S(1'b0)    // 1-bit set
   );


// Clock Output Buffer
    OBUFDS
      #(.IOSTANDARD ("LVDS_25"))
     obufds_inst1
       (.O          (clk_to_pins_p),
        .OB         (clk_to_pins_n),
        .I          (clk_fwd_out));
endmodule
