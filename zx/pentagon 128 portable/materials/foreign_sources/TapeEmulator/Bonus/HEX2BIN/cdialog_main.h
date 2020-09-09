#ifndef CDIALOG_MAIN_H
#define CDIALOG_MAIN_H

#include "stdafx.h"
#include "cautomath.h"

class CDialog_Main:public CDialog
{
 protected:
  //-Переменные класса-------------------------------------------------------
  CEdit *cEdit_Extension;
  CAutomath cAutomath_HEX;
  //-Функции класса----------------------------------------------------------
  //-Прочее------------------------------------------------------------------
 public:
  //-Конструктор класса------------------------------------------------------
  CDialog_Main(LPCTSTR lpszTemplateName, CWnd* pParentWnd);
  //-Деструктор класса-------------------------------------------------------
  ~CDialog_Main();
  //-Переменные класса-------------------------------------------------------
  //-Замещённые функции предка-----------------------------------------------
  afx_msg void OnOK(void);
  afx_msg BOOL OnInitDialog(void);
  //-Новые функции класса----------------------------------------------------
  //-Функции обработки сообщений класса--------------------------------------
  DECLARE_MESSAGE_MAP()
  afx_msg void OnDestroy(void);
  afx_msg void OnCommand_Button_Convert(void);
  //-Новые функции класса----------------------------------------------------
  bool ProcessingFile(char *InputFileName,char *OutputFileName); 
  //-Прочее------------------------------------------------------------------
};

#endif