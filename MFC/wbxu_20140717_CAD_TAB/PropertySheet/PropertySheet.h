// PropertySheet.h : main header file for the PROPERTYSHEET application
//

#if !defined(AFX_PROPERTYSHEET_H__BC7313F0_AC3C_4B07_9911_20236E88D34F__INCLUDED_)
#define AFX_PROPERTYSHEET_H__BC7313F0_AC3C_4B07_9911_20236E88D34F__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CPropertySheetApp:
// See PropertySheet.cpp for the implementation of this class
//

class CPropertySheetApp : public CWinApp
{
public:
	CPropertySheetApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CPropertySheetApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CPropertySheetApp)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_PROPERTYSHEET_H__BC7313F0_AC3C_4B07_9911_20236E88D34F__INCLUDED_)
