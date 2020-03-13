
/*******************************************************************
*
* CAUTION: This file is automatically generated by HSI.
* Version: 2019.1
* DO NOT EDIT.
*
* Copyright (C) 2010-2020 Xilinx, Inc. All Rights Reserved.*
*Permission is hereby granted, free of charge, to any person obtaining a copy
*of this software and associated documentation files (the Software), to deal
*in the Software without restriction, including without limitation the rights
*to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
*copies of the Software, and to permit persons to whom the Software is
*furnished to do so, subject to the following conditions:
*
*The above copyright notice and this permission notice shall be included in
*all copies or substantial portions of the Software.
* 
*THE SOFTWARE IS PROVIDED AS IS, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
*IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
*FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL 
*XILINX BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
*WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT
*OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*
*Except as contained in this notice, the name of the Xilinx shall not be used
*in advertising or otherwise to promote the sale, use or other dealings in
*this Software without prior written authorization from Xilinx.
*

* 
* Description: Driver configuration
*
*******************************************************************/

#include "xparameters.h"
#include "xgpio.h"

/*
* The configuration table for devices
*/

XGpio_Config XGpio_ConfigTable[XPAR_XGPIO_NUM_INSTANCES] =
{
	{
		XPAR_PLLCFG_COMMAND_DEVICE_ID,
		XPAR_PLLCFG_COMMAND_BASEADDR,
		XPAR_PLLCFG_COMMAND_INTERRUPT_PRESENT,
		XPAR_PLLCFG_COMMAND_IS_DUAL
	},
	{
		XPAR_PLLCFG_STATUS_DEVICE_ID,
		XPAR_PLLCFG_STATUS_BASEADDR,
		XPAR_PLLCFG_STATUS_INTERRUPT_PRESENT,
		XPAR_PLLCFG_STATUS_IS_DUAL
	},
	{
		XPAR_PLL_RST_DEVICE_ID,
		XPAR_PLL_RST_BASEADDR,
		XPAR_PLL_RST_INTERRUPT_PRESENT,
		XPAR_PLL_RST_IS_DUAL
	},
	{
		XPAR_AXI_GPIO_0_DEVICE_ID,
		XPAR_AXI_GPIO_0_BASEADDR,
		XPAR_AXI_GPIO_0_INTERRUPT_PRESENT,
		XPAR_AXI_GPIO_0_IS_DUAL
	},
	{
		XPAR_EXTM_0_AXI_SEL_DEVICE_ID,
		XPAR_EXTM_0_AXI_SEL_BASEADDR,
		XPAR_EXTM_0_AXI_SEL_INTERRUPT_PRESENT,
		XPAR_EXTM_0_AXI_SEL_IS_DUAL
	},
	{
		XPAR_SMPL_CMP_CMD_DEVICE_ID,
		XPAR_SMPL_CMP_CMD_BASEADDR,
		XPAR_SMPL_CMP_CMD_INTERRUPT_PRESENT,
		XPAR_SMPL_CMP_CMD_IS_DUAL
	},
	{
		XPAR_SMPL_CMP_STAT_DEVICE_ID,
		XPAR_SMPL_CMP_STAT_BASEADDR,
		XPAR_SMPL_CMP_STAT_INTERRUPT_PRESENT,
		XPAR_SMPL_CMP_STAT_IS_DUAL
	},
	{
		XPAR_SMPL_CMP_SEL_DEVICE_ID,
		XPAR_SMPL_CMP_SEL_BASEADDR,
		XPAR_SMPL_CMP_SEL_INTERRUPT_PRESENT,
		XPAR_SMPL_CMP_SEL_IS_DUAL
	},
	{
		XPAR_VCTCXO_TAMER_CTRL_DEVICE_ID,
		XPAR_VCTCXO_TAMER_CTRL_BASEADDR,
		XPAR_VCTCXO_TAMER_CTRL_INTERRUPT_PRESENT,
		XPAR_VCTCXO_TAMER_CTRL_IS_DUAL
	}
};


