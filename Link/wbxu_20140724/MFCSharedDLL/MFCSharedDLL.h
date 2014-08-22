// MFCSharedDLL.h : main header file for the MFCSHAREDDLL DLL
//

#if !defined(AFX_MFCSHAREDDLL_H__1F2CBC4C_98EE_4D79_BC28_130A8ECDB0F1__INCLUDED_)
#define AFX_MFCSHAREDDLL_H__1F2CBC4C_98EE_4D79_BC28_130A8ECDB0F1__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CMFCSharedDLLApp
// See MFCSharedDLL.cpp for the implementation of this class
//

class CMFCSharedDLLApp : public CWinApp
{
public:
	CMFCSharedDLLApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMFCSharedDLLApp)
	//}}AFX_VIRTUAL

	//{{AFX_MSG(CMFCSharedDLLApp)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MFCSHAREDDLL_H__1F2CBC4C_98EE_4D79_BC28_130A8ECDB0F1__INCLUDED_)
