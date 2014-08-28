#include <windows.h>
#include <tchar.h>
#include "FastString.h"

HINSTANCE g_hDll = NULL;

const TCHAR* g_szRegTable[][3] = 
{
    {
        TEXT("CLSID\\{EE02D369-99BD-40c2-8C5B-9CFA0F3614D5}"), TEXT(0), TEXT("FastString")
    },
    {
        TEXT("CLSID\\{EE02D369-99BD-40c2-8C5B-9CFA0F3614D5}\\InprocServer32"), TEXT(0), (const TCHAR*)-1
    },
    {
        TEXT("CLSID\\{EE02D369-99BD-40c2-8C5B-9CFA0F3614D5}\\ProgID"), TEXT(0), TEXT("FastStringsrv.FastString.1")
    },
    {
        TEXT("CLSID\\{EE02D369-99BD-40c2-8C5B-9CFA0F3614D5}\\TypeLib"), TEXT(0), TEXT("{EE02D369-99BD-40c2-8C5B-9CFA0F3614D5}")
    },
    {
        TEXT("FastStringsrv.FastString"), TEXT(0), TEXT("FastString")
    },
    {
        TEXT("FastStringsrv.FastString\\CLSID"), TEXT(0), TEXT("{EE02D369-99BD-40c2-8C5B-9CFA0F3614D5}")
    },
    {
        TEXT("FastStringsrv.FastString\\CurVer"), TEXT(0), TEXT("FastStringsrv.FastString.1")
    },
    {
        TEXT("FastStringsrv.FastString.1"), TEXT(0), TEXT("{EE02D369-99BD-40c2-8C5B-9CFA0F3614D5}")
    },
    {
        TEXT("FastStringsrv.FastString.1\\CLSID"), TEXT(0), TEXT("{EE02D369-99BD-40c2-8C5B-9CFA0F3614D5}")
    }
};

int g_nCount = sizeof(g_szRegTable) / sizeof(g_szRegTable[0]);


BOOL WINAPI DllMain(
                    HINSTANCE hinstDLL,  // handle to the DLL module
                    DWORD fdwReason,     // reason for calling function
                    LPVOID lpvReserved   // reserved
                    )
{
    g_hDll = hinstDLL;
    return TRUE;
}

STDAPI DllGetClassObject(
                         REFCLSID rclsid,  //CLSID for the class object
                         REFIID riid,      //Reference to the identifier of the interface 
                         // that communicates with the class object
                         LPVOID * ppv      //Address of output variable that receives the 
                         // interface pointer requested in riid
                         )
{
    return CreateFactory(rclsid, riid, ppv);
}

STDAPI DllCanUnloadNow()
{
    //TODO
    return S_OK;
}

STDAPI DllRegisterServer(void)
{
    TCHAR szDllPath[MAX_PATH];
    DWORD dwRet = ::GetModuleFileName(g_hDll, szDllPath, MAX_PATH);
    if (0 == dwRet)
    {
        return S_FALSE;
    }
    
    const TCHAR *pszKey = NULL;
    const TCHAR *pszSubKey = NULL;
    const TCHAR *pszValue = NULL;
    LONG lRet = ERROR_SUCCESS;
    HKEY hKey = NULL;
    
    for (int i = 0; i < g_nCount; i++)
    {
        pszKey       = g_szRegTable[i][0];
        pszSubKey = g_szRegTable[i][1];
        pszValue     = g_szRegTable[i][2];
        if ((TCHAR *)-1 == pszValue)
        {
            pszValue = szDllPath;
        }
        
        lRet = ::RegCreateKey(HKEY_CLASSES_ROOT, pszKey, &hKey);
        if (lRet != ERROR_SUCCESS)
        {
            dwRet = ::GetLastError();
            DebugBreak();
            return S_FALSE;
        }
        
        lRet = ::RegSetValue(hKey, pszSubKey, REG_SZ, pszValue, _tcslen(pszValue));
        if (lRet != ERROR_SUCCESS)
        {
            dwRet = ::GetLastError();
            DebugBreak();

            ::RegCloseKey(hKey);
            return S_FALSE;
        }
        
        lRet = ::RegCloseKey(hKey);
        if (lRet != ERROR_SUCCESS)
        {
            dwRet = ::GetLastError();
            DebugBreak();
            return S_FALSE;
        }
    }
    
    return S_OK;
}

STDAPI DllUnregisterServer(void)
{
    const TCHAR *pszSubKey = NULL;
    LONG lRet = ERROR_SUCCESS;
    DWORD dwError = 0;
    
    for(int i = g_nCount - 1; i >= 0; i--)
    {
        pszSubKey = g_szRegTable[i][0];

        lRet = ::RegDeleteKey(HKEY_CLASSES_ROOT, pszSubKey);
        if (lRet != ERROR_SUCCESS)
        {
            dwError = ::GetLastError();
            DebugBreak();
            return S_FALSE;
        }
    }

    return S_OK;
}
