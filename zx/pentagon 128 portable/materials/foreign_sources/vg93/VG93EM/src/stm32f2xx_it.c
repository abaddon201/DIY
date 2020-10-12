/* Includes ------------------------------------------------------------------*/
#include "stm32f2xx_it.h"
#include "vg93em.h"
#include "stm322xg_eval_sdio_sd.h"
#include <stdbool.h>
#include "xprintf.h"

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
extern volatile uint8_t Regs[];
extern volatile uint8_t CMD_R;
//
volatile bool bNewCMD = false;

extern bool bFileLoadedA, bFileLoadedB;
volatile uint32_t InData;
volatile uint32_t * tr_lns;
extern uint32_t track_lengsA[];
extern uint32_t track_lengsB[];
extern uint8_t VTRACK_R;
extern volatile bool PortReset;
extern uint8_t CMD_TYPE;
extern volatile uint8_t fIndex;
extern volatile uint8_t fDRQ;

volatile uint32_t Curr_Byte;
volatile uint8_t IP_Counter;
volatile bool Next_Byte;


/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

/******************************************************************************/
/*            Cortex-M3 Processor Exceptions Handlers                         */
/******************************************************************************/

void NMI_Handler(void)
{
#ifdef TRACE
	xprintf("NMI");
#endif
}

void HardFault_Handler(void)
{
#ifdef TRACE
	xprintf("HardFault");
#endif
  /* Go to infinite loop when Hard Fault exception occurs */
  while (1)
  {
  }
}

void MemManage_Handler(void)
{
#ifdef TRACE
	xprintf("MemMgr");
#endif
  /* Go to infinite loop when Memory Manage exception occurs */
  while (1)
  {
  }
}

void BusFault_Handler(void)
{
#ifdef TRACE
	xprintf("BusFault");
#endif
  /* Go to infinite loop when Bus Fault exception occurs */
  while (1)
  {
  }
}

void UsageFault_Handler(void)
{
#ifdef TRACE
	xprintf("UsageFault");
#endif
  /* Go to infinite loop when Usage Fault exception occurs */
  while (1)
  {
  }
}

void SVC_Handler(void)
{
#ifdef TRACE
	xprintf("SVC");
#endif
}

void DebugMon_Handler(void)
{
#ifdef TRACE
	xprintf("DbgMon");
#endif
}

void PendSV_Handler(void)
{
#ifdef TRACE
	xprintf("PendSV");
#endif
}

void SDIO_IRQHandler(void)
{
	/* Process All SDIO Interrupt Sources */
	SD_ProcessIRQSrc();
}

void SD_SDIO_DMA_IRQHANDLER(void)
{
	SD_ProcessDMAIRQ();
}

/* VG93 RD'(= /RD | /CS) handler */
/* ZXM-Phoenix 1.0 Zilog Z80 6 МГц @ 3.5 Мгц */
void EXTI9_5_IRQHandler(void)
{
#ifdef INT_C
	EXTI->PR = EXTI_Line5;

	__IO uint32_t index;
	__IO uint32_t Index;


	Index = pCTRL->IDR & EM_A01;
	DATA_AO8 = Regs[ Index ];
	GPIOA->MODER = 0xA8285555;
	for (index = 2; index != 0; index--);
	GPIOA->MODER = 0xA8280000;
    if ( Index == 3 )
    {
        pCTRL->BSRRH = EM_DRQ;	// reset
        fDRQ = 0;
    }
    else
        if ( Index == 0 )
            pCTRL->BSRRH = EM_INTRQ;	// reset
#else
    __asm volatile
    (
        "ldr	r0, =0x40013C00		\n"		// r0 = EXTI
        "mov	r3, #0x20    		\n"		// r3 = EXTI_Line5
        "str	r3, [r0, #0x14]		\n"		// [r0->PR] = r3
        "ldr	r0, =0x40020400		\n"		// r0 = GPIOB->MODER (BASE)
        "ldr	r1, [r0, #0x10]		\n"		// r1 = GPIOB->IDR
        "and	r1, #3  			\n"		// r1 = r1 & 3 (Index)
        "ldr	r2, =Regs			\n"		// r2 = Regs
        "ldrb	r3, [r2, r1]		\n"		// r3 = Regs[r1] ( =Regs[ Index ] )
        "bfc	r0, #10, #1			\n"		// r0 = GPIOA->MODER
        "strb	r3, [r0, #0x14]		\n"		// (uint8_t *)GPIOA->ODR = r3
        "movw	r3, #0x5555			\n"		// r3 = 0x5555
        "strh	r3, [r0]			\n"		// (uint16_t *)GPIOA->MODER = r3 (0x5555)
        "eor	r3, r3				\n"		// r3 = 0
        "eor	r3, r3				\n"		// r3 = 0
        "eor	r3, r3				\n"		// r3 = 0
        "eor	r3, r3				\n"		// r3 = 0
        "eor	r3, r3				\n"		// r3 = 0
        "eor	r3, r3				\n"		// r3 = 0
        "eor	r3, r3				\n"		// r3 = 0
        "eor	r3, r3				\n"		// r3 = 0
        "eor	r3, r3				\n"		// r3 = 0
        "eor	r3, r3				\n"		// r3 = 0
        "eor	r3, r3				\n"		// r3 = 0
        "eor	r3, r3				\n"		// r3 = 0
        "eor	r3, r3				\n"		// r3 = 0
        "eor	r3, r3				\n"		// r3 = 0
        "eor	r3, r3				\n"		// r3 = 0
        "eor	r3, r3				\n"		// r3 = 0
//        "eor	r3, r3				\n"		// r3 = 0
//        "eor	r3, r3				\n"		// r3 = 0
//        "eor	r3, r3				\n"		// r3 = 0
//        "eor	r3, r3				\n"		// r3 = 0
//        "eor	r3, r3				\n"		// r3 = 0
        "strh	r3, [r0]			\n"		// (uint16_t *)GPIOA->MODER = r3 (0x0000)
        "orr	r0, #0x400			\n"		// r0 = GPIOB->MODER (BASE)
        "mov	r3, #64 			\n"		// r3 = EM_DRQ
        "ldr	r2, =fDRQ			\n"		// r2 = fDRQ
        "cmp	r1, #3				\n"		// r1 == 3 ?
        "bne	INT95_1				\n"		// no: jmp to INT95_1
        "strh	r3, [r0, #0x1A]		\n"		// GPIOB->BSRRH = r3
        "eor	r3, r3  			\n"		// r3 = 0
        "strb	r3, [r2]			\n"		// fDRQ = r3
        "b      INT95_2             \n"
        "INT95_1:					\n"
        "orrs	r1, r1				\n"		// r1 == 0 ?
        "bne	INT95_2				\n"		// no: jmp to INT95_2
        "mov	r3, #128    		\n"		// r3 = EM_INTRQ
        "strh	r3, [r0, #0x1A]		\n"		// GPIOB->BSRRH = r3
        "INT95_2:					\n"
    );
#endif
}

/* VG93 WR'(= /WR | /CS) handler */
void EXTI15_10_IRQHandler(void)
{
#ifdef INT_C
	EXTI->PR = EXTI_Line10;

	__IO uint32_t Index2;

	Index2 = pCTRL->IDR & EM_A01;
	if ( Index2 == 0 )
	{
		CMD_R = DATA_I8;
		bNewCMD = true;
	}
	else
	{
		Regs[ Index2 ] = DATA_I8;
		if ( Index2 == 3 )
		{
			pCTRL->BSRRH = EM_DRQ;	// reset
			fDRQ = 0;
		}
	}
#else
	__asm volatile
    (
        "ldr	r0, =0x40013C00		\n"		// r0 = EXTI
        "mov	r1, #0x0400    		\n"		// r1 = EXTI_Line10
        "str	r1, [r0, #0x14]		\n"		// [r0->PR] = r1
        "ldr	r0, =0x40020000		\n"		// r0 = GPIOA (BASE)
        "ldr	r1, [r0, #0x10]		\n"		// r1 = GPIOA->IDR
        "orr	r0, #0x400			\n"		// r0 = GPIOB (BASE)
        "ldr	r2, [r0, #0x10]		\n"		// r2 = (uint8_t*)GPIOB->IDR
        "ands	r2, #3	 			\n"		// r2 = r2 & 3 (Index2)
        "bne	INT1510_1			\n"		// r2 != 0 : jmp to INT1510_1
        "ldr	r0, =CMD_R			\n"		// r0 = &CMD_R
        "strb	r1, [r0]			\n"		// CMD_R = r1
        "ldr	r0, =bNewCMD		\n"		// r0 = &bNewCMD
        "add	r2, #1				\n"		// r2 = 0 + 1 = 1
        "strb	r2, [r0]			\n"		// CMD_R = r2
        "b      INT1510_2           \n"
        "INT1510_1:					\n"		// (Index2) r2 != 0
        "ldr	r3, =Regs			\n"		// r3 = &Regs
        "strb	r1, [r3, r2]		\n"		// Regs[r2] = r1 ( Regs[ Index2 ] )
        "cmp	r2, #3				\n"		// r2 == 3 ?
        "bne	INT1510_2			\n"		// no: jmp to INT1510_2
        "mov	r1, #64 			\n"		// r1 = EM_DRQ
        "strh	r1, [r0, #0x1A]		\n"		// GPIOB->BSRRH = r1
        "eor	r1, r1  			\n"		// r1 = 0
        "ldr	r2, =fDRQ			\n"		// r2 = fDRQ
        "strb	r1, [r2]			\n"		// fDRQ = r1
        "INT1510_2:					\n"
    );
#endif
}

void TIM7_IRQHandler(void)
{
	TIM7->SR = 0;
	InData = pCTRL->IDR;
	if ( Curr_Byte == INDEX_START )
	{
		if ( CMD_TYPE == 1 )
			fIndex = INDEX;
 		IP_Counter++;
	}
	else
		if ( Curr_Byte == INDEX_STOP )
			if ( CMD_TYPE == 1 )
				fIndex = 0;
	//
	tr_lns = track_lengsA;
//	if ( ( InData & EM_DISK_NUM ) > 0 && bFileLoadedB )
//		tr_lns = track_lengsB;
	if ( ++Curr_Byte == tr_lns[ ( VTRACK_R << 1 ) + ( ( InData & EM_SIDE ) == 0 ) ] )	Curr_Byte = 0;
	Next_Byte = true;
}

void EXTI2_IRQHandler(void)
{
	PortReset = true;
	EXTI->PR = EXTI_Line2;
}
