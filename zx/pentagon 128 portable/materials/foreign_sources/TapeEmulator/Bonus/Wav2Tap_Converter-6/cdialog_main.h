#ifndef CDIALOG_MAIN_H
#define CDIALOG_MAIN_H

#include "stdafx.h"
#include "ctape.h"

#include "vector"
using namespace std;

class CDialog_Main:public CDialog
{
 protected:
  //-���������� ������-------------------------------------------------------
  //-������� ������----------------------------------------------------------
  //-������------------------------------------------------------------------
 public:
  //-����������� ������------------------------------------------------------
  CDialog_Main(LPCTSTR lpszTemplateName, CWnd* pParentWnd);
  //-���������� ������-------------------------------------------------------
  ~CDialog_Main();
  //-���������� ������-------------------------------------------------------
  //-���������� ������� ������-----------------------------------------------
  afx_msg void OnOK(void);
  afx_msg BOOL OnInitDialog(void);
  //-����� ������� ������----------------------------------------------------
  //-������� ��������� ��������� ������--------------------------------------
  DECLARE_MESSAGE_MAP()
  afx_msg void OnDestroy(void);
  afx_msg void OnCommand_Button_CreateTap(void);
  //-����� ������� ������----------------------------------------------------
  bool GetSignalLength_Single(CTape *cTape,int &LengthSearch,int &Length,unsigned char &CurrentSignal);
  bool GetSignalLength_Double(CTape *cTape,int &LengthSearch,int &Length,unsigned char &CurrentSignal);
  bool CreateTapFile(char *FileTitle,CTape *cTape,float ZeroMin,float ZeroMax,float OneMin,float OneMax,float LeadMin,float LeadMax,float SynchroMin,float SynchroMax);
  //-������------------------------------------------------------------------
};

#endif