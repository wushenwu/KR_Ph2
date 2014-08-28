// FastString.h: interface for the CFastString class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_FASTSTRING_H__847482C4_EF96_4A98_B07B_972F58DEDEA8__INCLUDED_)
#define AFX_FASTSTRING_H__847482C4_EF96_4A98_B07B_972F58DEDEA8__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "IFastString.h"

//////////////////////////////////////////////////////////////////////////
//CFastString

class CFastString : public IFastString  
{
public:
	CFastString();
	virtual ~CFastString();

public:
    virtual HRESULT QueryInterface(REFIID iid, void **ppobj);
    virtual long AddRef();
    virtual long Release();

public:
    virtual HRESULT SetString(const char *psz) ;     
    virtual HRESULT GetLen(unsigned long *pnLen) ;    
    virtual HRESULT Find(const char *psz,               
                        unsigned long *pnIndex) ;     

protected:
    char *m_psz;
    unsigned long m_nLen;

    long m_lRefCount;
};

//////////////////////////////////////////////////////////////////////////
//CFastStringFactory
class CFastStringFactory : public IFactory
{
public:
    CFastStringFactory();
    virtual ~CFastStringFactory();

public:
    virtual HRESULT QueryInterface(REFIID iid, void **ppobj);
    virtual long AddRef();
    virtual long Release();

public:
    virtual HRESULT CreateObject(REFIID iid, void **pFastString);
    long GetRefCount() { return m_lRefCount;}

protected:
    long m_lRefCount;
};

//各功能的工厂类也需要相应的guid, 在ibase.h中

#endif // !defined(AFX_FASTSTRING_H__847482C4_EF96_4A98_B07B_972F58DEDEA8__INCLUDED_)
