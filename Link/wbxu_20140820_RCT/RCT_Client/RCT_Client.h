// RCT_Client.h : main header file for the RCT_CLIENT application
//

#if !defined(AFX_RCT_CLIENT_H__2C637746_0181_419C_B7CF_B52575CFACE8__INCLUDED_)
#define AFX_RCT_CLIENT_H__2C637746_0181_419C_B7CF_B52575CFACE8__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"       // main symbols


/////////////////////////////////////////////////////////////////////////////
// CRCT_ClientApp:
// See RCT_Client.cpp for the implementation of this class
//

class CRCT_ClientApp : public CWinApp
{
public:
	CRCT_ClientApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CRCT_ClientApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation
	//{{AFX_MSG(CRCT_ClientApp)
	afx_msg void OnAppAbout();
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_RCT_CLIENT_H__2C637746_0181_419C_B7CF_B52575CFACE8__INCLUDED_)
