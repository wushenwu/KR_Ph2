#include <stdio.h>
#include "..\\com\\IFastString.h"

int main(void)
{
    HMODULE hDll = ::LoadLibrary("FastString.dll");
    if (NULL == hDll)
    {
        return -1;
    }

    IFastStringFactory *pFactory = NULL;
    IFastString *pFastString = NULL;
    unsigned long nLen = 0;
    HRESULT hRet = S_OK;
    int nRet = 0;

    PFNCreateFastStringFactory pfnCreateFactory 
        = (PFNCreateFastStringFactory)::GetProcAddress(hDll, "CreateFastStringFactory");
    if (NULL == pfnCreateFactory)
    {
        nRet = -1;
        goto SAFE_CLEAN;
    }

    hRet = (*pfnCreateFactory)((void **)&pFactory);
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

