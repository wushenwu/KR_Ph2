// RCT_Server.h : main header file for the RCT_SERVER application
//

#if !defined(AFX_RCT_SERVER_H__FA2264D9_6AA4_4440_8D4C_6C109748FA5E__INCLUDED_)
#define AFX_RCT_SERVER_H__FA2264D9_6AA4_4440_8D4C_6C109748FA5E__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CRCT_ServerApp:
// See RCT_Server.cpp for the implementation of this class
//

class CRCT_ServerApp : public CWinApp
{
public:
	CRCT_ServerApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CRCT_ServerApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CRCT_ServerApp)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_RCT_SERVER_H__FA2264D9_6AA4_4440_8D4C_6C109748FA5E__INCLUDED_)
