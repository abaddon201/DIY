#include "cautomath.h"

CAutomath::CAutomath(void)
{
 State=NULL;

 SetState("begin");//начальное состояние
 TypeState=false;

 SymbolBuffer=NULL;
 SymbolAmount=0;
 MaxSymbolAmount=0;
}
CAutomath::CAutomath(const CAutomath& cAutomathPtr)
{
 State=NULL;
 SetState("begin");//начальное состояние
 TypeState=false;

 SymbolBuffer=NULL;
 SymbolAmount=0;
 MaxSymbolAmount=0;
 //делаем точно такой же список правил
 CContainerList<SRule> *cContainerList=(CContainerList<SRule>*)&cAutomathPtr.cContainerList_Rule;
 SRule *sRulePtr=cContainerList->GetFirstElement();
 while(sRulePtr!=NULL)
 {
  AddRule(sRulePtr->CurrentState,sRulePtr->NextState,sRulePtr->InputSymbolFirst,sRulePtr->InputSymbolLast,sRulePtr->NextTypeState);
  sRulePtr=sRulePtr->Next;
 }
}
CAutomath& CAutomath::operator=(const CAutomath& cAutomathPtr)
{
 if (this==&cAutomathPtr) return (*this);//проверка на присваивание себе
 Release();
 //делаем точно такой же список правил
 CContainerList<SRule> *cContainerList=(CContainerList<SRule>*)&cAutomathPtr.cContainerList_Rule;
 SRule *sRulePtr=cContainerList->GetFirstElement();
 while(sRulePtr!=NULL)
 {
  AddRule(sRulePtr->CurrentState,sRulePtr->NextState,sRulePtr->InputSymbolFirst,sRulePtr->InputSymbolLast,sRulePtr->NextTypeState);
  sRulePtr=sRulePtr->Next;
 }
 TypeState=cAutomathPtr.TypeState;
 SetState(cAutomathPtr.State);
 SymbolBuffer=new unsigned int[cAutomathPtr.MaxSymbolAmount];
 SymbolAmount=cAutomathPtr.SymbolAmount;
 for(int n=0;n<SymbolAmount;n++) SymbolBuffer[n]=cAutomathPtr.SymbolBuffer[n];
 return (*this);//возврат ссылки на объект 
}

CAutomath::~CAutomath()
{
 Release();
}
void CAutomath::Release(void)
{
 Reset();
 SRule *sRulePtr=cContainerList_Rule.GetFirstElement();
 while(sRulePtr!=NULL)
 {
  delete(sRulePtr->CurrentState);
  delete(sRulePtr->NextState);
  sRulePtr=sRulePtr->Next;
 }
 cContainerList_Rule.Release();
 if (State!=NULL) delete(State);
 State=NULL;
 if (SymbolBuffer!=NULL) delete(SymbolBuffer);
 SymbolBuffer=NULL;
 SymbolAmount=0;
 MaxSymbolAmount=0;
}

void CAutomath::AddRule(char *CurrentState,char *NextState,unsigned int InputSymbolFirst,unsigned int InputSymbolLast,bool NextTypeState)
{
 if (CurrentState==NULL || NextState==NULL) return;
 SRule sRule;
 sRule.CurrentState=new char[strlen(CurrentState)+1];
 strcpy(sRule.CurrentState,CurrentState);
 sRule.NextState=new char[strlen(NextState)+1];
 strcpy(sRule.NextState,NextState);

 sRule.InputSymbolFirst=InputSymbolFirst;
 sRule.InputSymbolLast=InputSymbolLast;
 sRule.NextTypeState=NextTypeState;
 cContainerList_Rule.AddElement(sRule);
}
void CAutomath::Reset(void)
{
 SymbolAmount=0;
 MaxSymbolAmount=0;
 if (SymbolBuffer!=NULL) delete(SymbolBuffer);
 SymbolBuffer=NULL;
 SetState("begin");//начальное состояние
 TypeState=false;
}
bool CAutomath::GetTypeState(void)
{
 return(TypeState);
}
bool CAutomath::PopSymbol(unsigned char Symbol)
{
 if (State==NULL) return(false);
 //перебираем правила
 SRule *sRulePtr=cContainerList_Rule.GetFirstElement();
 while(sRulePtr!=NULL)
 {
  if (strcmp(sRulePtr->CurrentState,State)==0)//состояние одинаковые
  {
   if (Symbol>=sRulePtr->InputSymbolFirst && Symbol<=sRulePtr->InputSymbolLast)
   {
    SetState(sRulePtr->NextState);
    TypeState=sRulePtr->NextTypeState;
    if (SymbolAmount>=MaxSymbolAmount)
    {
     MaxSymbolAmount+=50;
     unsigned int *bptr=SymbolBuffer;
     SymbolBuffer=new unsigned int[MaxSymbolAmount];
     if (bptr!=NULL)
     {
      memcpy(SymbolBuffer,bptr,sizeof(unsigned int)*SymbolAmount);
      delete(bptr);
     }
    }
    SymbolBuffer[SymbolAmount]=Symbol;//записываем символ в буфер
    SymbolAmount++;
    return(true);//автомат принимает символ
   }
  }
  sRulePtr=sRulePtr->Next;
 }
 SymbolAmount=0;
 MaxSymbolAmount=0;
 if (SymbolBuffer!=NULL) delete(SymbolBuffer);
 SymbolBuffer=NULL;
 return(false);//автомат отвергает символ
}
char* CAutomath::GetState(void)
{
 return(State);
}
bool CAutomath::CompareState(char *state)
{
 if (State==NULL) return(false);
 if (strcmp(State,state)==0) return(true);
 return(false);
}
unsigned int* CAutomath::GetSymbolBuffer(int &Amount)
{
 Amount=SymbolAmount;
 if (SymbolBuffer==NULL) return(NULL);
 unsigned int *buffer=new unsigned int[SymbolAmount+1];
 memcpy(buffer,SymbolBuffer,sizeof(unsigned int)*SymbolAmount);
 buffer[SymbolAmount]=0;
 return(buffer);
}
void CAutomath::SetState(char *StateName)
{
 if (State!=NULL) delete(State);
 State=new char[strlen(StateName)+1];
 strcpy(State,StateName);
}