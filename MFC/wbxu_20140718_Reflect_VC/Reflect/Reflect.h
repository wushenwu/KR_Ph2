// Reflect.h : main header file for the REFLECT application
//

#if !defined(AFX_REFLECT_H__87B6A3B0_0E82_4F2A_8972_CA9C57E13EA9__INCLUDED_)
#define AFX_REFLECT_H__87B6A3B0_0E82_4F2A_8972_CA9C57E13EA9__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CReflectApp:
// See Reflect.cpp for the implementation of this class
//

class CReflectApp : public CWinApp
{
public:
	CReflectApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CReflectApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CReflectApp)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_REFLECT_H__87B6A3B0_0E82_4F2A_8972_CA9C57E13EA9__INCLUDED_)
