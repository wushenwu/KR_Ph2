// FastString.h: interface for the CFastString class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_FASTSTRING_H__14288C09_0B0B_41F8_9EE8_436E071017A1__INCLUDED_)
#define AFX_FASTSTRING_H__14288C09_0B0B_41F8_9EE8_436E071017A1__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "IFastString.h"

class CFastString : public IFastString  
{
public:
	CFastString(const char *psz);
	virtual ~CFastString();

public:
    virtual int GetLen();
    virtual int Find(const char *psz);

private:
    char *m_psz;
    int m_nLen;
};


#endif // !defined(AFX_FASTSTRING_H__14288C09_0B0B_41F8_9EE8_436E071017A1__INCLUDED_)
