// mfd.h
// IanPo/zx-pk.ru, 2017

// max size 256 tracks 2 sides ~ 3.5 Mb
#define MAX_MFD_FILE_SIZE	4194304

#define MAX_TRACK_LEN		6400
#define MAX_BF_LEN			MAX_TRACK_LEN/8

// assume TRD standard 80 tracks * 2 sides
#define CYL_NUM_MAX	79

#define IAM		0xFEA1A1A1
#define IDAM	0xFBA1A1A1
#define IAM1	0xFE
#define IDAM1	0xFB

#define GAP		0x4E
#define ZERO	0
#define SYNC	0xA1
#define GAP0	10
#define GAP2	22
#define GAP3	60
#define GAP4	214
#define ZERO0	12
#define ZERO1	128

// file header
typedef struct
{
	unsigned char headername[8];	// "MFMDECD",0
	unsigned char max_cylinder;	// 0..255
	unsigned char max_side;		// 0..1
	unsigned short bit_rate;		// 0x00FA -> 250e+3
	unsigned char reserved[20];
} __attribute__((packed)) MFDIMG;	// 32 bytes

// track description
typedef struct
{
	unsigned char cylinder_number;
	unsigned char side_number;
	unsigned short mfd_tracksize;		// in bytes, no more than MAX_TRACK_LEN
	unsigned long mfdtrackoffset;		// track offset in bytes from beginning of the file
} __attribute__((packed)) MFDTRACKIMG;	// 8 bytes * ( max_cylinder + 1 ) * ( max_side + 1) = max 256*2*8 = 4096
