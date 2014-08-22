// CallWindow.h : main header file for the CALLWINDOW application
//

#if !defined(AFX_CALLWINDOW_H__E9F99CED_8E9A_471E_AE7E_F0DC58D5B089__INCLUDED_)
#define AFX_CALLWINDOW_H__E9F99CED_8E9A_471E_AE7E_F0DC58D5B089__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CCallWindowApp:
// See CallWindow.cpp for the implementation of this class
//

class CCallWindowApp : public CWinApp
{
public:
	CCallWindowApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CCallWindowApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CCallWindowApp)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CALLWINDOW_H__E9F99CED_8E9A_471E_AE7E_F0DC58D5B089__INCLUDED_)
