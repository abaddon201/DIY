#include <windows.h>
#include <math.h>
#include <conio.h>
#include <stdio.h>
#include <stdlib.h>

#define DELAY_PILOT     25
#define DELAY_ZERO      ((int)(DELAY_PILOT*855/2168))
#define DELAY_SYNCHRO_1 ((int)(DELAY_PILOT*667/2168))
#define DELAY_SYNCHRO_2 ((int)(DELAY_PILOT*735/2168))
#define DELAY_ONE       ((int)(DELAY_PILOT*1710/2168))

#include <mmsystem.h>
//------------------------------------------------------------------------------

void OutTone(unsigned char &level,int delay,HMMIO hwav)
{
 for(int n=0;n<delay;n++)
 {
  mmioWrite(hwav,(char*)&level,sizeof(char));
  mmioWrite(hwav,(char*)&level,sizeof(char));  
 }
 if (level==0) level=255;
          else level=0;
}

int WriteWav(char *FileName,HMMIO hwav,bool Write)
{
 FILE *file_tap=fopen("image.tap","rb");

 unsigned char level=0;
 int size=0;
 int unit=0;
 while(1)
 {
  //if (unit==4) break;
  unit++;
  //читаем длину блока
  unsigned short length;
  if (fread(&length,1,sizeof(short),file_tap)<sizeof(short)) break;
  //формируем пилот тон
  for(int m=0;m<2*44100/DELAY_PILOT;m++)//пять секунд
  {
   if (Write==true)
   {
	OutTone(level,DELAY_PILOT,hwav);
	OutTone(level,DELAY_PILOT,hwav);
   }
   size+=DELAY_PILOT*2;
  }
  //формируем синхросигнал
  if (Write==true)
  {
   OutTone(level,DELAY_SYNCHRO_1,hwav);
   OutTone(level,DELAY_SYNCHRO_2,hwav);
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
      OutTone(level,DELAY_ONE,hwav);
      OutTone(level,DELAY_ONE,hwav);
	 } 
     size+=DELAY_ONE*2;
	}
	else
	{
     if (Write==true)
	 {
      OutTone(level,DELAY_ZERO,hwav);
      OutTone(level,DELAY_ZERO,hwav);
	 } 
     size+=DELAY_ZERO*2;
	}
   }
  }
  //пауза
  if (Write==true)
  {
   OutTone(level,44100,hwav);
  } 
  size+=44100;
 }
 fclose(file_tap);
 return(size);
}

//------------------------------------------------------------------------------
int WINAPI WinMain(HINSTANCE hInstance,HINSTANCE hPrevstance,LPSTR lpstrCmdLine,int nCmdShow)
{
 HMMIO hwav;
 MMCKINFO parent;
 WAVEFORMATEX wfmtx;

 parent.ckid=(FOURCC)0;
 parent.cksize=0;
 parent.fccType=(FOURCC)0;
 parent.dwDataOffset=0;
 parent.dwFlags=0;
 if ((hwav=mmioOpen("image.wav",NULL,MMIO_CREATE))==NULL) return(0);
 mmioClose(hwav,MMIO_FHOPEN);

 if ((hwav=mmioOpen("image.wav",NULL,MMIO_WRITE))==NULL) return(0);
 //создание заголовка
 MMCKINFO mmCkInfo;
 mmCkInfo.ckid=mmioFOURCC('R', 'I', 'F', 'F');
 mmCkInfo.fccType=mmioFOURCC('W', 'A', 'V', 'E');
 mmCkInfo.dwFlags=MMIO_DIRTY;
 mmioCreateChunk(hwav,&mmCkInfo,MMIO_CREATERIFF);
 //создание блока с информацией из структуры WAVEFORMATEX
 wfmtx.wFormatTag=WAVE_FORMAT_PCM;
 wfmtx.nChannels=2;//число каналов
 wfmtx.nBlockAlign=2;//выравнивание блока
 wfmtx.nSamplesPerSec=44100;
 wfmtx.nAvgBytesPerSec=44100*wfmtx.nChannels;
 wfmtx.wBitsPerSample=8;

 mmCkInfo.ckid=mmioFOURCC('f', 'm', 't', ' ');
 mmCkInfo.dwFlags=MMIO_DIRTY;
 mmCkInfo.cksize=sizeof(wfmtx);
 mmioCreateChunk(hwav,&mmCkInfo,NULL);
 mmioWrite(hwav,(char*)&wfmtx,sizeof(wfmtx));

 //формируем данные
 int size=WriteWav("image.tap",hwav,FALSE);
 //создание блока с данными
 mmCkInfo.ckid=mmioFOURCC('d', 'a', 't', 'a');
 mmCkInfo.cksize=size*2;
 mmCkInfo.dwFlags=MMIO_DIRTY;
 mmioCreateChunk(hwav,&mmCkInfo,NULL);
 WriteWav("image.tap",hwav,TRUE);


 mmioClose(hwav,MMIO_FHOPEN);


 MessageBox(NULL,"Готово!","",MB_OK);
 return(0); 
}

