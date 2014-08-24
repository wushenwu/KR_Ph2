#include <windows.h>
//#include "..\\FastString_2\\FastString.h"
#include "..\\FastSting_4\\FastString.h"


//类成员函数指针的定义
typedef void (CFastString::*PFNCFastString)(const char *psz);
typedef (CFastString::*PFNDestruct)();
typedef int (CFastString::*PFNGetLen)();

//共用体模板实现对类成员函数指针的转换
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
    
    //接下来需要手动的申请空间，并调用构造
    CFastString *pobj = (CFastString *)malloc(sizeof(CFastString));
    if (NULL == pobj)
    {
        return;
    }
    
    /*手动调用构造以及其他成员函数*/
    
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
    
    //手动调用析构，释放dll的相应空间
    procAddr = ::GetProcAddress(hModDLL, 
        "??1CFastString@@UAE@XZ");
    PFNDestruct pfnDestruct = FunPtrCast<PFNDestruct>(procAddr);
    if (NULL == pfnDestruct)
    {
        return;
    }
    (pobj->*pfnDestruct)();
    
    //进行exe空间的释放
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