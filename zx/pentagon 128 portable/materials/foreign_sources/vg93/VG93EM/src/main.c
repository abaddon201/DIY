/* VG93EM FDC1793(KR1818VG93) chip emulator by IanPo / zx-pk.ru, 2017, 2018 */
/* Tested on WaveShare OpenX05R 205RB devboard with ZXM-Phoenix 1.0 */
/* Adapted to and tested on IanPo's prototype 205RC board with ZXM-Phoenix 1.0 */

#include <string.h>
#include <stdbool.h>
#include "stm32f2xx_conf.h"
#include "vg93em.h"
#include "xprintf.h"
#include "ff.h"
#include "crc16.h"

//const uint16_t R0R1_ARR[] = { 600, 1200, 2000, 3000 };
const uint16_t R0R1_ARR[] = { 1, 600, 1400, 2400 };	// коррекция на выполнение Load_Cylinder (6-7 мс)

#pragma pack(1)
volatile uint8_t Regs[4];
volatile uint8_t CMD_R;
#pragma pack()

volatile uint8_t DSR;
volatile uint8_t VTRACK_R;
extern volatile bool bNewCMD;
extern volatile uint8_t* ADDRPointer;

#define STAT_R	Regs[0]
#define TRACK_R	Regs[1]
#define SECT_R	Regs[2]
#define DATA_R	Regs[3]

// Private variables
FATFS filesystem;		/* volume lable */
FRESULT ret;			/* Result code */
FIL file;				/* File object */
DIR dir;				/* Directory object */
FILINFO fno;			/* File information object */
char *fn;
UINT bw, br;

extern char sCurrDir[];
extern char sFileFullNameA[], sFileFullNameB[];
extern bool bFileLoadedA, bFileLoadedB;

uint8_t buffA[ ( MAX_TRACK_LEN + MAX_BF_LEN ) * 2 ];
uint32_t track_lengsA[ ( CYL_NUM_MAX + 1 ) * 2 ];
uint32_t track_offsetsA[ ( CYL_NUM_MAX + 1 ) * 2 ];

uint8_t buffB[ ( MAX_TRACK_LEN + MAX_BF_LEN ) * 2 ];
uint32_t track_lengsB[ ( CYL_NUM_MAX + 1 ) * 2 ];
uint32_t track_offsetsB[ ( CYL_NUM_MAX + 1 ) * 2 ];

MFDIMG *mfdimg;
MFDTRACKIMG *mfdtrackimg;
uint16_t mfd_NOTA;				// общее кол-во треков в файле ( с учетом сторон )

volatile bool HLD;

volatile uint8_t fBusy;     // 0
volatile uint8_t fIndex;    // 1
volatile uint8_t fTR00;     // 2
volatile uint8_t fCRC_ERR;  // 3
volatile uint8_t fSEEK_ERR; // 4
volatile uint8_t fHLD_HLT;  // 5
volatile uint8_t fWRPT;     // 6

volatile uint8_t fDRQ;      // 1
volatile uint8_t fLOST;     // 2
volatile uint8_t fREC_NF;   // 4
volatile uint8_t fWFAULT;   // 5
volatile uint8_t fREC_TYP;  // 5

uint8_t Max_CylinderA, Max_CylinderB;
bool Unsaved_CylinderA, Unsaved_CylinderB;
uint32_t Loaded_CylinderA;
uint8_t OldIndexA;
volatile bool PortReset;
long int i,j;
uint8_t CRCL_Saved;
volatile unsigned char CURR_STATE,LAST_STATE;
uint8_t CMD_TYPE;
bool CRCReset;
uint16_t CRC16_value;
uint32_t CRC16_Byte_Counter;
uint16_t Sec_Length;
signed char DIRC;	// 1 или -1
volatile bool Wr_Sync;
volatile uint32_t *DWPointer;
volatile uint8_t *SYNCPointer;
volatile uint8_t *ADDRPointer;
volatile uint32_t temp2;
volatile bool INT_CMD;
uint8_t PREV_DATA;
char cRecUART;

extern volatile uint32_t Curr_Byte;
extern volatile uint8_t IP_Counter;
extern volatile bool Next_Byte;

void GPIO_PreConfig(void);
void EXTI_Config(void);
void USART1_Config(void);
void Delay_Config(void);
void DataTimer_Config(void);
void SendChar2USART(char);
bool ReceiveCharFromUSART(char *);
bool ParseImageFileA(void);
bool ParseImageFileB(void);
void Load_CylinderA(uint32_t);
void Save_CylinderA(void);
void fault_err (FRESULT);
static void Delay(__IO uint32_t);
void Delay_Start(uint16_t);
void DataTimer_Start(void);
void DataTimer_Continue(void);
void DataTimer_Stop(void);
void Crc16(unsigned char);
void ExecAccurate_TypeI(void);
void ExecAccurate_TypeII(void);
void ExecAccurate_TypeIII(void);
void ExecAccurate_TypeIV(void);
void InitializeEM(void);
void PickNLoad( void );

// external function from terminal.c
void ChooseDiskImage( void );

// тестовые
void DumpVars(void);
void Track2UART(void);


int main(void)
{
	GPIO_PreConfig();
	EXTI_Config();
	Delay_Config();
	DataTimer_Config();
	xdev_out(SendChar2USART);
	USART1_Config();
	xprintf("\r\nMC started\r\n");
	//
	STAT_R = 0;
	if ( ( ret = f_mount( &filesystem, "/", 1 )) != FR_OK )	fault_err(ret);
	xprintf("Card mounted\r\n");
	Delay(1000000);
	strcpy( sCurrDir, "/" );
	PickNLoad();
	xprintf("VG93EM ready\r\n");
	//
	while(1)
	{
		if ( PortReset )	InitializeEM();
		//
		if ( bNewCMD )
		{
			bNewCMD = false;
			if ( ( CMD_R & CMD7 ) == 0 )
				CMD_TYPE = 1;
			else
				if ( ( CMD_R & CMD6 ) == 0 )
					CMD_TYPE = 2;
				else
					if ( ( CMD_R & ( CMD5 | CMD4 ) ) != CMD4 )
						CMD_TYPE = 3;
					else
						CMD_TYPE = 4;
			CURR_STATE = 1;
//DumpVars();
//xprintf("%X ",CMD_R);
		}
		//
		switch ( CMD_TYPE )
		{
			case 0:	// остановка после 15 оборотов в IDLE
			{
				if ( IP_Counter >= 15 )	DataTimer_Stop();
#ifdef TRACE
//	xprintf("IPC=%d ",IP_Counter);
#endif
				if ( !HLD && !Unsaved_CylinderA && !Unsaved_CylinderB )
					if ( ReceiveCharFromUSART( &cRecUART ) && cRecUART == '\r' )	PickNLoad();
				break;
			}
			case 1:
			{
				if ( ( pCTRL->IDR & EM_DISK_NUM ) == 0 )
					ExecAccurate_TypeI();
//				else
//					ExecFast_TypeI();
                //
                if ( VTRACK_R == 0 )
                    fTR00 = TR00;
                else
                    fTR00 = 0;
                //
                STAT_R = fBusy | fIndex | fTR00 | fCRC_ERR | fSEEK_ERR | fHLD_HLT | fWRPT;
				break;
			}
			case 2:
			{
				if ( ( pCTRL->IDR & EM_DISK_NUM ) == 0 )
					ExecAccurate_TypeII();
//				else
//					ExecFast_TypeII();
                STAT_R = fBusy | fDRQ | fLOST | fCRC_ERR | fREC_NF | fWFAULT | fREC_TYP | fWRPT;
				break;
			}
			case 3:
			{
				if ( ( pCTRL->IDR & EM_DISK_NUM ) == 0 )
					ExecAccurate_TypeIII();
//				else
//					ExecFast_TypeIII();
                STAT_R = fBusy | fDRQ | fLOST | fCRC_ERR | fREC_NF | fWFAULT | fREC_TYP | fWRPT;
				break;
			}
			case 4:
			{
				if ( ( pCTRL->IDR & EM_DISK_NUM ) == 0 )
					ExecAccurate_TypeIV();
//				else
//					ExecFast_TypeIV();
				STAT_R = fBusy | fDRQ | fLOST | fCRC_ERR | fREC_NF | fWFAULT | fREC_TYP | fWRPT;
				break;
			}
			default:	{}
		}
        //
#ifdef TRACE
		if ( LAST_STATE != CURR_STATE )
		{
//			if ( CMD_TYPE == 2 && CMD_R == 0xd0 )	DumpVars();
//			if ( STAT_R & ( CRC_ERR|fREC_NF ) )	{DumpVars();while(1)    ;}
//			if ( CMD_TYPE == 2 && CURR_STATE == 14 )    DumpVars();
//			if ( CMD_TYPE == 0 )	DumpVars();
//			if ( CMD_TYPE == 3 && CURR_STATE == 18 )	{ Track2UART(); }
//			if ( Curr_Byte > 6272 )	DumpVars();
//			if ( VTRACK_R > CYL_NUM_MAX || TRACK_R > CYL_NUM_MAX )	DumpVars();
			LAST_STATE = CURR_STATE;
		}
#endif
	}
}

void PickNLoad( void )
{
	long int i = 0;


	while ( i == 0 )
	{
		ChooseDiskImage();
		if ( bFileLoadedA && ParseImageFileA() ) i++;
		if ( bFileLoadedB && ParseImageFileB() ) i++;
#ifdef TRACE
	if ( bFileLoadedA )	xprintf("File A loaded\r\n");
	if ( bFileLoadedB )	xprintf("File B loaded\r\n");
	xprintf("%d file(s) loaded\r\n",i);
#endif
	}
	InitializeEM();
}

void Track2UART(void)
{
	uint32_t k;

	xprintf("--- BEGIN %d ---\r\n", Loaded_CylinderA);
	for ( k = 0; k < ( MAX_TRACK_LEN + MAX_BF_LEN ) * 2; k++ )	xprintf("%X ", buffA[k]);
	xprintf("\r\n--- END ---");
}

void DumpVars(void)
{
	xprintf("\r\n");
	xprintf("CMD=0x%x\r\n",CMD_R);
	xprintf("CMD_TYPE=0x%x\r\n",CMD_TYPE);
	xprintf("STA=0x%x\r\n",STAT_R);
	xprintf("busy   index  tr00   crc    seek   hldhlt wrpt   cprdy\r\n");
	for ( i = 0; i < 8; i++ )   xprintf("%d      ", ( STAT_R & 1 << i ) != 0 );
	xprintf("\r\n");
	xprintf("busy   drq    lost   crc    recnf  wfltrt wrpt   cprdy\r\n");
	//
	xprintf("CurrByte=%d\r\n",Curr_Byte);
	xprintf("IP_Counter=%d\r\n",IP_Counter);
	xprintf("ADDRPointer=0x%x\r\n",ADDRPointer);
	xprintf("SYNCPointer=0x%x\r\n",SYNCPointer);
	xprintf("CRC16_Byte_Counter=%d\r\n",CRC16_Byte_Counter);
	xprintf("CRC16_value=0x%x\r\n",CRC16_value);
	xprintf("TRA=%d\r\n",TRACK_R);
	xprintf("Track=%d, length=%d\r\n",( VTRACK_R << 1 ) + ( ( pCTRL->IDR & EM_SIDE ) == 0 ), \
			track_lengsA[( VTRACK_R << 1 ) + ( (  pCTRL->IDR & EM_SIDE ) == 0 )]);
	xprintf("VTRA=%d\r\n",VTRACK_R);
	xprintf("SEC=%d\r\n",SECT_R);
	xprintf("Sec_Length=%d\r\n",Sec_Length);
	xprintf("DAT=0x%x\r\n",DATA_R);
	xprintf("DSR=%d\r\n",DSR);
	// DIRC
	if ( DIRC == 1 )
		xprintf("DIRC=1");
	else
		xprintf("DIRC=-1");
	//
	xprintf("\r\n");
	//
	xprintf("next CURR_STATE=%d\r\n",CURR_STATE);
	//
	xprintf("CTRL: ");
	// Reset
	if ( pCTRL->IDR & EM_RESET )
		xprintf("RESET ");
	else
		xprintf("reset ");
	// HLT (HRDY)
	if ( pCTRL->IDR & EM_HLT )
		xprintf("HLT ");
	else
		xprintf("hlt ");
	// SIDE
	if ( pCTRL->IDR & EM_SIDE )
		xprintf("side0 ");
	else
		xprintf("SIDE1 ");
	// DISK_NUM
	if ( pCTRL->IDR & EM_DISK_NUM )
		xprintf("DISK1 ");
	else
		xprintf("disk0 ");
	// DRQ
	if ( pCTRL->IDR & EM_DRQ )
		xprintf("DRQ ");
	else
		xprintf("drq ");
	// INTRQ
	if ( pCTRL->IDR & EM_INTRQ )
		xprintf("INTRQ ");
	else
		xprintf("intrq ");
	//
	xprintf("\r\n");
}

void InitializeEM(void)
{
	PortReset = false;
	DataTimer_Stop();
	Unsaved_CylinderA = false;
	Unsaved_CylinderB = false;
	//
	fBusy = 0;
	fIndex = 0;
	fTR00 = 0;
	fCRC_ERR = 0;
	fSEEK_ERR = 0;
	fHLD_HLT = 0;
	fWRPT = 0;
	//
	fDRQ = 0;
	fLOST = 0;
	fREC_NF = 0;
	fWFAULT = 0;
	fREC_TYP = 0;
	//
	DIRC = -1;
	CMD_R = 0x03;
	SECT_R = 1;
	DATA_R = 0;
	TRACK_R = 0;
	VTRACK_R = 0;
	CMD_TYPE = 1;
	CURR_STATE = 1;
	bNewCMD = false;
	//
	while ( ( pCTRL->IDR & EM_RESET ) == 0 )	;
}

void ExecAccurate_TypeI(void)
{
	switch ( CURR_STATE )
	{
		case 1:
		{
			fBusy = BUSY;
			fCRC_ERR = 0;
			fSEEK_ERR = 0;
			pCTRL->BSRRH = EM_DRQ | EM_INTRQ;	// сброс
			CURR_STATE++;
			break;
		}
		case 2:
		{
			if ( CMD_R & CMDI_h )
			{
                if ( !HLD )
                    DataTimer_Start();
                else
                    DataTimer_Continue();
			}
			if ( pCTRL->IDR & EM_HLT )
				fHLD_HLT = HLD_HLT;
			else
				fHLD_HLT = 0;
			CURR_STATE++;
			break;
		}
		case 3:
		{
			if ( ( CMD_R & CMD765 ) == 0x40 )	// STEP-IN (Шаг вперед)
			{
				DIRC = 1;
				CURR_STATE = 20;
			}
			else
				if ( ( CMD_R & CMD765 ) == 0x60)	// STEP-OUT (Шаг назад)
				{
					DIRC = -1;
					CURR_STATE = 20;
				}
				else
					if ( ( CMD_R & CMD765 ) == 0x20 )	// STEP (Шаг)
						CURR_STATE = 20;
					else
						CURR_STATE++;
			break;
		}
		case 4:
		{
			if ( ( CMD_R & 0xF0 ) == 0 )	// not SEEK (не Поиск)
			{
				if ( TRACK_R <= Max_CylinderA && TRACK_R >= 0 )
				    VTRACK_R = TRACK_R;
				else
					VTRACK_R = 0;
				TRACK_R = 0xFF;
				DATA_R = 0;
			}
			CURR_STATE++;
			break;
		}
		case 5:
		{
			DSR = DATA_R;
			CURR_STATE++;
			break;
		}
		case 6:
		{
			if ( TRACK_R == DSR )
				CURR_STATE = 12;
			else
				{
					if ( DSR > TRACK_R )
						DIRC = 1;
					else
						DIRC = -1;
					CURR_STATE++;
				}
			break;
		}
		case 7:	// B
		{
			TRACK_R += DIRC;
			if ( DIRC == 1 && VTRACK_R == Max_CylinderA )
				;
			else
				if ( DIRC == -1 && VTRACK_R == 0 )
					;
				else
					VTRACK_R += DIRC;
			CURR_STATE++;
			break;
		}
		case 8:	// C
		{
			if ( VTRACK_R == 0 && DIRC == -1 )
			{
//				fTR00 == TR00;
				TRACK_R = 0;
				CURR_STATE = 12;
			}
			else
				CURR_STATE++;
			break;
		}
		case 9:
		{
			Delay_Start( R0R1_ARR[ CMD_R & CMDI_R01 ] );
			CURR_STATE++;
			break;
		}
		case 10:
		{
			if ( ( TIM6->CR1 & TIM_CR1_CEN ) == 0 )	CURR_STATE++;
			break;
		}
		case 11:
		{
			if ( CMD_R & CMD765 )	// STEP-IN (Шаг вперед) или STEP-OUT (Шаг назад) или STEP (Шаг)
				CURR_STATE++;
			else
				CURR_STATE = 5;
			break;
		}
		case 12:
		{
			if ( Unsaved_CylinderA )	Save_CylinderA();
			Load_CylinderA( VTRACK_R );
			if ( CMD_R & CMDI_V )
				CURR_STATE++;
			else
				CURR_STATE = 19;
			break;
		}
		case 13:
		{
			if ( !HLD )
			    DataTimer_Start();
//            else
//               IP_Counter = 0;
			Delay_Start( 3000 );	// при тактовой 1 Мгц
			CURR_STATE++;
			break;
		}
		case 14:
		{
			if ( ( TIM6->CR1 & TIM_CR1_CEN ) == 0 )	CURR_STATE++;
			break;
		}
		case 15:
		{
			IP_Counter = 0;
			CURR_STATE++;
			break;
		}
		case 16:
		{
			if ( IP_Counter > 5 )
			{
				fSEEK_ERR = SEEK_ERR;
				CURR_STATE = 19;
			}
			else
				CURR_STATE++;
			break;
		}
		case 17:
		{
		    if ( Next_Byte )
            {
                Next_Byte = false;
                temp2 = Curr_Byte;
                SYNCPointer = buffA + MAX_TRACK_LEN + ( Curr_Byte >> 3 );
                if ( ( pCTRL->IDR & EM_SIDE ) == 0 )
                {
                    temp2 += MAX_TRACK_LEN + MAX_BF_LEN;
                    SYNCPointer += MAX_TRACK_LEN + MAX_BF_LEN;
                }
                DWPointer = (uint32_t*)(buffA + temp2);
                if ( *DWPointer == IAM && (*SYNCPointer & 1<<(Curr_Byte & 7) ) != 0 )
                    if ( *((uint8_t*)DWPointer + 4) == TRACK_R )
                    {
                        CRCReset = true;
                        Crc16( 0xA1 );
                        ADDRPointer = (uint8_t*)DWPointer + 1;
                        CURR_STATE++;
                    }
            }
			break;
		}
		case 18:
		{
		    if ( Next_Byte )
            {
                Next_Byte = false;
                if ( CRC16_Byte_Counter == 8 )
                {
                    if ( *ADDRPointer == (uint8_t)( CRC16_value >> 8 ) && \
                        *(++ADDRPointer) == (uint8_t)( CRC16_value & 0x00FF ) )
                    {
                        fCRC_ERR = 0;
                        CURR_STATE++;
                    }
                    else
                    {
                        fCRC_ERR = CRC_ERR;
                        CURR_STATE = 16;
                    }
                }
                else
                    Crc16( *(ADDRPointer++) );
            }
			break;
		}
		case 19:
		{
			fBusy = 0;
			pCTRL->BSRRL = EM_INTRQ;	// установка
			CURR_STATE = 0;
			CMD_TYPE = 0;
			break;
		}
		case 20:
		{
			if ( CMD_R & CMDI_u )
				CURR_STATE = 7;
			else
				CURR_STATE = 8;
			break;
		}
		default: {}
	}
}

void ExecAccurate_TypeII(void)
{
	switch ( CURR_STATE )
	{
		case 1:
		{
            fBusy = BUSY;
            fDRQ = 0;
            fLOST = 0;
            fCRC_ERR = 0;
            fREC_NF = 0;
            fWFAULT = 0;
            fREC_TYP = 0;
			pCTRL->BSRRH = EM_DRQ | EM_INTRQ;	// сброс
			Next_Byte = false;
			CURR_STATE++;
			break;
		}
		case 2:	// CPRDY не проверяем, он на спеке всегда готов и == HLD (Motor)
		{
			if ( !HLD )
			    DataTimer_Start();
            else
                DataTimer_Continue();
			CURR_STATE++;
			break;
		}
		case 3:
		{
			if ( CMD_R & CMDII_E )
			{
				Delay_Start( 3000 );
				CURR_STATE++;
			}
			else
				CURR_STATE = 5;
			break;
		}
		case 4:
		{
			if ( ( TIM6->CR1 & TIM_CR1_CEN ) == 0 )	CURR_STATE++;
			break;
		}
		case 5:
		{
			if ( pCTRL->IDR & EM_HLT )	CURR_STATE++;
			break;
		}
		case 6:	// 4
		{
			if ( ( CMD_R & CMD5 ) > 0 && fWRPT != 0 )
				CURR_STATE = 24;	// выход
			else
            {
                if ( !HLD )
                    DataTimer_Start();
                else
                    DataTimer_Continue();
                CURR_STATE++;
            }
			break;
		}
		case 7:	// 1
		{
			if ( IP_Counter > 5 )
			{
				fREC_NF = REC_NF;
				CURR_STATE = 24;	// выход
			}
			else
				CURR_STATE++;
			break;
		}
		case 8:
		{
		    if ( Next_Byte )
            {
                Next_Byte = false;
                temp2 = Curr_Byte;
                SYNCPointer = buffA + MAX_TRACK_LEN + ( Curr_Byte >> 3 );
                if ( ( pCTRL->IDR & EM_SIDE ) == 0 )
                {
                    temp2 += MAX_TRACK_LEN + MAX_BF_LEN;
                    SYNCPointer += MAX_TRACK_LEN + MAX_BF_LEN;
                }
                DWPointer = (uint32_t*)(buffA + temp2);
                if ( *DWPointer == IAM && (*SYNCPointer & 1<<(Curr_Byte & 7) ) != 0 )
				{
                    if ( *((uint8_t*)DWPointer + 4) == TRACK_R && \
							( (*((uint8_t*)DWPointer + 5) == ( ( CMD_R & CMDII_s ) != 0 ) ) || \
							( ( CMD_R & CMDII_C ) == 0 ) ) && \
								*((uint8_t*)DWPointer + 6) == SECT_R )
                    {
                        switch ( *((uint8_t*)DWPointer + 7) & 3 )
                        {
                            case 0:		Sec_Length = 128; break;
                            case 1:		Sec_Length = 256; break;
                            case 2:		Sec_Length = 512; break;
                            default:	Sec_Length = 1024;
                        }
                        CRCReset = true;
                        Crc16( 0xA1 );
                        ADDRPointer = (uint8_t*)DWPointer + 1;
                        CURR_STATE++;
                    }
                    else
                        CURR_STATE--;
				}
            }
            else
                CURR_STATE--;
			break;
		}
		case 9:
		{
		    if ( Next_Byte )
            {
                Next_Byte = false;
                if ( CRC16_Byte_Counter == 8 )
                    if ( *ADDRPointer == (uint8_t)( CRC16_value >> 8 ) )
                    {
                        CRCL_Saved = (uint8_t)( CRC16_value & 0x00FF );
                        fCRC_ERR = 0;
                    }
                    else
                    {
                        fCRC_ERR = CRC_ERR;
                        CURR_STATE = 7;
                    }
                else
					if ( CRC16_Byte_Counter == 9 )
					{
						if ( *ADDRPointer == CRCL_Saved )
						{
							fCRC_ERR = 0;
							CURR_STATE++;
						}
						else
						{
							fCRC_ERR = CRC_ERR;
							CURR_STATE = 7;
						}
					}
				Crc16( *ADDRPointer++ );
            }
			break;
		}
		case 10:
		{
			if ( CMD_R & CMD5 )
			{
				Unsaved_CylinderA = true;
				CURR_STATE = 15;	// запись сектора
			}
			else
				CURR_STATE++;
			break;
		}
		case 11:	// 2
		{
		    if ( Next_Byte )
            {
                Next_Byte = false;
                temp2 = Curr_Byte;
                SYNCPointer = buffA + MAX_TRACK_LEN + ( Curr_Byte >> 3 );
                if ( ( pCTRL->IDR & EM_SIDE ) == 0 )
                {
                    temp2 += MAX_TRACK_LEN + MAX_BF_LEN;
                    SYNCPointer += MAX_TRACK_LEN + MAX_BF_LEN;
                }
                DWPointer = (uint32_t*)(buffA + temp2);
                if ( ( *DWPointer & IDAM ) == IDAM && (*SYNCPointer & 1<<(Curr_Byte & 7) ) != 0 )
                {
                    if ( *((uint8_t*)DWPointer + 3) == 0xF8 )
                        fREC_TYP = REC_TYP;
                    else
                        fREC_TYP = 0;
                    CRCReset = true;
                    Crc16( 0xA1 );
                    ADDRPointer = (uint8_t*)DWPointer + 1;
                    CURR_STATE++;
                }
            }
			else
			    if ( IP_Counter > 5 )   CURR_STATE = 7;
			break;
		}
		case 12:
		{
		    if ( Next_Byte )
            {
                Next_Byte = false;
                if ( CRC16_Byte_Counter == 4 )
                    CURR_STATE++;
                else
                    Crc16( *ADDRPointer++ );
            }
			else
			    if ( IP_Counter > 5 )   CURR_STATE = 7;
			break;
		}
		case 13:
		{
		    if ( Next_Byte )
            {
                Next_Byte = false;
                if ( CRC16_Byte_Counter == Sec_Length + 4 )
                {
                    if ( *ADDRPointer++ == (uint8_t)( CRC16_value >> 8 ) && \
                        *ADDRPointer == (uint8_t)( CRC16_value & 0x00FF ) )
                    {
                        fCRC_ERR = 0;
                        CURR_STATE++;
                    }
                    else
                    {
                        fCRC_ERR = CRC_ERR;
                        CURR_STATE = 24; // выход
                    }
                }
                else
                    if ( pCTRL->IDR & EM_DRQ )
                        fLOST = LOST;
                    else
                    {
                        DATA_R = *ADDRPointer;
                        Crc16( *ADDRPointer++ );
                        pCTRL->BSRRL = EM_DRQ;  // установка
                        fDRQ = DRQ;
                    }
			}
			else
			    if ( IP_Counter > 5 )   CURR_STATE = 7;
			break;
		}
		case 14:	// 5
		{
			if ( CMD_R & CMDII_m )
			{
				SECT_R++;
				CURR_STATE = 6;
			}
			else
				CURR_STATE = 24;	// выход
			break;
		}
		case 15:	// 3
		{
		    if ( Next_Byte )
            {
                Next_Byte = false;
                if ( CRC16_Byte_Counter == 12 )	// пропустим 2 байта
                {
                    pCTRL->BSRRL = EM_DRQ;  // Установка DRQ
                    fDRQ = DRQ;
                    CURR_STATE++;
                }
				Crc16( *ADDRPointer++ );
            }
			break;
		}
		case 16:
		{
		    if ( Next_Byte )
            {
                Next_Byte = false;
                if ( CRC16_Byte_Counter == 20 )	// пропустим 8 байт
                {
                    if ( pCTRL->IDR & EM_DRQ )
                    {
                        fLOST = LOST;
                        CURR_STATE = 24; // выход
                    }
                    else
                        CURR_STATE++;
                }
				Crc16( *ADDRPointer++ );
            }
			break;
		}
		case 17:
		{
		    if ( Next_Byte )
            {
                Next_Byte = false;
                if ( CRC16_Byte_Counter == 32 )	// конец зазора 0x4E
                {
                    *ADDRPointer = 0;
                    CURR_STATE++;
                }
				Crc16( *ADDRPointer++ );
            }
			break;
		}
		case 18:	// чистка полей SYNCPointer где ???!!!
		{
		    if ( Next_Byte )
            {
                Next_Byte = false;
                if ( CRC16_Byte_Counter == 44 )	// 12 нулей
                {
                    CRCReset = true;
                    SYNCPointer = buffA + MAX_TRACK_LEN + ( ( ADDRPointer - buffA ) >> 3 );
					if ( ( pCTRL->IDR & EM_SIDE ) == 0 )	SYNCPointer += MAX_TRACK_LEN + MAX_BF_LEN;
					*SYNCPointer = 1 << ( (uint32_t)(ADDRPointer - buffA) & 7 );
                    Crc16( 0xA1 );
                    *ADDRPointer++ = 0xA1;
                    CURR_STATE++;
                }
                else
                {
                    *ADDRPointer++ = 0;
                    Crc16( 0 );
                }
            }
			break;
		}
		case 19:
		{
		    if ( Next_Byte )
            {
                Next_Byte = false;
                if ( CRC16_Byte_Counter == 3 )
                {
                    if ( CMD_R & CMDII_A0 )
                    {
                        *ADDRPointer++ = 0xF8;
                        Crc16( 0xF8 );
                    }
                    else
                    {
                        *ADDRPointer++ = 0xFB;
                        Crc16( 0xFB );
                    }
                    CURR_STATE++;
                }
                else
                {
                    *ADDRPointer++ = 0xA1;
                    Crc16( 0xA1 );
                }
            }
			break;
		}
		case 20:
		{
		    if ( Next_Byte )
            {
                Next_Byte = false;
                pCTRL->BSRRL = EM_DRQ;  // Установка DRQ
                fDRQ = DRQ;
                *ADDRPointer++ = DATA_R;
                Crc16( DATA_R );
                CURR_STATE++;
            }
			break;
		}
		case 21:
		{
   		    if ( Next_Byte )
            {
                Next_Byte = false;
                if ( CRC16_Byte_Counter == Sec_Length + 4 )
                {
                    *ADDRPointer++ = (uint8_t)( CRC16_value >> 8 );
                    CRCL_Saved = (uint8_t)( CRC16_value & 0x00FF );
                    Crc16( (uint8_t)( CRC16_value >> 8 ) );
                    CURR_STATE++;
                }
                else
                    if ( pCTRL->IDR & EM_DRQ )
                    {
                        fLOST = LOST;
                        *ADDRPointer++ = 0;
                        Crc16( 0 );
                    }
                    else
                    {
                        pCTRL->BSRRL = EM_DRQ;  // Установка DRQ
                        fDRQ = DRQ;
                        *ADDRPointer++ = DATA_R;
                        Crc16( DATA_R );
                    }
            }
			break;
		}
		case 22:
		{
   		    if ( Next_Byte )
            {
                Next_Byte = false;
                *ADDRPointer++ = CRCL_Saved;
				CURR_STATE++;
			}
			break;
		}
		case 23:
		{
   		    if ( Next_Byte )
            {
                Next_Byte = false;
                *ADDRPointer++ = 0xFF;
				CURR_STATE = 14;
			}
			break;
		}
		case 24:
		{
			fBusy = 0;
			pCTRL->BSRRL = EM_INTRQ;	// установка
			CURR_STATE = 0;
			CMD_TYPE = 0;
			break;
		}
		default: {}
	}
}

void ExecAccurate_TypeIII(void)
{
    switch ( CURR_STATE )
	{
		case 1:
		{
            fBusy = BUSY;
            fDRQ = 0;
            fLOST = 0;
            fCRC_ERR = 0;
            fREC_NF = 0;
            fWFAULT = 0;
            fREC_TYP = 0;
			pCTRL->BSRRH = EM_DRQ | EM_INTRQ;	// сброс
			Next_Byte = false;
			CURR_STATE++;
			break;
		}
		case 2:
		{
			if ( !HLD )
			    DataTimer_Start();
            else
                DataTimer_Continue();
			CURR_STATE++;
			break;
		}
		case 3:
		{
			if ( CMD_R & CMDII_E )
			{
				Delay_Start( 3000 );
				CURR_STATE++;
			}
			else
				CURR_STATE = 5;
			break;
		}
		case 4:
		{
			if ( ( TIM6->CR1 & TIM_CR1_CEN ) == 0 )	CURR_STATE++;
			break;
		}
		case 5:
		{
			if ( pCTRL->IDR & EM_HLT )	CURR_STATE++;
			break;
		}
		case 6:
		{
			if ( ( CMD_R & CMD5 ) == 0 )
				CURR_STATE++;	// чтение адреса
			else
				if ( ( CMD_R & CMD4 ) == 0 )
					CURR_STATE = 10;	// чтение дорожки
				else
					CURR_STATE = 12;	// запись дорожки
			break;
		}
		case 7:
		{
			if ( IP_Counter > 5 )
			{
				fREC_NF = REC_NF;
				CURR_STATE = 10;	// выход
			}
			else
				CURR_STATE++;
			break;
		}
		case 8:
		{
		    if ( Next_Byte )
            {
                Next_Byte = false;
                temp2 = Curr_Byte;
                SYNCPointer = buffA + MAX_TRACK_LEN + ( Curr_Byte >> 3 );
                if ( ( pCTRL->IDR & EM_SIDE ) == 0 )
                {
                    temp2 += MAX_TRACK_LEN + MAX_BF_LEN;
                    SYNCPointer += MAX_TRACK_LEN + MAX_BF_LEN;
                }
                DWPointer = (uint32_t*)(buffA + temp2);
                if ( *DWPointer == IAM && (*SYNCPointer & 1<<(Curr_Byte & 7) ) != 0 )
				{
						CRCReset = true;
                        Crc16( 0xA1 );
                        ADDRPointer = (uint8_t*)DWPointer + 1;
                        CURR_STATE++;
				}
				else
					CURR_STATE--;
            }
            else
                CURR_STATE--;
			break;
		}
		case 9:
		{
		    if ( Next_Byte )
            {
                Next_Byte = false;
				if ( CRC16_Byte_Counter == 10 )
					CURR_STATE = 18;	// выход
				else
					if ( ( CRC16_Byte_Counter > 3 ) && ( CRC16_Byte_Counter < 10 ) )
					{
						if ( CRC16_Byte_Counter == 8 )
						{
							if ( *ADDRPointer == (uint8_t)( CRC16_value >> 8 ) && \
								*(ADDRPointer + 1) == (uint8_t)( CRC16_value & 0x00FF ) )
								fCRC_ERR = 0;
							else
								fCRC_ERR = CRC_ERR;
						}
						if ( CRC16_Byte_Counter == 4 )	SECT_R = *ADDRPointer;
						DATA_R = *ADDRPointer;
						pCTRL->BSRRL = EM_DRQ;  // установка
						fDRQ = DRQ;
					}
				Crc16( *ADDRPointer++ );
			}
			else
			    if ( IP_Counter > 5 )   CURR_STATE = 7;
			break;
		}
		case 10:	// чтение дорожки
		{
		    if ( Next_Byte )
            {
                Next_Byte = false;
				if ( Curr_Byte == INDEX_START )
				{
					ADDRPointer = buffA;
					if ( ( pCTRL->IDR & EM_SIDE ) == 0 )
						ADDRPointer += MAX_TRACK_LEN + MAX_BF_LEN;
					DATA_R = *ADDRPointer++;
					pCTRL->BSRRL = EM_DRQ;  // установка
					fDRQ = DRQ;
					CURR_STATE++;
				}
            }
			break;
		}
		case 11:
		{
		    if ( Next_Byte )
            {
				Next_Byte = false;
				if ( pCTRL->IDR & EM_DRQ )	fLOST = LOST;
				if ( Curr_Byte != INDEX_START )
				{
					ADDRPointer = buffA + Curr_Byte;
					if ( ( pCTRL->IDR & EM_SIDE ) == 0 )
						ADDRPointer += MAX_TRACK_LEN + MAX_BF_LEN;
					DATA_R = *ADDRPointer++;
					pCTRL->BSRRL = EM_DRQ;  // установка
					fDRQ = DRQ;
				}
				else
					CURR_STATE = 18;	// выход
            }
			break;
		}
		case 12:	// запись дорожки
		{
			if ( fWRPT != 0 )
				CURR_STATE = 18;	// выход
			else
			{
//pCTRL->BSRRL = EM_TST;
                if ( ( pCTRL->IDR & EM_SIDE ) == 0 )
					DWPointer = (uint32_t*)( buffA + MAX_TRACK_LEN * 2 + MAX_BF_LEN );
				else
					DWPointer = (uint32_t*)( buffA + MAX_TRACK_LEN );
				for ( j = 0; j < MAX_BF_LEN/4; j++ )	*DWPointer++ = 0;	// 21 мкс
//pCTRL->BSRRH = EM_TST;
				pCTRL->BSRRL = EM_DRQ;  // установка
				fDRQ = DRQ;
				CRCReset = true;
				Crc16(0);
				PREV_DATA = 0;
				CURR_STATE++;
			}
			break;
		}
		case 13:
		{
		    if ( Next_Byte )
            {
                Next_Byte = false;
				if ( CRC16_Byte_Counter == 4 )
					if ( pCTRL->IDR & EM_DRQ )
					{
						fLOST = LOST;
						CURR_STATE = 18;	// выход
					}
					else
					{
						CURR_STATE++;
						Unsaved_CylinderA = true;
					}
				else
					Crc16(0);
			}
            break;
		}
		case 14:
		{
		    if ( Next_Byte )
            {
                Next_Byte = false;
				if ( Curr_Byte == INDEX_START )
				{
					ADDRPointer = buffA;
					SYNCPointer = buffA + MAX_TRACK_LEN;
					if ( ( pCTRL->IDR & EM_SIDE ) == 0 )
					{
						ADDRPointer += MAX_TRACK_LEN + MAX_BF_LEN;
						SYNCPointer += MAX_TRACK_LEN + MAX_BF_LEN;
					}
					switch ( DATA_R )
					{
						case 0xF5:
						{
							*ADDRPointer = 0xA1;
							if ( PREV_DATA != 0xA1 )
							{
								*SYNCPointer = 1;	// INDEX_START = 0 и не изменяется
								CRCReset = true;
							}
							Crc16( 0xA1 );
							PREV_DATA = 0xA1;
							CURR_STATE += 2;
							pCTRL->BSRRL = EM_DRQ;  // установка
							fDRQ = DRQ;
							break;
						}
						case 0xF6:
						{
							*ADDRPointer = 0xC2;
							if ( PREV_DATA != 0xC2 )	*SYNCPointer = 1;
							PREV_DATA = 0xC2;
							CURR_STATE += 2;
							pCTRL->BSRRL = EM_DRQ;  // установка
							fDRQ = DRQ;
							break;
						}
						case 0xF7:
						{
							CRCL_Saved = (uint8_t)( CRC16_value & 0x00FF );
							*ADDRPointer++ = (uint8_t)( CRC16_value >> 8 );
							PREV_DATA = (uint8_t)( CRC16_value >> 8 );
							CURR_STATE++;
							break;
						}
						default:
						{
							*ADDRPointer = DATA_R;
							Crc16( DATA_R );
							PREV_DATA = DATA_R;
							CURR_STATE += 2;
							pCTRL->BSRRL = EM_DRQ;  // установка
							fDRQ = DRQ;
						}
					}
				}
			}
            break;
		}
		case 15:
		{
		    if ( Next_Byte )
            {
                Next_Byte = false;
				PREV_DATA = CRCL_Saved;
				*ADDRPointer = CRCL_Saved;
                CURR_STATE++;
				pCTRL->BSRRL = EM_DRQ;  // установка
				fDRQ = DRQ;
            }
			break;
		}
		case 16:
		{
		    if ( Next_Byte )
            {
                Next_Byte = false;
				if ( Curr_Byte != INDEX_START )
				{
					ADDRPointer = buffA + Curr_Byte;
					SYNCPointer = buffA + MAX_TRACK_LEN + ( Curr_Byte >> 3 );
					if ( ( pCTRL->IDR & EM_SIDE ) == 0 )
					{
						ADDRPointer += MAX_TRACK_LEN + MAX_BF_LEN;
						SYNCPointer += MAX_TRACK_LEN + MAX_BF_LEN;
					}
					if ( pCTRL->IDR & EM_DRQ )
					{
						fLOST = LOST;
						*ADDRPointer = 0;
						Crc16( 0 );
						PREV_DATA = 0;
					}
					else
						switch ( DATA_R )
						{
							case 0xF5:
							{
								*ADDRPointer = 0xA1;
								if ( PREV_DATA != 0xA1 )
								{
									*SYNCPointer = 1<<(Curr_Byte & 7);
									CRCReset = true;
								}
								Crc16( 0xA1 );
								PREV_DATA = 0xA1;
								pCTRL->BSRRL = EM_DRQ;  // установка
								fDRQ = DRQ;
								break;
							}
							case 0xF6:
							{
								*ADDRPointer = 0xC2;
								if ( PREV_DATA != 0xC2 )	*SYNCPointer = 1<<(Curr_Byte & 7);
								PREV_DATA = 0xC2;
								pCTRL->BSRRL = EM_DRQ;  // установка
								fDRQ = DRQ;
								break;
							}
							case 0xF7:
							{
								CRCL_Saved = (uint8_t)( CRC16_value & 0x00FF );
								*ADDRPointer++ = (uint8_t)( CRC16_value >> 8 );
								PREV_DATA = (uint8_t)( CRC16_value >> 8 );
								CURR_STATE++;
								break;
							}
							default:
							{
								*ADDRPointer = DATA_R;
								Crc16( DATA_R );
								PREV_DATA = DATA_R;
								pCTRL->BSRRL = EM_DRQ;  // установка
								fDRQ = DRQ;
							}
						}
				}
				else
					CURR_STATE = 18;	// выход
            }
			break;
		}
		case 17:
		{
		    if ( Next_Byte )
            {
                Next_Byte = false;
				PREV_DATA = CRCL_Saved;
				*ADDRPointer = CRCL_Saved;
                CURR_STATE--;
				pCTRL->BSRRL = EM_DRQ;  // установка
				fDRQ = DRQ;
            }
			break;
		}
		case 18:	// выход
		{
			fBusy = 0;
			pCTRL->BSRRL = EM_INTRQ;	// установка
			CURR_STATE = 0;
			CMD_TYPE = 0;
			break;
		}
		default: {}
	}
}

void ExecAccurate_TypeIV(void)
{
	switch ( CURR_STATE )
	{
		case 1:
		{
			fBusy = 0;
			CURR_STATE++;
			break;
		}
		case 2:
		{
			if ( ( CMD_R & CMDIV_I03 ) == 0 )	// немедленно без INTRQ
				CURR_STATE = 4;
			else
				if ( CMD_R & CMDIV_I3 )	// немедленно с INTRQ
					CURR_STATE++;
				else
					if ( CMD_R & CMDIV_I2 )	// индексный импульс
					{
						if ( OldIndexA == 0 && fIndex != 0 )
							CURR_STATE++;
						else
							if ( CMD_R & CMDIV_I1 ) // готов -> не готов
							{
								if ( false )	// на спеке такой переход не произойдет
									CURR_STATE++;
								else
									if ( CMD_R & CMDIV_I0 ) // не готов -> готов
									{
										if ( false )	// на спеке такой переход не произойдет
											CURR_STATE++;
									}
							}
					}
			OldIndexA = fIndex;
//			OldCprdy = ;	// на будущее
			break;
		}
		case 3:
		{
			DataTimer_Stop();
			CURR_STATE++;
			pCTRL->BSRRL = EM_INTRQ;	// установка
			break;
		}
		case 4:
		{
			CURR_STATE = 0;
			CMD_TYPE = 0;
			break;
		}
		default: {}
	}
}

void Crc16( unsigned char NewData )
{
    if ( CRCReset )
	{
		CRC16_Byte_Counter = 0;
		CRC16_value = 0xFFFF;
		CRCReset = false;
	}
	CRC16_value = ( CRC16_value << 8 ) ^ Crc16Table[ ( CRC16_value >> 8 ) ^ NewData ];
	CRC16_Byte_Counter++;
}

void DataTimer_Config(void)
{
	// TIM7 clock enable
	RCC->APB1ENR |= RCC_APB1ENR_TIM7EN;
	TIM7->ARR = 127;					// время отсчета 32 мкс ( 60 МГц / 128 / 15 )
	TIM7->PSC = 14;						// предделитель 15
	TIM7->CR1 |= TIM_CR1_ARPE;			// ARR Preload+
	// NVIC_IRQChannelPreemptionPriority = 15
	NVIC->IP[ TIM7_IRQn ] = 0x0F;
	// NVIC_IRQChannelCmd = ENABLE
	NVIC->ISER[ TIM7_IRQn >> 5 ] = 1 << ( TIM7_IRQn & 0x1F);
	//
	DataTimer_Stop();
}

void DataTimer_Start(void)
{
	ADDRPointer = NULL;
	IP_Counter = 0;
	Curr_Byte = 0;
	TIM7->EGR = TIM_EGR_UG;		// сброс счетчика
	TIM7->DIER = TIM_DIER_UIE;	// разрешаем прерывания
	TIM7->CR1 |= TIM_CR1_CEN;	// запускаем счет
	HLD = true;					// мотор
}

void DataTimer_Continue(void)
{
//   	ADDRPointer = NULL;
	IP_Counter = 0;
}

void DataTimer_Stop(void)
{
	TIM7->DIER = 0;
	TIM7->CR1 &= ~TIM_CR1_CEN;	// Останавливаем счет
	HLD = false;
	if ( Unsaved_CylinderA )	Save_CylinderA();
//	if ( Unsaved_CylinderB )	Save_CylinderB();
}

void Delay_Config(void)
{
	// TIM6 clock enable
	RCC->APB1ENR |= RCC_APB1ENR_TIM6EN;
	TIM6->ARR = 65535;							// период импульсов
	TIM6->PSC = 599;							// предделитель 600 -> 100 кГц
	TIM6->CR1 |= TIM_CR1_ARPE | TIM_CR1_OPM;	// ARR Preload+, One Pulse Mode
}

void Delay_Start(uint16_t TIM_ARR)
{
	TIM6->CR1 &= ~TIM_CR1_CEN;	// Остановим счет, если вдруг он идет
	TIM6->CNT = 0;				// сброс счетчика
	TIM6->ARR = TIM_ARR;		// кол-во мс умножаем на сто = ARR
	TIM6->CR1 |= TIM_CR1_CEN;	// Запускаем счет
}

void fault_err (FRESULT rc)
{
	const char *str =
					"OK\0" "DISK_ERR\0" "INT_ERR\0" "NOT_READY\0" "NO_FILE\0" "NO_PATH\0"
					"INVALID_NAME\0" "DENIED\0" "EXIST\0" "INVALID_OBJECT\0" "WRITE_PROTECTED\0"
					"INVALID_DRIVE\0" "NOT_ENABLED\0" "NO_FILE_SYSTEM\0" "MKFS_ABORTED\0" "TIMEOUT\0"
					"LOCKED\0" "NOT_ENOUGH_CORE\0" "TOO_MANY_OPEN_FILES\0";
	FRESULT i;

	for (i = (FRESULT)0; i != rc && *str; i++)
	{
		while (*str++) ;
	}
	xprintf( (const char *)str );
#ifdef ERROR_RESET
	Delay(75);
	NVIC_SystemReset();
#else
	while(1)	;
#endif
}

bool ParseImageFileB(void)
{
	return false;
}

bool ParseImageFileA(void)
{
	ret = f_stat( sFileFullNameA, &fno );
	if (ret)	return false;
	// Если файл Read-Only, то ставим fWRPT
	if ( fno.fattrib & AM_RDO )
	    fWRPT = WRPT;
    else
        fWRPT = 0;
	//
	ret = f_open( &file, sFileFullNameA, FA_READ );
	if (ret)	fault_err(ret);
	//
	ret = f_read( &file, buffA, 0x1020, &br );	// 0x1020 - заголовки + таблица смещений треков
	if (ret)	fault_err(ret);
	//
	ret = f_close( &file );
	if (ret)	fault_err(ret);
	//
	mfdimg = (MFDIMG *)buffA;
	//
	if ( strcmp( "MFMDECD", (char const *)mfdimg->headername ) )
	{
		xprintf("Wrong header");
		return false;
	}
	if ( mfdimg->max_cylinder > CYL_NUM_MAX )
	{
		xprintf("Tracks > MAX");
		return false;
	}
	if ( mfdimg->max_side > 1 )
	{
		xprintf("Sides > 2");
		return false;
	}
	if ( ( mfdimg->bit_rate != BITRATE1 ) && ( mfdimg->bit_rate != BITRATE2 ) )
	{
		xprintf("Neither 250 nor 500 kbs");
		return false;
	}
	//
	mfd_NOTA = ( mfdimg->max_cylinder + 1 ) * ( mfdimg->max_side + 1 );
	mfdtrackimg = (MFDTRACKIMG *)( buffA + sizeof(MFDIMG) );
	//
	for ( i = 0; i < mfd_NOTA; i++ )
	{
		track_lengsA[i] = mfdtrackimg->mfd_tracksize;
		track_offsetsA[i] = mfdtrackimg->mfd_trackoffset;
		mfdtrackimg++;
	}
	//
	Max_CylinderA = mfdimg->max_cylinder;
	//
	return true;
}

void Load_CylinderA( uint32_t Cyl_Number )
{
//	if ( Cyl_Number > Max_Cylinder )	return;
//pCTRL->BSRRL = EM_TST;
	//
	ret = f_open( &file, sFileFullNameA, FA_READ );
	if (ret)	fault_err(ret);
	//
	ret = f_lseek( &file, track_offsetsA[ Cyl_Number * 2 ] );
	if (ret)	fault_err(ret);
	//
	ret = f_read( &file, &buffA, ( MAX_TRACK_LEN + MAX_BF_LEN ) << 1 , &br );
	if (ret)	fault_err(ret);
	//
	ret = f_close( &file );
	if (ret)	fault_err(ret);
	//
	Loaded_CylinderA = Cyl_Number;
	//
//pCTRL->BSRRH = EM_TST;
}

void Save_CylinderA( void )
{
//	if ( Cyl_Number > Max_Cylinder )
//pCTRL->BSRRL = EM_TST;
	//
	ret = f_open( &file, sFileFullNameA, FA_WRITE );
	if (ret)	fault_err(ret);
	//
	ret = f_lseek( &file, track_offsetsA[ Loaded_CylinderA * 2 ] );
	if (ret)	fault_err(ret);
	//
	ret = f_write( &file, &buffA, ( MAX_TRACK_LEN + MAX_BF_LEN ) << 1 , &bw );
	if (ret)	fault_err(ret);
	//
//xprintf("written=%d, ret=%d\r\n", bw, ret );
	//
	if (ret)	fault_err(ret);
	//
	ret = f_close( &file );
	if (ret)	fault_err(ret);
	//
	Unsaved_CylinderA = false;
	//
//pCTRL->BSRRH = EM_TST;
}

void GPIO_PreConfig(void)
{
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN | RCC_AHB1ENR_GPIOBEN | RCC_AHB1ENR_GPIOCEN | RCC_AHB1ENR_GPIODEN;
	// GPIOA pins Init
	GPIOA->MODER = 0xA8280000;
	GPIOA->OSPEEDR = 0xFFFFFFFF;
	GPIOA->PUPDR = 0x00000000;
	GPIOA->OTYPER = 0x0000;
	GPIOA->AFR[0] = 0x00000000;
	GPIOA->AFR[1] = 0x00000770;
	// GPIOB pins Init
	GPIOB->MODER = 0x00005280;
	GPIOB->OSPEEDR = 0xFFFFFFFF;
	GPIOB->PUPDR = 0x00000000;
	GPIOB->OTYPER = 0x00C0; //DRQ INTRQ
	GPIOB->AFR[0] = 0x00000000;
	GPIOB->AFR[1] = 0x00000000;
	// GPIOC pins Init
	GPIOC->MODER = 0x02AA0000;
	GPIOC->OSPEEDR = 0xFFFFFFFF;
	GPIOC->PUPDR = 0x00000000;
	GPIOC->OTYPER = 0x0000;
	GPIOC->AFR[0] = 0x00000000;
	GPIOC->AFR[1] = 0x000CCCCC;
	// GPIOD pins Init
	GPIOD->MODER = 0x00000020;
	GPIOD->OSPEEDR = 0xFFFFFFFF;
	GPIOD->PUPDR = 0x00000000;
	GPIOD->OTYPER = 0x0000;
	GPIOD->AFR[0] = 0x00000C00;
	GPIOD->AFR[1] = 0x00000000;
}

void EXTI_Config(void)
{
	// Enable SYSCFG to set up EXTIs
	RCC->APB2ENR |= RCC_APB2ENR_SYSCFGEN;
	// NVIC_IRQChannelPreemptionPriority = 15
	NVIC->IP[ EXTI2_IRQn ] = 0x0F;
	// NVIC_IRQChannelCmd = ENABLE
	NVIC->ISER[ EXTI2_IRQn >> 5 ] = 1 << ( EXTI2_IRQn & 0x1F);
	// NVIC_IRQChannelPreemptionPriority = 0
	NVIC->IP[ EXTI9_5_IRQn ] = 0;
	// NVIC_IRQChannelCmd = ENABLE
	NVIC->ISER[ EXTI9_5_IRQn >> 5 ] = 1 << ( EXTI9_5_IRQn & 0x1F);
	// NVIC_IRQChannelPreemptionPriority = 0
	NVIC->IP[ EXTI15_10_IRQn ] = 0;
	// NVIC_IRQChannelCmd = ENABLE
	NVIC->ISER[ EXTI15_10_IRQn >> 5 ] = 1 << ( EXTI15_10_IRQn & 0x1F);
	// Connect EXTI Line2 to PB2 pin
	SYSCFG->EXTICR[ EXTI_PinSource2 >> 2 ] |= (uint32_t)SYSCFG_EXTICR1_EXTI2_PB;
	// Connect EXTI Line5 to PB5 pin
	SYSCFG->EXTICR[ EXTI_PinSource5 >> 2 ] |= (uint32_t)SYSCFG_EXTICR2_EXTI5_PB;
	// Connect EXTI Line10 to PB10 pin
	SYSCFG->EXTICR[ EXTI_PinSource10 >> 2 ] |= (uint32_t)SYSCFG_EXTICR3_EXTI10_PB;
	// Enable EXTI Lines 2,5 & 10
	EXTI->IMR |= EXTI_Line2 | EXTI_Line5 | EXTI_Line10;
	// Select Falling trigger for EXTI Lines 2
	EXTI->FTSR |= EXTI_Line2;
	// Select Rising trigger for EXTI Lines 5 & 10
	EXTI->RTSR |= EXTI_Line5 | EXTI_Line10;
}

void USART1_Config(void)
{
	RCC->APB2ENR |= RCC_APB2ENR_USART1EN;
	USART1->BRR = 0x215;						// 115200 из 60 МГц APB2
	USART1->CR1 |= USART_CR1_UE | USART_CR1_TE | USART_CR1_RE;	// разрешаем USART, прием и передачу
}

void SendChar2USART( char c )
{
	while ( ( USART1->SR & USART_SR_TXE ) == 0 )	;
	USART1->DR = (uint8_t) c;
}

bool ReceiveCharFromUSART( char * pRecvdChar )
{
	if ( ( USART1->SR & USART_SR_RXNE ) == 0 )
		return false;
	else
		{
			*pRecvdChar = USART1->DR;
			return true;
		}
}

static void Delay(__IO uint32_t nCount)
{
	__IO uint32_t index;


	for (index = nCount; index != 0; index--);
}

#ifdef USE_FULL_ASSERT
void assert_failed(uint8_t* file, uint32_t line)
{
  while (1)	;
}
#endif
