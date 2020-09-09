#include "threadexecute.h"

#define CHANNEL 1

CEvent cEvent_ThreadExecuteExit;//���������� �� ����� �� ������

extern HWND hWnd_ListBox_Main;

//��������� ������������ �����
#define DELAY_PILOT     25
#define DELAY_ZERO      ((int)(DELAY_PILOT*855/2168))
#define DELAY_SYNCHRO_1 ((int)(DELAY_PILOT*667/2168))
#define DELAY_SYNCHRO_2 ((int)(DELAY_PILOT*735/2168))
#define DELAY_ONE       ((int)(DELAY_PILOT*1710/2168))

unsigned char Buffer[65536];//����� ��� �������� ������ ������
unsigned int BufferIndex;//������� ������� � ������

//---------------------------------------------------------------------------
//�������� ���� � ����� � �������� ����, ���� ����� �����
//---------------------------------------------------------------------------
void WriteSound(char value,HMMIO hMmio)
{
 Buffer[BufferIndex]=value;
 BufferIndex++;
 if (BufferIndex==65535)//���� �������� �����
 {
  mmioWrite(hMmio,(char*)Buffer,BufferIndex);
  BufferIndex=0;
 }
}
//---------------------------------------------------------------------------
//�������� ���������� ������ ������
//---------------------------------------------------------------------------
void WriteAllSound(HMMIO hMmio)
{
 if (BufferIndex>0) mmioWrite(hMmio,(char*)Buffer,BufferIndex);
 BufferIndex=0;
}


//---------------------------------------------------------------------------
//������� ��� ������������ delay
//---------------------------------------------------------------------------
void OutTone(unsigned char &level,int delay,HMMIO hMmio)
{
 for(int n=0;n<delay;n++)
 {
  WriteSound(level,hMmio);
  if (CHANNEL==2) WriteSound(level,hMmio);
 }
 if (level==0) level=255;
          else level=0;
}
//---------------------------------------------------------------------------
//�������� WAV-����
//---------------------------------------------------------------------------
int WriteWav(char *FileName,HMMIO hMmio,bool Write)
{
 FILE *file_tap=fopen(FileName,"rb");

 unsigned char level=0;
 int size=0;
 while(1)
 {
  //������ ����� �����
  unsigned short length;
  if (fread(&length,1,sizeof(short),file_tap)<sizeof(short)) break;
  //��������� ����� ���
  for(int m=0;m<2*44100/DELAY_PILOT;m++)//��� �������
  {
   if (Write==true)
   {
	OutTone(level,DELAY_PILOT,hMmio);
	OutTone(level,DELAY_PILOT,hMmio);
   }
   size+=DELAY_PILOT*2;
  }
  //��������� ������������
  if (Write==true)
  {
   OutTone(level,DELAY_SYNCHRO_1,hMmio);
   OutTone(level,DELAY_SYNCHRO_2,hMmio);
  } 
  size+=DELAY_SYNCHRO_1+DELAY_SYNCHRO_2;
  //������ ������ � ����� ��
  for(int l=0;l<length;l++)
  {
   unsigned char byte;
   if (fread(&byte,1,sizeof(char),file_tap)<sizeof(char)) break;
   for(int i=0;i<8;i++,byte<<=1)
   {
    if (byte&128)//��� �������
	{
     if (Write==true)
	 {
      OutTone(level,DELAY_ONE,hMmio);
      OutTone(level,DELAY_ONE,hMmio);
	 } 
     size+=2*DELAY_ONE;
	}
	else
	{
     if (Write==true)
	 {
      OutTone(level,DELAY_ZERO,hMmio);
      OutTone(level,DELAY_ZERO,hMmio);
	 } 
     size+=2*DELAY_ZERO;
	}
   }
  }
  //����� 5 ������
  if (Write==true)
  {
   OutTone(level,44100*5,hMmio);
  } 
  size+=44100*5;
 }
 WriteAllSound(hMmio);
 fclose(file_tap);
 return(size);
}


//---------------------------------------------------------------------------
//�����������
//---------------------------------------------------------------------------
bool Convert(char *FileInName,char *FileOutName)
{
 BufferIndex=0;


 HMMIO hMmio;
 MMCKINFO parent;
 WAVEFORMATEX wfmtx;

 parent.ckid=(FOURCC)0;
 parent.cksize=0;
 parent.fccType=(FOURCC)0;
 parent.dwDataOffset=0;
 parent.dwFlags=0;
 if ((hMmio=mmioOpen(FileOutName,NULL,MMIO_CREATE))==NULL) return(0);
 mmioClose(hMmio,MMIO_FHOPEN);

 if ((hMmio=mmioOpen(FileOutName,NULL,MMIO_WRITE))==NULL) return(0);
 //�������� ���������
 MMCKINFO mmCkInfo;
 mmCkInfo.ckid=mmioFOURCC('R', 'I', 'F', 'F');
 mmCkInfo.fccType=mmioFOURCC('W', 'A', 'V', 'E');
 mmCkInfo.dwFlags=MMIO_DIRTY;
 mmioCreateChunk(hMmio,&mmCkInfo,MMIO_CREATERIFF);
 //�������� ����� � ����������� �� ��������� WAVEFORMATEX
 wfmtx.wFormatTag=WAVE_FORMAT_PCM;
 wfmtx.nChannels=CHANNEL;//����� �������
 wfmtx.nBlockAlign=CHANNEL;//������������ �����
 wfmtx.nSamplesPerSec=44100;
 wfmtx.nAvgBytesPerSec=44100*wfmtx.nChannels;
 wfmtx.wBitsPerSample=8;

 mmCkInfo.ckid=mmioFOURCC('f', 'm', 't', ' ');
 mmCkInfo.dwFlags=MMIO_DIRTY;
 mmCkInfo.cksize=sizeof(wfmtx);
 mmioCreateChunk(hMmio,&mmCkInfo,NULL);
 mmioWrite(hMmio,(char*)&wfmtx,sizeof(wfmtx));

 //��������� ������
 int size=WriteWav(FileInName,hMmio,FALSE);
 //�������� ����� � �������
 mmCkInfo.ckid=mmioFOURCC('d', 'a', 't', 'a');
 mmCkInfo.cksize=size*CHANNEL;
 mmCkInfo.dwFlags=MMIO_DIRTY;
 mmioCreateChunk(hMmio,&mmCkInfo,NULL);
 WriteWav(FileInName,hMmio,TRUE);

 mmioClose(hMmio,MMIO_FHOPEN);

 return(true);
}



UINT ThreadExecute(LPVOID pParam)
{
 AddStringInMainListBox("��������� ���������.");
 //��������� ����� ������
 WIN32_FIND_DATA wfd;
 //������� ��� �����
 HANDLE Handle=FindFirstFile("*.tap",&wfd);
 if (Handle!=INVALID_HANDLE_VALUE)
 {
  while(1)
  {
   if (WaitForSingleObject(cEvent_ThreadExecuteExit.m_hObject,0)==WAIT_OBJECT_0) break;//������� ������ �� �����
   //��� ����
   if (wfd.cFileName[0]!='.' && !(wfd.dwFileAttributes&FILE_ATTRIBUTE_DIRECTORY))
   {
    AddStringInMainListBox(wfd.cFileName);
    char *NameIn=new char[strlen(wfd.cFileName)+255];
    char *NameOut=new char[strlen(wfd.cFileName)+255];
    strcpy(NameIn,wfd.cFileName);
    strcpy(NameOut,wfd.cFileName);
	int l=strlen(NameOut);
    NameOut[l-1]='V';
    NameOut[l-2]='A';
    NameOut[l-3]='W';
    if (Convert(NameIn,NameOut)==false) AddStringInMainListBox("������ �����������!");
    delete(NameIn);
    delete(NameOut);
   } 
   if (FindNextFile(Handle,&wfd)==FALSE) break;
  }
  FindClose(Handle);
 }
 return(0);
}
void AddStringInMainListBox(char *string)
{
 DWORD result;
 SendMessageTimeout(hWnd_ListBox_Main,LB_ADDSTRING,0,(LPARAM)string,SMTO_ABORTIFHUNG,1000,&result);
}
