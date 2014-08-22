// Upload_Server.h : main header file for the UPLOAD_SERVER application
//

#if !defined(AFX_UPLOAD_SERVER_H__40F5E777_BAB5_4BDD_AD25_EFE6903CD481__INCLUDED_)
#define AFX_UPLOAD_SERVER_H__40F5E777_BAB5_4BDD_AD25_EFE6903CD481__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CUpload_ServerApp:
// See Upload_Server.cpp for the implementation of this class
//

class CUpload_ServerApp : public CWinApp
{
public:
	CUpload_ServerApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CUpload_ServerApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CUpload_ServerApp)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_UPLOAD_SERVER_H__40F5E777_BAB5_4BDD_AD25_EFE6903CD481__INCLUDED_)
