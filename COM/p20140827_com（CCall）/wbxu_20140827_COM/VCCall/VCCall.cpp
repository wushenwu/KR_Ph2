#include <stdio.h>
#include "..\\com\\IFastString.h"

TCHAR *g_szRegTable[][2] = 
{
    {
        TEXT("CLSID\\{EE02D369-99BD-40c2-8C5B-9CFA0F3614D5}\\InprocServer32"), TEXT(0)
    }
};

int g_nCount = sizeof(g_szRegTable) / sizeof(g_szRegTable[0]);

HMODULE *g_phDll = NULL;

void LoadDllByReg()
{
    g_phDll = new HMODULE[g_nCount];
    if (NULL == g_phDll)
    {
        return;
    }

    memset(g_phDll, 0, sizeof(HMODULE) * g_nCount);

    const TCHAR *pszKey       = NULL;
    const TCHAR *pszSubKey    = NULL;
    TCHAR szValue[MAX_PATH];
    LONG  nLen          = MAX_PATH;
    HKEY hKey           = NULL;
    LONG lRet           = ERROR_SUCCESS;
    DWORD dwErr          = 0;

    for (int i = 0; i < g_nCount; i++)
    {
        pszKey    = g_szRegTable[i][0];
        pszSubKey = g_szRegTable[i][1];

        lRet = ::RegOpenKey(HKEY_CLASSES_ROOT, pszKey, &hKey);
        if (lRet != ERROR_SUCCESS)
        {
            dwErr = GetLastError();
            DebugBreak();
            continue;
        }

        lRet = ::RegQueryValue(hKey, pszSubKey, szValue, &nLen);
        if (lRet != ERROR_SUCCESS)
        {
            dwErr = GetLastError();
            DebugBreak();

            ::RegCloseKey(hKey);
            continue;
        }

        //Load dll now
        g_phDll[i] = ::LoadLibrary(szValue);
        if (NULL == g_phDll)
        {
            dwErr = GetLastError();
            DebugBreak();
        }

        ::RegCloseKey(hKey);
    }
}

int main(void)
{
#define  USE_REG
#ifdef USE_REG
    LoadDllByReg();

    HMODULE hDll = g_phDll[0];

#else
    HMODULE hDll = ::LoadLibrary("FastString.dll");
    
#endif

    if (NULL == hDll)
    {
        return -1;
    }
    
    IFactory *pFactory = NULL;
    IFastString *pFastString = NULL;
    unsigned long nLen = 0;
    HRESULT hRet = S_OK;
    int nRet = 0;
    
    PFNCreateFactory pfnCreateFactory = (PFNCreateFactory)::GetProcAddress(hDll, 
                                                    "DllGetClassObject");
    if (NULL == pfnCreateFactory)
    {
        nRet = -1;
        goto SAFE_CLEAN;
    }
    
    //注意调用约定
    hRet = (*pfnCreateFactory)(CLSID_CFastStringFactory,    
                            IID_IFactory, 
                            (void **)&pFactory);
    if (hRet != S_OK)
    {
        nRet = -1;
        goto SAFE_CLEAN;
    }
    
    hRet = pFactory->CreateObject(IID_IFastString, (void **)&pFastString);
    if (hRet != NULL)
    {
        nRet = -1;
        goto SAFE_CLEAN;
    }
    
    hRet = pFastString->SetString("Say Hello!!");
    if (hRet != S_OK )
    {
        nRet = -1;
        goto SAFE_CLEAN;
    }
    
    hRet = pFastString->GetLen(&nLen);
    printf("len: %ld\r\n", nLen);
    
SAFE_CLEAN:
    if (pFactory != NULL)
    {
        pFactory->Release();
    }
    
    if (pFastString != NULL)
    {
        pFastString->Release();
    }
    
    ::FreeLibrary(hDll);
    return nRet;
}
