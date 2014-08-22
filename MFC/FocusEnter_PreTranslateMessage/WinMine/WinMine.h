// WinMine.h : main header file for the WINMINE application
//

#if !defined(AFX_WINMINE_H__28E5ED82_160B_4F61_9789_0841AF4E52D2__INCLUDED_)
#define AFX_WINMINE_H__28E5ED82_160B_4F61_9789_0841AF4E52D2__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CWinMineApp:
// See WinMine.cpp for the implementation of this class
//

class CWinMineApp : public CWinApp
{
public:
	CWinMineApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CWinMineApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CWinMineApp)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_WINMINE_H__28E5ED82_160B_4F61_9789_0841AF4E52D2__INCLUDED_)
