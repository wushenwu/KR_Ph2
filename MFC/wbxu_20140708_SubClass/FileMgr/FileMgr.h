// FileMgr.h : main header file for the FILEMGR application
//

#if !defined(AFX_FILEMGR_H__3F61F5E4_F147_4FC1_B161_6E65BF0117CD__INCLUDED_)
#define AFX_FILEMGR_H__3F61F5E4_F147_4FC1_B161_6E65BF0117CD__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CFileMgrApp:
// See FileMgr.cpp for the implementation of this class
//

class CFileMgrApp : public CWinApp
{
public:
	CFileMgrApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CFileMgrApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CFileMgrApp)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_FILEMGR_H__3F61F5E4_F147_4FC1_B161_6E65BF0117CD__INCLUDED_)
