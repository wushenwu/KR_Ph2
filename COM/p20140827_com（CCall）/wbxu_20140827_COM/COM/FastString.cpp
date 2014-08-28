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

    m_lRefCount = 0;
}

CFastString::~CFastString()
{
    if (m_psz != NULL)
    {
        delete[] m_psz;
        m_psz = NULL;
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

    //���Ӽ���
    AddRef();

    return S_OK;
}

long CFastString::AddRef()
{
    return ++m_lRefCount;
}

long CFastString::Release()
{
    if (0 == --m_lRefCount)
    {
        delete this;
        return 0;
    }

    return m_lRefCount;
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
    m_lRefCount = 0;
}

CFastStringFactory::~CFastStringFactory()
{

}

HRESULT CFastStringFactory::QueryInterface(REFIID iid, void **ppobj)
{
    if (0 == memcmp(&IID_IBase, &iid, sizeof(IID)))
    {
        *ppobj = static_cast<IBase *>(this);
    }
    else if (0 == memcmp(&IID_IFactory, &iid, sizeof(IID)))
    {
        *ppobj = static_cast<IFactory *>(this);
    }
    else
    {
        *ppobj = NULL;
        return S_FALSE;
    }

    //���Ӽ���
    AddRef();

    return S_OK;       
}

long CFastStringFactory::AddRef()
{   
    return ++m_lRefCount;
}

long CFastStringFactory::Release()
{
    if (0 == --m_lRefCount)
    {
        delete this;
        return 0;
    }

    return m_lRefCount;   
}

HRESULT CFastStringFactory::CreateObject(REFIID iid, void **pFastString)
{
    //���Բ����Ķ��������������
    CFastString *ptmp = new CFastString();
    if (NULL == ptmp)
    {
        *pFastString = NULL;
        return E_OUTOFMEMORY;
    }

    return ptmp->QueryInterface(iid, pFastString);
}

/*
һ��dll�п����ж��������,��Ӧ�������Ӧ�Ĺ�����
���崴���ĸ������û�ָ��clsid   �����ԣ���ȻҪΪÿ�����ܹ�����֮��guid

*/
HRESULT __stdcall CreateFactory(REFCLSID clsid,   //�ĸ�������Ĺ���
                        REFIID iid,     //�ĸ��ӿڣ�
                        void **ppFactory)
{
    if (0 == memcmp(&CLSID_CFastStringFactory, &clsid, sizeof(CLSID)))
    {
        //����CFastStringFactory��������һ��
        static CFastStringFactory *pFastStringFactory = new CFastStringFactory(); 
        if (NULL == pFastStringFactory)
        {
            DebugBreak();
            return E_OUTOFMEMORY;
        }

        //�ٽ��нӿڵĲ�ѯ
        return pFastStringFactory->QueryInterface(iid, ppFactory);
    }
    else
    {
        return E_NOINTERFACE;
    }
}