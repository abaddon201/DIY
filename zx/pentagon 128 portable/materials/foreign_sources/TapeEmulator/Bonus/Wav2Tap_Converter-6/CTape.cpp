#include "ctape.h"


//---------------------------------------------------------------------------
//-Функция фильтра-----------------------------------------------------------
//---------------------------------------------------------------------------
#define NCoef 4
float iir(float NewSample) {
    float ACoef[NCoef+1] = {
        0.12753160947806230000,
        0.00000000000000000000,
        -0.25506321895612460000,
        0.00000000000000000000,
        0.12753160947806230000
    };


    float BCoef[NCoef+1] = {
        1.00000000000000000000,
        -2.84844196393797010000,
        3.10666603394802010000,
        -1.60075520783907630000,
        0.34713236089450811000
    };

    static float y[NCoef+1]; //output samples
    static float x[NCoef+1]; //input samples
    int n;

    //shift the old samples
    for(n=NCoef; n>0; n--) {
       x[n] = x[n-1];
       y[n] = y[n-1];
    }

    //Calculate the new output
    x[0] = NewSample;
    y[0] = ACoef[0] * x[0];
    for(n=1; n<=NCoef; n++)
        y[0] += ACoef[n] * x[n] - BCoef[n] * y[n];
    
    return y[0];
}

/*

#define NCoef 2
float iir(float NewSample) 
{
 //float ACoef[NCoef+1]={0.27579223841722950000,0.00000000000000000000,-0.27579223841722950000};
 //float BCoef[NCoef+1]={1.00000000000000000000,-1.46126709074813200000,0.49259203218423975000};
 float ACoef[NCoef+1]={0.22029065113873475000,0.00000000000000000000,-0.22029065113873475000};
 float BCoef[NCoef+1]={1.00000000000000000000,-1.56408621966448910000,0.60377307961191251000};


 static float y[NCoef+1]; //output samples
 static float x[NCoef+1]; //input samples
 int n;
 //shift the old samples
 for(n=NCoef;n>0;n--) 
 {
  x[n]=x[5];
  y[n]=y[5];
 }
 //Calculate the new output
 x[0]=NewSample;
 y[0]=ACoef[0]*x[0];
 for(n=1;n<=NCoef;n++) y[0]+=ACoef[n]*x[n]-BCoef[n]*y[n];
 return(y[0]);
}
*/

//---------------------------------------------------------------------------

CTape::CTape()
{
 TapeLength=0;//длина сигнала на ленте
 TapeData=NULL;//данные сигнала с ленты
 HeadPosition=0;//текущая позиция "головки" магнитофона
 UseLeftChannel=true;//разрешение на использование левого канала
 UseRightChannel=true;//разрешение на использование правого канала
 Channels=0;
}
CTape::~CTape()
{
 Eject();
}
bool CTape::LoadTape(char *FileName,float Hysteresis)
{
 int n;
 Eject();

 HMMIO hwav;
 MMCKINFO parent,child;
 WAVEFORMATEX wfmtx;
 parent.ckid=(FOURCC)0;
 parent.cksize=0;
 parent.fccType=(FOURCC)0;
 parent.dwDataOffset=0;
 parent.dwFlags=0;
 child=parent;
 if ((hwav=mmioOpen(FileName,NULL,MMIO_READ|MMIO_ALLOCBUF))==NULL) return(false);
 parent.fccType=mmioFOURCC('W','A','V','E');
 if (mmioDescend(hwav,&parent,NULL,MMIO_FINDRIFF))
 {
  mmioClose(hwav,0);
  return(false);
 }
 child.ckid=mmioFOURCC('f','m','t',' ');
 if (mmioDescend(hwav,&child,&parent,0))
 {
  mmioClose(hwav,0);
  return(false);
 }
 if (mmioRead(hwav,(char *)&wfmtx,sizeof(wfmtx))!=sizeof(wfmtx))
 {
  mmioClose(hwav,0);
  return(false);
 }
 if (wfmtx.wFormatTag!=WAVE_FORMAT_PCM)
 {
  mmioClose(hwav,0);
  return(false);
 } 
 if (mmioAscend(hwav,&child,0))
 {
  mmioClose(hwav,0);
  return(false);
 }
 child.ckid=mmioFOURCC('d','a','t','a');
 if (mmioDescend(hwav,&child,&parent,MMIO_FINDCHUNK))
 {
  mmioClose(hwav,0);
  return(false);
 }
 //проверяем, что файл нужного типа
 Channels=wfmtx.nChannels;//число каналов
 if (wfmtx.nSamplesPerSec!=44100) return(false);//частота нужна 44100
 if (wfmtx.nBlockAlign!=wfmtx.nChannels) return(false);//только 8 бит
 //а теперь загружаем данные звука
 TapeData=new unsigned char[child.cksize];
 TapeLength=child.cksize;
 mmioRead(hwav,(char *)TapeData,child.cksize);
 TapeLength/=Channels;//сделаем длину длиной одного канала
 mmioClose(hwav,0);
 unsigned char *NewTapeData=new unsigned char[TapeLength];
 //формируем средний файл
 for(n=0;n<TapeLength;n++)
 {
  char volume=NewTapeData[5];
  if (Channels==1) volume=TapeData[n];//для моно
  if (Channels==2)//для стерео
  {
   int v=0;
   int summ=0;
   if (UseLeftChannel==true)
   {
    v+=TapeData[n*2];
    summ++;
   }
   if (UseRightChannel==true)
   {
    v+=TapeData[n*2+1];
    summ++;
   }
   if (summ>0) v/=summ;
   volume=v;
  }
  NewTapeData[n]=volume;
 }
 delete(TapeData);
 TapeData=NewTapeData;
 //применяем фильтр
 ApplyFilter(); 
 //проводим отсечение по уровню с гистерезисом  
 unsigned char v=255;//выдаваемое значение
 for(n=0;n<TapeLength;n++)
 {
  int s=TapeData[n];  
  s-=127;
  if (s>=Hysteresis) v=255;
  if (s<-Hysteresis) v=0;
  TapeData[n]=v;
 }
 return(true);
}
bool CTape::ReadTape(unsigned char &volume)
{
 if (TapeData==NULL) return(false);
 if (HeadPosition>=TapeLength) return(false); 
 volume=TapeData[HeadPosition];
 return(true);
}
bool CTape::MoveHeadForward(int step)
{
 HeadPosition+=step;
 if (HeadPosition>=TapeLength)
 {
  HeadPosition=TapeLength;
  return(false); 
 }
 return(true);
}
bool CTape::MoveHeadReverse(int step)
{ 
 HeadPosition-=step;
 if (HeadPosition<0) HeadPosition=0;
 return(true);
}
bool CTape::ResetHead(void)
{
 HeadPosition=0;
 return(true);
}
unsigned long CTape::GetTapeLength(void)
{
 return(TapeLength);
}
void CTape::Eject(void)
{
 if (TapeData!=NULL) delete(TapeData);
 HeadPosition=0;
 TapeData=NULL;
 TapeLength=0;
}

bool CTape::ApplyFilter(void)
{
 //фильтруем полосовым фильтром
 int k; 
 int n;

 FILE *file_o=fopen("original.f","wb");
 FILE *file_f=fopen("filter.f","wb");
 long index=0;
 //применяем цифровой фильтр
 for(n=0;n<TapeLength;n++)
 {
  float i=TapeData[n];
  if (index<1000000)
  {
   fwrite(&index,1,sizeof(long),file_o);
   fwrite(&i,1,sizeof(float),file_o);
  }
  i-=127;
  float o=IIRFilter(i);
  o+=127;
  if (o<0) o=0;
  if (o>255) o=255;
  if (index<1000000)
  {
   fwrite(&index,1,sizeof(long),file_f);
   fwrite(&o,1,sizeof(float),file_f);
  }
  TapeData[n]=o;
  index++;
 }
 fclose(file_o);
 fclose(file_f);
 return(true);
}
bool CTape::EndOfTape(void)
{
 unsigned char volume;
 if (ReadTape(volume)==false) return(true);//лента закончилась
 return(false);//лента не закончилась
}
unsigned char CTape::GetLevel(int Step)
{
 unsigned long h_p=HeadPosition;
 int n;
 unsigned long level=0;
 int max=0;
 int min=255;
 if (h_p+Step>=TapeLength) h_p=TapeLength-Step;
 if (TapeLength<Step)
 {
  h_p=0;
  Step=TapeLength;
 }
 for(n=0;n<Step;n++,h_p++)
 {
  int volume=TapeData[h_p];//для моно
  level+=volume;
  if (volume>max) max=volume;
  if (volume<min) min=volume;
 }
 if (n!=0) level/=n;
 int center=(max+min)/2; 
 level=center;
 return((unsigned char)level);
}
bool CTape::SetUseChannel(bool use_left_channel,bool use_right_channel)
{
 UseLeftChannel=use_left_channel;
 UseRightChannel=use_right_channel;
 return(true);
}
long CTape::GetHeadPosition(void)
{
 return(HeadPosition);
}
void CTape::CreateFilter(float FMin,float FMax)
{
 float f0=(FMin+FMax)/2.0;//относительная центральная частота
 float fs=(FMax-FMin)/2.0;//относительная полоса среза
 f0/=(44100.0/2.0);//нужно ли частоту выборки делить на два?
 fs/=(44100.0/2.0);
 BP_Filter_Init(fs,f0);

 FILE *file=fopen("filter.txt","wb");
 fprintf(file,"F0=%f Fs=%f\r\n",f0,fs);
 for(long n=0;n<7;n++) fprintf(file,"B[%i]=%f A[%i]=%f\r\n",n+1,B[n],n+1,A[n]);
 fclose(file);

}

void CTape::BP_Filter_Init(float Fs,float F0)
{
 double z=Fs*0.5*M_PI;
 double Beta=tan(z);
 double zz=-2.0/cos(z);
 double b1=2.0*Beta;
 double b3=Beta*Beta;
 double b2=2.0*b3;
 b3=Beta*b3;
 double a0=1.0/(1.0+b1+b2+b3);
 A[0]=1.0;
 double a1=a0*(3.0+2.0*b1+b2);
 double a5=a0*(3.0-2.0*b1+b2);
 A[6]=a0*(1.0-b1+b2-b3);
 B[0]=b3*a0;
 B[1]=0.0;
 B[2]=-3.0*B[0];
 B[3]=0.0;
 B[4]=-B[2];
 B[5]=0.0;
 B[6]=-B[0]; 

 double Psi=cos(F0*M_PI)*zz;
 double Psi2=Psi*Psi;
 A[1]=Psi*a1;
 A[2]=a0*((Psi2+1.0)*(3.0+b1)-b2-3.0*b3);
 A[3]=a0*Psi*(Psi2+6.0-2*b2);
 A[4]=a0*((Psi2+1.0)*(3.0-b1)-b2+3.0*b3);
 A[5]=Psi*a5;
}
float CTape::IIRFilter(float NewSample)
{
 //return(NewSample);
 return(iir(NewSample));

 static double y[7]={0,0,0,0,0,0,0};//выходной сигнал
 static double x[7]={0,0,0,0,0,0,0};//входной сигнал
 for(long n=6;n>0;n--)
 {
  x[n]=x[n-1];
  y[n]=y[n-1];
 }
 x[0]=NewSample;
 y[0]=B[0]*x[0];
 for(n=1;n<=6;n++) y[0]+=B[n]*x[n]-A[n]*y[n];
 return(y[0]);
}