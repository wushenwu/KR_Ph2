// WMCopyData.h : main header file for the WMCOPYDATA application
//

#if !defined(AFX_WMCOPYDATA_H__107E9C7C_7006_4B0B_8220_AF0641D03FB3__INCLUDED_)
#define AFX_WMCOPYDATA_H__107E9C7C_7006_4B0B_8220_AF0641D03FB3__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CWMCopyDataApp:
// See WMCopyData.cpp for the implementation of this class
//

class CWMCopyDataApp : public CWinApp
{
public:
	CWMCopyDataApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CWMCopyDataApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CWMCopyDataApp)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_WMCOPYDATA_H__107E9C7C_7006_4B0B_8220_AF0641D03FB3__INCLUDED_)
