#ifndef CAUTOMATH_H
#define CAUTOMATH_H

#include "ccontainer.h"
#include <stdio.h>
#include <memory.h>
#include <string.h>

//структура правил перехода автомата
struct SRule
{
 SRule *Next;//следующее правило
 SRule *Prior;//предыдущее правило

 char *CurrentState;//текущее состояние
 char *NextState;//следующее состояние

 unsigned int InputSymbolFirst;//начальный символ перехода
 unsigned int InputSymbolLast;//конечный символ перехода
 bool NextTypeState;//true-состояние допускающее
};
//класс детерминированного конечного автомата
class CAutomath
{
 protected:
  char *State;//текущее состояние
  bool TypeState;//тип состояния
  SRule *sRulePtr;//текущее состояние 
  CContainerList<SRule> cContainerList_Rule;//правила автомата
  unsigned int *SymbolBuffer;//указатель на символьный буфер
  int SymbolAmount;//количество символов в буфере
  int MaxSymbolAmount;//максимальное количество символов в буфере
 public:
  CAutomath(void);//конструктор
  CAutomath(const CAutomath& cAutomathPtr);//конструктор копий
  CAutomath& operator=(const CAutomath& cAutomathPtr);//операция присваивания
  ~CAutomath();//деструктор

  void AddRule(char *CurrentState,char *NextState,unsigned int InputSymbolFirst,unsigned int InputSymbolLast,bool NextTypeState);//добавить правило
  void Release(void);//уничтожить правила
  void Reset(void);//сбросить автомат в исходное состояние
  bool PopSymbol(unsigned char Symbol);//подать на вход автомата символ
  bool GetTypeState(void);//получить тип состояния
  char* GetState(void);//получить состояние
  bool CompareState(char *state);//сравнить текущее состояние с заданным
  unsigned int* GetSymbolBuffer(int &Amount);//получить символьный буфер
  void SetState(char *StateName);//установить название секущего состояния
};
#endif