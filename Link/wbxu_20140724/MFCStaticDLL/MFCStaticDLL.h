// MFCStaticDLL.h : main header file for the MFCSTATICDLL DLL
//

#if !defined(AFX_MFCSTATICDLL_H__14BC5061_C8A9_4629_A5B8_4D9D4EF2CE67__INCLUDED_)
#define AFX_MFCSTATICDLL_H__14BC5061_C8A9_4629_A5B8_4D9D4EF2CE67__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CMFCStaticDLLApp
// See MFCStaticDLL.cpp for the implementation of this class
//

class CMFCStaticDLLApp : public CWinApp
{
public:
	CMFCStaticDLLApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMFCStaticDLLApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

	//{{AFX_MSG(CMFCStaticDLLApp)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MFCSTATICDLL_H__14BC5061_C8A9_4629_A5B8_4D9D4EF2CE67__INCLUDED_)
