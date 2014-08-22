// GameCheat.h : main header file for the GAMECHEAT application
//

#if !defined(AFX_GAMECHEAT_H__DFE56658_1649_44C1_A749_059AF0DB3D91__INCLUDED_)
#define AFX_GAMECHEAT_H__DFE56658_1649_44C1_A749_059AF0DB3D91__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CGameCheatApp:
// See GameCheat.cpp for the implementation of this class
//

class CGameCheatApp : public CWinApp
{
public:
	CGameCheatApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CGameCheatApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CGameCheatApp)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_GAMECHEAT_H__DFE56658_1649_44C1_A749_059AF0DB3D91__INCLUDED_)
