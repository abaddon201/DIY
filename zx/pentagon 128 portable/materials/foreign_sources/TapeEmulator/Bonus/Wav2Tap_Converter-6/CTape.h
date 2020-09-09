#ifndef CTAPE_H
#define CTAPE_H

#include "stdafx.h"

class CTape
{
 protected:
  unsigned long TapeLength;//����� ������� �� �����
  unsigned char *TapeData;//������ ������� � �����
  long HeadPosition;//��������� ������� �����������
  int Channels;//����� ������� ������������ �����
  bool UseLeftChannel;//������������ �� ����� �����
  bool UseRightChannel;//������������ �� ������ �����
  //������������ ���������� ������� IIR ����������� 3 �������
  double A[7];
  double B[7];
 public:
  CTape();//�����������	 
  ~CTape();//����������
  bool LoadTape(char *FileName,float Hysteresis);//��������� ������ �����
  bool ReadTape(unsigned char &volume);//�������� ������ � �����
  bool MoveHeadForward(int step);//����������� "�������" �����������
  bool MoveHeadReverse(int step);//����������� "�������" �����������
  bool ResetHead(void);//��������� "�������" ����������� � ������ �����
  unsigned long GetTapeLength(void);//�������� ����� ������� � �����
  void Eject(void);//��������� ������ �� ������
  bool ApplyFilter(void);//��������� ������
  bool EndOfTape(void);//������, �� ����������� �� �����
  unsigned char GetLevel(int Step);//�������� ������� ������� ������� �� Step ����� �����
  bool SetUseChannel(bool use_left_channel,bool use_right_channel);//��������� ������������� �������
  long GetHeadPosition(void);//�������� ������� ������� �����������
  void CreateFilter(float FMin,float FMax);//������� ������
 protected:
  void BP_Filter_Init(float Fs,float F0);//������� ������������ �������
  float IIRFilter(float NewSample);//��������� ������
};

#endif