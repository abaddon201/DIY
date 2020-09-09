#include "cdialog_main.h"

//-������� ��������� ��������� ������----------------------------------------
BEGIN_MESSAGE_MAP(CDialog_Main,CDialog)
 ON_WM_DESTROY()
 ON_COMMAND(IDC_BUTTON_CREATE_TAP,OnCommand_Button_CreateTap)
END_MESSAGE_MAP()
//-����������� ������--------------------------------------------------------
CDialog_Main::CDialog_Main(LPCTSTR lpszTemplateName, CWnd* pParentWnd):CDialog(lpszTemplateName,pParentWnd)
{
}
//-���������� ������---------------------------------------------------------
CDialog_Main::~CDialog_Main()
{
}
//-���������� ������� ������-------------------------------------------------
afx_msg void CDialog_Main::OnOK(void)
{

}
afx_msg BOOL CDialog_Main::OnInitDialog(void)
{
 //����������� �������� ����������
 ((CEdit*)GetDlgItem(IDC_EDIT_ZERO_MIN))->SetLimitText(5);
 ((CEdit*)GetDlgItem(IDC_EDIT_ZERO_MAX))->SetLimitText(5);
 ((CEdit*)GetDlgItem(IDC_EDIT_ONE_MIN))->SetLimitText(5);
 ((CEdit*)GetDlgItem(IDC_EDIT_ONE_MAX))->SetLimitText(5);
 ((CEdit*)GetDlgItem(IDC_EDIT_LEAD_MIN))->SetLimitText(5);
 ((CEdit*)GetDlgItem(IDC_EDIT_LEAD_MAX))->SetLimitText(5);
 ((CEdit*)GetDlgItem(IDC_EDIT_SYNCHRO_MIN))->SetLimitText(5);
 ((CEdit*)GetDlgItem(IDC_EDIT_SYNCHRO_MAX))->SetLimitText(5);
 ((CEdit*)GetDlgItem(IDC_EDIT_HYSTERESIS))->SetLimitText(5);
 ((CEdit*)GetDlgItem(IDC_EDIT_FILTER_F_MIN))->SetLimitText(10);
 ((CEdit*)GetDlgItem(IDC_EDIT_FILTER_F_MAX))->SetLimitText(10);

 ((CEdit*)GetDlgItem(IDC_EDIT_ZERO_MIN))->SetWindowText("1");
 ((CEdit*)GetDlgItem(IDC_EDIT_ZERO_MAX))->SetWindowText("15");
 ((CEdit*)GetDlgItem(IDC_EDIT_ONE_MIN))->SetWindowText("16");
 ((CEdit*)GetDlgItem(IDC_EDIT_ONE_MAX))->SetWindowText("65");
 ((CEdit*)GetDlgItem(IDC_EDIT_LEAD_MIN))->SetWindowText("23");
 ((CEdit*)GetDlgItem(IDC_EDIT_LEAD_MAX))->SetWindowText("35");
 ((CEdit*)GetDlgItem(IDC_EDIT_SYNCHRO_MIN))->SetWindowText("1");
 ((CEdit*)GetDlgItem(IDC_EDIT_SYNCHRO_MAX))->SetWindowText("15");
 ((CEdit*)GetDlgItem(IDC_EDIT_HYSTERESIS))->SetWindowText("2");

 ((CEdit*)GetDlgItem(IDC_EDIT_FILTER_F_MIN))->SetWindowText("100");
 ((CEdit*)GetDlgItem(IDC_EDIT_FILTER_F_MAX))->SetWindowText("2000");

 ((CButton*)GetDlgItem(IDC_CHECK_USE_LEFT_CHANNEL))->SetCheck(1);
 ((CButton*)GetDlgItem(IDC_CHECK_USE_RIGHT_CHANNEL))->SetCheck(1);
 return(CDialog::OnInitDialog());
}
//-����� ������� ������------------------------------------------------------
//-������� ��������� ��������� ������----------------------------------------
afx_msg void CDialog_Main::OnDestroy(void)
{
 CDialog::OnDestroy();
}
afx_msg void CDialog_Main::OnCommand_Button_CreateTap(void)
{
 //��������� ���������
 float ZeroMin;
 float ZeroMax;
 float OneMin;
 float OneMax;
 float LeadMin;
 float LeadMax;
 float SynchroMin;
 float SynchroMax;
 float Hysteresis;
 float FMin;
 float FMax;

 char string[255];
 ((CEdit*)GetDlgItem(IDC_EDIT_ZERO_MIN))->GetWindowText(string,255);
 ZeroMin=(float)atof(string);
 ((CEdit*)GetDlgItem(IDC_EDIT_ZERO_MAX))->GetWindowText(string,255);
 ZeroMax=(float)atof(string);

 ((CEdit*)GetDlgItem(IDC_EDIT_ONE_MIN))->GetWindowText(string,255);
 OneMin=(float)atof(string);
 ((CEdit*)GetDlgItem(IDC_EDIT_ONE_MAX))->GetWindowText(string,255);
 OneMax=(float)atof(string);
 
 ((CEdit*)GetDlgItem(IDC_EDIT_LEAD_MIN))->GetWindowText(string,255);
 LeadMin=(float)atof(string);
 ((CEdit*)GetDlgItem(IDC_EDIT_LEAD_MAX))->GetWindowText(string,255);
 LeadMax=(float)atof(string);

 ((CEdit*)GetDlgItem(IDC_EDIT_SYNCHRO_MIN))->GetWindowText(string,255);
 SynchroMin=(float)atof(string);
 ((CEdit*)GetDlgItem(IDC_EDIT_SYNCHRO_MAX))->GetWindowText(string,255);
 SynchroMax=(float)atof(string);

 ((CEdit*)GetDlgItem(IDC_EDIT_HYSTERESIS))->GetWindowText(string,255);
 Hysteresis=(float)atof(string);

 ((CEdit*)GetDlgItem(IDC_EDIT_FILTER_F_MIN))->GetWindowText(string,255);
 FMin=(float)atof(string);
 ((CEdit*)GetDlgItem(IDC_EDIT_FILTER_F_MAX))->GetWindowText(string,255);
 FMax=(float)atof(string);

 bool use_left_channel=false;
 bool use_right_channel=false;
 if (((CButton*)GetDlgItem(IDC_CHECK_USE_LEFT_CHANNEL))->GetCheck()) use_left_channel=true;
 if (((CButton*)GetDlgItem(IDC_CHECK_USE_RIGHT_CHANNEL))->GetCheck()) use_right_channel=true;

 if (SynchroMin>SynchroMax)
 {
  MessageBox("����������� ������� ������������� ������ ������������!","������",MB_OK);
  return;
 }
 if (ZeroMin>ZeroMax)
 {
  MessageBox("����������� ������� ���� ������ ������������!","������",MB_OK);
  return;
 }
 if (OneMin>OneMax)
 {
  MessageBox("����������� ������� ������� ������ ������������!","������",MB_OK);
  return;
 }
 if (LeadMin>LeadMax)
 {
  MessageBox("����������� ������� �����-���� ������ ������������!","������",MB_OK);
  return;
 }
 if (FMin>FMax)
 {
  MessageBox("����������� ������� ����� ������ ������������!","������",MB_OK);
  return;
 }
 CFileDialog cFileDialog(TRUE,"","",OFN_HIDEREADONLY|OFN_OVERWRITEPROMPT,"*.wav|*.wav||",this);
 char Title[256];
 strcpy(Title,"����� ��������� ����� ��� �����������");
 cFileDialog.m_ofn.lpstrTitle=Title;
 if (cFileDialog.DoModal()!=IDOK) return;
 CTape cTape;
 cTape.CreateFilter(FMin,FMax);
 cTape.SetUseChannel(use_left_channel,use_right_channel);
 char *FileName=new char[strlen(cFileDialog.GetFileName())+1];
 strcpy(FileName,cFileDialog.GetFileName());
 if (cTape.LoadTape(FileName,Hysteresis)==false)
 {
  delete(FileName);
  MessageBox("�� ���� ������� ���� ����.\n���������, �� ������������ �� �� ��������� ����������\n��� ��� ��������� �� ������������� '�� ������/44100/8/����(������)'","������",MB_OK);
 }
 char *FileTitle=new char[strlen(cFileDialog.GetFileTitle())+1];
 strcpy(FileTitle,cFileDialog.GetFileTitle());
 cTape.ResetHead();
 //������������ ����
 if (CreateTapFile(FileTitle,&cTape,ZeroMin,ZeroMax,OneMin,OneMax,LeadMin,LeadMax,SynchroMin,SynchroMax)==false)
 {
  MessageBox("�� ���� ������� tap-����/txt-���� ������!","������",MB_OK);
  delete(FileName);
  delete(FileTitle);
  return;
 }
 delete(FileName);
 delete(FileTitle);
 MessageBox("�������� tap-����� � txt-����� ������ ���������.","���������",MB_OK);
}
//-����� ������� ������------------------------------------------------------
bool CDialog_Main::GetSignalLength_Single(CTape *cTape,int &LengthSearch,int &Length,unsigned char &CurrentSignal)
{
 while(LengthSearch>0)
 {
  unsigned char volume;
  if (cTape->ReadTape(volume)==false) return(false);//������ �����������
  //���������� � �������� �������
  if (volume>127) volume=1;
             else volume=0;
  if (CurrentSignal!=volume)//������� �������
  {   
   CurrentSignal=volume;
   return(true);
  }
  cTape->MoveHeadForward(1);
  LengthSearch--;
  Length++;
 }
 return(false);
}
bool CDialog_Main::GetSignalLength_Double(CTape *cTape,int &LengthSearch,int &Length,unsigned char &CurrentSignal)
{
 if (GetSignalLength_Single(cTape,LengthSearch,Length,CurrentSignal)==false) return(false);
 if (GetSignalLength_Single(cTape,LengthSearch,Length,CurrentSignal)==false) return(false);
 return(true);
}

bool CDialog_Main::CreateTapFile(char *FileTitle,CTape *cTape,float ZeroMin,float ZeroMax,float OneMin,float OneMax,float LeadMin,float LeadMax,float SynchroMin,float SynchroMax)
{
 int n=0;
 char *FileName_Txt=new char[strlen(FileTitle)+255];
 sprintf(FileName_Txt,"%s.txt",FileTitle);
 FILE *file_txt=fopen(FileName_Txt,"wb");
 delete(FileName_Txt);
 if (file_txt==NULL) return(false);

 unsigned char Signal=0;
 int SearchLength=0;
 int Length=0;
 while(cTape->EndOfTape()==false)
 {  
  //��� ��������� �������
  while(cTape->EndOfTape()==false)
  {
   Length=0;
   SearchLength=LeadMax*3;
   if (GetSignalLength_Single(cTape,SearchLength,Length,Signal)==true) break;//���������
  }
  //����� � 1 ������� ����� ����������� ������
  for(int n=0;n<44100;n++)
  {
   unsigned char volume;
   if (cTape->ReadTape(volume)==false) break;//������ �����������
  }
  SearchLength=LeadMax*3;
  Length=0;
  if (GetSignalLength_Double(cTape,SearchLength,Length,Signal)==false) continue;
  //��������� �����-���
  for(n=0;n<256;n++)
  {
   SearchLength=LeadMax*3;
   Length=0;
   if (GetSignalLength_Double(cTape,SearchLength,Length,Signal)==false) break;
   if (Length>LeadMax*2 && Length<LeadMin*2) break;//��������� �����-���
  }
  if (n!=256) continue;
  //��������� ������������
  bool error=false;
  while(cTape->EndOfTape()==false)
  {
   SearchLength=SynchroMax*2.2;
   Length=0;
   if (GetSignalLength_Single(cTape,SearchLength,Length,Signal)==false)
   {
    error=true;
	break;
   }
   if (Length<SynchroMax && Length>=SynchroMin) break;//������������ ������
  }
  if (error==true) continue;//����
  if (GetSignalLength_Single(cTape,SearchLength,Length,Signal)==false) continue;//������ ����� �������������
  fprintf(file_txt,"\r\n-----������������ ������ -----\r\n");
  //��������� ������
  vector<unsigned char> vector_Data;
  vector_Data.clear();
  unsigned char byte=0;
  unsigned char byte_counter=0;
  while(cTape->EndOfTape()==false)
  {
   SearchLength=OneMax*2.2;
   Length=0;
   if (GetSignalLength_Double(cTape,SearchLength,Length,Signal)==false) break;
   unsigned char e=0;
   if (Length>=ZeroMin*2 && Length<=ZeroMax*2)
   {
    byte=byte<<1;
    byte|=0;
	byte_counter++;
   }
   else e++;
   if (Length>=OneMin*2 && Length<=OneMax*2)
   {
    byte=byte<<1;
    byte|=1;
	byte_counter++;
   }
   else e++;
   if (byte_counter==8)
   {
    vector_Data.push_back(byte);
    byte=0;
    byte_counter=0;
   }
   if (e>=2) break;//������
  }
  //��������� ������
  int size=vector_Data.size();
  if (size>0)//������ ����
  {
   unsigned char crc=0;
   for(n=0;n<size-1;n++) crc^=vector_Data[n];
   //��������� ������
   fprintf(file_txt,"����� ������ � �����:%i �.\r\n",(cTape->GetHeadPosition())/44100);

   fprintf(file_txt,"�������:%i (0x%04x) ����\r\n",size,size);
   if (crc!=vector_Data[size-1])
   {
    fprintf(file_txt,"������ ������! CRC:%02x; � �����:%02x\r\n",crc,vector_Data[size-1]);
	vector_Data.clear(); 
    continue;
   }

   if (size==19 && vector_Data[0]==0)//��� ���������
   {
    char name[11]={0,0,0,0,0,0,0,0,0,0,0};
    for(n=0;n<10;n++) name[n]=vector_Data[n+2];
	if (vector_Data[1]==0) fprintf(file_txt,"Programm:%s\r\n",name);
	if (vector_Data[1]==3) fprintf(file_txt,"Bytes:%s\r\n",name);
   }
   fprintf(file_txt,"%02x %02x\r\n",size&0xff,(size>>8)&0xff);
   int x=0;
   for(n=0;n<size;n++,x++)
   {
    if (x==30)
	{
     x=0;
	 fprintf(file_txt,"\r\n");
	}
    fprintf(file_txt,"%02x ",vector_Data[n]);
   }
   fprintf(file_txt,"\r\n");
   if (crc!=vector_Data[size-1]) fprintf(file_txt,"������ ������! CRC:%02x; � �����:%02x\r\n",crc,vector_Data[size-1]);
                            else fprintf(file_txt,"������ ���.\r\n");
   vector_Data.clear();  
  }
 }
 fclose(file_txt);
 return(true);
}


//-������--------------------------------------------------------------------
