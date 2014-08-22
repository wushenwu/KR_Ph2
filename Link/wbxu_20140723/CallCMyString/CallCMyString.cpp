#include <windows.h>

#define  CALL_BY_INTERFACE

#ifdef CALL_BY_INTERFACE    
    //����CreateObject��ʹ�÷�ʽ
    #include "../CMyString_Interface/IMyString.h"
#else
    //���ݳ�Ա�����ĵ��÷�ʽ
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

//���Ա����ָ��Ķ���
typedef void (CMyString::*PFNCMyString)();
typedef void (CMyString::*PFNSetString)(const char *psz);
typedef const char *(CMyString::*PFNGetString)(void);
typedef void (CMyString::*PFNDestruct)();

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
CallByMember(void)
{
    HMODULE hModDLL = ::LoadLibrary("CMyString.dll");
    if (NULL == hModDLL)
    {
        return;
    }

    //��������Ҫ�ֶ�������ռ䣬�����ù���
    CMyString *pobj = (CMyString *)malloc(sizeof(CMyString));
    if (NULL == pobj)
    {
        return;
    }

    /*�ֶ����ù����Լ�������Ա����*/

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

    //�ֶ������������ͷ�dll����Ӧ�ռ�
    procAddr = ::GetProcAddress(hModDLL, 
                                "??1CMyString@@UAE@XZ");
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