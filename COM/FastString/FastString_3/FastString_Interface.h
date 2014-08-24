// FastString_Interface.h: interface for the CFastString_Interface class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_FASTSTRING_INTERFACE_H__76EED0BB_824A_4F10_BEBE_E5CAE0F10CC6__INCLUDED_)
#define AFX_FASTSTRING_INTERFACE_H__76EED0BB_824A_4F10_BEBE_E5CAE0F10CC6__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifdef _USRDLL
    #define IMPORT_EXPORT  __declspec(dllexport)
#else
    #define IMPORT_EXPORT  __declspec(dllimport)
#endif

class CFastString;

class IMPORT_EXPORT CFastString_Interface  
{
public:
	CFastString_Interface(const char *psz);
	virtual ~CFastString_Interface();

public:
    int GetLen(void);
    int Find(const char *psz);

private:
    CFastString *m_pThis;
};

#endif // !defined(AFX_FASTSTRING_INTERFACE_H__76EED0BB_824A_4F10_BEBE_E5CAE0F10CC6__INCLUDED_)
