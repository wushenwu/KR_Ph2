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
    m_nLen = strlen(psz);
    m_psz = new char[m_nLen + 1];
    if (NULL == m_psz)
    {
        return;
    }

    strcpy(m_psz, psz);
}

CFastString::~CFastString()
{
    if (m_psz != NULL)
    {
        delete[] m_psz;
        m_psz = NULL;
    }
}

int CFastString::GetLen(void)
{
    return m_nLen;
}

int CFastString::Find(const char *psz)
{
    return 0;
}
