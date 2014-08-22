#include <stdlib.h>

#include "IMyString.h"
#include "CMyString.h"

CMyString *
CALL
CreateObject()
{
    return new CMyString;
}

void
CALL
ReleaseObject(CMyString *pobj)
{
    if (pobj != NULL)
    {
        delete pobj;
        pobj = NULL;
    }
}