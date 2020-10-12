// mfd_test.c
// IanPo/zx-pk.ru, 2017
// Конвертер MFD в читабельный вид для анализа

#include <stdio.h>
#include <malloc.h>
#include <string.h>
#include "mfd.h"


int main (int argc, char **argv)
{
	FILE * file;
	FILE * file_report;
	MFDTRACKIMG * MFDTRACKIMG_ARR;
	MFDIMG * MFDIMG_PTR;
	long int i,j;
	void * bufptr;
	void * bufptr0;
	void * bufptr1;


	if ( argc == 3 )
	{
		bufptr = (void *)malloc( MAX_MFD_FILE_SIZE );
		if ( bufptr != NULL )
		{
			file = fopen( argv[1], "rb" );
			if ( file != NULL )
			{
				fread( bufptr, MAX_MFD_FILE_SIZE, 1, file );
				fclose( file );
				MFDIMG_PTR = (MFDIMG *)bufptr;
				MFDTRACKIMG_ARR = (MFDTRACKIMG *)( bufptr + sizeof( MFDIMG ) );
				file_report = fopen( argv[2], "w" );
				if ( file_report != NULL )
				{
					fprintf ( file_report, "File %s\r\n", argv[1] );
					if ( strcmp( "MFMDECD", MFDIMG_PTR->headername ) == 0 )
					{
						fprintf ( file_report, "%d cylinders\r\n", MFDIMG_PTR->max_cylinder + 1 );
						fprintf ( file_report, "%d sides\r\n", MFDIMG_PTR->max_side + 1 );
						fprintf ( file_report, "Bitrate = %d kBytes/sec\r\n", MFDIMG_PTR->bit_rate );
						for ( i = 0; i <  ( MFDIMG_PTR->max_cylinder + 1 ) * ( MFDIMG_PTR->max_side + 1 ); i++ )
						{
							fprintf ( file_report, "\r\nCylinder %d\r\n", MFDTRACKIMG_ARR[i].cylinder_number );
							fprintf ( file_report, "Side %d\r\n", MFDTRACKIMG_ARR[i].side_number );
							fprintf ( file_report, "Track length = %d\r\n", MFDTRACKIMG_ARR[i].mfd_tracksize );
							bufptr0 = bufptr + MFDTRACKIMG_ARR[i].mfdtrackoffset;
							bufptr1 = bufptr0 + MAX_TRACK_LEN;
							for ( j = 0; j < MFDTRACKIMG_ARR[i].mfd_tracksize; j++ )
								if ( ( *(unsigned char *)( bufptr1 + ( j >> 3 ) ) & ( 1 << ( j & 7 ) ) ) != 0 )
									fprintf ( file_report, "*  " );
								else
									fprintf ( file_report, "   " );
							fprintf ( file_report, "\r\n" );
							//
							for ( j = 0; j < MFDTRACKIMG_ARR[i].mfd_tracksize; j++ )
								fprintf ( file_report, "%02X ", *(unsigned char *)bufptr0++ );
							fprintf ( file_report, "\r\n" );
						}
					}
					else
						fprintf ( file_report, "File is not MFD\r\n" );
					fclose( file_report );
				}
				else
					printf( "Can't open file %s for writing\r\n", argv[2] );
			}
			else
				printf( "Can't open file %s fo reading\r\n", argv[1] );
			free ( bufptr );
		}
		else
			printf( "Memory allocation error\r\n" );
	}
	else
		printf( "Usage:\r\nmfd_test ImageFileName report_textfile\r\n" );
}
