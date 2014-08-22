#include <windows.h>

#include "DLL_Hook.h"

int g_nData;

//define FUNCTION

#ifdef FUNCTION

HMODULE g_hModule;

void
LoadOriDLL(void)
{
    DebugBreak();

    if (g_hModule != NULL)
    {
        return;
    }

    g_hModule = ::LoadLibrary("OriFirstDll.dll");
    if (NULL == g_hModule)
    {
        return;   
    }
}
#endif


int* __stdcall GetData()
{
    int *pRet = NULL;

    ::MessageBox(NULL, TEXT("My GetData B4"), TEXT("Hook"), MB_OK);

#ifdef FUNCTION
    //调用原来的功能
    LoadOriDLL();

    GET_DATA pfnGetData = (GET_DATA)::GetProcAddress(g_hModule, (LPCTSTR)12);
#else
    
    HMODULE hModule = ::LoadLibrary("OriFirstDll.dll");
    if (NULL == hModule)
    {
        return NULL;
    }

    GET_DATA pfnGetData = (GET_DATA)::GetProcAddress(hModule, (LPCTSTR)12);

#endif

    if (pfnGetData != NULL)
    {
        pRet = (*pfnGetData)();
    }
    
    ::MessageBox(NULL, TEXT("My GetData Aft"), TEXT("Hook"), MB_OK);

    return pRet;
}


int __stdcall Add(int a, int b)
{
    int nRet = -1;

    ::MessageBox(NULL, TEXT("My Add B4"), TEXT("Hook"), MB_OK);

#ifdef FUNCTION
    //调用原来的功能
    LoadOriDLL();
    
    ADD pfnAdd = (ADD)::GetProcAddress(g_hModule, "Add");
#else
    
    HMODULE hModule = ::LoadLibrary("OriFirstDll.dll");
    if (NULL == hModule)
    {
        return -1;
    }
       
    DebugBreak();
    ADD pfnAdd = (ADD)::GetProcAddress(hModule, "Add");

#endif

    if (pfnAdd != NULL)
    {
        nRet = (*pfnAdd)(a, b);
    }
    
    ::MessageBox(NULL, TEXT("My Add Aft"), TEXT("Hook"), MB_OK);

    return nRet;
}

void __stdcall MyShowMsg(const char *pszMsg)
{
    ::MessageBox(NULL, TEXT("My MyShowMsg B4"), TEXT("Hook"), MB_OK);

#ifdef FUNCTION
    //调用原来的功能
    LoadOriDLL();
    
    MY_SHOW_MSG pfnMyShowMsg = (MY_SHOW_MSG)::GetProcAddress(g_hModule, "MyShowMsg");
#else
    
    HMODULE hModule = ::LoadLibrary("OriFirstDll.dll");
    if (NULL == hModule)
    {
        return;
    }
    
    MY_SHOW_MSG pfnMyShowMsg = (MY_SHOW_MSG)::GetProcAddress(hModule, "MyShowMsg");
    
#endif
    if (pfnMyShowMsg != NULL)
    {
        (*pfnMyShowMsg)(pszMsg);
    }

    ::MessageBox(NULL, TEXT("My MyShowMsg Aft"), TEXT("Hook"), MB_OK);
}

//////////////////////////////////////////////////////////////////////////
//for CTest
CTest::CTest()
{
}

CTest::CTest(int n)
{
    
}

CTest::~CTest()
{
    
}

void 
CTest::ShowMsg(const char *pszMsg)
{
}