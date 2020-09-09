#include "cdialog_main.h"

extern CEvent cEvent_ThreadExecuteExit;

HWND hWnd_ListBox_Main;

//-������� ��������� ��������� ������----------------------------------------
BEGIN_MESSAGE_MAP(CDialog_Main,CDialog)
 ON_WM_DESTROY()
 ON_WM_CLOSE()
 ON_WM_TIMER()
 ON_COMMAND(IDC_BUTTON_START_STOP,OnCommand_Button_StartStop)
END_MESSAGE_MAP()
//-����������� ������--------------------------------------------------------
CDialog_Main::CDialog_Main(LPCTSTR lpszTemplateName, CWnd* pParentWnd):CDialog(lpszTemplateName,pParentWnd)
{
 hWnd_ListBox_Main=NULL;
 cWinThread_ThreadExecute=NULL;
}
//-���������� ������---------------------------------------------------------
CDialog_Main::~CDialog_Main()
{
}
//-���������� ������� ������-------------------------------------------------
afx_msg void CDialog_Main::OnOK(void)
{
}
afx_msg void CDialog_Main::OnCancel(void)
{
}
afx_msg void CDialog_Main::OnClose(void)
{
 ThreadExecuteEnd();
 KillTimer(ID_TIMER_UPDATE);
 EndDialog(0);
}
afx_msg BOOL CDialog_Main::OnInitDialog(void)
{
 //�������� �������� ����������
 cButton_StartStop=(CButton*)GetDlgItem(IDC_BUTTON_START_STOP);
 cListBox_Main=(CListBox*)GetDlgItem(IDC_LIST_MAIN); 

 hWnd_ListBox_Main=cListBox_Main->m_hWnd;
 //��������� ������
 SetTimer(ID_TIMER_UPDATE,100,NULL);
 return(CDialog::OnInitDialog());

 //����������� �������� ����������
 return(CDialog::OnInitDialog());
}
//-������� ��������� ��������� ������----------------------------------------
afx_msg void CDialog_Main::OnCommand_Button_StartStop(void)
{
 if (cWinThread_ThreadExecute!=NULL)
 {
  ThreadExecuteEnd();
  cButton_StartStop->SetWindowText("���������");
  return;
 }
 cListBox_Main->ResetContent();
 cButton_StartStop->SetWindowText("����������"); 
 //��������� ����� ���������
 cEvent_ThreadExecuteExit.ResetEvent();
 cWinThread_ThreadExecute=AfxBeginThread((AFX_THREADPROC)ThreadExecute,0);
 cWinThread_ThreadExecute->m_bAutoDelete=FALSE;
}
afx_msg void CDialog_Main::OnTimer(UINT nIDEvent)
{
 if (nIDEvent==ID_TIMER_UPDATE)
 {
  if (cWinThread_ThreadExecute!=NULL)
  {
   if (WaitForSingleObject(cWinThread_ThreadExecute->m_hThread,0)==WAIT_OBJECT_0)//������� ��������
   {
    delete(cWinThread_ThreadExecute);
    cWinThread_ThreadExecute=NULL;
    cButton_StartStop->SetWindowText("���������");
	cListBox_Main->AddString("���������");
    cButton_StartStop->EnableWindow(FALSE);
   }
  }
 }
 CDialog::OnTimer(nIDEvent);
}
//-����� ������� ������------------------------------------------------------
void CDialog_Main::ThreadExecuteEnd(void)
{
 //�������� ����� ������ �������
 if (cWinThread_ThreadExecute!=NULL)
 {
  cEvent_ThreadExecuteExit.SetEvent();
  WaitForSingleObject(cWinThread_ThreadExecute->m_hThread,INFINITE);
  delete(cWinThread_ThreadExecute);
  cWinThread_ThreadExecute=NULL;
 }
}
//-������--------------------------------------------------------------------

