#ifndef CDIALOG_MAIN_H
#define CDIALOG_MAIN_H

#include "stdafx.h"
#include "threadexecute.h"

class CDialog_Main:public CDialog
{
 protected:
  //-Переменные класса-------------------------------------------------------
  CButton *cButton_StartStop;//кнопка начала/окончания
  CListBox *cListBox_Main;//список выполнения задания

  CButton *cButton_Pack;//запаковать
  CButton *cButton_UnPack;//распаковать
  CButton *cButton_Processing;//обраюотать

  CWinThread *cWinThread_ThreadExecute;//поток запуска программ
  //-Функции класса----------------------------------------------------------
  //-Прочее------------------------------------------------------------------
 public:
  //-Конструктор класса------------------------------------------------------
  CDialog_Main(LPCTSTR lpszTemplateName,CWnd* pParentWnd);
  //-Деструктор класса-------------------------------------------------------
  ~CDialog_Main();
  //-Переменные класса-------------------------------------------------------
  //-Замещённые функции предка-----------------------------------------------
  afx_msg void OnOK(void);
  afx_msg void OnCancel(void);
  afx_msg void OnClose(void);
  afx_msg BOOL OnInitDialog(void);
  //-Новые функции класса----------------------------------------------------
  //-Функции обработки сообщений класса--------------------------------------
  DECLARE_MESSAGE_MAP()
  afx_msg void OnCommand_Button_StartStop(void);
  afx_msg void OnTimer(UINT nIDEvent);
  //-Новые функции класса----------------------------------------------------
 protected:
  void ThreadExecuteEnd(void);//отключить поток запуска заданий
  //-Прочее------------------------------------------------------------------
 protected:  	  
};

#endif