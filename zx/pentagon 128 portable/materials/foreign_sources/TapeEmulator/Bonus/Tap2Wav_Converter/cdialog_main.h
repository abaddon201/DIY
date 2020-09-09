#ifndef CDIALOG_MAIN_H
#define CDIALOG_MAIN_H

#include "stdafx.h"
#include "threadexecute.h"

class CDialog_Main:public CDialog
{
 protected:
  //-���������� ������-------------------------------------------------------
  CButton *cButton_StartStop;//������ ������/���������
  CListBox *cListBox_Main;//������ ���������� �������

  CButton *cButton_Pack;//����������
  CButton *cButton_UnPack;//�����������
  CButton *cButton_Processing;//����������

  CWinThread *cWinThread_ThreadExecute;//����� ������� ��������
  //-������� ������----------------------------------------------------------
  //-������------------------------------------------------------------------
 public:
  //-����������� ������------------------------------------------------------
  CDialog_Main(LPCTSTR lpszTemplateName,CWnd* pParentWnd);
  //-���������� ������-------------------------------------------------------
  ~CDialog_Main();
  //-���������� ������-------------------------------------------------------
  //-���������� ������� ������-----------------------------------------------
  afx_msg void OnOK(void);
  afx_msg void OnCancel(void);
  afx_msg void OnClose(void);
  afx_msg BOOL OnInitDialog(void);
  //-����� ������� ������----------------------------------------------------
  //-������� ��������� ��������� ������--------------------------------------
  DECLARE_MESSAGE_MAP()
  afx_msg void OnCommand_Button_StartStop(void);
  afx_msg void OnTimer(UINT nIDEvent);
  //-����� ������� ������----------------------------------------------------
 protected:
  void ThreadExecuteEnd(void);//��������� ����� ������� �������
  //-������------------------------------------------------------------------
 protected:  	  
};

#endif