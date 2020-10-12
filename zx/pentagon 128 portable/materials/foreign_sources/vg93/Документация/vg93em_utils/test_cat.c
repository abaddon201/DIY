// ���� ��騭, 199�
// Ianpo/zx-pk.ru, 2018

#include <stdio.h>
#include <malloc.h>

#define byte unsigned char    /* 1 ����.  */
#define word unsigned short     /* 2 ����. */

/* ==========================================================================
       �㭪�� test_cat - �஢�ઠ �ࠢ��쭮�� ��⠫��� TR-DOS.

�室:  cat - ���� ��⠫��� � �����, tracks - ���ᨬ��쭮� ������⢮ �४��
       �� ��᪥.

��室: 2-���⭮� ���祭��, ��� ����訩 ���� - ��� �訡�� ��� 0, �᫨ ���
       �訡��, � ���訩 ���� ��� �������� ����� �訡�� - ����� �������
       ��⠫���, �� ��ᬮ�७�� ���ண� �뫠 �����㦥�� �訡��.
========================================================================== */

word test_cat (byte cat[0x900], byte tracks)
{
 byte files=0;      /* ��饥 ������⢮ 䠩���.          */
 byte del_files=0;  /* ������⢮ 㤠���� 䠩���.      */
 byte element=0;    /* ����� ⥪�饣� ������� ��⠫���. */

 /* �஢�ઠ �����䨪�樮����� ���� TR-DOS. */
 if (cat[0x8E7]!=0x10) return (1);

 /* ���� ���� �㦥����� ᥪ�� ������ ���� ࠢ�� 0. */
 if (cat[0x800]!=0) return (2);

 /* ��� ��᪥�� ������ ���� �᫮� � ��������� 0x16-0x19. */
 if ((cat[0x8E3]<0x16)||(cat[0x8E3]>0x19)) return (3);

 /* ����� ��ࢮ�� ᢮������� ᥪ�� ������ ���� �᫮� � ��������� 0-15. */
 if (cat[0x8E1]>15) return (4);

 /* ������뢠�� ��饥 ������⢮ 䠩��� � ������⢮ 㤠���� 䠩���,
    �����६���� �஢����, �⮡� ����� ��砫쭮�� ᥪ�� ������� 䠩��
    �� �᫮� � ��������� 0-15. */

 while (cat[element*16]!=0)
 { /* ���� �� �����㦨� ���ᯮ��㥬� ������� ��� �� ��ᬮ�ਬ ���� ��⠫��. */
  files++;
  if (cat[element*16]==1) del_files++;
  if (cat[element*16+0x0E]>15) return (5+(element<<8));
  element++;
 }

 /* �஢��塞, �ࠢ��쭮 �� � �㦥���� ᥪ�� 㪠���� ������⢮ 䠩���
    � ������⢮ 㤠���� 䠩���. */

 if (cat[0x8E4]!=files) return (6);
 if (cat[0x8F4]!=del_files) return (7);

 /* �᫨ ᥩ�� element=128, � ��ᬮ�७ ���� ��⠫��, ���� ��⠫���
    ���ᯮ��㥬� ��������, � ���� �஢����, �⮡� �� ��� �뫨 ����祭�
    ��� ���ᯮ��㥬�. */

 while (element<128)
 {
  if (cat[element*16]!=0) return (8+(element<<8));
  element++;
 }

 if (files>0)
 {/* ����� ����. */

  /* ���� 䠩� ������ ��稭����� � �४� 1, ᥪ�� 0. */
  if ((cat[0x0F]!=1)||(cat[0x0E]!=0)) return (9);

  /* ��᪮�� ���� (�.�. ��砫�� �४-ᥪ��) ������� 䠩��, ��稭��
     � ��ண�, ������ ���� ࠢ�� ��᪮���� ����� �।��饣� 䠩��,
     㢥��祭���� �� ������⢮ ᥪ�஢ � �।��饬 䠩��. */

  for (element=1;element<files;element++)
  {
   if ((cat[(element-1)*16+0x0E]+cat[(element-1)*16+0x0F]*16+cat[(element-1)*16+0x0D])!=
       (cat[element*16+0x0E]+cat[element*16+0x0F]*16)) return (10+(element<<8));
  }

  /* �������� � �㦥���� ᥪ�� ��᪮�� ���� ��ࢮ�� ᢮������� ᥪ��
     ������ ���� ࠢ�� ��᪮���� ����� ��᫥����� 䠩��, 㢥��祭���� ��
     ������⢮ ᥪ�஢ � ��᫥���� 䠩��. */

  if ((cat[(files-1)*16+0x0E]+cat[(files-1)*16+0x0F]*16+cat[(files-1)*16+0x0D])!=
      (cat[0x8E1]+cat[0x8E2]*16)) return (11);
 }
 else
 {/* ������ ���. */

  /* �������� � �㦥���� ᥪ�� ��᪮�� ���� ��ࢮ�� ᢮������� ᥪ��
     ������ ���� "�४ 1, ᥪ�� 0". */
  if ((cat[0x8E2]!=1)||(cat[0x8E1]!=0)) return (12);
 }

 /* ������⢮ ������� ᥪ�஢ ��᪠, ᫮������ � ������⢮� ᢮������
    ᥪ�஢, 㪠����� � �㦥���� ᥪ��, �� ������ ���� �����, 祬
    ᮤ�ন��� ᥪ�஢ �� 㪠������ �� �맮�� �㭪樨 ���ᨬ��쭮�
    ������⢥ �४��. */

 /* �८�ࠧ������ � ⨯� long �㦭�, �⮡� �������� ���������� ��९�������
    �� �ࠢ����� (��� �⮣� ࠧ�來���� long ������ ���� ����� ���� ���⮢). */

 if ((cat[0x8E1]+cat[0x8E2]*16+cat[0x8E5]+(((long)(cat[0x8E6]<<8))&0xFFFF)) >
    (tracks*16)) return (13);

 /* �� �஢�ન �ᯥ譮 �ன���� - ������ �뢮�, �� �訡�� ���. */

 return (0);
}

int main (int argc, char **argv)
{
	FILE * file;
	void * bufptr;


	if ( argc == 2 )
	{
		bufptr = (void *)malloc( 0x900 );
		if ( bufptr != NULL )
		{
			file = fopen( argv[1], "rb" );
			if ( file != NULL )
			{
				fread( bufptr, 0x900, 1, file );
				fclose( file );
				printf("%04X", test_cat( bufptr, 2*80 ) );
			}
			else
				printf( "Can't open file %s fo reading\r\n", argv[1] );
			free ( bufptr );
		}
		else
			printf( "Memory allocation error\r\n" );
	}
	else
		printf( "Usage:\r\ntest_cat TRDfile\r\n" );
}
