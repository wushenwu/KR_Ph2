// EnumWindow_GUI.h : main header file for the ENUMWINDOW_GUI application
//

#if !defined(AFX_ENUMWINDOW_GUI_H__87BCF2EF_E18D_4EA1_8404_7F20B65995AE__INCLUDED_)
#define AFX_ENUMWINDOW_GUI_H__87BCF2EF_E18D_4EA1_8404_7F20B65995AE__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"       // main symbols

/////////////////////////////////////////////////////////////////////////////
// CEnumWindow_GUIApp:
// See EnumWindow_GUI.cpp for the implementation of this class
//

class CEnumWindow_GUIApp : public CWinApp
{
public:
	CEnumWindow_GUIApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CEnumWindow_GUIApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation
	//{{AFX_MSG(CEnumWindow_GUIApp)
	afx_msg void OnAppAbout();
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_ENUMWINDOW_GUI_H__87BCF2EF_E18D_4EA1_8404_7F20B65995AE__INCLUDED_)
