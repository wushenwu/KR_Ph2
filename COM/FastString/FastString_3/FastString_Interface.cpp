// FastString_Interface.cpp: implementation of the CFastString_Interface class.
//
//////////////////////////////////////////////////////////////////////

#include "FastString_Interface.h"
#include "FastString.h"

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CFastString_Interface::CFastString_Interface(const char *psz)
{
    m_pThis = new CFastString(psz);
}

CFastString_Interface::~CFastString_Interface()
{
    delete m_pThis;
}

int CFastString_Interface::GetLen()
{
    return m_pThis->GetLen();
}

int CFastString_Interface::Find(const char *psz)
{
    return m_pThis->Find(psz);
}
