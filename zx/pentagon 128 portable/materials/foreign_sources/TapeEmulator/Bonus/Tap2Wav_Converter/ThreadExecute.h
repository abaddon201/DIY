#ifndef THREAD_EXECUTE_H
#define THREAD_EXECUTE_H

#include "stdafx.h"
#include <string.h>

UINT ThreadExecute(LPVOID pParam);//����� ������� ��������
void AddStringInMainListBox(char *string);//�������� ������� � ������� ������
void Execute(char *Name,char *Param,char *Directory);//��������� ���������
#endif