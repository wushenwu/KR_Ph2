// FastString.h: interface for the CFastString class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_FASTSTRING_H__BBC4F660_B01C_4EF4_8508_69CC7FCDA4A1__INCLUDED_)
#define AFX_FASTSTRING_H__BBC4F660_B01C_4EF4_8508_69CC7FCDA4A1__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

class CFastString  
{
public:
	CFastString(const char *psz);
	virtual ~CFastString();

    int GetLen(void); //
    int Find(const char *psz);

private:
    char *m_psz;
};

#endif // !defined(AFX_FASTSTRING_H__BBC4F660_B01C_4EF4_8508_69CC7FCDA4A1__INCLUDED_)
