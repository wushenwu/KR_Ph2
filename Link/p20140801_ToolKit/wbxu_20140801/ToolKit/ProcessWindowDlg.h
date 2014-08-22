#if !defined(AFX_PROCESSWINDOWDLG_H__888945BC_C361_4435_91AC_A16DD043D9AB__INCLUDED_)
#define AFX_PROCESSWINDOWDLG_H__888945BC_C361_4435_91AC_A16DD043D9AB__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// ProcessWindowDlg.h : header file
//

#include "ProcessWindowList.h"

/////////////////////////////////////////////////////////////////////////////
// CProcessWindowDlg dialog

class CProcessWindowDlg : public CDialog
{
// Construction
public:
	CProcessWindowDlg(CWnd* pParent = NULL);   // standard constructor

    void SetPID(DWORD dwPID)
    {
        m_dwPID = dwPID;
    }

// Dialog Data
	//{{AFX_DATA(CProcessWindowDlg)
	enum { IDD = IDD_DLG_PROCESS_WINDOW };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CProcessWindowDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	void InitCtrl();
    CProcessWindowList m_WindowList;

    DWORD m_dwPID;

	// Generated message map functions
	//{{AFX_MSG(CProcessWindowDlg)
	virtual BOOL OnInitDialog();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_PROCESSWINDOWDLG_H__888945BC_C361_4435_91AC_A16DD043D9AB__INCLUDED_)
