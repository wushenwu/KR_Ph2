// WMCopyData_Receiver.h : main header file for the WMCOPYDATA_RECEIVER application
//

#if !defined(AFX_WMCOPYDATA_RECEIVER_H__4A4D884A_8917_43F5_BEEE_B7918DD40A14__INCLUDED_)
#define AFX_WMCOPYDATA_RECEIVER_H__4A4D884A_8917_43F5_BEEE_B7918DD40A14__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#ifndef __AFXWIN_H__
	#error include 'stdafx.h' before including this file for PCH
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CWMCopyData_ReceiverApp:
// See WMCopyData_Receiver.cpp for the implementation of this class
//

class CWMCopyData_ReceiverApp : public CWinApp
{
public:
	CWMCopyData_ReceiverApp();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CWMCopyData_ReceiverApp)
	public:
	virtual BOOL InitInstance();
	//}}AFX_VIRTUAL

// Implementation

	//{{AFX_MSG(CWMCopyData_ReceiverApp)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};


/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_WMCOPYDATA_RECEIVER_H__4A4D884A_8917_43F5_BEEE_B7918DD40A14__INCLUDED_)
