#include <windows.h>
#include <math.h>
#include <conio.h>
#include <stdio.h>
#include <stdlib.h>


//------------------------------------------------------------------------------
void Processing(char *FileName);
//------------------------------------------------------------------------------
int WINAPI WinMain(HINSTANCE hInstance,HINSTANCE hPrevstance,LPSTR lpstrCmdLine,int nCmdShow)
{
 WIN32_FIND_DATA wfd;
 //ищем файлы
 HANDLE Handle_Find=FindFirstFile("*.tap",&wfd);
 if (Handle_Find!=INVALID_HANDLE_VALUE)
 {
  while(1)
  {
   //это файл
   if (wfd.cFileName[0]!='.' && !(wfd.dwFileAttributes&FILE_ATTRIBUTE_DIRECTORY))
   {
    //отправляем на обработку
    char *name=new char[strlen(wfd.cFileName)+1];
    sprintf(name,"%s",wfd.cFileName);
    Processing(name);
    delete(name);
   }
   if (FindNextFile(Handle_Find,&wfd)==FALSE) break;
  }
  FindClose(Handle_Find);
 }
 MessageBox(NULL,"Обработка завершена","Ок",MB_OK);
 return(0);
}

void Processing(char *FileName)
{
 int l=strlen(FileName);	 
 FILE *file_in=fopen(FileName,"rb");
 if (file_in==NULL) return;
 FileName[l-1]='t';
 FileName[l-2]='x';
 FileName[l-3]='t';
 FILE *file_out=fopen(FileName,"wb");
 if (file_out==NULL)
 {
  fclose(file_in);
  return;
 }
 while(1)
 {
  unsigned short length;
  if (fread(&length,1,sizeof(unsigned short),file_in)<sizeof(unsigned short)) break;
  int x=0;
  fprintf(file_out,"%02x %02x\r\n",length&0xff,(length>>8)&0xff);
  for(int n=0;n<length;n++)
  {
   unsigned char a;
   if (fread(&a,1,1,file_in)<sizeof(char)) break;
   fprintf(file_out,"%02x ",a);
   x++;
   if (x==20)
   {
    fprintf(file_out,"\r\n");
	x=0;
   }
  }
  fprintf(file_out,"\r\n");
  fprintf(file_out,"\r\n");
 }
 fclose(file_out);
 fclose(file_in);
}
