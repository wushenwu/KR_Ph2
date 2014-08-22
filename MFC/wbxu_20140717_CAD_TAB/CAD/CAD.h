// CAD.h : main header file for the CAD application
//

#if !defined(AFX_CAD_H__E44BD7CB_F14A_4806_89C1_B55224C2796C__INCLUDED_)
#define AFX_CAD_H__E44BD7CB_F14A_4806_89C1_B55224C2796C__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"       // main symbols

/////////////////////////////////////////////////////////////////////////////
// CCADApp:
// See CAD.cpp for the implementation of this class
//

class CCADApp : public CWinApp
{
public:
	CCADApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CCADApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation
	//{{AFX_MSG(CCADApp)
	afx_msg void OnAppAbout();
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CAD_H__E44BD7CB_F14A_4806_89C1_B55224C2796C__INCLUDED_)
