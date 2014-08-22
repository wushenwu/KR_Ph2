// MySpy.h : main header file for the MYSPY application
//

#if !defined(AFX_MYSPY_H__CF231966_6E31_4DA5_80C3_7746C84A6616__INCLUDED_)
#define AFX_MYSPY_H__CF231966_6E31_4DA5_80C3_7746C84A6616__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"       // main symbols

/////////////////////////////////////////////////////////////////////////////
// CMySpyApp:
// See MySpy.cpp for the implementation of this class
//

class CMySpyApp : public CWinApp
{
public:
	void NewMsgWnd();
	CMySpyApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMySpyApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation
	//{{AFX_MSG(CMySpyApp)
	afx_msg void OnAppAbout();
	//afx_msg void OnNewWnd();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MYSPY_H__CF231966_6E31_4DA5_80C3_7746C84A6616__INCLUDED_)
