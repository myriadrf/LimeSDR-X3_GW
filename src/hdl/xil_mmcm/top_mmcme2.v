///////////////////////////////////////////////////////////////////////////////
//
//    Company:          Xilinx
//    Engineer:         Jim Tatsukawa, Karl Kurbjun and Carl Ribbing
//    Date:             7/30/2014
//    Design Name:      MMCM DRP
//    Module Name:      top.v
//    Version:          1.30
//    Target Devices:   7 Series
//    Tool versions:    2014.3
//    Description:      This is a basic demonstration of the MMCM_DRP
//                      connectivity to the MMCM_ADV.
//
//    Disclaimer:  XILINX IS PROVIDING THIS DESIGN, CODE, OR
//                 INFORMATION "AS IS" SOLELY FOR USE IN DEVELOPING
//                 PROGRAMS AND SOLUTIONS FOR XILINX DEVICES.  BY
//                 PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
//                 ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE,
//                 APPLICATION OR STANDARD, XILINX IS MAKING NO
//                 REPRESENTATION THAT THIS IMPLEMENTATION IS FREE
//                 FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE
//                 RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY
//                 REQUIRE FOR YOUR IMPLEMENTATION.  XILINX
//                 EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH
//                 RESPECT TO THE ADEQUACY OF THE IMPLEMENTATION,
//                 INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR
//                 REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE
//                 FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES
//                 OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
//                 PURPOSE.
//
//                 (c) Copyright 2009-1010 Xilinx, Inc.
//                 All rights reserved.
//
///////////////////////////////////////////////////////////////////////////////

`timescale 1ps/1ps

module top_mmcme2
   #(
     // "HIGH", "LOW" or "OPTIMIZED"
      parameter BANDWIDTH = "OPTIMIZED",
      //divides the frequency of all clocks
      parameter DIVCLK_DIVIDE = 1, // (1 to 106)
      //multiplies the frequency of all clocks
      parameter CLKFBOUT_MULT_F = 6, // (2 to 64)
      parameter CLKFBOUT_PHASE = 0.0,
      parameter CLKFBOUT_USE_FINE_PS = "FALSE",

      // Set the clock period (ns) of input clocks
      parameter CLKIN1_PERIOD = 10.000,
      parameter REF_JITTER1 = 0.010,

      // CLKOUT parameters:
      // DIVIDE: (1 to 128)
      // DUTY_CYCLE: (0.01 to 0.99) - This is dependent on the divide value.
      // PHASE: (0.0 to 360.0) - This is dependent on the divide value.
      // USE_FINE_PS: (TRUE or FALSE)

      parameter CLKOUT0_DIVIDE_F = 6,
      parameter CLKOUT0_DUTY_CYCLE = 0.5,
      parameter CLKOUT0_PHASE = 0.0,
      parameter CLKOUT0_USE_FINE_PS = "FALSE", //enable phase shift for this clock

      parameter CLKOUT1_DIVIDE = 6,
      parameter CLKOUT1_DUTY_CYCLE = 0.5,
      parameter CLKOUT1_PHASE = 0.0,
      parameter CLKOUT1_USE_FINE_PS = "FALSE" //enable phase shift for this clock
      )
   (
      // SSTEP is the input to start a reconfiguration.  It should only be
      // pulsed for one clock cycle.
      input    SSTEP,
      input    SCLK, // config clk
      // STATE determines which state the MMCM_ADV will be reconfigured to.  A
      // value of 0 correlates to state 1, and a value of 1 correlates to state
      // 2.

      // RST will reset the entire reference design including the MMCM_ADV
      input    RST,
      // CLKIN is the input clock that feeds the MMCM_ADV CLKIN as well as the
      // clock for the MMCM_DRP module
      input    CLKIN,

      // SRDY pulses for one clock cycle after the MMCM_ADV is locked and the
      // MMCM_DRP module is ready to start another re-configuration
      output   SRDY,
	  output   LOCKED,
      
      // clock config inputs
      input [15:0] c0_cnt,
      input [15:0] c1_cnt,
      input [15:0] c2_cnt,
      input [15:0] c3_cnt,
      input [15:0] c4_cnt,
      input [15:0] c5_cnt,
      input [15:0] c6_cnt,
      input        c0_oddiv,
      input        c1_oddiv,
      input        c2_oddiv,
      input        c3_oddiv,
      input        c4_oddiv,
      input        c5_oddiv,
      input        c6_oddiv,
      input        c0_byp,
      input        c1_byp,
      input        c2_byp,
      input        c3_byp,
      input        c4_byp,
      input        c5_byp,
      input        c6_byp,
      input [15:0] m_cnt,
      input        m_oddiv,
      input        m_byp,
      input [15:0] n_cnt,
      input        n_oddiv,
      input        n_byp,
      input [9:0]  xil_cm_f,
      
      // These are the clock outputs from the MMCM_ADV.
      output       CLK0OUT,
      output       CLK1OUT,
      output       CLK2OUT,
      output       CLK3OUT,
      output       CLK4OUT,
      output       CLK5OUT,
      output       CLK6OUT,
      
      // fine phase shift ports
      output       PSDONE,    
      input        PSCLK,
      input        PSEN,        
      input        PSINCDEC,
      input        [2:0] PS_CNT_SEL
           
   );

   // These signals are used as direct connections between the MMCM_ADV and the
   // MMCM_DRP.
   (* mark_debug = "true" *) wire [15:0]    di;
   (* mark_debug = "true" *) wire [6:0]     daddr;
   (* mark_debug = "true" *) wire [15:0]    dout;
   (* mark_debug = "true" *) wire           den;
   (* mark_debug = "true" *) wire           dwe;
   wire           dclk;
   wire           rst_mmcm;
   wire           drdy;
	reg				current_state;
	reg [7:0]		sstep_int ;
	reg				init_drp_state = 1;

   // These signals are used for the BUFG's necessary for the design.
   wire           clkin_bufgout;

   wire           clkfb_bufgout;
   wire           clkfb_bufgin;

   wire           clk0_bufgin;
   wire           clk0_bufgout;

   wire           clk1_bufgin;
   wire           clk1_bufgout;

   wire           clk2_bufgin;
   wire           clk2_bufgout;

   wire           clk3_bufgin;
   wire           clk3_bufgout;

   wire           clk4_bufgin;
   wire           clk4_bufgout;

   wire           clk5_bufgin;
   wire           clk5_bufgout;

   wire           clk6_bufgin;
   wire           clk6_bufgout;
   
   wire           ps_cnt_correct;
      // if PS_CNT_SEL is 011(c1 clock selected) then ps_cnt_correct = 1
   assign ps_cnt_correct = (PS_CNT_SEL == 3'b011) ? 1 : 0;

   assign CLKIN_ibuf = CLKIN;
   BUFG BUFG_IN (
      .O(clkin_bufgout),
      .I(CLKIN_ibuf)
   );

   BUFG BUFG_FB (
      .O(clkfb_bufgout),
      .I(clkfb_bufgin)
   );

   BUFG BUFG_CLK0 (
      .O(clk0_bufgout),
      .I(clk0_bufgin)
   );

   BUFG BUFG_CLK1 (
      .O(clk1_bufgout),
      .I(clk1_bufgin)
   );

   BUFG BUFG_CLK2 (
      .O(clk2_bufgout),
      .I(clk2_bufgin)
   );

   BUFG BUFG_CLK3 (
      .O(clk3_bufgout),
      .I(clk3_bufgin)
   );

   BUFG BUFG_CLK4 (
      .O(clk4_bufgout),
      .I(clk4_bufgin)
   );

   BUFG BUFG_CLK5 (
      .O(clk5_bufgout),
      .I(clk5_bufgin)
   );

   BUFG BUFG_CLK6 (
      .O(clk6_bufgout),
      .I(clk6_bufgin)
   );

   // ODDR registers used to output clocks
   ODDR ODDR_CLK0 (
      .Q(CLK0OUT),
      .C(clk0_bufgout),
      .CE(1'b1),
      .D1(1'b1),
      .D2(1'b0),
      .R(RST),
      .S(1'b0)
   );

   //ODDR ODDR_CLK1 (
   //   .Q(CLK1OUT),
   //   .C(clk1_bufgout),
   //   .CE(1'b1),
   //   .D1(1'b1),
   //   .D2(1'b0),
   //   .R(RST),
   //   .S(1'b0)
   //);
   
   assign clk1_bufgout = CLK1OUT;

   ODDR ODDR_CLK2 (
      .Q(CLK2OUT),
      .C(clk2_bufgout),
      .CE(1'b1),
      .D1(1'b1),
      .D2(1'b0),
      .R(RST),
      .S(1'b0)
   );

   ODDR ODDR_CLK3 (
      .Q(CLK3OUT),
      .C(clk3_bufgout),
      .CE(1'b1),
      .D1(1'b1),
      .D2(1'b0),
      .R(RST),
      .S(1'b0)
   );

   ODDR ODDR_CLK4 (
      .Q(CLK4OUT),
      .C(clk4_bufgout),
      .CE(1'b1),
      .D1(1'b1),
      .D2(1'b0),
      .R(RST),
      .S(1'b0)
   );

   ODDR ODDR_CLK5 (
      .Q(CLK5OUT),
      .C(clk5_bufgout),
      .CE(1'b1),
      .D1(1'b1),
      .D2(1'b0),
      .R(RST),
      .S(1'b0)
   );

   ODDR ODDR_CLK6 (
      .Q(CLK6OUT),
      .C(clk6_bufgout),
      .CE(1'b1),
      .D1(1'b1),
      .D2(1'b0),
      .R(RST),
      .S(1'b0)
   );

   // MMCM_ADV that reconfiguration will take place on
   MMCME2_ADV #(
      // "HIGH", "LOW" or "OPTIMIZED"
      .BANDWIDTH(BANDWIDTH),
      .DIVCLK_DIVIDE(DIVCLK_DIVIDE), // (1 to 106)

      .CLKFBOUT_MULT_F(CLKFBOUT_MULT_F), // (2 to 64)
      .CLKFBOUT_PHASE(CLKFBOUT_PHASE),
      .CLKFBOUT_USE_FINE_PS(CLKFBOUT_USE_FINE_PS),

      // Set the clock period (ns) of input clocks
      .CLKIN1_PERIOD(CLKIN1_PERIOD),
      .REF_JITTER1(REF_JITTER1),

      .CLKIN2_PERIOD(10.000),
      .REF_JITTER2(0.010), 

      // CLKOUT parameters:
      // DIVIDE: (1 to 128)
      // DUTY_CYCLE: (0.01 to 0.99) - This is dependent on the divide value.
      // PHASE: (0.0 to 360.0) - This is dependent on the divide value.
      // USE_FINE_PS: (TRUE or FALSE)

      .CLKOUT0_DIVIDE_F(CLKOUT0_DIVIDE_F),
      .CLKOUT0_DUTY_CYCLE(CLKOUT0_DUTY_CYCLE),
      .CLKOUT0_PHASE(CLKOUT0_PHASE),
      .CLKOUT0_USE_FINE_PS(CLKOUT0_USE_FINE_PS),

      .CLKOUT1_DIVIDE(CLKOUT1_DIVIDE),
      .CLKOUT1_DUTY_CYCLE(CLKOUT1_DUTY_CYCLE),
      .CLKOUT1_PHASE(CLKOUT1_PHASE),
      .CLKOUT1_USE_FINE_PS(CLKOUT1_USE_FINE_PS),

      .CLKOUT2_DIVIDE(6),
      .CLKOUT2_DUTY_CYCLE(0.5),
      .CLKOUT2_PHASE(0.0),
      .CLKOUT2_USE_FINE_PS("FALSE"),

      .CLKOUT3_DIVIDE(6),
      .CLKOUT3_DUTY_CYCLE(0.5),
      .CLKOUT3_PHASE(0.0),
      .CLKOUT3_USE_FINE_PS("FALSE"),

      .CLKOUT4_DIVIDE(6),
      .CLKOUT4_DUTY_CYCLE(0.5),
      .CLKOUT4_PHASE(0.0),
      .CLKOUT4_USE_FINE_PS("FALSE"),
      .CLKOUT4_CASCADE("FALSE"),

      .CLKOUT5_DIVIDE(6),
      .CLKOUT5_DUTY_CYCLE(0.5),
      .CLKOUT5_PHASE(0.0),
      .CLKOUT5_USE_FINE_PS("TRUE"),

      .CLKOUT6_DIVIDE(6),
      .CLKOUT6_DUTY_CYCLE(0.5),
      .CLKOUT6_PHASE(0.0),
      .CLKOUT6_USE_FINE_PS("FALSE"),

      // Misc parameters
      .COMPENSATION("ZHOLD"),
      .STARTUP_WAIT("FALSE")
   ) mmcme2_test_inst (
      .CLKFBOUT(clkfb_bufgin),
      .CLKFBOUTB(),

      .CLKFBSTOPPED(),
      .CLKINSTOPPED(),

      // Clock outputs
      .CLKOUT0(clk0_bufgin),
      .CLKOUT0B(),
      .CLKOUT1(clk1_bufgin),
      .CLKOUT1B(),
      .CLKOUT2(clk2_bufgin),
      .CLKOUT2B(),
      .CLKOUT3(clk3_bufgin),
      .CLKOUT3B(),
      .CLKOUT4(clk4_bufgin),
      .CLKOUT5(clk5_bufgin),
      .CLKOUT6(clk6_bufgin),

      // DRP Ports
      .DO(dout), // (16-bits)
      .DRDY(drdy),
      .DADDR(daddr), // 5 bits
      .DCLK(dclk),
      .DEN(den),
      .DI(di), // 16 bits
      .DWE(dwe),

      .LOCKED(LOCKED),
      .CLKFBIN(clkfb_bufgout),

      // Clock inputs
      .CLKIN1(CLKIN_ibuf),
      .CLKIN2(),
      .CLKINSEL(1'b1),

      // Fine phase shifting
      .PSDONE(PSDONE),
      .PSCLK(PSCLK),
      .PSEN(PSEN && ps_cnt_correct),
      .PSINCDEC(PSINCDEC),

      .PWRDWN(1'b0),
      .RST(rst_mmcm)
   );

   // MMCM_DRP instance that will perform the reconfiguration operations
   mmcme2_drp #(
      //***********************************************************************
      // State 1 Parameters - These are for the first reconfiguration state.
      //***********************************************************************
      // Set the multiply to 6.0 with 0 deg phase offset, optimized bandwidth, input divide of 1
      .S1_CLKFBOUT_MULT(6),
      .S1_CLKFBOUT_PHASE(000_000),
      .S1_CLKFBOUT_FRAC(000),
      .S1_CLKFBOUT_FRAC_EN(0),

      .S1_BANDWIDTH("OPTIMIZED"),
      .S1_DIVCLK_DIVIDE(1),

      // Set clockout0 to a divide of 6.0 (unity gain), 0 deg phase offset, 50/50 duty cycle
      .S1_CLKOUT0_DIVIDE(6),
      .S1_CLKOUT0_PHASE(000_000),
      .S1_CLKOUT0_DUTY(50000),
      .S1_CLKOUT0_FRAC(000),
      .S1_CLKOUT0_FRAC_EN(0),

      // Set clockout 1 to a divide of 1, 0 deg phase offset, 50/50 duty cycle
      .S1_CLKOUT1_DIVIDE(1),
      .S1_CLKOUT1_PHASE(000_000),
      .S1_CLKOUT1_DUTY(50000),

      // Set clockout 2 to a divide of 2, 0 deg phase offset, 50/50 duty cycle
      .S1_CLKOUT2_DIVIDE(2),
      .S1_CLKOUT2_PHASE(000_000),
      .S1_CLKOUT2_DUTY(50000),

      // Set clockout 3 to a divide of 3, 0 deg phase offset, 50/50 duty cycle
      .S1_CLKOUT3_DIVIDE(3),
      .S1_CLKOUT3_PHASE(000_000),
      .S1_CLKOUT3_DUTY(50000),

      // Set clockout 4 to a divide of 4, 0 deg phase offset, 50/50 duty cycle
      .S1_CLKOUT4_DIVIDE(4),
      .S1_CLKOUT4_PHASE(000_000),
      .S1_CLKOUT4_DUTY(50000),

      // Set clockout 5 to a divide of 5, 0 deg phase offset, 50/50 duty cycle
      .S1_CLKOUT5_DIVIDE(5),
      .S1_CLKOUT5_PHASE(000_000),
      .S1_CLKOUT5_DUTY(50000),

      // Set clockout 6 to a divide of 10, 0 deg phase offset, 50/50 duty cycle
      .S1_CLKOUT6_DIVIDE(10),
      .S1_CLKOUT6_PHASE(000_000),
      .S1_CLKOUT6_DUTY(50000)

   ) mmcme2_drp_inst (
      // Top port connections
      .SADDR(0),
      .SEN(sstep_int[0]),
      .RST(RST),
      .SRDY(SRDY),

      // Input from IBUFG
      .SCLK(SCLK),
      
      // clock config

      .c0_cnt(c0_cnt),
      .c1_cnt(c1_cnt),
      .c2_cnt(c2_cnt),
      .c3_cnt(c3_cnt),
      .c4_cnt(c4_cnt),
      .c5_cnt(c5_cnt),
      .c6_cnt(c6_cnt),
      .c0_oddiv(c0_oddiv),
      .c1_oddiv(c1_oddiv),
      .c2_oddiv(c2_oddiv),
      .c3_oddiv(c3_oddiv),
      .c4_oddiv(c4_oddiv),
      .c5_oddiv(c5_oddiv),
      .c6_oddiv(c6_oddiv),
      .c0_byp(c0_byp),
      .c1_byp(c1_byp),
      .c2_byp(c2_byp),
      .c3_byp(c3_byp),
      .c4_byp(c4_byp),
      .c5_byp(c5_byp),
      .c6_byp(c6_byp),
      .m_cnt(m_cnt),
      .m_oddiv(m_oddiv),
      .m_byp(m_byp),
      .n_cnt(n_cnt),
      .n_oddiv(n_oddiv),
      .n_byp(n_byp),
      .xil_cm_f(xil_cm_f),
     
      // Direct connections to the MMCM_ADV
      .DO(dout),
      .DRDY(drdy),
      .LOCKED(LOCKED),
      .DWE(dwe),
      .DEN(den),
      .DADDR(daddr),
      .DI(di),
      .DCLK(dclk),
      .RST_MMCM(rst_mmcm)
   );

      //***********************************************************************
      // Additional STATE and SSTEP logic for push buttons and switches
      //***********************************************************************
		// The following logic is not required but is being used to allow the DRP
		// circuitry work more effectively with boards that use toggle switches or
		// buttons that may not adhere to the single clock requirement.
		//
		// Only start DRP after initial lock and when STATE has changed
		always @ (posedge clkin_bufgout or posedge SSTEP)
			if (SSTEP) sstep_int <=  8'h80;
			else  			sstep_int <= {1'b0, sstep_int[7:1]};


endmodule
