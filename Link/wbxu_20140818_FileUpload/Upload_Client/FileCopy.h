// FileCopy.h : main header file for the FILECOPY application
//

#if !defined(AFX_FILECOPY_H__1EAF70A9_3A3D_4564_A07E_118C54C9ACF8__INCLUDED_)
#define AFX_FILECOPY_H__1EAF70A9_3A3D_4564_A07E_118C54C9ACF8__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CFileCopyApp:
// See FileCopy.cpp for the implementation of this class
//

class CFileCopyApp : public CWinApp
{
public:
	CFileCopyApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CFileCopyApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CFileCopyApp)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_FILECOPY_H__1EAF70A9_3A3D_4564_A07E_118C54C9ACF8__INCLUDED_)
