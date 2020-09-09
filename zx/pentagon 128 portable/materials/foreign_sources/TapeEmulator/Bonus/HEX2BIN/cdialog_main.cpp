#include "cdialog_main.h"

//-Функции обработки сообщений класса----------------------------------------
BEGIN_MESSAGE_MAP(CDialog_Main,CDialog)
 ON_WM_DESTROY()
 ON_COMMAND(IDC_BUTTON_CONVERT,OnCommand_Button_Convert)
END_MESSAGE_MAP()
//-Конструктор класса--------------------------------------------------------
CDialog_Main::CDialog_Main(LPCTSTR lpszTemplateName, CWnd* pParentWnd):CDialog(lpszTemplateName,pParentWnd)
{
 //создаём автоматы
 cAutomath_HEX.AddRule("begin","st",'0','9',false);
 cAutomath_HEX.AddRule("begin","st",'A','F',false);
 cAutomath_HEX.AddRule("begin","st",'a','f',false);
 cAutomath_HEX.AddRule("st","end",'0','9',true);
 cAutomath_HEX.AddRule("st","end",'A','F',true);
 cAutomath_HEX.AddRule("st","end",'a','f',true);
}
//-Деструктор класса---------------------------------------------------------
CDialog_Main::~CDialog_Main()
{
}
//-Замещённые функции предка-------------------------------------------------
afx_msg void CDialog_Main::OnOK(void)
{

}
afx_msg BOOL CDialog_Main::OnInitDialog(void)
{
 //получаем элементы управления
 cEdit_Extension=(CEdit*)GetDlgItem(IDC_EDIT_EXTENSION);
 //настраиваем элементы управления
 cEdit_Extension->SetLimitText(5);
 cEdit_Extension->SetWindowText("tap");
 return(CDialog::OnInitDialog());
}
//-Новые функции класса------------------------------------------------------
//-Функции обработки сообщений класса----------------------------------------
afx_msg void CDialog_Main::OnDestroy(void)
{
 CDialog::OnDestroy();
}
afx_msg void CDialog_Main::OnCommand_Button_Convert(void)
{
 //считываем настройки
 char extension[255];
 cEdit_Extension->GetWindowText(extension,255);
 CFileDialog cFileDialog(TRUE,"","",OFN_HIDEREADONLY|OFN_OVERWRITEPROMPT,"*.txt|*.txt||",this);
 char Title[256];
 strcpy(Title,"Выбор текстового hex-файла для конвертации");
 cFileDialog.m_ofn.lpstrTitle=Title;
 if (cFileDialog.DoModal()!=IDOK) return;
 char *InputFileName=new char[strlen(cFileDialog.GetFileName())+1];
 strcpy(InputFileName,cFileDialog.GetFileName());
 char *OutputFileName=new char[strlen(cFileDialog.GetFileName())+10];
 sprintf(OutputFileName,"%s.%s",cFileDialog.GetFileTitle(),extension);
 if (ProcessingFile(InputFileName,OutputFileName)==false)
 {
  delete(InputFileName);
  delete(OutputFileName);
  MessageBox("Не могу отурыть/создать файл.","Ошибка",MB_OK);
  return;
 }
 delete(InputFileName);
 delete(OutputFileName);
 MessageBox("Обработка завершена","Сообщение",MB_OK);
}
//-Новые функции класса------------------------------------------------------
bool CDialog_Main::ProcessingFile(char *InputFileName,char *OutputFileName)
{
 HANDLE hFile=CreateFile(InputFileName,GENERIC_READ,0,NULL,OPEN_EXISTING,FILE_ATTRIBUTE_NORMAL,NULL);
 if (hFile==INVALID_HANDLE_VALUE) return(false);//ошибка
 //читаем файл
 DWORD FileLength=GetFileSize(hFile,NULL);
 char *FileData=new char[FileLength+1];
 DWORD readen;
 ReadFile(hFile,FileData,FileLength,&readen,NULL);
 CloseHandle(hFile);
 //создаём файл
 FILE *file=fopen(OutputFileName,"wb");
 if (file==NULL) return(false);
 //анализируем файл автоматом
 cAutomath_HEX.Reset();
 for(unsigned int n=0;n<FileLength;n++)
 {
  unsigned char symbol=(unsigned char)FileData[n];
  if (cAutomath_HEX.PopSymbol(symbol)==true) 
  {
   if (cAutomath_HEX.GetTypeState()==true)
   {
    int length;
    unsigned int *buffer=cAutomath_HEX.GetSymbolBuffer(length);	
	//создаём десятичное число
	unsigned char dec=0;	
	for(int n=0;n<2;n++)
	{
     unsigned int element=buffer[n];
	 unsigned int code=0;
	 if (element>='0' && element<='9') code=element-'0';
	 if (element>='A' && element<='F') code=element-'A'+10;
	 if (element>='a' && element<='f') code=element-'a'+10;
	 if (n==0) dec+=16*code;
	 if (n==1) dec+=code;
	}
	fwrite(&dec,1,1,file);
    delete(buffer);
    cAutomath_HEX.Reset();
   }
  }
  else cAutomath_HEX.Reset();
 }
 delete(FileData);
 fclose(file);
 return(true);
}

//-Прочее--------------------------------------------------------------------
