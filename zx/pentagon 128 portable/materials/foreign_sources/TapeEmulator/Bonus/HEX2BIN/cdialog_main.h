#ifndef CDIALOG_MAIN_H
#define CDIALOG_MAIN_H

#include "stdafx.h"
#include "cautomath.h"

class CDialog_Main:public CDialog
{
 protected:
  //-���������� ������-------------------------------------------------------
  CEdit *cEdit_Extension;
  CAutomath cAutomath_HEX;
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
  afx_msg void OnCommand_Button_Convert(void);
  //-����� ������� ������----------------------------------------------------
  bool ProcessingFile(char *InputFileName,char *OutputFileName); 
  //-������------------------------------------------------------------------
};

#endif