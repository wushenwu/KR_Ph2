#include "..\\Line\\Line.h"

int
main(void)
{
    HMODULE hMod = ::LoadLibrary("Line.dll");
    if (NULL == hMod)
    {
        return;
    }

    PFNCreateShapeFactory pfnCreateShapeFactory = (PFNCreateShapeFactory)::GetProcAddress(hMod,
                                                                "CreateShapeFactory");
    if (NULL == pfnCreateShapeFactory)
    {
        return -1;
    }
    
    IShapeFactory *pobj = (*pfnCreateShapeFactory)();
    if (NULL == pobj)
    {
        return -1;
    }
    return 0;
}