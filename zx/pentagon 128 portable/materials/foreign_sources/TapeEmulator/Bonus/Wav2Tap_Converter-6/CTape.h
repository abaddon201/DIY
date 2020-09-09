#ifndef CTAPE_H
#define CTAPE_H

#include "stdafx.h"

class CTape
{
 protected:
  unsigned long TapeLength;//длина сигнала на ленте
  unsigned char *TapeData;//данные сигнала с ленты
  long HeadPosition;//положение головки магнитофона
  int Channels;//число каналов загруженного звука
  bool UseLeftChannel;//использовать ли левый канал
  bool UseRightChannel;//использовать ли правый канал
  //коэффициенты полосового фильтра IIR Баттерворда 3 порядка
  double A[7];
  double B[7];
 public:
  CTape();//конструктор	 
  ~CTape();//деструктор
  bool LoadTape(char *FileName,float Hysteresis);//загрузить данные ленты
  bool ReadTape(unsigned char &volume);//получить сигнал с ленты
  bool MoveHeadForward(int step);//передвинуть "головку" магнитофона
  bool MoveHeadReverse(int step);//передвинуть "головку" магнитофона
  bool ResetHead(void);//перевести "головку" магнитофона в начало ленты
  unsigned long GetTapeLength(void);//получить длину сигнала с ленты
  void Eject(void);//выгрузить данные из памяти
  bool ApplyFilter(void);//применить фильтр
  bool EndOfTape(void);//узнать, не закончилась ли лента
  unsigned char GetLevel(int Step);//получить средний уровень сигнала на Step шагов вперёд
  bool SetUseChannel(bool use_left_channel,bool use_right_channel);//разрешить использование каналов
  long GetHeadPosition(void);//получить позицию головки магнитофона
  void CreateFilter(float FMin,float FMax);//создать фильтр
 protected:
  void BP_Filter_Init(float Fs,float F0);//создать коэффициенты фильтра
  float IIRFilter(float NewSample);//применить фильтр
};

#endif