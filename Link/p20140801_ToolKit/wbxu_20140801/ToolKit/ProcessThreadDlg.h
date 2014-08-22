#if !defined(AFX_PROCESSTHREADDLG_H__F41A6FE2_C149_48AA_8BEF_D28C453DAE3A__INCLUDED_)
#define AFX_PROCESSTHREADDLG_H__F41A6FE2_C149_48AA_8BEF_D28C453DAE3A__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// ProcessThreadDlg.h : header file
//

#include "ProcessThreadList.h"

/////////////////////////////////////////////////////////////////////////////
// CProcessThreadDlg dialog

class CProcessThreadDlg : public CDialog
{
// Construction
public:
	void InitCtrl();
	CProcessThreadDlg(CWnd* pParent = NULL);   // standard constructor

    void SetPID(DWORD dwPID)
    {
        m_dwPID = dwPID;
    }

// Dialog Data
	//{{AFX_DATA(CProcessThreadDlg)
	enum { IDD = IDD_DLG_PROCESS_THREAD };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CProcessThreadDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
    CProcessThreadList m_ThreadList;
    DWORD m_dwPID;

	// Generated message map functions
	//{{AFX_MSG(CProcessThreadDlg)
	virtual BOOL OnInitDialog();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_PROCESSTHREADDLG_H__F41A6FE2_C149_48AA_8BEF_D28C453DAE3A__INCLUDED_)
