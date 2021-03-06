#ifndef Z80_OPCODE_FDCB_H
#define Z80_OPCODE_FDCB_H
 
/*LD B, RLC (IY+$);*/
void op_FDCB_0x00(void);
/*LD C, RLC (IY+$);*/
void op_FDCB_0x01(void);
/*LD D, RLC (IY+$);*/
void op_FDCB_0x02(void);
/*LD E, RLC (IY+$);*/
void op_FDCB_0x03(void);
/*LD H, RLC (IY+$);*/
void op_FDCB_0x04(void);
/*LD L, RLC (IY+$);*/
void op_FDCB_0x05(void);
/*RLC (IY+$);*/
void op_FDCB_0x06(void);
/*LD A, RLC (IY+$);*/
void op_FDCB_0x07(void);
/*LD B, RRC (IY+$);*/
void op_FDCB_0x08(void);
/*LD C, RRC (IY+$);*/
void op_FDCB_0x09(void);
/*LD D, RRC (IY+$);*/
void op_FDCB_0x0a(void);
/*LD E, RRC (IY+$);*/
void op_FDCB_0x0b(void);
/*LD H, RRC (IY+$);*/
void op_FDCB_0x0c(void);
/*LD L, RRC (IY+$);*/
void op_FDCB_0x0d(void);
/*RRC (IY+$);*/
void op_FDCB_0x0e(void);
/*LD A, RRC (IY+$);*/
void op_FDCB_0x0f(void);
/*LD B, RL (IY+$);*/
void op_FDCB_0x10(void);
/*LD C, RL (IY+$);*/
void op_FDCB_0x11(void);
/*LD D, RL (IY+$);*/
void op_FDCB_0x12(void);
/*LD E, RL (IY+$);*/
void op_FDCB_0x13(void);
/*LD H, RL (IY+$);*/
void op_FDCB_0x14(void);
/*LD L, RL (IY+$);*/
void op_FDCB_0x15(void);
/*RL (IY+$);*/
void op_FDCB_0x16(void);
/*LD A, RL (IY+$);*/
void op_FDCB_0x17(void);
/*LD B, RR (IY+$);*/
void op_FDCB_0x18(void);
/*LD C, RR (IY+$);*/
void op_FDCB_0x19(void);
/*LD D, RR (IY+$);*/
void op_FDCB_0x1a(void);
/*LD E, RR (IY+$);*/
void op_FDCB_0x1b(void);
/*LD H, RR (IY+$);*/
void op_FDCB_0x1c(void);
/*LD L, RR (IY+$);*/
void op_FDCB_0x1d(void);
/*RR (IY+$);*/
void op_FDCB_0x1e(void);
/*LD A, RR (IY+$);*/
void op_FDCB_0x1f(void);
/*LD B, SLA (IY+$);*/
void op_FDCB_0x20(void);
/*LD C, SLA (IY+$);*/
void op_FDCB_0x21(void);
/*LD D, SLA (IY+$);*/
void op_FDCB_0x22(void);
/*LD E, SLA (IY+$);*/
void op_FDCB_0x23(void);
/*LD H, SLA (IY+$);*/
void op_FDCB_0x24(void);
/*LD L, SLA (IY+$);*/
void op_FDCB_0x25(void);
/*SLA (IY+$);*/
void op_FDCB_0x26(void);
/*LD A, SLA (IY+$);*/
void op_FDCB_0x27(void);
/*LD B, SRA (IY+$);*/
void op_FDCB_0x28(void);
/*LD C, SRA (IY+$);*/
void op_FDCB_0x29(void);
/*LD D, SRA (IY+$);*/
void op_FDCB_0x2a(void);
/*LD E, SRA (IY+$);*/
void op_FDCB_0x2b(void);
/*LD H, SRA (IY+$);*/
void op_FDCB_0x2c(void);
/*LD L, SRA (IY+$);*/
void op_FDCB_0x2d(void);
/*SRA (IY+$);*/
void op_FDCB_0x2e(void);
/*LD A, SRA (IY+$);*/
void op_FDCB_0x2f(void);
/*LD B, SLL (IY+$);*/
void op_FDCB_0x30(void);
/*LD C, SLL (IY+$);*/
void op_FDCB_0x31(void);
/*LD D, SLL (IY+$);*/
void op_FDCB_0x32(void);
/*LD E, SLL (IY+$);*/
void op_FDCB_0x33(void);
/*LD H, SLL (IY+$);*/
void op_FDCB_0x34(void);
/*LD L, SLL (IY+$);*/
void op_FDCB_0x35(void);
/*SLL (IY+$);*/
void op_FDCB_0x36(void);
/*LD A, SLL (IY+$);*/
void op_FDCB_0x37(void);
/*LD B, SRL (IY+$);*/
void op_FDCB_0x38(void);
/*LD C, SRL (IY+$);*/
void op_FDCB_0x39(void);
/*LD D, SRL (IY+$);*/
void op_FDCB_0x3a(void);
/*LD E, SRL (IY+$);*/
void op_FDCB_0x3b(void);
/*LD H, SRL (IY+$);*/
void op_FDCB_0x3c(void);
/*LD L, SRL (IY+$);*/
void op_FDCB_0x3d(void);
/*SRL (IY+$);*/
void op_FDCB_0x3e(void);
/*LD A, SRL (IY+$);*/
void op_FDCB_0x3f(void);
/*BIT 0, (IY+$);*/
void op_FDCB_0x47(void);
/*BIT 1, (IY+$);*/
void op_FDCB_0x4f(void);
/*BIT 2, (IY+$);*/
void op_FDCB_0x57(void);
/*BIT 3, (IY+$);*/
void op_FDCB_0x5f(void);
/*BIT 4, (IY+$);*/
void op_FDCB_0x67(void);
/*BIT 5, (IY+$);*/
void op_FDCB_0x6f(void);
/*BIT 6, (IY+$);*/
void op_FDCB_0x77(void);
/*BIT 7, (IY+$);*/
void op_FDCB_0x7f(void);
/*LD B, RES 0, (IY+$);*/
void op_FDCB_0x80(void);
/*LD C, RES 0, (IY+$);*/
void op_FDCB_0x81(void);
/*LD D, RES 0, (IY+$);*/
void op_FDCB_0x82(void);
/*LD E, RES 0, (IY+$);*/
void op_FDCB_0x83(void);
/*LD H, RES 0, (IY+$);*/
void op_FDCB_0x84(void);
/*LD L, RES 0, (IY+$);*/
void op_FDCB_0x85(void);
/*RES 0, (IY+$);*/
void op_FDCB_0x86(void);
/*LD A, RES 0, (IY+$);*/
void op_FDCB_0x87(void);
/*LD B, RES 1, (IY+$);*/
void op_FDCB_0x88(void);
/*LD C, RES 1, (IY+$);*/
void op_FDCB_0x89(void);
/*LD D, RES 1, (IY+$);*/
void op_FDCB_0x8a(void);
/*LD E, RES 1, (IY+$);*/
void op_FDCB_0x8b(void);
/*LD H, RES 1, (IY+$);*/
void op_FDCB_0x8c(void);
/*LD L, RES 1, (IY+$);*/
void op_FDCB_0x8d(void);
/*RES 1, (IY+$);*/
void op_FDCB_0x8e(void);
/*LD A, RES 1, (IY+$);*/
void op_FDCB_0x8f(void);
/*LD B, RES 2, (IY+$);*/
void op_FDCB_0x90(void);
/*LD C, RES 2, (IY+$);*/
void op_FDCB_0x91(void);
/*LD D, RES 2, (IY+$);*/
void op_FDCB_0x92(void);
/*LD E, RES 2, (IY+$);*/
void op_FDCB_0x93(void);
/*LD H, RES 2, (IY+$);*/
void op_FDCB_0x94(void);
/*LD L, RES 2, (IY+$);*/
void op_FDCB_0x95(void);
/*RES 2, (IY+$);*/
void op_FDCB_0x96(void);
/*LD A, RES 2, (IY+$);*/
void op_FDCB_0x97(void);
/*LD B, RES 3, (IY+$);*/
void op_FDCB_0x98(void);
/*LD C, RES 3, (IY+$);*/
void op_FDCB_0x99(void);
/*LD D, RES 3, (IY+$);*/
void op_FDCB_0x9a(void);
/*LD E, RES 3, (IY+$);*/
void op_FDCB_0x9b(void);
/*LD H, RES 3, (IY+$);*/
void op_FDCB_0x9c(void);
/*LD L, RES 3, (IY+$);*/
void op_FDCB_0x9d(void);
/*RES 3, (IY+$);*/
void op_FDCB_0x9e(void);
/*LD A, RES 3, (IY+$);*/
void op_FDCB_0x9f(void);
/*LD B, RES 4, (IY+$);*/
void op_FDCB_0xa0(void);
/*LD C, RES 4, (IY+$);*/
void op_FDCB_0xa1(void);
/*LD D, RES 4, (IY+$);*/
void op_FDCB_0xa2(void);
/*LD E, RES 4, (IY+$);*/
void op_FDCB_0xa3(void);
/*LD H, RES 4, (IY+$);*/
void op_FDCB_0xa4(void);
/*LD L, RES 4, (IY+$);*/
void op_FDCB_0xa5(void);
/*RES 4, (IY+$);*/
void op_FDCB_0xa6(void);
/*LD A, RES 4, (IY+$);*/
void op_FDCB_0xa7(void);
/*LD B, RES 5, (IY+$);*/
void op_FDCB_0xa8(void);
/*LD C, RES 5, (IY+$);*/
void op_FDCB_0xa9(void);
/*LD D, RES 5, (IY+$);*/
void op_FDCB_0xaa(void);
/*LD E, RES 5, (IY+$);*/
void op_FDCB_0xab(void);
/*LD H, RES 5, (IY+$);*/
void op_FDCB_0xac(void);
/*LD L, RES 5, (IY+$);*/
void op_FDCB_0xad(void);
/*RES 5, (IY+$);*/
void op_FDCB_0xae(void);
/*LD A, RES 5, (IY+$);*/
void op_FDCB_0xaf(void);
/*LD B, RES 6, (IY+$);*/
void op_FDCB_0xb0(void);
/*LD C, RES 6, (IY+$);*/
void op_FDCB_0xb1(void);
/*LD D, RES 6, (IY+$);*/
void op_FDCB_0xb2(void);
/*LD E, RES 6, (IY+$);*/
void op_FDCB_0xb3(void);
/*LD H, RES 6, (IY+$);*/
void op_FDCB_0xb4(void);
/*LD L, RES 6, (IY+$);*/
void op_FDCB_0xb5(void);
/*RES 6, (IY+$);*/
void op_FDCB_0xb6(void);

/*LD A, RES 6, (IY+$);*/
void op_FDCB_0xb7(void);

/*LD B, RES 7, (IY+$);*/
void op_FDCB_0xb8(void);

/*LD C, RES 7, (IY+$);*/
void op_FDCB_0xb9(void);

/*LD D, RES 7, (IY+$);*/
void op_FDCB_0xba(void);

/*LD E, RES 7, (IY+$);*/
void op_FDCB_0xbb(void);

/*LD H, RES 7, (IY+$);*/
void op_FDCB_0xbc(void);

/*LD L, RES 7, (IY+$);*/
void op_FDCB_0xbd(void);

/*RES 7, (IY+$);*/
void op_FDCB_0xbe(void);
/*LD A, RES 7, (IY+$);*/
void op_FDCB_0xbf(void);
/*LD B, SET 0, (IY+$);*/
void op_FDCB_0xc0(void);
/*LD C, SET 0, (IY+$);*/
void op_FDCB_0xc1(void);
/*LD D, SET 0, (IY+$);*/
void op_FDCB_0xc2(void);
/*LD E, SET 0, (IY+$);*/
void op_FDCB_0xc3(void);
/*LD H, SET 0, (IY+$);*/
void op_FDCB_0xc4(void);
/*LD L, SET 0, (IY+$);*/
void op_FDCB_0xc5(void);
/*SET 0, (IY+$);*/
void op_FDCB_0xc6(void);
/*LD A, SET 0, (IY+$);*/
void op_FDCB_0xc7(void);
/*LD B, SET 1, (IY+$);*/
void op_FDCB_0xc8(void);
/*LD C, SET 1, (IY+$);*/
void op_FDCB_0xc9(void);
/*LD D, SET 1, (IY+$);*/
void op_FDCB_0xca(void);
/*LD E, SET 1, (IY+$);*/
void op_FDCB_0xcb(void);
/*LD H, SET 1, (IY+$);*/
void op_FDCB_0xcc(void);
/*LD L, SET 1, (IY+$);*/
void op_FDCB_0xcd(void);
/*SET 1, (IY+$);*/
void op_FDCB_0xce(void);
/*LD A, SET 1, (IY+$);*/
void op_FDCB_0xcf(void);
/*LD B, SET 2, (IY+$);*/
void op_FDCB_0xd0(void);
/*LD C, SET 2, (IY+$);*/
void op_FDCB_0xd1(void);
/*LD D, SET 2, (IY+$);*/
void op_FDCB_0xd2(void);
/*LD E, SET 2, (IY+$);*/
void op_FDCB_0xd3(void);
/*LD H, SET 2, (IY+$);*/
void op_FDCB_0xd4(void);
/*LD L, SET 2, (IY+$);*/
void op_FDCB_0xd5(void);
/*SET 2, (IY+$);*/
void op_FDCB_0xd6(void);
/*LD A, SET 2, (IY+$);*/
void op_FDCB_0xd7(void);
/*LD B, SET 3, (IY+$);*/
void op_FDCB_0xd8(void);
/*LD C, SET 3, (IY+$);*/
void op_FDCB_0xd9(void);
/*LD D, SET 3, (IY+$);*/
void op_FDCB_0xda(void);
/*LD E, SET 3, (IY+$);*/
void op_FDCB_0xdb(void);
/*LD H, SET 3, (IY+$);*/
void op_FDCB_0xdc(void);
/*LD L, SET 3, (IY+$);*/
void op_FDCB_0xdd(void);
/*SET 3, (IY+$);*/
void op_FDCB_0xde(void);
/*LD A, SET 3, (IY+$);*/
void op_FDCB_0xdf(void);
/*LD B, SET 4, (IY+$);*/
void op_FDCB_0xe0(void);
/*LD C, SET 4, (IY+$);*/
void op_FDCB_0xe1(void);
/*LD D, SET 4, (IY+$);*/
void op_FDCB_0xe2(void);
/*LD E, SET 4, (IY+$);*/
void op_FDCB_0xe3(void);
/*LD H, SET 4, (IY+$);*/
void op_FDCB_0xe4(void);
/*LD L, SET 4, (IY+$);*/
void op_FDCB_0xe5(void);
/*SET 4, (IY+$);*/
void op_FDCB_0xe6(void);
/*LD A, SET 4, (IY+$);*/
void op_FDCB_0xe7(void);
/*LD B, SET 5, (IY+$);*/
void op_FDCB_0xe8(void);
/*LD C, SET 5, (IY+$);*/
void op_FDCB_0xe9(void);
/*LD D, SET 5, (IY+$);*/
void op_FDCB_0xea(void);
/*LD E, SET 5, (IY+$);*/
void op_FDCB_0xeb(void);
/*LD H, SET 5, (IY+$);*/
void op_FDCB_0xec(void);
/*LD L, SET 5, (IY+$);*/
void op_FDCB_0xed(void);
/*SET 5, (IY+$);*/
void op_FDCB_0xee(void);
/*LD A, SET 5, (IY+$);*/
void op_FDCB_0xef(void);
/*LD B, SET 6, (IY+$);*/
void op_FDCB_0xf0(void);
/*LD C, SET 6, (IY+$);*/
void op_FDCB_0xf1(void);
/*LD D, SET 6, (IY+$);*/
void op_FDCB_0xf2(void);
/*LD E, SET 6, (IY+$);*/
void op_FDCB_0xf3(void);
/*LD H, SET 6, (IY+$);*/
void op_FDCB_0xf4(void);
/*LD L, SET 6, (IY+$);*/
void op_FDCB_0xf5(void);
/*SET 6, (IY+$);*/
void op_FDCB_0xf6(void);
/*LD A, SET 6, (IY+$);*/
void op_FDCB_0xf7(void);
/*LD B, SET 7, (IY+$);*/
void op_FDCB_0xf8(void);
/*LD C, SET 7, (IY+$);*/
void op_FDCB_0xf9(void);
/*LD D, SET 7, (IY+$);*/
void op_FDCB_0xfa(void);
/*LD E, SET 7, (IY+$);*/
void op_FDCB_0xfb(void);
/*LD H, SET 7, (IY+$);*/
void op_FDCB_0xfc(void);
/*LD L, SET 7, (IY+$);*/
void op_FDCB_0xfd(void);
/*SET 7, (IY+$);*/
void op_FDCB_0xfe(void);
/*LD A, SET 7, (IY+$);*/
void op_FDCB_0xff(void);

#endif