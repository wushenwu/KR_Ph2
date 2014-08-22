#include <windows.h>

#define  CALL_BY_INTERFACE

#ifdef CALL_BY_INTERFACE    
    //根据CreateObject的使用方式
    #include "../CMyString_Interface/IMyString.h"
#else
    //根据成员函数的调用方式
    #include "../CMyString/CMyString.h" 
#endif

#ifdef CALL_BY_INTERFACE
void
CallByInterface(void)
{
    HMODULE hModDLL = ::LoadLibrary("CMyString.dll");
    if (NULL == hModDLL)
    {
        return;
    }
    
    PFNCreateObject pfnCreateObject = (PFNCreateObject)::GetProcAddress(hModDLL,
                                                                         "_CreateObject@0");
    
    PFNReleaseObject pfnReleaseObject = (PFNReleaseObject)::GetProcAddress(hModDLL,
                                                                            "_ReleaseObject@4");
    if (NULL == pfnCreateObject
        || NULL == pfnReleaseObject)
    {
        return;
    }
    
    CMyString *pstr = (*pfnCreateObject)();
    if (NULL == pstr)
    {
        return;
    }
    
    pstr->SetString("Say");
    pstr->StringCat(" Hello!!");
    ::MessageBox(NULL, pstr->GetString(), NULL, MB_OK);
    
    (*pfnReleaseObject)(pstr);    
    
    FreeLibrary(hModDLL);
}
#endif

#ifndef CALL_BY_INTERFACE

//类成员函数指针的定义
typedef void (CMyString::*PFNCMyString)();
typedef void (CMyString::*PFNSetString)(const char *psz);
typedef const char *(CMyString::*PFNGetString)(void);
typedef void (CMyString::*PFNDestruct)();

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
CallByMember(void)
{
    HMODULE hModDLL = ::LoadLibrary("CMyString.dll");
    if (NULL == hModDLL)
    {
        return;
    }

    //接下来需要手动的申请空间，并调用构造
    CMyString *pobj = (CMyString *)malloc(sizeof(CMyString));
    if (NULL == pobj)
    {
        return;
    }

    /*手动调用构造以及其他成员函数*/

    FARPROC procAddr = ::GetProcAddress(hModDLL, 
                                      "??0CMyString@@QAE@XZ");
    PFNCMyString pfnCMyString = FunPtrCast<PFNCMyString>(procAddr);
    if(NULL == pfnCMyString)
    {
        return;
    }
    (pobj->*pfnCMyString)();


    procAddr = ::GetProcAddress(hModDLL,
                                "?SetString@CMyString@@UAEXPBD@Z");
    PFNSetString pfnSetString = FunPtrCast<PFNSetString>(procAddr);
    if (NULL == pfnSetString)
    {
        return;
    }
    (pobj->*pfnSetString)("Say Hello!!");

    procAddr = ::GetProcAddress(hModDLL,
                                "?GetString@CMyString@@UBEPBDXZ");
    PFNGetString pfnGetString = FunPtrCast<PFNGetString>(procAddr);
    if (NULL == pfnGetString)
    {
        return;
    }
    const char *psz = (pobj->*pfnGetString)();
    ::MessageBox(NULL, psz, NULL, MB_OK);

    //手动调用析构，释放dll的相应空间
    procAddr = ::GetProcAddress(hModDLL, 
                                "??1CMyString@@UAE@XZ");
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
#endif

int
main(void)
{
#ifdef CALL_BY_INTERFACE
    CallByInterface();
#else
    CallByMember();
#endif
    return 0;
}