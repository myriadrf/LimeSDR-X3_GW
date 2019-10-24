///////////////////////////////////////////////////////////////////////////////
//
//    Company:          Xilinx
//    Engineer:         Jim Tatsukawa
//    Date:             7/30/2014
//    Design Name:      MMCM DRP
//    Module Name:      top_mmcme2_tb.v
//    Version:          1.30
//    Target Devices:   7 Series
//    Tool versions:    2014.3
//    Description:      This is a basic demonstration that drives the MMCM_DRP
//                      ports to trigger two reconfiguration events, one for
//                      each state.
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

`timescale 1ps / 1ps

module top_tb  ();
   reg SSTEP, RST, CLKin, STATE;
   wire SRDY, clk0out, clk1out, clk2out, clk3out, clk4out, clk5out, clk6out;
   
   reg [15:0] c0_cnt;
   reg [15:0] c1_cnt;
   reg [15:0] c2_cnt;
   reg [15:0] c3_cnt;
   reg [15:0] c4_cnt;
   reg [15:0] c5_cnt;
   reg [15:0] c6_cnt;
   reg c0_oddiv;
   reg c1_oddiv;
   reg c2_oddiv;
   reg c3_oddiv;
   reg c4_oddiv;
   reg c5_oddiv;
   reg c6_oddiv;
   reg c0_byp;
   reg c1_byp;
   reg c2_byp;
   reg c3_byp;
   reg c4_byp;
   reg c5_byp;
   reg c6_byp;
   reg [15:0] m_cnt;
   reg m_oddiv;
   reg m_byp;
   reg [15:0] n_cnt;
   reg n_oddiv;
   reg n_byp;
   reg [9:0] xil_cm_f;
   
   wire PSDONE;    
   wire PSCLK;
   assign PSCLK = CLKin;      
   reg PSEN;     
   reg PSINCDEC;
   
   reg SSTEP_enable;
   
   wire CLK56XOR;
   assign CLK56XOR = clk5out^clk6out;
   
   
   
   
   

   top_mmcme2 U1
   (
      .SSTEP(SSTEP && SSTEP_enable),
      .RST(RST),
      .CLKIN(CLKin),
      .SRDY(SRDY),
      .LOCKED(locked),
      .CLK0OUT(clk0out),
      .CLK1OUT(clk1out),
      .CLK2OUT(clk2out),
      .CLK3OUT(clk3out),
      .CLK4OUT(clk4out),
      .CLK5OUT(clk5out),
      .CLK6OUT(clk6out),
      
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
      .PSDONE(PSDONE),  
      .PSCLK(PSCLK),   
      .PSEN(PSEN),    
      .PSINCDEC(PSINCDEC)     
      
   );
   
   initial begin
      c0_cnt = 16'h0101;
      c1_cnt = 16'h0901;
      c2_cnt = 16'h0109;
      c3_cnt = 16'h0F0F;
      c4_cnt = 16'h2019;
      c5_cnt = 16'h0505;
      c6_cnt = 16'h0505;
      
      c0_byp = 0;
      c1_byp = 0;
      c2_byp = 0;
      c3_byp = 0;
      c4_byp = 0;
      c5_byp = 0;
      c6_byp = 0;      
   
      c0_oddiv = 0;
      c1_oddiv = 0;
      c2_oddiv = 0;
      c3_oddiv = 0;
      c4_oddiv = 0;
      c5_oddiv = 0;
      c6_oddiv = 1;
      
      m_cnt = 16'h0101;
      n_cnt = 16'h0101;
      m_byp = 1;
      n_byp = 1;
      m_oddiv = 0;
      n_oddiv = 0;
      
      xil_cm_f = 10'h3AC;
      
      PSEN  = 0;
      PSINCDEC = 1;
      SSTEP_enable = 1;
   end

   localparam one_ns = 1000;
   localparam clock_period = 10;
   parameter [1:0]	STARTUP = 0, STATE0 = 1, STATE1 = 2, UNDEFINED = 3;
   reg [1:0] SM = STARTUP ;
   reg [31:0] counter = 0;

always @ (posedge CLKin)
	begin
		if (RST)
			   SM = STARTUP;
		else
			case (SM)
				STARTUP:
					begin
						SM = STATE0;
						SSTEP=1'b0;
						STATE=1'b0;
					end
				STATE0:
					begin
						if (locked == 1 )
							begin
								#(1 * clock_period * one_ns) SSTEP= 1'b1;
								#(1 * clock_period * one_ns) SSTEP=1'b0;
								#(100 * clock_period * one_ns) SM = STATE1 ;
                        counter = counter + 1;
								STATE=1'b1;
							end
					end
				STATE1:
					begin
						if (locked == 1 )
							begin
								#(1 * clock_period * one_ns) SSTEP= 1'b1;
								#(1 * clock_period * one_ns) SSTEP=1'b0;
								#(100 * clock_period * one_ns) SM = STATE0;
                        counter = counter + 1;
								STATE=1'b0;
							end
					end
				UNDEFINED:   SM= STARTUP;
			endcase
	end
 
always @ (posedge SSTEP)
   begin
   if(counter < 7) begin
     c0_cnt <= c6_cnt;
     c1_cnt <= c0_cnt;
     c2_cnt <= c1_cnt;
     c3_cnt <= c2_cnt;
     c4_cnt <= c3_cnt;
     c5_cnt <= c4_cnt;
     c6_cnt <= c5_cnt;
   end
   else if(counter == 7) 
      c2_byp <= 1;
   else if(counter < 15) begin
     c0_byp <= c6_byp; 
     c1_byp <= c0_byp; 
     c2_byp <= c1_byp; 
     c3_byp <= c2_byp; 
     c4_byp <= c3_byp; 
     c5_byp <= c4_byp; 
     c6_byp <= c5_byp;
     end
   else if(counter == 15) begin
     m_byp <= 0;
     n_byp <= 0;
     end
   else if (counter < 27) begin
      case (counter) 
         16: m_cnt <= 16'h0505;
         17: m_cnt <= 16'h0a0a;
         18: m_cnt <= 16'h0f0f;
         19: m_cnt <= 16'h1616;
         20: n_cnt <= 16'h0505;
         21: n_cnt <= 16'h0a0a;
         22: n_cnt <= 16'h0f0f;
         23: n_cnt <= 16'h1616;
         24: n_cnt <= 16'h1b1b;
         25: n_cnt <= 16'h2020;
         26: n_cnt <= 16'h3030;
      endcase
      end
   else if (counter < 50) begin
     m_byp <= 1;
     n_byp <= 1;
     c6_oddiv <= 0;
     SSTEP_enable <= 0;
     PSINCDEC     <= 1;
     end 
   else if (counter <75)
     PSINCDEC     <= 0;
   else $finish;
 end
 
 reg PSBUSY = 0;
 always @(posedge CLKin)
 begin
    if(SSTEP_enable == 0) begin
        if(PSBUSY == 1 && PSDONE == 1)
            PSBUSY <= 0;
        else if(PSBUSY == 0 && PSEN == 0 && locked == 1) begin
            PSBUSY <= 1;
            PSEN <= 1;
        end
        else if(PSBUSY == 1 && PSEN == 1)
            PSEN <= 0;
        else begin
            PSBUSY <= PSBUSY;
            PSEN   <= PSEN;
        end
    end 
 end
 

	initial
		begin
				CLKin = 0;
				RST = 1;
				#50000 RST = 0;
		end
   always
		# (clock_period * one_ns / 2) CLKin = ~CLKin;




endmodule
