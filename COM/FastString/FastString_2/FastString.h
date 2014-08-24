// FastString.h: interface for the CFastString class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_FASTSTRING_H__BBC4F660_B01C_4EF4_8508_69CC7FCDA4A1__INCLUDED_)
#define AFX_FASTSTRING_H__BBC4F660_B01C_4EF4_8508_69CC7FCDA4A1__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifdef _USRDLL
    #define IMPORT_EXPORT  __declspec(dllexport)
#else
    #define IMPORT_EXPORT  __declspec(dllimport)
#endif

class IMPORT_EXPORT CFastString  
{
public:
	CFastString(const char *psz);
	virtual ~CFastString();

    int GetLen(void); //
    int Find(const char *psz);

private:
    char *m_psz;
    int m_nLen;
};

#endif // !defined(AFX_FASTSTRING_H__BBC4F660_B01C_4EF4_8508_69CC7FCDA4A1__INCLUDED_)
