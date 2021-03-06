#include "Z80_OpCode_fdcb.h"
#include "z80_common.h"

extern unsigned char Z80_HalfcarryAddTable[8]; 
extern unsigned char Z80_HalfcarrySubTable[8]; 
extern unsigned char Z80_OverflowAddTable[8]; 
extern unsigned char Z80_OverflowSubTable[8];
/*the S,Z,5 and 3 bits of the index*/
extern unsigned char Z80_SZ53Table[0x100]; 
/*OR the above two tables together*/
extern unsigned char Z80_SZ53pTable[0x100]; 
/*the parity of the lookup value*/
extern unsigned char Z80_ParityTable[0x100]; 
/*table for daa,contains af*/
extern unsigned char Z80_DAATab[0x1000];

extern unsigned char IFF1;
extern unsigned char IFF2;
extern unsigned char IM;
extern unsigned char Z80_Halt;
 
extern unsigned char Z80_Temp8;
extern unsigned short Z80_Temp16;
 
extern unsigned char Z80_OpCode;
extern unsigned char Z80_Prefix;
extern unsigned char Z80_NoInterrupt;
extern unsigned char Z80_MachineCycle;

extern UZ80_Reg uZ80_Reg;
extern UZ80_A_Reg uZ80_A_Reg;
extern UZ80_SU uZ80_SU;

/*LD Z80_B,RLC (Z80_IY+$)*/
void op_FDCB_0x00(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RLC(Z80_Temp8);
 LD(Z80_B,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_C,RLC (Z80_IY+$)*/
void op_FDCB_0x01(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RLC(Z80_Temp8);
 LD(Z80_C,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_D,RLC (Z80_IY+$)*/
void op_FDCB_0x02(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RLC(Z80_Temp8);
 LD(Z80_D,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_E,RLC (Z80_IY+$)*/
void op_FDCB_0x03(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RLC(Z80_Temp8);
 LD(Z80_E,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_H,RLC (Z80_IY+$)*/
void op_FDCB_0x04(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RLC(Z80_Temp8);
 LD(Z80_H,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_L,RLC (Z80_IY+$)*/
void op_FDCB_0x05(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RLC(Z80_Temp8);
 LD(Z80_L,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*RLC (Z80_IY+$)*/
void op_FDCB_0x06(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RLC(Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_A,RLC (Z80_IY+$)*/
void op_FDCB_0x07(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RLC(Z80_Temp8);
 LD(Z80_A,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_B,RRC (Z80_IY+$)*/
void op_FDCB_0x08(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RRC(Z80_Temp8);
 LD(Z80_B,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_C,RRC (Z80_IY+$)*/
void op_FDCB_0x09(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RRC(Z80_Temp8);
 LD(Z80_C,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_D,RRC (Z80_IY+$)*/
void op_FDCB_0x0a(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RRC(Z80_Temp8);
 LD(Z80_D,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_E,RRC (Z80_IY+$)*/
void op_FDCB_0x0b(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RRC(Z80_Temp8);
 LD(Z80_E,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_H,RRC (Z80_IY+$)*/
void op_FDCB_0x0c(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RRC(Z80_Temp8);
 LD(Z80_H,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_L,RRC (Z80_IY+$)*/
void op_FDCB_0x0d(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RRC(Z80_Temp8);
 LD(Z80_L,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*RRC (Z80_IY+$)*/
void op_FDCB_0x0e(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RRC(Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_A,RRC (Z80_IY+$)*/
void op_FDCB_0x0f(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RRC(Z80_Temp8);
 LD(Z80_A,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_B,RL (Z80_IY+$)*/
void op_FDCB_0x10(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RL(Z80_Temp8);
 LD(Z80_B,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_C,RL (Z80_IY+$)*/
void op_FDCB_0x11(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RL(Z80_Temp8);
 LD(Z80_C,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_D,RL (Z80_IY+$)*/
void op_FDCB_0x12(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RL(Z80_Temp8);
 LD(Z80_D,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_E,RL (Z80_IY+$)*/
void op_FDCB_0x13(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RL(Z80_Temp8);
 LD(Z80_E,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_H,RL (Z80_IY+$)*/
void op_FDCB_0x14(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RL(Z80_Temp8);
 LD(Z80_H,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_L,RL (Z80_IY+$)*/
void op_FDCB_0x15(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RL(Z80_Temp8);
 LD(Z80_L,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*RL (Z80_IY+$)*/
void op_FDCB_0x16(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RL(Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_A,RL (Z80_IY+$)*/
void op_FDCB_0x17(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RL(Z80_Temp8);
 LD(Z80_A,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_B,RR (Z80_IY+$)*/
void op_FDCB_0x18(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RR(Z80_Temp8);
 LD(Z80_B,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_C,RR (Z80_IY+$)*/
void op_FDCB_0x19(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RR(Z80_Temp8);
 LD(Z80_C,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_D,RR (Z80_IY+$)*/
void op_FDCB_0x1a(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RR(Z80_Temp8);
 LD(Z80_D,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_E,RR (Z80_IY+$)*/
void op_FDCB_0x1b(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RR(Z80_Temp8);
 LD(Z80_E,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_H,RR (Z80_IY+$)*/
void op_FDCB_0x1c(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RR(Z80_Temp8);
 LD(Z80_H,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_L,RR (Z80_IY+$)*/
void op_FDCB_0x1d(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RR(Z80_Temp8);
 LD(Z80_L,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*RR (Z80_IY+$)*/
void op_FDCB_0x1e(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RR(Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_A,RR (Z80_IY+$)*/
void op_FDCB_0x1f(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RR(Z80_Temp8);
 LD(Z80_A,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_B,SLA (Z80_IY+$)*/
void op_FDCB_0x20(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SLA(Z80_Temp8);
 LD(Z80_B,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_C,SLA (Z80_IY+$)*/
void op_FDCB_0x21(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SLA(Z80_Temp8);
 LD(Z80_C,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_D,SLA (Z80_IY+$)*/
void op_FDCB_0x22(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SLA(Z80_Temp8);
 LD(Z80_D,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_E,SLA (Z80_IY+$)*/
void op_FDCB_0x23(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SLA(Z80_Temp8);
 LD(Z80_E,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_H,SLA (Z80_IY+$)*/
void op_FDCB_0x24(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SLA(Z80_Temp8);
 LD(Z80_H,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_L,SLA (Z80_IY+$)*/
void op_FDCB_0x25(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SLA(Z80_Temp8);
 LD(Z80_L,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*SLA (Z80_IY+$)*/
void op_FDCB_0x26(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SLA(Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_A,SLA (Z80_IY+$)*/
void op_FDCB_0x27(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SLA(Z80_Temp8);
 LD(Z80_A,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_B,SRA (Z80_IY+$)*/
void op_FDCB_0x28(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SRA(Z80_Temp8);
 LD(Z80_B,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_C,SRA (Z80_IY+$)*/
void op_FDCB_0x29(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SRA(Z80_Temp8);
 LD(Z80_C,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_D,SRA (Z80_IY+$)*/
void op_FDCB_0x2a(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SRA(Z80_Temp8);
 LD(Z80_D,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_E,SRA (Z80_IY+$)*/
void op_FDCB_0x2b(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SRA(Z80_Temp8);
 LD(Z80_E,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_H,SRA (Z80_IY+$)*/
void op_FDCB_0x2c(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SRA(Z80_Temp8);
 LD(Z80_H,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_L,SRA (Z80_IY+$)*/
void op_FDCB_0x2d(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SRA(Z80_Temp8);
 LD(Z80_L,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*SRA (Z80_IY+$)*/
void op_FDCB_0x2e(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SRA(Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_A,SRA (Z80_IY+$)*/
void op_FDCB_0x2f(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SRA(Z80_Temp8);
 LD(Z80_A,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_B,SLL (Z80_IY+$)*/
void op_FDCB_0x30(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SLL(Z80_Temp8);
 LD(Z80_B,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_C,SLL (Z80_IY+$)*/
void op_FDCB_0x31(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SLL(Z80_Temp8);
 LD(Z80_C,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_D,SLL (Z80_IY+$)*/
void op_FDCB_0x32(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SLL(Z80_Temp8);
 LD(Z80_D,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_E,SLL (Z80_IY+$)*/
void op_FDCB_0x33(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SLL(Z80_Temp8);
 LD(Z80_E,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_H,SLL (Z80_IY+$)*/
void op_FDCB_0x34(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SLL(Z80_Temp8);
 LD(Z80_H,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_L,SLL (Z80_IY+$)*/
void op_FDCB_0x35(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SLL(Z80_Temp8);
 LD(Z80_L,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*SLL (Z80_IY+$)*/
void op_FDCB_0x36(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SLL(Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_A,SLL (Z80_IY+$)*/
void op_FDCB_0x37(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SLL(Z80_Temp8);
 LD(Z80_A,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_B,SRL (Z80_IY+$)*/
void op_FDCB_0x38(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SRL(Z80_Temp8);
 LD(Z80_B,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_C,SRL (Z80_IY+$)*/
void op_FDCB_0x39(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SRL(Z80_Temp8);
 LD(Z80_C,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_D,SRL (Z80_IY+$)*/
void op_FDCB_0x3a(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SRL(Z80_Temp8);
 LD(Z80_D,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_E,SRL (Z80_IY+$)*/
void op_FDCB_0x3b(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SRL(Z80_Temp8);
 LD(Z80_E,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_H,SRL (Z80_IY+$)*/
void op_FDCB_0x3c(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SRL(Z80_Temp8);
 LD(Z80_H,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_L,SRL (Z80_IY+$)*/
void op_FDCB_0x3d(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SRL(Z80_Temp8);
 LD(Z80_L,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*SRL (Z80_IY+$)*/
void op_FDCB_0x3e(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SRL(Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_A,SRL (Z80_IY+$)*/
void op_FDCB_0x3f(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SRL(Z80_Temp8);
 LD(Z80_A,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*BIT 0,(Z80_IY+$)*/
void op_FDCB_0x47(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 BIT_MPTR(0,Z80_Temp8);
 T_WAIT_UNTIL(16);
 return;
}
 
/*BIT 1,(Z80_IY+$)*/
void op_FDCB_0x4f(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 BIT_MPTR(1,Z80_Temp8);
 T_WAIT_UNTIL(16);
 return;
}
 
/*BIT 2,(Z80_IY+$)*/
void op_FDCB_0x57(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 BIT_MPTR(2,Z80_Temp8);
 T_WAIT_UNTIL(16);
 return;
}
 
/*BIT 3,(Z80_IY+$)*/
void op_FDCB_0x5f(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 BIT_MPTR(3,Z80_Temp8);
 T_WAIT_UNTIL(16);
 return;
}
 
/*BIT 4,(Z80_IY+$)*/
void op_FDCB_0x67(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 BIT_MPTR(4,Z80_Temp8);
 T_WAIT_UNTIL(16);
 return;
}
 
/*BIT 5,(Z80_IY+$)*/
void op_FDCB_0x6f(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 BIT_MPTR(5,Z80_Temp8);
 T_WAIT_UNTIL(16);
 return;
}
 
/*BIT 6,(Z80_IY+$)*/
void op_FDCB_0x77(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 BIT_MPTR(6,Z80_Temp8);
 T_WAIT_UNTIL(16);
 return;
}
 
/*BIT 7,(Z80_IY+$)*/
void op_FDCB_0x7f(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 BIT_MPTR(7,Z80_Temp8);
 T_WAIT_UNTIL(16);
 return;
}
 
/*LD Z80_B,RES 0,(Z80_IY+$)*/
void op_FDCB_0x80(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(0,Z80_Temp8);
 LD(Z80_B,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_C,RES 0,(Z80_IY+$)*/
void op_FDCB_0x81(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(0,Z80_Temp8);
 LD(Z80_C,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_D,RES 0,(Z80_IY+$)*/
void op_FDCB_0x82(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(0,Z80_Temp8);
 LD(Z80_D,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_E,RES 0,(Z80_IY+$)*/
void op_FDCB_0x83(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(0,Z80_Temp8);
 LD(Z80_E,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_H,RES 0,(Z80_IY+$)*/
void op_FDCB_0x84(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(0,Z80_Temp8);
 LD(Z80_H,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_L,RES 0,(Z80_IY+$)*/
void op_FDCB_0x85(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(0,Z80_Temp8);
 LD(Z80_L,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*RES 0,(Z80_IY+$)*/
void op_FDCB_0x86(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(0,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_A,RES 0,(Z80_IY+$)*/
void op_FDCB_0x87(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(0,Z80_Temp8);
 LD(Z80_A,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_B,RES 1,(Z80_IY+$)*/
void op_FDCB_0x88(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(1,Z80_Temp8);
 LD(Z80_B,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_C,RES 1,(Z80_IY+$)*/
void op_FDCB_0x89(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(1,Z80_Temp8);
 LD(Z80_C,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_D,RES 1,(Z80_IY+$)*/
void op_FDCB_0x8a(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(1,Z80_Temp8);
 LD(Z80_D,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_E,RES 1,(Z80_IY+$)*/
void op_FDCB_0x8b(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(1,Z80_Temp8);
 LD(Z80_E,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_H,RES 1,(Z80_IY+$)*/
void op_FDCB_0x8c(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(1,Z80_Temp8);
 LD(Z80_H,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_L,RES 1,(Z80_IY+$)*/
void op_FDCB_0x8d(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(1,Z80_Temp8);
 LD(Z80_L,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*RES 1,(Z80_IY+$)*/
void op_FDCB_0x8e(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(1,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_A,RES 1,(Z80_IY+$)*/
void op_FDCB_0x8f(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(1,Z80_Temp8);
 LD(Z80_A,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_B,RES 2,(Z80_IY+$)*/
void op_FDCB_0x90(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(2,Z80_Temp8);
 LD(Z80_B,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_C,RES 2,(Z80_IY+$)*/
void op_FDCB_0x91(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(2,Z80_Temp8);
 LD(Z80_C,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_D,RES 2,(Z80_IY+$)*/
void op_FDCB_0x92(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(2,Z80_Temp8);
 LD(Z80_D,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_E,RES 2,(Z80_IY+$)*/
void op_FDCB_0x93(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(2,Z80_Temp8);
 LD(Z80_E,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_H,RES 2,(Z80_IY+$)*/
void op_FDCB_0x94(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(2,Z80_Temp8);
 LD(Z80_H,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_L,RES 2,(Z80_IY+$)*/
void op_FDCB_0x95(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(2,Z80_Temp8);
 LD(Z80_L,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*RES 2,(Z80_IY+$)*/
void op_FDCB_0x96(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(2,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_A,RES 2,(Z80_IY+$)*/
void op_FDCB_0x97(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(2,Z80_Temp8);
 LD(Z80_A,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_B,RES 3,(Z80_IY+$)*/
void op_FDCB_0x98(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(3,Z80_Temp8);
 LD(Z80_B,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_C,RES 3,(Z80_IY+$)*/
void op_FDCB_0x99(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(3,Z80_Temp8);
 LD(Z80_C,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_D,RES 3,(Z80_IY+$)*/
void op_FDCB_0x9a(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(3,Z80_Temp8);
 LD(Z80_D,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_E,RES 3,(Z80_IY+$)*/
void op_FDCB_0x9b(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(3,Z80_Temp8);
 LD(Z80_E,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_H,RES 3,(Z80_IY+$)*/
void op_FDCB_0x9c(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(3,Z80_Temp8);
 LD(Z80_H,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_L,RES 3,(Z80_IY+$)*/
void op_FDCB_0x9d(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(3,Z80_Temp8);
 LD(Z80_L,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*RES 3,(Z80_IY+$)*/
void op_FDCB_0x9e(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(3,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_A,RES 3,(Z80_IY+$)*/
void op_FDCB_0x9f(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(3,Z80_Temp8);
 LD(Z80_A,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_B,RES 4,(Z80_IY+$)*/
void op_FDCB_0xa0(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(4,Z80_Temp8);
 LD(Z80_B,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_C,RES 4,(Z80_IY+$)*/
void op_FDCB_0xa1(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(4,Z80_Temp8);
 LD(Z80_C,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_D,RES 4,(Z80_IY+$)*/
void op_FDCB_0xa2(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(4,Z80_Temp8);
 LD(Z80_D,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_E,RES 4,(Z80_IY+$)*/
void op_FDCB_0xa3(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(4,Z80_Temp8);
 LD(Z80_E,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_H,RES 4,(Z80_IY+$)*/
void op_FDCB_0xa4(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(4,Z80_Temp8);
 LD(Z80_H,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_L,RES 4,(Z80_IY+$)*/
void op_FDCB_0xa5(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(4,Z80_Temp8);
 LD(Z80_L,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*RES 4,(Z80_IY+$)*/
void op_FDCB_0xa6(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(4,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_A,RES 4,(Z80_IY+$)*/
void op_FDCB_0xa7(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(4,Z80_Temp8);
 LD(Z80_A,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_B,RES 5,(Z80_IY+$)*/
void op_FDCB_0xa8(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(5,Z80_Temp8);
 LD(Z80_B,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_C,RES 5,(Z80_IY+$)*/
void op_FDCB_0xa9(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(5,Z80_Temp8);
 LD(Z80_C,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_D,RES 5,(Z80_IY+$)*/
void op_FDCB_0xaa(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(5,Z80_Temp8);
 LD(Z80_D,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_E,RES 5,(Z80_IY+$)*/
void op_FDCB_0xab(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(5,Z80_Temp8);
 LD(Z80_E,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_H,RES 5,(Z80_IY+$)*/
void op_FDCB_0xac(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(5,Z80_Temp8);
 LD(Z80_H,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_L,RES 5,(Z80_IY+$)*/
void op_FDCB_0xad(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(5,Z80_Temp8);
 LD(Z80_L,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*RES 5,(Z80_IY+$)*/
void op_FDCB_0xae(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(5,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_A,RES 5,(Z80_IY+$)*/
void op_FDCB_0xaf(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(5,Z80_Temp8);
 LD(Z80_A,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_B,RES 6,(Z80_IY+$)*/
void op_FDCB_0xb0(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(6,Z80_Temp8);
 LD(Z80_B,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_C,RES 6,(Z80_IY+$)*/
void op_FDCB_0xb1(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(6,Z80_Temp8);
 LD(Z80_C,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_D,RES 6,(Z80_IY+$)*/
void op_FDCB_0xb2(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(6,Z80_Temp8);
 LD(Z80_D,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_E,RES 6,(Z80_IY+$)*/
void op_FDCB_0xb3(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(6,Z80_Temp8);
 LD(Z80_E,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_H,RES 6,(Z80_IY+$)*/
void op_FDCB_0xb4(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(6,Z80_Temp8);
 LD(Z80_H,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_L,RES 6,(Z80_IY+$)*/
void op_FDCB_0xb5(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(6,Z80_Temp8);
 LD(Z80_L,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*RES 6,(Z80_IY+$)*/
void op_FDCB_0xb6(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(6,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_A,RES 6,(Z80_IY+$)*/
void op_FDCB_0xb7(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(6,Z80_Temp8);
 LD(Z80_A,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_B,RES 7,(Z80_IY+$)*/
void op_FDCB_0xb8(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(7,Z80_Temp8);
 LD(Z80_B,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_C,RES 7,(Z80_IY+$)*/
void op_FDCB_0xb9(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(7,Z80_Temp8);
 LD(Z80_C,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_D,RES 7,(Z80_IY+$)*/
void op_FDCB_0xba(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(7,Z80_Temp8);
 LD(Z80_D,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_E,RES 7,(Z80_IY+$)*/
void op_FDCB_0xbb(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(7,Z80_Temp8);
 LD(Z80_E,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_H,RES 7,(Z80_IY+$)*/
void op_FDCB_0xbc(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(7,Z80_Temp8);
 LD(Z80_H,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_L,RES 7,(Z80_IY+$)*/
void op_FDCB_0xbd(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(7,Z80_Temp8);
 LD(Z80_L,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*RES 7,(Z80_IY+$)*/
void op_FDCB_0xbe(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(7,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_A,RES 7,(Z80_IY+$)*/
void op_FDCB_0xbf(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 RES(7,Z80_Temp8);
 LD(Z80_A,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_B,SET 0,(Z80_IY+$)*/
void op_FDCB_0xc0(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(0,Z80_Temp8);
 LD(Z80_B,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_C,SET 0,(Z80_IY+$)*/
void op_FDCB_0xc1(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(0,Z80_Temp8);
 LD(Z80_C,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_D,SET 0,(Z80_IY+$)*/
void op_FDCB_0xc2(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(0,Z80_Temp8);
 LD(Z80_D,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_E,SET 0,(Z80_IY+$)*/
void op_FDCB_0xc3(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(0,Z80_Temp8);
 LD(Z80_E,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_H,SET 0,(Z80_IY+$)*/
void op_FDCB_0xc4(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(0,Z80_Temp8);
 LD(Z80_H,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_L,SET 0,(Z80_IY+$)*/
void op_FDCB_0xc5(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(0,Z80_Temp8);
 LD(Z80_L,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*SET 0,(Z80_IY+$)*/
void op_FDCB_0xc6(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(0,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_A,SET 0,(Z80_IY+$)*/
void op_FDCB_0xc7(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(0,Z80_Temp8);
 LD(Z80_A,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_B,SET 1,(Z80_IY+$)*/
void op_FDCB_0xc8(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(1,Z80_Temp8);
 LD(Z80_B,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_C,SET 1,(Z80_IY+$)*/
void op_FDCB_0xc9(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(1,Z80_Temp8);
 LD(Z80_C,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_D,SET 1,(Z80_IY+$)*/
void op_FDCB_0xca(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(1,Z80_Temp8);
 LD(Z80_D,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_E,SET 1,(Z80_IY+$)*/
void op_FDCB_0xcb(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(1,Z80_Temp8);
 LD(Z80_E,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_H,SET 1,(Z80_IY+$)*/
void op_FDCB_0xcc(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(1,Z80_Temp8);
 LD(Z80_H,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_L,SET 1,(Z80_IY+$)*/
void op_FDCB_0xcd(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(1,Z80_Temp8);
 LD(Z80_L,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*SET 1,(Z80_IY+$)*/
void op_FDCB_0xce(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(1,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_A,SET 1,(Z80_IY+$)*/
void op_FDCB_0xcf(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(1,Z80_Temp8);
 LD(Z80_A,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_B,SET 2,(Z80_IY+$)*/
void op_FDCB_0xd0(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(2,Z80_Temp8);
 LD(Z80_B,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_C,SET 2,(Z80_IY+$)*/
void op_FDCB_0xd1(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(2,Z80_Temp8);
 LD(Z80_C,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_D,SET 2,(Z80_IY+$)*/
void op_FDCB_0xd2(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(2,Z80_Temp8);
 LD(Z80_D,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_E,SET 2,(Z80_IY+$)*/
void op_FDCB_0xd3(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(2,Z80_Temp8);
 LD(Z80_E,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_H,SET 2,(Z80_IY+$)*/
void op_FDCB_0xd4(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(2,Z80_Temp8);
 LD(Z80_H,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_L,SET 2,(Z80_IY+$)*/
void op_FDCB_0xd5(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(2,Z80_Temp8);
 LD(Z80_L,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*SET 2,(Z80_IY+$)*/
void op_FDCB_0xd6(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(2,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_A,SET 2,(Z80_IY+$)*/
void op_FDCB_0xd7(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(2,Z80_Temp8);
 LD(Z80_A,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_B,SET 3,(Z80_IY+$)*/
void op_FDCB_0xd8(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(3,Z80_Temp8);
 LD(Z80_B,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_C,SET 3,(Z80_IY+$)*/
void op_FDCB_0xd9(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(3,Z80_Temp8);
 LD(Z80_C,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_D,SET 3,(Z80_IY+$)*/
void op_FDCB_0xda(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(3,Z80_Temp8);
 LD(Z80_D,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_E,SET 3,(Z80_IY+$)*/
void op_FDCB_0xdb(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(3,Z80_Temp8);
 LD(Z80_E,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_H,SET 3,(Z80_IY+$)*/
void op_FDCB_0xdc(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(3,Z80_Temp8);
 LD(Z80_H,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_L,SET 3,(Z80_IY+$)*/
void op_FDCB_0xdd(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(3,Z80_Temp8);
 LD(Z80_L,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*SET 3,(Z80_IY+$)*/
void op_FDCB_0xde(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(3,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_A,SET 3,(Z80_IY+$)*/
void op_FDCB_0xdf(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(3,Z80_Temp8);
 LD(Z80_A,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_B,SET 4,(Z80_IY+$)*/
void op_FDCB_0xe0(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(4,Z80_Temp8);
 LD(Z80_B,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_C,SET 4,(Z80_IY+$)*/
void op_FDCB_0xe1(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(4,Z80_Temp8);
 LD(Z80_C,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_D,SET 4,(Z80_IY+$)*/
void op_FDCB_0xe2(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(4,Z80_Temp8);
 LD(Z80_D,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_E,SET 4,(Z80_IY+$)*/
void op_FDCB_0xe3(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(4,Z80_Temp8);
 LD(Z80_E,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_H,SET 4,(Z80_IY+$)*/
void op_FDCB_0xe4(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(4,Z80_Temp8);
 LD(Z80_H,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_L,SET 4,(Z80_IY+$)*/
void op_FDCB_0xe5(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(4,Z80_Temp8);
 LD(Z80_L,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*SET 4,(Z80_IY+$)*/
void op_FDCB_0xe6(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(4,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_A,SET 4,(Z80_IY+$)*/
void op_FDCB_0xe7(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(4,Z80_Temp8);
 LD(Z80_A,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_B,SET 5,(Z80_IY+$)*/
void op_FDCB_0xe8(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(5,Z80_Temp8);
 LD(Z80_B,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_C,SET 5,(Z80_IY+$)*/
void op_FDCB_0xe9(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(5,Z80_Temp8);
 LD(Z80_C,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_D,SET 5,(Z80_IY+$)*/
void op_FDCB_0xea(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(5,Z80_Temp8);
 LD(Z80_D,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_E,SET 5,(Z80_IY+$)*/
void op_FDCB_0xeb(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(5,Z80_Temp8);
 LD(Z80_E,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_H,SET 5,(Z80_IY+$)*/
void op_FDCB_0xec(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(5,Z80_Temp8);
 LD(Z80_H,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_L,SET 5,(Z80_IY+$)*/
void op_FDCB_0xed(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(5,Z80_Temp8);
 LD(Z80_L,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*SET 5,(Z80_IY+$)*/
void op_FDCB_0xee(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(5,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_A,SET 5,(Z80_IY+$)*/
void op_FDCB_0xef(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(5,Z80_Temp8);
 LD(Z80_A,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_B,SET 6,(Z80_IY+$)*/
void op_FDCB_0xf0(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(6,Z80_Temp8);
 LD(Z80_B,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_C,SET 6,(Z80_IY+$)*/
void op_FDCB_0xf1(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(6,Z80_Temp8);
 LD(Z80_C,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_D,SET 6,(Z80_IY+$)*/
void op_FDCB_0xf2(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(6,Z80_Temp8);
 LD(Z80_D,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_E,SET 6,(Z80_IY+$)*/
void op_FDCB_0xf3(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(6,Z80_Temp8);
 LD(Z80_E,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_H,SET 6,(Z80_IY+$)*/
void op_FDCB_0xf4(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(6,Z80_Temp8);
 LD(Z80_H,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_L,SET 6,(Z80_IY+$)*/
void op_FDCB_0xf5(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(6,Z80_Temp8);
 LD(Z80_L,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*SET 6,(Z80_IY+$)*/
void op_FDCB_0xf6(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(6,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_A,SET 6,(Z80_IY+$)*/
void op_FDCB_0xf7(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(6,Z80_Temp8);
 LD(Z80_A,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_B,SET 7,(Z80_IY+$)*/
void op_FDCB_0xf8(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(7,Z80_Temp8);
 LD(Z80_B,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_C,SET 7,(Z80_IY+$)*/
void op_FDCB_0xf9(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(7,Z80_Temp8);
 LD(Z80_C,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_D,SET 7,(Z80_IY+$)*/
void op_FDCB_0xfa(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(7,Z80_Temp8);
 LD(Z80_D,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_E,SET 7,(Z80_IY+$)*/
void op_FDCB_0xfb(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(7,Z80_Temp8);
 LD(Z80_E,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_H,SET 7,(Z80_IY+$)*/
void op_FDCB_0xfc(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(7,Z80_Temp8);
 LD(Z80_H,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_L,SET 7,(Z80_IY+$)*/
void op_FDCB_0xfd(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(7,Z80_Temp8);
 LD(Z80_L,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*SET 7,(Z80_IY+$)*/
void op_FDCB_0xfe(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(7,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
/*LD Z80_A,SET 7,(Z80_IY+$)*/
void op_FDCB_0xff(void)
{
 Z80_MEMPTR=(Z80_IY+uZ80_SU.s);
 Z80_Temp8=READ_BYTE(Z80_IY+uZ80_SU.s);
 SET(7,Z80_Temp8);
 LD(Z80_A,Z80_Temp8);
 WRITE_BYTE(Z80_IY+uZ80_SU.s,Z80_Temp8);
 T_WAIT_UNTIL(19);
 return;
}
 
void (*Z80_OpCode_fdcb[0x100])(void)=
{
 op_FDCB_0x00,op_FDCB_0x01,op_FDCB_0x02,op_FDCB_0x03,op_FDCB_0x04,op_FDCB_0x05,op_FDCB_0x06,op_FDCB_0x07,op_FDCB_0x08,op_FDCB_0x09,op_FDCB_0x0a,op_FDCB_0x0b,op_FDCB_0x0c,op_FDCB_0x0d,op_FDCB_0x0e,op_FDCB_0x0f,
 op_FDCB_0x10,op_FDCB_0x11,op_FDCB_0x12,op_FDCB_0x13,op_FDCB_0x14,op_FDCB_0x15,op_FDCB_0x16,op_FDCB_0x17,op_FDCB_0x18,op_FDCB_0x19,op_FDCB_0x1a,op_FDCB_0x1b,op_FDCB_0x1c,op_FDCB_0x1d,op_FDCB_0x1e,op_FDCB_0x1f,
 op_FDCB_0x20,op_FDCB_0x21,op_FDCB_0x22,op_FDCB_0x23,op_FDCB_0x24,op_FDCB_0x25,op_FDCB_0x26,op_FDCB_0x27,op_FDCB_0x28,op_FDCB_0x29,op_FDCB_0x2a,op_FDCB_0x2b,op_FDCB_0x2c,op_FDCB_0x2d,op_FDCB_0x2e,op_FDCB_0x2f,
 op_FDCB_0x30,op_FDCB_0x31,op_FDCB_0x32,op_FDCB_0x33,op_FDCB_0x34,op_FDCB_0x35,op_FDCB_0x36,op_FDCB_0x37,op_FDCB_0x38,op_FDCB_0x39,op_FDCB_0x3a,op_FDCB_0x3b,op_FDCB_0x3c,op_FDCB_0x3d,op_FDCB_0x3e,op_FDCB_0x3f,
 op_FDCB_0x47,op_FDCB_0x47,op_FDCB_0x47,op_FDCB_0x47,op_FDCB_0x47,op_FDCB_0x47,op_FDCB_0x47,op_FDCB_0x47,op_FDCB_0x4f,op_FDCB_0x4f,op_FDCB_0x4f,op_FDCB_0x4f,op_FDCB_0x4f,op_FDCB_0x4f,op_FDCB_0x4f,op_FDCB_0x4f,
 op_FDCB_0x57,op_FDCB_0x57,op_FDCB_0x57,op_FDCB_0x57,op_FDCB_0x57,op_FDCB_0x57,op_FDCB_0x57,op_FDCB_0x57,op_FDCB_0x5f,op_FDCB_0x5f,op_FDCB_0x5f,op_FDCB_0x5f,op_FDCB_0x5f,op_FDCB_0x5f,op_FDCB_0x5f,op_FDCB_0x5f,
 op_FDCB_0x67,op_FDCB_0x67,op_FDCB_0x67,op_FDCB_0x67,op_FDCB_0x67,op_FDCB_0x67,op_FDCB_0x67,op_FDCB_0x67,op_FDCB_0x6f,op_FDCB_0x6f,op_FDCB_0x6f,op_FDCB_0x6f,op_FDCB_0x6f,op_FDCB_0x6f,op_FDCB_0x6f,op_FDCB_0x6f,
 op_FDCB_0x77,op_FDCB_0x77,op_FDCB_0x77,op_FDCB_0x77,op_FDCB_0x77,op_FDCB_0x77,op_FDCB_0x77,op_FDCB_0x77,op_FDCB_0x7f,op_FDCB_0x7f,op_FDCB_0x7f,op_FDCB_0x7f,op_FDCB_0x7f,op_FDCB_0x7f,op_FDCB_0x7f,op_FDCB_0x7f,
 op_FDCB_0x80,op_FDCB_0x81,op_FDCB_0x82,op_FDCB_0x83,op_FDCB_0x84,op_FDCB_0x85,op_FDCB_0x86,op_FDCB_0x87,op_FDCB_0x88,op_FDCB_0x89,op_FDCB_0x8a,op_FDCB_0x8b,op_FDCB_0x8c,op_FDCB_0x8d,op_FDCB_0x8e,op_FDCB_0x8f,
 op_FDCB_0x90,op_FDCB_0x91,op_FDCB_0x92,op_FDCB_0x93,op_FDCB_0x94,op_FDCB_0x95,op_FDCB_0x96,op_FDCB_0x97,op_FDCB_0x98,op_FDCB_0x99,op_FDCB_0x9a,op_FDCB_0x9b,op_FDCB_0x9c,op_FDCB_0x9d,op_FDCB_0x9e,op_FDCB_0x9f,
 op_FDCB_0xa0,op_FDCB_0xa1,op_FDCB_0xa2,op_FDCB_0xa3,op_FDCB_0xa4,op_FDCB_0xa5,op_FDCB_0xa6,op_FDCB_0xa7,op_FDCB_0xa8,op_FDCB_0xa9,op_FDCB_0xaa,op_FDCB_0xab,op_FDCB_0xac,op_FDCB_0xad,op_FDCB_0xae,op_FDCB_0xaf,
 op_FDCB_0xb0,op_FDCB_0xb1,op_FDCB_0xb2,op_FDCB_0xb3,op_FDCB_0xb4,op_FDCB_0xb5,op_FDCB_0xb6,op_FDCB_0xb7,op_FDCB_0xb8,op_FDCB_0xb9,op_FDCB_0xba,op_FDCB_0xbb,op_FDCB_0xbc,op_FDCB_0xbd,op_FDCB_0xbe,op_FDCB_0xbf,
 op_FDCB_0xc0,op_FDCB_0xc1,op_FDCB_0xc2,op_FDCB_0xc3,op_FDCB_0xc4,op_FDCB_0xc5,op_FDCB_0xc6,op_FDCB_0xc7,op_FDCB_0xc8,op_FDCB_0xc9,op_FDCB_0xca,op_FDCB_0xcb,op_FDCB_0xcc,op_FDCB_0xcd,op_FDCB_0xce,op_FDCB_0xcf,
 op_FDCB_0xd0,op_FDCB_0xd1,op_FDCB_0xd2,op_FDCB_0xd3,op_FDCB_0xd4,op_FDCB_0xd5,op_FDCB_0xd6,op_FDCB_0xd7,op_FDCB_0xd8,op_FDCB_0xd9,op_FDCB_0xda,op_FDCB_0xdb,op_FDCB_0xdc,op_FDCB_0xdd,op_FDCB_0xde,op_FDCB_0xdf,
 op_FDCB_0xe0,op_FDCB_0xe1,op_FDCB_0xe2,op_FDCB_0xe3,op_FDCB_0xe4,op_FDCB_0xe5,op_FDCB_0xe6,op_FDCB_0xe7,op_FDCB_0xe8,op_FDCB_0xe9,op_FDCB_0xea,op_FDCB_0xeb,op_FDCB_0xec,op_FDCB_0xed,op_FDCB_0xee,op_FDCB_0xef,
 op_FDCB_0xf0,op_FDCB_0xf1,op_FDCB_0xf2,op_FDCB_0xf3,op_FDCB_0xf4,op_FDCB_0xf5,op_FDCB_0xf6,op_FDCB_0xf7,op_FDCB_0xf8,op_FDCB_0xf9,op_FDCB_0xfa,op_FDCB_0xfb,op_FDCB_0xfc,op_FDCB_0xfd,op_FDCB_0xfe,op_FDCB_0xff
};
