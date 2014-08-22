// DDX.h : main header file for the DDX application
//

#if !defined(AFX_DDX_H__2A637432_27C3_49A6_8760_BBD4CE84F33A__INCLUDED_)
#define AFX_DDX_H__2A637432_27C3_49A6_8760_BBD4CE84F33A__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CDDXApp:
// See DDX.cpp for the implementation of this class
//

class CDDXApp : public CWinApp
{
public:
	CDDXApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CDDXApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CDDXApp)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DDX_H__2A637432_27C3_49A6_8760_BBD4CE84F33A__INCLUDED_)
