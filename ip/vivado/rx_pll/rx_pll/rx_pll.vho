
-- 
-- (c) Copyright 2008 - 2013 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
------------------------------------------------------------------------------
-- User entered comments
------------------------------------------------------------------------------
-- None
--
------------------------------------------------------------------------------
--  Output     Output      Phase    Duty Cycle   Pk-to-Pk     Phase
--   Clock     Freq (MHz)  (degrees)    (%)     Jitter (ps)  Error (ps)
------------------------------------------------------------------------------
-- clk_out1____20.000______0.000______50.0______332.086____730.728
-- clk_out2____20.000______0.000______50.0______332.086____730.728
--
------------------------------------------------------------------------------
-- Input Clock   Freq (MHz)    Input Jitter (UI)
------------------------------------------------------------------------------
-- __primary______________20____________0.010


-- The following code must appear in the VHDL architecture header:
------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
component rx_pll
  port (
  -- System interface
  s_axi_aclk      : in  std_logic;                                      
  s_axi_aresetn   : in  std_logic;                                      
  -- AXI Write address channel signals                                        
  s_axi_awaddr    : in  std_logic_vector(10 downto 0);                  
  s_axi_awvalid   : in  std_logic;                                      
  s_axi_awready   : out std_logic;                                      
  -- AXI Write data channel signals                                           
  s_axi_wdata     : in  std_logic_vector(31 downto 0);                  
  s_axi_wstrb     : in  std_logic_vector(3 downto 0);              
  s_axi_wvalid    : in  std_logic;                                      
  s_axi_wready    : out std_logic;                                      
  -- AXI Write response channel signals                                       
  s_axi_bresp     : out std_logic_vector(1 downto 0);                   
  s_axi_bvalid    : out std_logic;                                      
  s_axi_bready    : in  std_logic;                                      
  -- AXI Read address channel signals                                         
  s_axi_araddr    : in  std_logic_vector(10 downto 0);                  
  s_axi_arvalid   : in  std_logic;                                      
  s_axi_arready   : out std_logic;                                      
  -- AXI Read address channel signals                                         
  s_axi_rdata     : out std_logic_vector(31 downto 0);                  
  s_axi_rresp     : out std_logic_vector(1 downto 0);                   
  s_axi_rvalid    : out std_logic;                                      
  s_axi_rready    : in  std_logic;                                      
  -- Clock out ports
  clk_out1          : out    std_logic;
  clk_out2          : out    std_logic;
  -- Status and control signals
  locked            : out    std_logic;
  -- Clock in ports
  clk_in1           : in     std_logic
  );
end component;

-- COMP_TAG_END ------ End COMPONENT Declaration ------------
-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.
------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : rx_pll
   port map ( 
   s_axi_aclk                => s_axi_aclk,           -- in
   s_axi_aresetn             => s_axi_aresetn,        -- in

   s_axi_awaddr              => s_axi_awaddr,         -- in
   s_axi_awvalid             => s_axi_awvalid,        -- in
   s_axi_awready             => s_axi_awready,        -- out
   s_axi_wdata               => s_axi_wdata,          -- in
   s_axi_wstrb               => s_axi_wstrb,          -- in
   s_axi_wvalid              => s_axi_wvalid,         -- in
   s_axi_wready              => s_axi_wready,         -- out
   s_axi_bresp               => s_axi_bresp,          -- out
   s_axi_bvalid              => s_axi_bvalid,         -- out
   s_axi_bready              => s_axi_bready,         -- in
   
   s_axi_araddr              => s_axi_araddr,         -- in
   s_axi_arvalid             => s_axi_arvalid,        -- in
   s_axi_arready             => s_axi_arready,        -- out
   s_axi_rdata               => s_axi_rdata,          -- out
   s_axi_rresp               => s_axi_rresp,          -- out
   s_axi_rvalid              => s_axi_rvalid,         -- out
   s_axi_rready              => s_axi_rready,         -- in
  -- Clock out ports  
   clk_out1 => clk_out1,
   clk_out2 => clk_out2,
  -- Status and control signals                
   locked => locked,
   -- Clock in ports
   clk_in1 => clk_in1
 );
-- INST_TAG_END ------ End INSTANTIATION Template ------------
