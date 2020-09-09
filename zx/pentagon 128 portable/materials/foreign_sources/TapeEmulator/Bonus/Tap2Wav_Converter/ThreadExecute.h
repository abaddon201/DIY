#ifndef THREAD_EXECUTE_H
#define THREAD_EXECUTE_H

#include "stdafx.h"
#include <string.h>

UINT ThreadExecute(LPVOID pParam);//поток запуска программ
void AddStringInMainListBox(char *string);//добавить строчку в главный список
void Execute(char *Name,char *Param,char *Directory);//выполнить программу
#endif