///////////////////////////////////////////////////////////////////////////////
//
//    Company:          Xilinx
//    Engineer:         Jim Tatsukawa, Karl Kurbjun and Carl Ribbing
//                      Updated by: Marc Defossez
//    Date:             10/22/2014
//    Design Name:      MMCME2 DRP
//    Module Name:      mmcme2_drp.v
//    Version:          1.30
//    Target Devices:   7 Series
//    Tool versions:    2014.3
//    Description:      This calls the DRP register calculation functions and
//                      provides a state machine to perform MMCM reconfiguration
//                      based on the calculated values stored in a initialized
//                      ROM.
//
//    Revisions:        1/13/11 Updated ROM[18,41] LOCKED bitmask to 16'HFC00
//                      5/30/13 Adding Fractional support for CLKFBOUT_MULT_F, CLKOUT0_DIVIDE_F
//                      4/30/14 For fractional multiply changed order to enable fractional
//                              before the multiply is applied to prevent false VCO DRCs
//                              (e.g. DADDR 7'h15 must be set before updating 7'h14)
//                     10/24/14 Parameters have been added to clarify Reg1/Reg2/Shared registers
//                     6/8/15   WAIT_LOCK update
//                     5/2/16   Reordering FRAC_EN bits DADDR(7'h09, 7'h15)
//                              registers before frac settings (7'h08, 7'h14)
//                    19 Sep 2018 Updated comments of BANDWIDTH.
//                                Corrected some typos.
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
//                 (c) Copyright 2009-2010 Xilinx, Inc.
//                 All rights reserved.
//
///////////////////////////////////////////////////////////////////////////////

`timescale 1ps/1ps

module mmcme2_drp
   #(
      //***********************************************************************
      // State 1 Parameters - These are for the first reconfiguration state.
      //***********************************************************************

      // These parameters have an effect on the feedback path. A change on
      // these parameters will effect all of the clock outputs.
      //
      // The parameters are composed of:
      //    _MULT: This can be from 2 to 64. It has an effect on the VCO
      //          frequency which consequently, effects all of the clock
      //          outputs.
      //    _PHASE: This is the phase multiplied by 1000. For example if
      //          a phase of 24.567 deg was desired the input value would be
      //          24567. The range for the phase is from -360000 to 360000.
      //    _FRAC: This can be from 0 to 875. This represents the fractional
      //          divide multiplied by 1000.
      //          M = _MULT + _FRAC / 1000
      //          e.g. M=8.125
      //               _MULT = 8
      //               _FRAC = 125
      //    _FRAC_EN: This indicates fractional divide has been enabled. If 1
      //          then the fractional divide algorithm will be used to calculate
      //          register settings. If 0 then default calculation to be used.
      parameter S1_CLKFBOUT_MULT          = 5,
      parameter S1_CLKFBOUT_PHASE         = 0,
      parameter S1_CLKFBOUT_FRAC          = 125,
      parameter S1_CLKFBOUT_FRAC_EN       = 1,

      // The bandwidth parameter effects the phase error and the jitter filter
      // capability of the MMCM. For more information on this parameter see the
      // Device user guide.
      // Possible values are: "LOW", "LOW_SS", "HIGH" and "OPTIMIZED"
      parameter S1_BANDWIDTH              = "LOW",

      // The divclk parameter allows the input clock to be divided before it
      // reaches the phase and frequency comparator. This can be set between
      // 1 and 128.
      parameter S1_DIVCLK_DIVIDE          = 1,

      // The following parameters describe the configuration that each clock
      // output should have once the reconfiguration for state one has
      // completed.
      //
      // The parameters are composed of:
      //    _DIVIDE: This can be from 1 to 128
      //    _PHASE: This is the phase multiplied by 1000. For example if
      //          a phase of 24.567 deg was desired the input value would be
      //          24567. The range for the phase is from -360000 to 360000.
      //    _DUTY: This is the duty cycle multiplied by 100,000.  For example if
      //          a duty cycle of .24567 was desired the input would be
      //          24567.

      parameter S1_CLKOUT0_DIVIDE         = 1,
      parameter S1_CLKOUT0_PHASE          = 0,
      parameter S1_CLKOUT0_DUTY           = 50000,
      parameter S1_CLKOUT0_FRAC           = 125,
      parameter S1_CLKOUT0_FRAC_EN        = 1,

      parameter S1_CLKOUT1_DIVIDE         = 1,
      parameter S1_CLKOUT1_PHASE          = 0,
      parameter S1_CLKOUT1_DUTY           = 50000,

      parameter S1_CLKOUT2_DIVIDE         = 1,
      parameter S1_CLKOUT2_PHASE          = 0,
      parameter S1_CLKOUT2_DUTY           = 50000,

      parameter S1_CLKOUT3_DIVIDE         = 1,
      parameter S1_CLKOUT3_PHASE          = 0,
      parameter S1_CLKOUT3_DUTY           = 50000,

      parameter S1_CLKOUT4_DIVIDE         = 1,
      parameter S1_CLKOUT4_PHASE          = 0,
      parameter S1_CLKOUT4_DUTY           = 50000,

      parameter S1_CLKOUT5_DIVIDE         = 1,
      parameter S1_CLKOUT5_PHASE          = 0,
      parameter S1_CLKOUT5_DUTY           = 50000,

      parameter S1_CLKOUT6_DIVIDE         = 1,
      parameter S1_CLKOUT6_PHASE          = 0,
      parameter S1_CLKOUT6_DUTY           = 50000
   ) (
      // These signals are controlled by user logic interface and are covered
      // in more detail within the XAPP.
      input             SADDR,
      input             SEN,
      input             SCLK,
      input             RST,
      output reg        SRDY,
      
      // Signals for reconfiguration
      input [15:0] c0_cnt,
      input [15:0] c1_cnt,
      input [15:0] c2_cnt,
      input [15:0] c3_cnt,
      input [15:0] c4_cnt,
      input [15:0] c5_cnt,
      input [15:0] c6_cnt,
      input c0_oddiv,
      input c1_oddiv,
      input c2_oddiv,
      input c3_oddiv,
      input c4_oddiv,
      input c5_oddiv,
      input c6_oddiv,
      input c0_byp,
      input c1_byp,
      input c2_byp,
      input c3_byp,
      input c4_byp,
      input c5_byp,
      input c6_byp,
      input [15:0] m_cnt,
      input m_oddiv,
      input m_byp,
      input [15:0] n_cnt,
      input n_oddiv,
      input n_byp,
      input [9:0] xil_cm_f, //xilinx clock manager filter coeffs
      

      // These signals are to be connected to the MMCM_ADV by port name.
      // Their use matches the MMCM port description in the Device User Guide.
      input      [15:0] DO,
      input             DRDY,
      input             LOCKED,
      output reg        DWE,
      output reg        DEN,
      output reg [6:0]  DADDR,
      output reg [15:0] DI,
      output            DCLK,
      output reg        RST_MMCM
      
      
   );

   //count values trimmed from 2x8 bit to 2x6 bit 
   ////assignments indented for readability
   wire [11:0] c0_cnt_trimmed;
      assign c0_cnt_trimmed[11:6] = c0_cnt[13:8];
      assign c0_cnt_trimmed[5:0]  = c0_cnt[5:0];
   wire [11:0] c1_cnt_trimmed;
      assign c1_cnt_trimmed[11:6] = c1_cnt[13:8];
      assign c1_cnt_trimmed[5:0]  = c1_cnt[5:0];
   wire [11:0] c2_cnt_trimmed;
      assign c2_cnt_trimmed[11:6] = c2_cnt[13:8];
      assign c2_cnt_trimmed[5:0]  = c2_cnt[5:0];
   wire [11:0] c3_cnt_trimmed;
      assign c3_cnt_trimmed[11:6] = c3_cnt[13:8];
      assign c3_cnt_trimmed[5:0]  = c3_cnt[5:0];
   wire [11:0] c4_cnt_trimmed;
      assign c4_cnt_trimmed[11:6] = c4_cnt[13:8];
      assign c4_cnt_trimmed[5:0]  = c4_cnt[5:0];
   wire [11:0] c5_cnt_trimmed;
      assign c5_cnt_trimmed[11:6] = c5_cnt[13:8];
      assign c5_cnt_trimmed[5:0]  = c5_cnt[5:0];
   wire [11:0] c6_cnt_trimmed;
      assign c6_cnt_trimmed[11:6] = c6_cnt[13:8];
      assign c6_cnt_trimmed[5:0]  = c6_cnt[5:0];
   wire [11:0] m_cnt_trimmed;
      assign m_cnt_trimmed[11:6] = m_cnt[13:8];
      assign m_cnt_trimmed[5:0]  = m_cnt[5:0];
   wire [11:0] n_cnt_trimmed;
      assign n_cnt_trimmed[11:6] = n_cnt[13:8];
      assign n_cnt_trimmed[5:0]  = n_cnt[5:0];
   // 100 ps delay for behavioral simulations
   localparam  TCQ = 100;

   // Make sure the memory is implemented as distributed
   (* rom_style = "distributed" *)
   reg [38:0]  rom [22:0];  // 39 bit word 23 words deep
   reg [5:0]   rom_addr;
   reg [38:0]  rom_do;

   reg         next_srdy;

   reg [5:0]   next_rom_addr;
   reg [6:0]   next_daddr;
   reg         next_dwe;
   reg         next_den;
   reg         next_rst_mmcm;
   reg [15:0]  next_di;

   // Integer used to initialize remainder of unused ROM
   integer     ii;

   // Pass SCLK to DCLK for the MMCM
   assign DCLK = SCLK;

   // Include the MMCM reconfiguration functions.  This contains the constant
   // functions that are used in the calculations below.  This file is
   // required.
   `include "mmcme2_drp_func.h"

   //**************************************************************************
   // State 1 Calculations
   //**************************************************************************
   // Please see header for infor
   localparam [37:0] S1_CLKFBOUT       =
      mmcm_count_calc(S1_CLKFBOUT_MULT, S1_CLKFBOUT_PHASE, 50000);

   localparam [37:0] S1_CLKFBOUT_FRAC_CALC       =
      mmcm_frac_count_calc(S1_CLKFBOUT_MULT, S1_CLKFBOUT_PHASE, 50000, S1_CLKFBOUT_FRAC);

   localparam [9:0]  S1_DIGITAL_FILT   =
      mmcm_filter_lookup(S1_CLKFBOUT_MULT, S1_BANDWIDTH);

   localparam [39:0] S1_LOCK           =
      mmcm_lock_lookup(S1_CLKFBOUT_MULT);

   localparam [37:0] S1_DIVCLK         =
      mmcm_count_calc(S1_DIVCLK_DIVIDE, 0, 50000);

   localparam [37:0] S1_CLKOUT0        =
      mmcm_count_calc(S1_CLKOUT0_DIVIDE, S1_CLKOUT0_PHASE, S1_CLKOUT0_DUTY);
      localparam [15:0] S1_CLKOUT0_REG1        = S1_CLKOUT0[15:0]; //See log file for 16 bit reporting of the register
      localparam [15:0] S1_CLKOUT0_REG2        = S1_CLKOUT0[31:16]; //See log file for 16 bit reporting of the register

   localparam [37:0] S1_CLKOUT0_FRAC_CALC        =
      mmcm_frac_count_calc(S1_CLKOUT0_DIVIDE, S1_CLKOUT0_PHASE, 50000, S1_CLKOUT0_FRAC);
       localparam [15:0] S1_CLKOUT0_FRAC_REG1        = S1_CLKOUT0_FRAC_CALC[15:0];  //See log file for 16 bit reporting of the register
       localparam [15:0] S1_CLKOUT0_FRAC_REG2        = S1_CLKOUT0_FRAC_CALC[31:16];  //See log file for 16 bit reporting of the register
       localparam [5:0] S1_CLKOUT0_FRAC_REGSHARED        = S1_CLKOUT0_FRAC_CALC[37:32];  //See log file for 16 bit reporting of the register

   localparam [37:0] S1_CLKOUT1        =
      mmcm_count_calc(S1_CLKOUT1_DIVIDE, S1_CLKOUT1_PHASE, S1_CLKOUT1_DUTY);
       localparam [15:0] S1_CLKOUT1_REG1        = S1_CLKOUT1[15:0];  //See log file for 16 bit reporting of the register
       localparam [15:0] S1_CLKOUT1_REG2        = S1_CLKOUT1[31:16];  //See log file for 16 bit reporting of the register

   localparam [37:0] S1_CLKOUT2        =
      mmcm_count_calc(S1_CLKOUT2_DIVIDE, S1_CLKOUT2_PHASE, S1_CLKOUT2_DUTY);
      localparam [15:0] S1_CLKOUT2_REG1        = S1_CLKOUT2[15:0];  //See log file for 16 bit reporting of the register
      localparam [15:0] S1_CLKOUT2_REG2        = S1_CLKOUT2[31:16];  //See log file for 16 bit reporting of the register

   localparam [37:0] S1_CLKOUT3        =
      mmcm_count_calc(S1_CLKOUT3_DIVIDE, S1_CLKOUT3_PHASE, S1_CLKOUT3_DUTY);
      localparam [15:0] S1_CLKOUT3_REG1        = S1_CLKOUT3[15:0];  //See log file for 16 bit reporting of the register
      localparam [15:0] S1_CLKOUT3_REG2        = S1_CLKOUT3[31:16];  //See log file for 16 bit reporting of the register

   localparam [37:0] S1_CLKOUT4        =
      mmcm_count_calc(S1_CLKOUT4_DIVIDE, S1_CLKOUT4_PHASE, S1_CLKOUT4_DUTY);
      localparam [15:0] S1_CLKOUT4_REG1        = S1_CLKOUT4[15:0];  //See log file for 16 bit reporting of the register
      localparam [15:0] S1_CLKOUT4_REG2        = S1_CLKOUT4[31:16];  //See log file for 16 bit reporting of the register

   localparam [37:0] S1_CLKOUT5        =
      mmcm_count_calc(S1_CLKOUT5_DIVIDE, S1_CLKOUT5_PHASE, S1_CLKOUT5_DUTY);
      localparam [15:0] S1_CLKOUT5_REG1        = S1_CLKOUT5[15:0];  //See log file for 16 bit reporting of the register
      localparam [15:0] S1_CLKOUT5_REG2        = S1_CLKOUT5[31:16];  //See log file for 16 bit reporting of the register

   localparam [37:0] S1_CLKOUT6        =
      mmcm_count_calc(S1_CLKOUT6_DIVIDE, S1_CLKOUT6_PHASE, S1_CLKOUT6_DUTY);
      localparam [15:0] S1_CLKOUT6_REG1        = S1_CLKOUT6[15:0];  //See log file for 16 bit reporting of the register
      localparam [15:0] S1_CLKOUT6_REG2        = S1_CLKOUT6[31:16]; //See log file for 16 bit reporting of the register


   initial begin
      // rom entries contain (in order) the address, a bitmask, and a bitset
      //***********************************************************************
      // State 1 Initialization
      //***********************************************************************

      // Store the power bits
      rom[0] = {7'h28, 16'h0000, 16'hFFFF};

      // Store CLKOUT0 divide and phase
      rom[1]  = (S1_CLKOUT0_FRAC_EN == 0) ?
						{7'h09, 16'h8000, S1_CLKOUT0[31:16]}:
						{7'h09, 16'h8000, S1_CLKOUT0_FRAC_CALC[31:16]};
      rom[2]  = (S1_CLKOUT0_FRAC_EN == 0) ?
						{7'h08, 16'h1000, S1_CLKOUT0[15:0]}:
						{7'h08, 16'h1000, S1_CLKOUT0_FRAC_CALC[15:0]};

      // Store CLKOUT1 divide and phase
      rom[3]  = {7'h0A, 16'h1000, S1_CLKOUT1[15:0]};
      rom[4]  = {7'h0B, 16'hFC00, S1_CLKOUT1[31:16]};

      // Store CLKOUT2 divide and phase
      rom[5]  = {7'h0C, 16'h1000, S1_CLKOUT2[15:0]};
      rom[6]  = {7'h0D, 16'hFC00, S1_CLKOUT2[31:16]};

      // Store CLKOUT3 divide and phase
      rom[7]  = {7'h0E, 16'h1000, S1_CLKOUT3[15:0]};
      rom[8]  = {7'h0F, 16'hFC00, S1_CLKOUT3[31:16]};

      // Store CLKOUT4 divide and phase
      rom[9]  = {7'h10, 16'h1000, S1_CLKOUT4[15:0]};
      rom[10]  = {7'h11, 16'hFC00, S1_CLKOUT4[31:16]};

      // Store CLKOUT5 divide and phase
      rom[11] = {7'h06, 16'h1000, S1_CLKOUT5[15:0]};
      rom[12] = (S1_CLKOUT0_FRAC_EN == 0) ?
                {7'h07, 16'hC000, S1_CLKOUT5[31:16]}:
                {7'h07, 16'hC000, S1_CLKOUT5[31:30], S1_CLKOUT0_FRAC_CALC[35:32],S1_CLKOUT5[25:16]};

      // Store CLKOUT6 divide and phase
      rom[13] = {7'h12, 16'h1000, S1_CLKOUT6[15:0]};
      rom[14] = (S1_CLKFBOUT_FRAC_EN == 0) ?
                {7'h13, 16'hC000, S1_CLKOUT6[31:16]}:
                {7'h13, 16'hC000, S1_CLKOUT6[31:30], S1_CLKFBOUT_FRAC_CALC[35:32],S1_CLKOUT6[25:16]};

      // Store the input divider
      rom[15] = {7'h16, 16'hC000, {2'h0, S1_DIVCLK[23:22], S1_DIVCLK[11:0]} };

      // Store the feedback divide and phase
      rom[16] = (S1_CLKFBOUT_FRAC_EN == 0) ?
                {7'h14, 16'h1000, S1_CLKFBOUT[15:0]}:
                {7'h14, 16'h1000, S1_CLKFBOUT_FRAC_CALC[15:0]};
      rom[17] = (S1_CLKFBOUT_FRAC_EN == 0) ?
                {7'h15, 16'h8000, S1_CLKFBOUT[31:16]}:
                {7'h15, 16'h8000, S1_CLKFBOUT_FRAC_CALC[31:16]};

      // Store the lock settings
      rom[18] = {7'h18, 16'hFC00, {6'h00, S1_LOCK[29:20]} };
      rom[19] = {7'h19, 16'h8000, {1'b0 , S1_LOCK[34:30], S1_LOCK[9:0]} };
      rom[20] = {7'h1A, 16'h8000, {1'b0 , S1_LOCK[39:35], S1_LOCK[19:10]} };

      // Store the filter settings
      rom[21] = {7'h4E, 16'h66FF,
                S1_DIGITAL_FILT[9], 2'h0, S1_DIGITAL_FILT[8:7], 2'h0,
                S1_DIGITAL_FILT[6], 8'h00 };
      rom[22] = {7'h4F, 16'h666F,
                S1_DIGITAL_FILT[5], 2'h0, S1_DIGITAL_FILT[4:3], 2'h0,
                S1_DIGITAL_FILT[2:1], 2'h0, S1_DIGITAL_FILT[0], 4'h0 };
   end

   // Output the initialized rom value based on rom_addr each clock cycle
   always @(posedge SCLK) begin
      rom_do <= rom[rom_addr];
      case(rom_addr)
        1: rom_do[7:6] <= {c0_oddiv,c0_byp};
        2: rom_do[11:0]<= c0_cnt_trimmed;
        
        3: rom_do[11:0]<= c1_cnt_trimmed;
        4: rom_do[7:6] <= {c1_oddiv,c1_byp};
        
        5: rom_do[11:0]<= c2_cnt_trimmed;
        6: rom_do[7:6] <= {c2_oddiv,c2_byp};
        
        7: rom_do[11:0]<= c3_cnt_trimmed;
        8: rom_do[7:6] <= {c3_oddiv,c3_byp};
        
       9: rom_do[11:0]<= c4_cnt_trimmed;
       10: rom_do[7:6] <= {c4_oddiv,c4_byp};
       
       11: rom_do[11:0]<= c5_cnt_trimmed; 
       12: rom_do[7:6] <= {c5_oddiv,c5_byp}; 
              
       13: rom_do[11:0]<= c6_cnt_trimmed; 
       14: rom_do[7:6] <= {c6_oddiv,c6_byp};
       
       15: rom_do[15:0]<= {2'h0,n_oddiv,n_byp,n_cnt_trimmed};

       16: rom_do[11:0]<= m_cnt_trimmed;
       17: rom_do[7:6] <= {m_oddiv,m_byp}; 
       
       21: rom_do <= {xil_cm_f[9],2'h0,xil_cm_f[8:7],2'h0,xil_cm_f[6],6'h0};
       22: rom_do <= {xil_cm_f[5],2'h0,xil_cm_f[4:3],2'h0,xil_cm_f[2:1],2'h0,xil_cm_f[0],4'h0};
       
        default : rom_do <= rom_do;
      endcase
   end

   //**************************************************************************
   // Everything below is associated whith the state machine that is used to
   // Read/Modify/Write to the MMCM.
   //**************************************************************************

   // State Definitions
   localparam RESTART      = 4'h1;
   localparam WAIT_LOCK    = 4'h2;
   localparam WAIT_SEN     = 4'h3;
   localparam ADDRESS      = 4'h4;
   localparam WAIT_A_DRDY  = 4'h5;
   localparam BITMASK      = 4'h6;
   localparam BITSET       = 4'h7;
   localparam WRITE        = 4'h8;
   localparam WAIT_DRDY    = 4'h9;

   // State sync
   reg [3:0]  current_state   = RESTART;
   reg [3:0]  next_state      = RESTART;

   // These variables are used to keep track of the number of iterations that
   //    each state takes to reconfigure.
   // STATE_COUNT_CONST is used to reset the counters and should match the
   //    number of registers necessary to reconfigure each state.
   localparam STATE_COUNT_CONST  = 23;
   reg [4:0] state_count         = STATE_COUNT_CONST;
   reg [4:0] next_state_count    = STATE_COUNT_CONST;

   // This block assigns the next register value from the state machine below
   always @(posedge SCLK) begin
      DADDR       <= #TCQ next_daddr;
      DWE         <= #TCQ next_dwe;
      DEN         <= #TCQ next_den;
      RST_MMCM    <= #TCQ next_rst_mmcm;
      DI          <= #TCQ next_di;

      SRDY        <= #TCQ next_srdy;

      rom_addr    <= #TCQ next_rom_addr;
      state_count <= #TCQ next_state_count;
   end

   // This block assigns the next state, reset is syncronous.
   always @(posedge SCLK) begin
      if(RST) begin
         current_state <= #TCQ RESTART;
      end else begin
         current_state <= #TCQ next_state;
      end
   end

   always @* begin
      // Setup the default values
      next_srdy         = 1'b0;
      next_daddr        = DADDR;
      next_dwe          = 1'b0;
      next_den          = 1'b0;
      next_rst_mmcm     = RST_MMCM;
      next_di           = DI;
      next_rom_addr     = rom_addr;
      next_state_count  = state_count;

      case (current_state)
         // If RST is asserted reset the machine
         RESTART: begin
            next_daddr     = 7'h00;
            next_di        = 16'h0000;
            next_rom_addr  = 6'h00;
            next_rst_mmcm  = 1'b1;
            next_state     = WAIT_LOCK;
         end

         // Waits for the MMCM to assert LOCKED - once it does asserts SRDY
         WAIT_LOCK: begin
            // Make sure reset is de-asserted
            next_rst_mmcm   = 1'b0;
            // Reset the number of registers left to write for the next
            // reconfiguration event.
            next_state_count = STATE_COUNT_CONST ;
            next_rom_addr = 8'h00;//SADDR ? STATE_COUNT_CONST : 8'h00;

            if(LOCKED) begin
               // MMCM is locked, go on to wait for the SEN signal
               next_state  = WAIT_SEN;
               // Assert SRDY to indicate that the reconfiguration module is
               // ready
               next_srdy   = 1'b1;
            end else begin
               // Keep waiting, locked has not asserted yet
               next_state  = WAIT_LOCK;
            end
         end

         // Wait for the next SEN pulse and set the ROM addr appropriately
         //    based on SADDR
         WAIT_SEN: begin
            next_rom_addr = 8'h00;//SADDR ? STATE_COUNT_CONST : 8'h00;
            if (SEN) begin
               next_rom_addr = 8'h00;//SADDR ? STATE_COUNT_CONST : 8'h00;
               // Go on to address the MMCM
               next_state = ADDRESS;
            end else begin
               // Keep waiting for SEN to be asserted
               next_state = WAIT_SEN;
            end
         end

         // Set the address on the MMCM and assert DEN to read the value
         ADDRESS: begin
            // Reset the DCM through the reconfiguration
            next_rst_mmcm  = 1'b1;
            // Enable a read from the MMCM and set the MMCM address
            next_den       = 1'b1;
            next_daddr     = rom_do[38:32];

            // Wait for the data to be ready
            next_state     = WAIT_A_DRDY;
         end

         // Wait for DRDY to assert after addressing the MMCM
         WAIT_A_DRDY: begin
            if (DRDY) begin
               // Data is ready, mask out the bits to save
               next_state = BITMASK;
            end else begin
               // Keep waiting till data is ready
               next_state = WAIT_A_DRDY;
            end
         end

         // Zero out the bits that are not set in the mask stored in rom
         BITMASK: begin
            // Do the mask
            next_di     = rom_do[31:16] & DO;
            // Go on to set the bits
            next_state  = BITSET;
         end

         // After the input is masked, OR the bits with calculated value in rom
         BITSET: begin
            // Set the bits that need to be assigned
            next_di           = rom_do[15:0] | DI;
            // Set the next address to read from ROM
            next_rom_addr     = rom_addr + 1'b1;
            // Go on to write the data to the MMCM
            next_state        = WRITE;
         end

         // DI is setup so assert DWE, DEN, and RST_MMCM.  Subtract one from the
         //    state count and go to wait for DRDY.
         WRITE: begin
            // Set WE and EN on MMCM
            next_dwe          = 1'b1;
            next_den          = 1'b1;

            // Decrement the number of registers left to write
            next_state_count  = state_count - 1'b1;
            // Wait for the write to complete
            next_state        = WAIT_DRDY;
         end

         // Wait for DRDY to assert from the MMCM.  If the state count is not 0
         //    jump to ADDRESS (continue reconfiguration).  If state count is
         //    0 wait for lock.
         WAIT_DRDY: begin
            if(DRDY) begin
               // Write is complete
               if(state_count > 0) begin
                  // If there are more registers to write keep going
                  next_state  = ADDRESS;
               end else begin
                  // There are no more registers to write so wait for the MMCM
                  // to lock
                  next_state  = WAIT_LOCK;
               end
            end else begin
               // Keep waiting for write to complete
               next_state     = WAIT_DRDY;
            end
         end

         // If in an unknown state reset the machine
         default: begin
            next_state = RESTART;
         end
      endcase
   end
endmodule
