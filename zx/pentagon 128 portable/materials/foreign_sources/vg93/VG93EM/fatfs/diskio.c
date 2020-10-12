/*-----------------------------------------------------------------------*/
/* Low level disk I/O module skeleton for FatFs     (C)ChaN, 2016        */
/*-----------------------------------------------------------------------*/
/* If a working storage control module is available, it should be        */
/* attached to the FatFs via a glue function rather than modifying it.   */
/* This is an example of glue functions to attach various exsisting      */
/* storage control modules to the FatFs module with a defined API.       */
/*-----------------------------------------------------------------------*/

#include "diskio.h"		/* FatFs lower layer API */
#include "stm322xg_eval_sdio_sd.h"
#include "stm32f2xx_sdio.h"
#include <string.h>

/* Definitions of physical drive number for each drive */
#define DEV_MMC		0	/* Example: Map MMC/SD card to physical drive 1 */

SD_CardInfo SDCardInfo;

/* FatFs Glue */
SD_Error Status;
SD_CardStatus SDCardStatus;
static volatile DSTATUS Stat = STA_NOINIT;	/* Disk status */

/*-----------------------------------------------------------------------*/
/* Get Drive Status                                                      */
/*-----------------------------------------------------------------------*/

DSTATUS disk_status (
	BYTE pdrv		/* Physical drive nmuber to identify the drive */
)
{
	switch (pdrv) {
//	case DEV_RAM :
//		result = RAM_disk_status();
//
//		// translate the reslut code here
//
//		return stat;

	case DEV_MMC :
			Status = SD_GetCardInfo(&SDCardInfo);

			if (Status != SD_OK)
				return STA_NOINIT;
			else
				return 0x00;

//	case DEV_USB :
//		result = USB_disk_status();
//
//		// translate the reslut code here
//
//		return stat;

	}
	return STA_NOINIT;
}



/*-----------------------------------------------------------------------*/
/* Inidialize a Drive                                                    */
/*-----------------------------------------------------------------------*/

DSTATUS disk_initialize (
	BYTE pdrv				/* Physical drive nmuber to identify the drive */
)
{
	switch (pdrv) {
//	case DEV_RAM :
//		result = RAM_disk_initialize();
//
//		// translate the reslut code here
//
//		return stat;
	case DEV_MMC :
			/* Initialize SD Card */
			Status = SD_Init();

			if (Status != SD_OK)
				return STA_NOINIT;
			else
				return 0x00;

//	case DEV_USB :
//		result = USB_disk_initialize();
//
//		// translate the reslut code here
//
//		return stat;
	}
	return STA_NOINIT;
}



/*-----------------------------------------------------------------------*/
/* Read Sector(s)                                                        */
/*-----------------------------------------------------------------------*/

DRESULT disk_read (
	BYTE pdrv,		/* Physical drive nmuber to identify the drive */
	BYTE *buff,		/* Data buffer to store read data */
	DWORD sector,	/* Start sector in LBA */
	UINT count		/* Number of sectors to read */
)
{
	switch (pdrv) {
//	case DEV_RAM :
//		// translate the arguments here
//
//		result = RAM_disk_read(buff, sector, count);
//
//		// translate the reslut code here
//
//		return res;

	case DEV_MMC :
//		SD_Error status;
		if ( count == 1 )
			Status = SD_ReadBlock( (uint8_t*)(buff), ((uint64_t)(sector)*SECTOR_SIZE), SECTOR_SIZE );
		else
			Status = SD_ReadMultiBlocks( (uint8_t*)(buff), ((uint64_t)(sector)*SECTOR_SIZE), SECTOR_SIZE, count );
		Status = SD_WaitReadOperation();
		while( SD_GetStatus() != SD_TRANSFER_OK )	;
		if ( Status == SD_OK )
			return RES_OK;
		else
			return RES_ERROR;

//	case DEV_USB :
//		// translate the arguments here
//
//		result = USB_disk_read(buff, sector, count);
//
//		// translate the reslut code here
//
//		return res;
	}
	return RES_PARERR;
}



/*-----------------------------------------------------------------------*/
/* Write Sector(s)                                                       */
/*-----------------------------------------------------------------------*/

DRESULT disk_write (
	BYTE pdrv,			/* Physical drive nmuber to identify the drive */
	const BYTE *buff,	/* Data to be written */
	DWORD sector,		/* Start sector in LBA */
	UINT count			/* Number of sectors to write */
)
{
	switch (pdrv) {
//	case DEV_RAM :
//		// translate the arguments here
//
//		result = RAM_disk_write(buff, sector, count);
//
//		// translate the reslut code here
//
//		return res;

	case DEV_MMC :
		if ( count == 1 )
			Status = SD_WriteBlock( (uint8_t*)(buff), ((uint64_t)(sector)*SECTOR_SIZE), SECTOR_SIZE );
		else
			Status = SD_WriteMultiBlocks( (uint8_t*)(buff), ((uint64_t)(sector)*SECTOR_SIZE), SECTOR_SIZE, count );
		Status = SD_WaitWriteOperation();
		while( SD_GetStatus() != SD_TRANSFER_OK )	;
		if ( Status == SD_OK )
			return RES_OK;
		else
			return RES_ERROR;
//	case DEV_USB :
//		// translate the arguments here
//
//		result = USB_disk_write(buff, sector, count);
//
//		// translate the reslut code here
//
//		return res;
	}
	return RES_PARERR;
}



/*-----------------------------------------------------------------------*/
/* Miscellaneous Functions                                               */
/*-----------------------------------------------------------------------*/

DRESULT disk_ioctl (
	BYTE pdrv,		/* Physical drive nmuber (0..) */
	BYTE cmd,		/* Control code */
	void *buff		/* Buffer to send/receive control data */
)
{
	switch (pdrv) {
//	case DEV_RAM :
//
//		// Process of the command for the RAM drive
//
//		return res;

	case DEV_MMC :
		switch (cmd)
		{
			case CTRL_SYNC:
			  /* no synchronization to do since not buffering in this module */
			  return RES_OK;
			case GET_SECTOR_SIZE:
			  *(uint16_t*)buff = SECTOR_SIZE;
			  return RES_OK;
			case GET_SECTOR_COUNT:
			  *(uint32_t*)buff = SDCardInfo.CardCapacity / SECTOR_SIZE;
			  return RES_OK;
			case GET_BLOCK_SIZE:
			  *(uint32_t*)buff = SDCardInfo.CardBlockSize;
			  return RES_OK;
			/* Following command are not used by FatFs module */
			case MMC_GET_TYPE :		/* Get MMC/SDC type (uint8_t) */
				*(uint8_t*)buff = SDCardInfo.CardType;
				return RES_OK;
			case MMC_GET_CSD :		/* Read CSD (16 bytes) */
				memcpy((void *)buff,&SDCardInfo.SD_csd,16);
				return RES_OK;
			case MMC_GET_CID :		/* Read CID (16 bytes) */
				memcpy((void *)buff,&SDCardInfo.SD_cid,16);
				return RES_OK;
			case MMC_GET_OCR :		/* Read OCR (4 bytes) */
				*(uint32_t*)buff = SDCardInfo.SD_csd.MaxRdCurrentVDDMin;
				return RES_OK;
			case MMC_GET_SDSTAT :	/* Read SD status (64 bytes) */
				SD_GetCardStatus(&SDCardStatus);
				memcpy((void *)buff,&SDCardStatus,64);
				return RES_OK;
			default :
				return RES_OK;
		}

//	case DEV_USB :
//
//		// Process of the command the USB drive
//
//		return res;
	}
	return RES_PARERR;
}
