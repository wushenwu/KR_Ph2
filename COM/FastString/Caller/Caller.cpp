#include <windows.h>
//#include "..\\FastString_2\\FastString.h"
#include "..\\FastSting_4\\FastString.h"


//���Ա����ָ��Ķ���
typedef void (CFastString::*PFNCFastString)(const char *psz);
typedef (CFastString::*PFNDestruct)();
typedef int (CFastString::*PFNGetLen)();

//������ģ��ʵ�ֶ����Ա����ָ���ת��
template<typename T>
T 
FunPtrCast(FARPROC procAddr)
{
    union
    {
        T clsProcAddr;
        FARPROC procAddr;
        
    }Cast;
    
    Cast.procAddr = procAddr;
    
    return Cast.clsProcAddr;
}

void
CallByMember()
{
    HMODULE hModDLL = ::LoadLibrary("FastString_2.dll");
    if (NULL == hModDLL)
    {
        return;
    }
    
    //��������Ҫ�ֶ�������ռ䣬�����ù���
    CFastString *pobj = (CFastString *)malloc(sizeof(CFastString));
    if (NULL == pobj)
    {
        return;
    }
    
    /*�ֶ����ù����Լ�������Ա����*/
    
    FARPROC procAddr = ::GetProcAddress(hModDLL, 
        "??0CFastString@@QAE@PBD@Z");
    PFNCFastString pfnCFastString = FunPtrCast<PFNCFastString>(procAddr);
    if(NULL == pfnCFastString)
    {
        return;
    }
    (pobj->*pfnCFastString)("Say Hello!!");
    
    
    procAddr = ::GetProcAddress(hModDLL,
        "?GetLen@CFastString@@QAEHXZ");
    PFNGetLen pfnGetLen = FunPtrCast<PFNGetLen>(procAddr);
    if (NULL == pfnGetLen)
    {
        return;
    }
    int nLen = (pobj->*pfnGetLen)();
    
    //�ֶ������������ͷ�dll����Ӧ�ռ�
    procAddr = ::GetProcAddress(hModDLL, 
        "??1CFastString@@UAE@XZ");
    PFNDestruct pfnDestruct = FunPtrCast<PFNDestruct>(procAddr);
    if (NULL == pfnDestruct)
    {
        return;
    }
    (pobj->*pfnDestruct)();
    
    //����exe�ռ���ͷ�
    if (pobj != NULL)
    {
        free(pobj);
        pobj = NULL;
    }
}

void test_Abstract()
{
    HMODULE hModDLL = ::LoadLibrary("FastSting_4.dll");
    if (NULL == hModDLL)
    {
        return;
    }
    
    PFNCreateObject pfnCreateObject = (PFNCreateObject)::GetProcAddress(hModDLL,
                                        "CreateObject");
    
    PFNReleaseObject pfnReleaseObject = (PFNReleaseObject)::GetProcAddress(hModDLL,
                                                            "ReleaseObject");
    if (NULL == pfnCreateObject
        || NULL == pfnReleaseObject)
    {
        return;
    }
    
    IFastString *pstr = (*pfnCreateObject)("Hello World");
    if (NULL == pstr)
    {
        return;
    }
    
    int nLen = pstr->GetLen();
    
    (*pfnReleaseObject)(pstr);    
    
    FreeLibrary(hModDLL);      
}

int
main(void)
{
    //CallByMember();

    test_Abstract();    //FastString_4

    return 0;
}