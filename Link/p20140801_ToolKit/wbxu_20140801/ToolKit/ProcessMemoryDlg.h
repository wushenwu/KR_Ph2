#if !defined(AFX_PROCESSMEMORYDLG_H__A92D12D0_EC34_4592_9A3C_2DB83D2BADE8__INCLUDED_)
#define AFX_PROCESSMEMORYDLG_H__A92D12D0_EC34_4592_9A3C_2DB83D2BADE8__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// ProcessMemoryDlg.h : header file
//

#include "ProcessMemoryList.h"

/////////////////////////////////////////////////////////////////////////////
// CProcessMemoryDlg dialog

class CProcessMemoryDlg : public CDialog
{
// Construction
public:
	void InitCtrl();
	CProcessMemoryDlg(CWnd* pParent = NULL);   // standard constructor

    void SetPID(DWORD dwPID)
    {
        m_dwPID = dwPID;
    }

// Dialog Data
	//{{AFX_DATA(CProcessMemoryDlg)
	enum { IDD = IDD_DLG_PROCESS_MEMORY };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CProcessMemoryDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
    CProcessMemoryList m_MemoryListCtrl;

    DWORD m_dwPID;

	// Generated message map functions
	//{{AFX_MSG(CProcessMemoryDlg)
	virtual BOOL OnInitDialog();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_PROCESSMEMORYDLG_H__A92D12D0_EC34_4592_9A3C_2DB83D2BADE8__INCLUDED_)
