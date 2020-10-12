// UART-терминал для эмулятора VG93EM
// IanPo/zx-pk.ru, 2018 */

#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include "vg93em.h"
#include "ff.h"
#include "xprintf.h"

long int ReadDir( char * );
void DrawScr( void );
unsigned char CollectData( void );
void ParseChosenFile( void );
void ChooseDiskImage( void );

// external functions from main
void fault_err (FRESULT);
void SendChar2USART(char);
bool ReceiveCharFromUSART(char *);

extern uint8_t buffB[];	// ( MAX_TRACK_LEN + MAX_BF_LEN ) * 2
char data[6144];
char sFileFullNameA[ MAX_PATH_LEN ] = "\0", sFileFullNameB[ MAX_PATH_LEN ] = "\0";
char sFileNameA[ FILE_NAME_LEN ] = "\0", sFileNameB[ FILE_NAME_LEN ] = "\0";
char sCurrDir[ MAX_PATH_LEN ];
//char sLastDir[ MAX_PATH_LEN ]; доделать
bool bFileLoadedA = false, bFileLoadedB = false;
long int AllFiles;
long int FileIndex;	// номер текущего файла в списке всех файлов (0 < FileIndex < AllFiles) на нем стоял курсор
long int FirstFileInList;	// первый файл, с которого начинается страница списка (0 < FirstFileInList < AllFiles - 13)
uint32_t dwSize;
enum { TM_Exit, TM_Load } TermMenu;
char sReceivedChar[4];
char * lpReceivedChar;


extern FATFS filesystem;
extern FRESULT ret;
extern FIL file;
extern DIR dir;
extern FILINFO fno;
extern char *fn;
extern UINT bw, br;


// Считывает имена файлов и поддиректорий в массив,
// при этом добавляется первой буквой " ",
// если это файл, или "*", если это поддиректория
// Возвращает кол-во файлов и поддиректорий
// Важно! ffconf.h : #define _FS_RPATH 0
long int ReadDir( char * DirPath )
{
	long int i;


#ifdef TRACE
	xprintf("\r\n--- Directory %s ---\r\n", DirPath );
#endif
	ret = f_opendir( &dir, DirPath );	// Open a directory
	if (ret)	fault_err(ret);
	//
	if ( strcmp( DirPath, "/" ) != 0 )	// Non-root directory must contain "<UP-DIR>"
	{
		strcpy( &buffB[ FILE_NAME_LEN * 0 + 3 ], ".." );
		buffB[ FILE_NAME_LEN * 0 ] = '*';
		i = 1;
#ifdef TRACE
		xprintf("%s\r\n", &buffB[ FILE_NAME_LEN * 0 + 3 ] );
#endif
	}
	else
		i = 0;
	while ( i < ( ( MAX_TRACK_LEN + MAX_BF_LEN ) * 2 / FILE_NAME_LEN ) )
	{
		ret = f_readdir( &dir, &fno );	// Read a directory item
		if ( ret != FR_OK || fno.fname[0] == 0 ) break;  // Break on error or end of dir
		fn = fno.fname;
#ifdef TRACE
		xprintf("%s\r\n", fn );
#endif
		if ( fno.fattrib & AM_DIR )		// Is a directory
			buffB[ FILE_NAME_LEN * i ] = '*';
		else
			buffB[ FILE_NAME_LEN * i ] = ' ';
		if ( fno.fattrib & AM_RDO )		// Is Read-Only
			buffB[ FILE_NAME_LEN * i + 1 ] = 'R';
		else
			buffB[ FILE_NAME_LEN * i + 1 ] = ' ';
		buffB[ FILE_NAME_LEN * i + 2 ] = ' ';	// reserved
		strncpy( &buffB[ FILE_NAME_LEN * i + 3 ], fn, FILE_NAME_LEN - 4 );	// safe strncpy
		buffB[ FILE_NAME_LEN * ( i + 1 ) - 1 ] = '\0';						// safe strncpy
		if ( ( strstr( &buffB[ FILE_NAME_LEN * i + 3 ], ".SCL" ) != NULL ) || \
				( strstr( &buffB[ FILE_NAME_LEN * i + 3 ], ".TRD" ) != NULL ) || \
					( strstr( &buffB[ FILE_NAME_LEN * i + 3 ], ".MFD" ) != NULL ) || \
						( strcmp( &buffB[ FILE_NAME_LEN * i + 3 ], ".." ) == 0 )  || \
							( buffB[ FILE_NAME_LEN * i ] == '*' ) )	i++;
	}
	f_closedir( &dir );
#ifdef TRACE
	xprintf("AllFiles = %d\r\n", i );
#endif
	FirstFileInList = 0;
	FileIndex = 0;
	return i;
}

void DrawScr(void)
{
	long int i;


	strcpy( data, "\033[=1h\033[0;40;37m\033c\033[2J\033[?25l-= VG93EM terminal =-     " );
	strcat( data, VERSION );
	strcat( data, "\r\n\r\n" );
	switch ( TermMenu )
	{
		case TM_Exit: { strcat( data, "\033[97;47mExit\033[37;40m  Load\r\n\r\n" ); break; }
		case TM_Load: { strcat( data, "Exit  \033[97;47mLoad\033[37;40m\r\n\r\n" ); break; }
		default: break;
	}
	strcat( data, "Disc A: ");
	if ( bFileLoadedA )
	{
		strcat( data, sFileNameA + 3 );
		if ( sFileNameA[1] == 'R' )
			strcat( data, "\033[36m RO\033[37m\r\n\r\n" ); // cyan
		else
			strcat( data, "\033[35m RW\033[37m\r\n\r\n" );	// magenta
	}
	else
		strcat( data, "No file\r\n\r\n" );
	strcat( data, "Disc B: ");
	if ( bFileLoadedB )
	{
		strcat( data, sFileNameB + 3 );
		if ( sFileNameB[1] == 'R' )
			strcat( data, "\033[32m RO\033[37m\r\n\r\n\r\n" ); // green
		else
			strcat( data, "\033[31m RW\033[37m\r\n\r\n\r\n" );	// red
	}
	else
		strcat( data, "No file\r\n\r\n\r\n" );
	for ( i = FirstFileInList; i < min( AllFiles, FirstFileInList + MAX_CON_LINES + 1 ); i++ )
	{
		if ( i == FileIndex )	// курсор
			strcat( data, "\033[107m" );
		if ( i == FirstFileInList + MAX_CON_LINES )	// след.стр.
			strcat( data, "\033[97m- more... -\033[37m\r\n" );
		else
			if ( strcmp( &buffB[ FILE_NAME_LEN * i + 3 ], ".." ) == 0 )	// родит.директория
				strcat( data, "\033[90m..      <UP>\033[37m\r\n" );
			else
				if ( buffB[ FILE_NAME_LEN * i ] == '*' )	// директория
				{
					strcat( data, "\033[33m" );
					strcat( data, &buffB[ FILE_NAME_LEN * i + 3 ] );
					strcat( data, "\033[37m\r\n" );
				}
				else
					if ( ( strstr( &buffB[ FILE_NAME_LEN * i + 3 ], ".SCL" ) != NULL ) || \
						( strstr( &buffB[ FILE_NAME_LEN * i + 3 ], ".TRD" ) != NULL ) )
					{
						if ( buffB[ FILE_NAME_LEN * i + 1 ] == 'R' )
							strcat( data, "\033[32m" );
						else
							strcat( data, "\033[31m" );
						strcat( data, &buffB[ FILE_NAME_LEN * i + 3 ] );
						strcat( data, "\033[37m\r\n" );
					}
					else
						if ( strstr( &buffB[ FILE_NAME_LEN * i + 3 ], ".MFD" ) != NULL )
						{
							if ( buffB[ FILE_NAME_LEN * i + 1 ] == 'R' )
								strcat( data, "\033[34m" );
							else
								strcat( data, "\033[35m" );
							strcat( data, &buffB[ FILE_NAME_LEN * i + 3 ] );
							strcat( data, "\033[37m\r\n" );
						}
		strcat( data, "\033[40m" );
	}
	dwSize = strlen( data ) + 1;
	for ( i = 0; i < dwSize; i++ )	SendChar2USART( data[i] );
}

unsigned char CollectData( void )
{
	long int i;


	lpReceivedChar = sReceivedChar;
	while ( true )
	{
		if ( !ReceiveCharFromUSART( lpReceivedChar ) )
			continue;
		else
			lpReceivedChar++;
		i = lpReceivedChar - sReceivedChar;
		if ( i == 1 )
		{
			if ( sReceivedChar[0] == '\r' )
			{
#ifdef TRACE
	xprintf("Enter\r\n");
#endif
				return '\r';
			}
		}
		else
			if ( i == 3 )
			{

				if ( ( sReceivedChar[0] == 0x1B ) && ( sReceivedChar[1] == 0x5B ) && \
					 ( sReceivedChar[2] > 0x40 ) )
				{
#ifdef TRACE
	xprintf("Arrows\r\n");
#endif
					return sReceivedChar[2];
				}
			}
			else
				if ( i == 4 )
				{
					if ( ( sReceivedChar[0] == 0x1B ) && ( sReceivedChar[1] == 0x5B ) && \
						( sReceivedChar[3] == 0x7E ) )
					{
#ifdef TRACE
	xprintf("HEPUPD\r\n");
#endif
						return ( sReceivedChar[2] );
					}
					else
						lpReceivedChar = sReceivedChar;
				}
	}
}

void ParseChosenFile( void )
{
	if ( buffB[ FILE_NAME_LEN * FileIndex ] == '*' )
	{
		if ( strcmp( &buffB[ FILE_NAME_LEN * FileIndex + 3 ], ".." ) != 0 )
		{
			strcat( sCurrDir, "/" );
			strcat( sCurrDir, &buffB[ FILE_NAME_LEN * FileIndex + 3 ] );
		}
		else
			*strrchr( sCurrDir, '/' ) = 0;
		AllFiles = ReadDir( sCurrDir );
#ifdef TRACE
	xprintf("Chdir to %s\r\n", sCurrDir );
#endif
	}
	else
		if ( strstr( &buffB[ FILE_NAME_LEN * FileIndex + 3 ], ".MFD" ) != NULL )
		{
			bFileLoadedA = true;
			strcpy( sFileNameA, &buffB[ FILE_NAME_LEN * FileIndex ] );
			strcpy( sFileFullNameA, sCurrDir );
			if ( strcmp( sCurrDir, "/" ) != 0 )	strcat( sFileFullNameA, "/" );
			strcat( sFileFullNameA, sFileNameA + 3 );
#ifdef TRACE
	xprintf("FullNameA=%s\r\n", sFileFullNameA );
#endif
		}
		else
		{
			bFileLoadedB = true;
			strcpy( sFileNameB, &buffB[ FILE_NAME_LEN * FileIndex ] );
			strcpy( sFileFullNameB, sCurrDir );
			if ( strcmp( sCurrDir, "/" ) != 0 )	strcat( sFileFullNameB, "/" );
			strcat( sFileFullNameB, sFileNameB + 3 );
#ifdef TRACE
	xprintf("FullNameB=%s\r\n", sFileFullNameB );
#endif
		}
}

void ChooseDiskImage( void )
{
	AllFiles = ReadDir( sCurrDir );
	TermMenu = TM_Load;
	do {
			DrawScr();
			switch ( CollectData() )
			{
				case '\r':	{
								//enter
								if ( ( TermMenu == TM_Exit ) && ( bFileLoadedA || bFileLoadedB ) )
									return;
								else
									ParseChosenFile();
								break;
							}
				case 0x41:	{
								// up
#ifdef TRACE
	xprintf( "FI=%d, FFIL=%d -> ", FileIndex, FirstFileInList );
#endif
								if ( FileIndex > 0 )	FileIndex--;
								if ( FileIndex < FirstFileInList )
								{
#ifdef TRACE
	xprintf("#");
#endif
									FirstFileInList--;
								}
#ifdef TRACE
	xprintf( "FI=%d, FFIL=%d\r\n", FileIndex, FirstFileInList );
#endif
								break;
							}
				case 0x42:	{
								// down
#ifdef TRACE
	xprintf( "FI=%d, FFIL=%d -> ", FileIndex, FirstFileInList );
#endif
								if ( FileIndex + 1 < AllFiles )	FileIndex++;
								if ( FileIndex + 1 - FirstFileInList > MAX_CON_LINES )
								{
#ifdef TRACE
	xprintf("*");
#endif
									FirstFileInList = FileIndex + 1 - MAX_CON_LINES;
								}
#ifdef TRACE
	xprintf( "FI=%d, FFIL=%d\r\n", FileIndex, FirstFileInList );
#endif
								break;
							}
				case 0x43:	{
								// right
								TermMenu = TM_Load;
								break;
							}
				case 0x44:	{
								// left
								if ( bFileLoadedA || bFileLoadedB )	TermMenu = TM_Exit;
								break;
							}
				case 0x31:	{
								// home
								FileIndex = 0;
								FirstFileInList = 0;
								break;
							}
				case 0x34:	{
								// end
#ifdef TRACE
	xprintf( "FI=%d, FFIL=%d -> ", FileIndex, FirstFileInList );
#endif
								if ( AllFiles > 0 )
									FileIndex = AllFiles - 1;
								else
									FileIndex = 0;
								if ( FileIndex + 1 - FirstFileInList > MAX_CON_LINES )
								{
#ifdef TRACE
	xprintf("*");
#endif
									FirstFileInList = FileIndex + 1 - MAX_CON_LINES;
								}
#ifdef TRACE
	xprintf( "FI=%d, FFIL=%d\r\n", FileIndex, FirstFileInList );
#endif
								break;
							}
				case 0x35:	{
								// page up
#ifdef TRACE
	xprintf( "FI=%d, FFIL=%d -> ", FileIndex, FirstFileInList );
#endif
								FileIndex -= MAX_CON_LINES;
								if ( FileIndex < 0 )	FileIndex = 0;
//								if ( FileIndex < FirstFileInList )
								{
#ifdef TRACE
	xprintf("&");
#endif
									FirstFileInList = FileIndex;
								}
#ifdef TRACE
	xprintf( "FI=%d, FFIL=%d\r\n", FileIndex, FirstFileInList );
#endif
								break;
							}
				case 0x36:	{
								// page down
#ifdef TRACE
	xprintf( "FI=%d, FFIL=%d -> ", FileIndex, FirstFileInList );
#endif
								FileIndex += MAX_CON_LINES;
								if ( FileIndex + 1 > AllFiles )	FileIndex = AllFiles - 1;
								if ( FileIndex + 1 - FirstFileInList > MAX_CON_LINES )
								{
#ifdef TRACE
	xprintf("!");
#endif
									FirstFileInList = FileIndex + 1 - MAX_CON_LINES;
								}
#ifdef TRACE
	xprintf( "FI=%d, FFIL=%d\r\n", FileIndex, FirstFileInList );
#endif
								break;
							}
				default:	{
#ifdef TRACE
	xprintf( "Unsupported code\r\n" );
#endif
								break;
							}
			}
		} while ( true );
}
