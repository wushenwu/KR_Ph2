// FastString.cpp: implementation of the CFastString class.
//
//////////////////////////////////////////////////////////////////////
#include <string.h>

#include "FastString.h"


//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CFastString::CFastString(const char *psz)
{
    m_psz = new char[strlen(psz) + 1];
    if (NULL == m_psz)
    {
        return;
    }

    strcpy(m_psz, psz);
}

CFastString::~CFastString()
{

}

int CFastString::GetLen(void)
{
    //can be improved
    return strlen(m_psz);
}

int CFastString::Find(const char *psz)
{
    return 0;
}
