/*
 * cdcm6208.c
 *
 *  Created on: Mar 17, 2021
 *      Author: tservenikas
 */



#include "cdcm6208.h"

void Write_to_CDCM(XSpi *InstancePtr, u32 slave_mask, uint16_t Address, uint16_t Value)
{
	int spi_status;
	uint8_t data[4];
	data[0] = (Address >>8);
	data[1] = (Address & 0xFF);
	data[2] = (Value >> 8);
	data[3] = (Value & 0xFF);

	/*
	 * Select the CDCM device,  so that it can be
	 * read and written using the SPI bus.
	 */
	spi_status = XSpi_SetSlaveSelect(InstancePtr, slave_mask);

	/*
	 * Write to CDCM device
	 */
	spi_status = XSpi_Transfer(InstancePtr, data, NULL, 4);
}

uint16_t Read_from_CDCM(XSpi *InstancePtr, u32 slave_mask, uint16_t Address)
{
	uint8_t data[4]={0};
	data[0] = (Address >>8) | 0x80;
	data[1] = (Address & 0xFF);

	/*
	 * Select the CDCM device,  so that it can be
	 * read and written using the SPI bus.
	 */
	XSpi_SetSlaveSelect(InstancePtr, slave_mask);

	/*
	 * Write to CDCM device
	 */
	XSpi_Transfer(InstancePtr, data, data, 4);

	uint16_t retval;
	retval = data[3] | (data[2]<<8);
	return retval;
}


void config_CDCM(XSpi *CDCMInstancePtr, uint32_t CDCMslave_mask,XSpi *CFGInstancePtr, uint32_t CFGslave_mask, uint16_t cdcmcfg_base)
{

	uint8_t wr_buf[4]={0};
	uint8_t rd_buf[4]={0};
	XSpi_SetSlaveSelect(CFGInstancePtr, CFGslave_mask);

	uint16_t address;
	uint16_t cdcm_data;
	uint8_t* data_pointer;
	data_pointer = (uint8_t*)&cdcm_data;

	for(uint8_t i = 0; i<21; i++)
	{
		//add appropriate cdcmcfg base
		address = cdcmcfg_base + i;
		//flip address bytes
		wr_buf[0] = *((uint8_t*)&address+1);
		wr_buf[1] = *((uint8_t*)&address);
		//read spi register
		XSpi_Transfer(CFGInstancePtr, wr_buf, rd_buf, 4);
		//flip data bytes
		data_pointer[0]=rd_buf[3];
		data_pointer[1]=rd_buf[2];
		//Write to cdcm
		Write_to_CDCM(CDCMInstancePtr, CDCMslave_mask, i,cdcm_data);
	}
}

void Check_CDCM_Update(XSpi *CDCMInstancePtr, uint32_t CDCMslave_mask,XSpi *CFGInstancePtr, uint32_t CFGslave_mask, uint16_t cdcmcfg_base, uint8_t lock_timeout)
{
	uint16_t cdcm_rd;
	uint16_t address;
	address = cdcmcfg_base + 21;
	uint8_t wr_buf[4]={0};
	uint8_t rd_buf[4]={0};
	//flip address bytes
	wr_buf[0] = *((uint8_t*)&address+1);
	wr_buf[1] = *((uint8_t*)&address);


	XSpi_SetSlaveSelect(CFGInstancePtr, CFGslave_mask);
	XSpi_Transfer(CFGInstancePtr, wr_buf, rd_buf, 4);

	if(rd_buf[3]&1 == 1) // Check if cdcm should be updated
	{
		//update cdcm
		config_CDCM(CDCMInstancePtr,CDCMslave_mask,CFGInstancePtr,CFGslave_mask,cdcmcfg_base);
//		for(uint8_t i = 0; i< lock_timeout; i++)
//		{
//			cdcm_rd = Read_from_CDCM(CDCMInstancePtr, CDCMslave_mask, 21);
//			if((cdcm_rd & 0x4) == 0) // check lock status (1 = unlocked, 0 = locked)
//			{
				wr_buf[0] |= 0x80; // set write bit
				wr_buf[2] = 0;	   // unused bits
				wr_buf[3] = 2;     // set "DONE" bit
				XSpi_Transfer(CFGInstancePtr, wr_buf, rd_buf, 4);
				return;
//			}
//		}
		//timeout
//		wr_buf[0] |= 0x80; // set write bit
//		wr_buf[2] = 0;	   // unused bits
//		wr_buf[3] = 6;     // set "DONE" and "ERROR" bits
//		XSpi_Transfer(CFGInstancePtr, wr_buf, rd_buf, 4);
//		return;
	}


}

void ReadALLCDCM_Registers(XSpi *CDCMInstancePtr, uint32_t CDCMslave_mask,XSpi *CFGInstancePtr, uint32_t CFGslave_mask, uint16_t cdcmcfg_base)
{
	uint16_t cdcm_rd;
	uint16_t address_status;
	address_status = cdcmcfg_base + 24;
	uint8_t wr_buf[4]={0};
	uint8_t rd_buf[4]={0};
	//flip address bytes
	wr_buf[0] = *((uint8_t*)&address_status+1);
	wr_buf[1] = *((uint8_t*)&address_status);


	XSpi_SetSlaveSelect(CFGInstancePtr, CFGslave_mask);
	XSpi_Transfer(CFGInstancePtr, wr_buf, rd_buf, 4);

	if((rd_buf[3]&1) == 1) // Check if cdcm should be updated
	{

		uint16_t address;
		uint16_t cdcm_data;
		uint8_t* data_pointer;
		data_pointer = (uint8_t*)&cdcm_data;

		for(uint8_t i = 0; i<21; i++)
		{
			//add appropriate cdcmcfg base
			address = cdcmcfg_base + i;
			cdcm_data = Read_from_CDCM(CDCMInstancePtr,CDCMslave_mask,i);
			//flip address bytes
			wr_buf[0] = *((uint8_t*)&address+1) | (1<<7);
			wr_buf[1] = *((uint8_t*)&address);
			wr_buf[2] = data_pointer[1];
			wr_buf[3] = data_pointer[0];
			//read spi register
			XSpi_Transfer(CFGInstancePtr, wr_buf, rd_buf, 4);
		}
		//REG 21 (ReadOnly)
		uint8_t i = 21;
		//add appropriate cdcmcfg base
		address = cdcmcfg_base + 22;
		cdcm_data = Read_from_CDCM(CDCMInstancePtr,CDCMslave_mask,i);
		//flip address bytes
		wr_buf[0] = *((uint8_t*)&address+1) | (1<<7);
		wr_buf[1] = *((uint8_t*)&address);
		wr_buf[2] = data_pointer[1];
		wr_buf[3] = data_pointer[0];
		//read spi register
		XSpi_Transfer(CFGInstancePtr, wr_buf, rd_buf, 4);
		// REG 40 (ReadOnly)
		i = 40;
		//add appropriate cdcmcfg base
		address = cdcmcfg_base + 23;
		cdcm_data = Read_from_CDCM(CDCMInstancePtr,CDCMslave_mask,i);
		//flip address bytes
		wr_buf[0] = *((uint8_t*)&address+1) | (1<<7);
		wr_buf[1] = *((uint8_t*)&address);
		wr_buf[2] = data_pointer[1];
		wr_buf[3] = data_pointer[0];
		//read spi register
		XSpi_Transfer(CFGInstancePtr, wr_buf, rd_buf, 4);
		wr_buf[0] = *((uint8_t*)&address_status+1);
		wr_buf[1] = *((uint8_t*)&address_status);
		wr_buf[0] |= 0x80; // set write bit
		wr_buf[2] = 0;	   // unused bits
		wr_buf[3] = 2;     // set "DONE" bit
		XSpi_Transfer(CFGInstancePtr, wr_buf, rd_buf, 4);
		return;
	}







//		//update cdcm
//		config_CDCM(CDCMInstancePtr,CDCMslave_mask,CFGInstancePtr,CFGslave_mask,cdcmcfg_base);
//		for(uint8_t i = 0; i< lock_timeout; i++)
//		{
//			cdcm_rd = Read_from_CDCM(CDCMInstancePtr, CDCMslave_mask, 21);
//			if((cdcm_rd & 0x4) == 0) // check lock status (1 = unlocked, 0 = locked)
//			{
//				wr_buf[0] |= 0x80; // set write bit
//				wr_buf[2] = 0;	   // unused bits
//				wr_buf[3] = 2;     // set "DONE" bit
//				XSpi_Transfer(CFGInstancePtr, wr_buf, rd_buf, 4);
//				return;
//			}
//		}
//		//timeout
//		wr_buf[0] |= 0x80; // set write bit
//		wr_buf[2] = 0;	   // unused bits
//		wr_buf[3] = 6;     // set "DONE" and "ERROR" bits
//		XSpi_Transfer(CFGInstancePtr, wr_buf, rd_buf, 4);
//		return;


}


