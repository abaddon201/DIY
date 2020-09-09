#include "threadexecute.h"

#define CHANNEL 1

CEvent cEvent_ThreadExecuteExit;//требование на выход из потока

extern HWND hWnd_ListBox_Main;

//настройки длительности тонов
#define DELAY_PILOT     25
#define DELAY_ZERO      ((int)(DELAY_PILOT*855/2168))
#define DELAY_SYNCHRO_1 ((int)(DELAY_PILOT*667/2168))
#define DELAY_SYNCHRO_2 ((int)(DELAY_PILOT*735/2168))
#define DELAY_ONE       ((int)(DELAY_PILOT*1710/2168))

unsigned char Buffer[65536];//буфер для хранения данных звуков
unsigned int BufferIndex;//текущая позиция в буфере

//---------------------------------------------------------------------------
//добавить звук в буфер и записать звук, если буфер полон
//---------------------------------------------------------------------------
void WriteSound(char value,HMMIO hMmio)
{
 Buffer[BufferIndex]=value;
 BufferIndex++;
 if (BufferIndex==65535)//надо записать буфер
 {
  mmioWrite(hMmio,(char*)Buffer,BufferIndex);
  BufferIndex=0;
 }
}
//---------------------------------------------------------------------------
//записать оставшиеся данные буфера
//---------------------------------------------------------------------------
void WriteAllSound(HMMIO hMmio)
{
 if (BufferIndex>0) mmioWrite(hMmio,(char*)Buffer,BufferIndex);
 BufferIndex=0;
}


//---------------------------------------------------------------------------
//вывести тон длительности delay
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
//записать WAV-файл
//---------------------------------------------------------------------------
int WriteWav(char *FileName,HMMIO hMmio,bool Write)
{
 FILE *file_tap=fopen(FileName,"rb");

 unsigned char level=0;
 int size=0;
 while(1)
 {
  //читаем длину блока
  unsigned short length;
  if (fread(&length,1,sizeof(short),file_tap)<sizeof(short)) break;
  //формируем пилот тон
  for(int m=0;m<2*44100/DELAY_PILOT;m++)//две секунды
  {
   if (Write==true)
   {
	OutTone(level,DELAY_PILOT,hMmio);
	OutTone(level,DELAY_PILOT,hMmio);
   }
   size+=DELAY_PILOT*2;
  }
  //формируем синхросигнал
  if (Write==true)
  {
   OutTone(level,DELAY_SYNCHRO_1,hMmio);
   OutTone(level,DELAY_SYNCHRO_2,hMmio);
  } 
  size+=DELAY_SYNCHRO_1+DELAY_SYNCHRO_2;
  //читаем данные и выдаём их
  for(int l=0;l<length;l++)
  {
   unsigned char byte;
   if (fread(&byte,1,sizeof(char),file_tap)<sizeof(char)) break;
   for(int i=0;i<8;i++,byte<<=1)
   {
    if (byte&128)//это единица
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
  //пауза 5 секунд
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
//конвертация
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
 //создание заголовка
 MMCKINFO mmCkInfo;
 mmCkInfo.ckid=mmioFOURCC('R', 'I', 'F', 'F');
 mmCkInfo.fccType=mmioFOURCC('W', 'A', 'V', 'E');
 mmCkInfo.dwFlags=MMIO_DIRTY;
 mmioCreateChunk(hMmio,&mmCkInfo,MMIO_CREATERIFF);
 //создание блока с информацией из структуры WAVEFORMATEX
 wfmtx.wFormatTag=WAVE_FORMAT_PCM;
 wfmtx.nChannels=CHANNEL;//число каналов
 wfmtx.nBlockAlign=CHANNEL;//выравнивание блока
 wfmtx.nSamplesPerSec=44100;
 wfmtx.nAvgBytesPerSec=44100*wfmtx.nChannels;
 wfmtx.wBitsPerSample=8;

 mmCkInfo.ckid=mmioFOURCC('f', 'm', 't', ' ');
 mmCkInfo.dwFlags=MMIO_DIRTY;
 mmCkInfo.cksize=sizeof(wfmtx);
 mmioCreateChunk(hMmio,&mmCkInfo,NULL);
 mmioWrite(hMmio,(char*)&wfmtx,sizeof(wfmtx));

 //формируем данные
 int size=WriteWav(FileInName,hMmio,FALSE);
 //создание блока с данными
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
 AddStringInMainListBox("Начинатся обработка.");
 //выполняем поиск файлов
 WIN32_FIND_DATA wfd;
 //обходим все файлы
 HANDLE Handle=FindFirstFile("*.tap",&wfd);
 if (Handle!=INVALID_HANDLE_VALUE)
 {
  while(1)
  {
   if (WaitForSingleObject(cEvent_ThreadExecuteExit.m_hObject,0)==WAIT_OBJECT_0) break;//получен сигнал на выход
   //это файл
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
    if (Convert(NameIn,NameOut)==false) AddStringInMainListBox("Ошибка конвертации!");
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
