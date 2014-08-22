#include <string.h>
#include <ctype.h>

#include "CMyString.h"

/////////////////////   引用计数相关    ////////////////////////////////////////////////
#ifdef REFCOUNT

void
CMyString::AddRef(void)
{
    *m_prefcount = *m_prefcount + 1;
}

void
CMyString::Release(void)
{
    if (NULL == m_prefcount)
    {
        return;
    }

    if (0 == --*m_prefcount)
    {
        if (m_psz)
        {
            delete[] m_psz;
            m_psz = NULL;
        }

        delete m_prefcount;     //计数器作为一种资源，也需要释放
        m_prefcount = NULL;
    }
}

#endif

//////////////////////////////////////////////////////////////////////////

CMyString::CMyString()
{
    StringInit();
}

CMyString::CMyString(const char *psz)
{
    //需先进行初始化
    StringInit();

    SetString(psz);
}

CMyString::CMyString(const CMyString &str)
{
    StringInit();

#ifdef REFCOUNT
    //进行浅拷贝
    m_nlen   = str.m_nlen;
    m_nspace = str.m_nspace;
    m_psz    = str.m_psz;

    m_prefcount = str.m_prefcount;
    AddRef();

#else
    SetString(str);
#endif

}

CMyString::~CMyString()
{
#ifdef REFCOUNT
    Release();
#else

    if (m_psz)
    {
        delete[] m_psz;
    }

#endif

    StringInit();
}

void 
CMyString::StringInit(void)
{
    m_psz = NULL;
    m_nlen = 0;
    m_nspace = 0;

#ifdef REFCOUNT
    m_prefcount = NULL;
#endif
}

void 
CMyString::SetString(const char *psz)
{
    size_t nSpaceNeed = strlen(psz) + 1;

    //已囊括无空间和有空间但不足以容纳的情况
    if (nSpaceNeed > m_nspace)  
    {
        if (m_psz != NULL)
        {
        #ifdef REFCOUNT
            Release();
        #else
            delete[] m_psz;
        #endif
        }        
        
        m_psz = new char[nSpaceNeed];
        if (NULL == m_psz)
        {
            //TODO;
            return;
        }

        m_nspace = nSpaceNeed;  
    }
   
    strcpy(m_psz, psz);
    m_nlen = nSpaceNeed - 1;

#ifdef REFCOUNT
    m_prefcount = new int;      //引用计数器作为一种资源，也需进行申请
    if (m_prefcount)
    {
        *m_prefcount = 0;
    }

    AddRef();
#endif
        
    return;
}

void 
CMyString::SetString(const CMyString &str)
{
    SetString(str.m_psz);
}

const char *
CMyString::StringCopy(const char *psz)
{
    SetString(psz);
    return m_psz;
}

const char *
CMyString::StringCopy(const CMyString &str)
{
    StringCopy(str.m_psz);
    return m_psz;
}

const char *
CMyString::StringCat(const char *psz)
{
    size_t nSpaceNeed = strlen(psz) + 1;
    size_t ntotal = m_nlen + nSpaceNeed;

    //已囊括无空间的情况，
    if (ntotal > m_nspace)
    {        
        char *psztmp = new char[ntotal];
        if (NULL == psztmp)
        {
            //todo
            return NULL;
        }
        
        psztmp[0] = '\0';        
        if (m_psz)
        {
            strcpy(psztmp, m_psz);  
        #ifdef REFCOUNT
            Release();
        #else
            delete[] m_psz;
        #endif
        }
        
        m_psz = psztmp;        
        m_nspace = ntotal;

    }//end for if (ntotal > m_nspace)
   
    strcat(m_psz, psz);
    m_nlen = ntotal - 1;

#ifdef REFCOUNT
    m_prefcount = new int;      //引用计数器作为一种资源，也需进行申请
    if (m_prefcount)
    {
        *m_prefcount = 0;
    }
    
    AddRef();
#endif

    return m_psz;
}

const char *
CMyString::StringCat(const CMyString &str)
{
    return StringCat(str.m_psz);
}

bool 
CMyString::StringCompare(const char *psz) const
{
    int nresult = strcmp(m_psz, psz);
    if (0 == nresult)
    {
        return true;
    }
    else
    {
        return false;
    }
}

bool 
CMyString::StringCompare(const CMyString &str) const
{
    return StringCompare(str.m_psz);
}

const char *
CMyString::StringChr(int ch) const
{
    return strchr(m_psz, ch);
}

const char *
CMyString::StringRchr(int ch) const
{
    return strrchr(m_psz, ch);
}

const char *
CMyString::StringPbrk(const char *pszgroup) const
{
    return strpbrk(m_psz, pszgroup);
}

const char *
CMyString::StringPbrk(const CMyString &str) const
{
    return strpbrk(m_psz, str.m_psz);
}

const char *
CMyString::StringStr(const char *psz) const
{
    return strstr(m_psz, psz);
}

const char *
CMyString::StringStr(const CMyString &str) const
{
    return strstr(m_psz, str.m_psz);
}

void 
CMyString::StringToUpper(void)
{
   for (size_t i = 0; i < m_nlen; i++)
   {
       m_psz[i] = toupper(m_psz[i]);
   }
}

void 
CMyString::StringToLower(void)
{
    for (size_t i = 0; i < m_nlen; i++)
    {
        m_psz[i] = tolower(m_psz[i]);
   }
}

const char *
CMyString::GetString(void) const
{
    return m_psz;
}

size_t 
CMyString::GetLen(void) const
{
    return m_nlen;
}

