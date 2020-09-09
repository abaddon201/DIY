#ifndef CAUTOMATH_H
#define CAUTOMATH_H

#include "ccontainer.h"
#include <stdio.h>
#include <memory.h>
#include <string.h>

//��������� ������ �������� ��������
struct SRule
{
 SRule *Next;//��������� �������
 SRule *Prior;//���������� �������

 char *CurrentState;//������� ���������
 char *NextState;//��������� ���������

 unsigned int InputSymbolFirst;//��������� ������ ��������
 unsigned int InputSymbolLast;//�������� ������ ��������
 bool NextTypeState;//true-��������� �����������
};
//����� ������������������ ��������� ��������
class CAutomath
{
 protected:
  char *State;//������� ���������
  bool TypeState;//��� ���������
  SRule *sRulePtr;//������� ��������� 
  CContainerList<SRule> cContainerList_Rule;//������� ��������
  unsigned int *SymbolBuffer;//��������� �� ���������� �����
  int SymbolAmount;//���������� �������� � ������
  int MaxSymbolAmount;//������������ ���������� �������� � ������
 public:
  CAutomath(void);//�����������
  CAutomath(const CAutomath& cAutomathPtr);//����������� �����
  CAutomath& operator=(const CAutomath& cAutomathPtr);//�������� ������������
  ~CAutomath();//����������

  void AddRule(char *CurrentState,char *NextState,unsigned int InputSymbolFirst,unsigned int InputSymbolLast,bool NextTypeState);//�������� �������
  void Release(void);//���������� �������
  void Reset(void);//�������� ������� � �������� ���������
  bool PopSymbol(unsigned char Symbol);//������ �� ���� �������� ������
  bool GetTypeState(void);//�������� ��� ���������
  char* GetState(void);//�������� ���������
  bool CompareState(char *state);//�������� ������� ��������� � ��������
  unsigned int* GetSymbolBuffer(int &Amount);//�������� ���������� �����
  void SetState(char *StateName);//���������� �������� �������� ���������
};
#endif