// FastString.cpp: implementation of the CFastString class.
//
//////////////////////////////////////////////////////////////////////
#include "FastString.h"

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CFastString::CFastString()
{
    m_psz = NULL;
    m_nLen = 0;

    m_pRefCount = NULL;
    m_pRefCount = new long;
    if (m_pRefCount != NULL)
    {
        *m_pRefCount = 0;
    }
}

CFastString::~CFastString()
{
    if (m_psz != NULL)
    {
        delete[] m_psz;
        m_psz = NULL;
    } 

    if (m_pRefCount != NULL)
    {
        delete m_pRefCount;
        m_pRefCount = NULL;
    }
}

HRESULT CFastString::QueryInterface(REFIID iid, void **ppobj)
{
    if (0 == memcmp(&IID_IBase, &iid, sizeof(IID)))
    {
        *ppobj = static_cast<IBase *>(this);
    }
    else if (0 == memcmp(&IID_IFastString, &iid, sizeof(IID)))
    {
        *ppobj = static_cast<IFastString *>(this);
    }
    else
    {
        *ppobj = NULL;
        return S_FALSE;
    }

    //增加计数
    AddRef();

    return S_OK;
}

long CFastString::AddRef()
{
    if (NULL == m_pRefCount)
    {
        //sth wrong
        DebugBreak();
        return 0;
    }

    ++*m_pRefCount;
    return *m_pRefCount;
}

long CFastString::Release()
{
    if (NULL == m_pRefCount)
    {
        DebugBreak();
        return 0;
    }

    if (0 == --*m_pRefCount)
    {
        delete this;
        return 0;
    }

    return *m_pRefCount;
}

HRESULT CFastString::SetString(const char *psz) 
{
    if (NULL == psz)
    {
        return ERROR_INVALID_DATA;
    }

    m_nLen = strlen(psz);
    m_psz = new char[m_nLen + 1];
    if (NULL == m_psz)
    {
        return E_OUTOFMEMORY;
    }

    strcpy(m_psz, psz);

    return S_OK;
}   
 
HRESULT CFastString::GetLen(unsigned long *pnLen) 
{
    *pnLen = m_nLen;
    return S_OK;
}

HRESULT CFastString::Find(const char *psz,               
                        unsigned long *pnIndex) 
{
    if (NULL == psz)
    {
        return ERROR_INVALID_DATA;
    }

    char *p = strstr(m_psz, psz);
    if (NULL == p)
    {
        *pnIndex = -1;
        return ERROR_NOT_FOUND;
    }

    *pnIndex = p - m_psz;
    return S_OK;
}

//////////////////////////////////////////////////////////////////////////
//FastStringFactory
CFastStringFactory::CFastStringFactory()
{
    m_pRefCount = NULL;
    m_pRefCount = new long;
    if (m_pRefCount != NULL)
    {
        *m_pRefCount = 0;
    }
}

CFastStringFactory::~CFastStringFactory()
{
    if (m_pRefCount != NULL)
    {
        delete m_pRefCount;
        m_pRefCount = NULL;
    }     
}

HRESULT CFastStringFactory::QueryInterface(REFIID iid, void **ppobj)
{
    if (0 == memcmp(&IID_IBase, &iid, sizeof(IID)))
    {
        *ppobj = static_cast<IBase *>(this);
    }
    else if (0 == memcmp(&IID_IFastStringFactory, &iid, sizeof(IID)))
    {
        *ppobj = static_cast<IFastStringFactory *>(this);
    }
    else
    {
        *ppobj = NULL;
        return S_FALSE;
    }

    //增加计数
    AddRef();

    return S_OK;       
}

long CFastStringFactory::AddRef()
{
    if (NULL == m_pRefCount)
    {
        //sth wrong
        DebugBreak();
        return 0;
    }

    ++(*m_pRefCount);
    return 0;
}

long CFastStringFactory::Release()
{
    if (NULL == m_pRefCount)
    {
        DebugBreak();
        return 0;
    }

    if (0 == --*m_pRefCount)
    {
        delete this;
        return 0;
    }

    return *m_pRefCount;   
}

HRESULT CFastStringFactory::CreateObject(REFIID iid, void **pFastString)
{
    CFastString *ptmp = new CFastString();
    if (NULL == ptmp)
    {
        *pFastString = NULL;
        return E_OUTOFMEMORY;
    }

    return ptmp->QueryInterface(iid, pFastString);
}

HRESULT CreateFastStringFactory(void **ppFactory)
{
    //仅创建一次，产生一个工厂类对象即可
    static CFastStringFactory *pFactory = new CFastStringFactory();
    if (NULL == pFactory)
    {
        *ppFactory = ppFactory;
        return E_OUTOFMEMORY;
    }

    return pFactory->QueryInterface(IID_IFastStringFactory, ppFactory);
}