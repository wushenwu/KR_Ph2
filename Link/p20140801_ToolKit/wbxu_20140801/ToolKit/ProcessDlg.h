#if !defined(AFX_PROCESSDLG_H__6BB0B965_5CEB_4164_B70B_4F0ECCA06DD0__INCLUDED_)
#define AFX_PROCESSDLG_H__6BB0B965_5CEB_4164_B70B_4F0ECCA06DD0__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// ProcessDlg.h : header file
//

#include "ProcessList.h"

/////////////////////////////////////////////////////////////////////////////
// CProcessDlg dialog

class CProcessDlg : public CDialog
{
// Construction
public:
	CProcessDlg(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CProcessDlg)
	enum { IDD = IDD_DLG_PROCESS };
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CProcessDlg)
	public:
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	void InitCtrl();

    CProcessList m_ProcessListCtrl;

	// Generated message map functions
	//{{AFX_MSG(CProcessDlg)
	virtual BOOL OnInitDialog();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_PROCESSDLG_H__6BB0B965_5CEB_4164_B70B_4F0ECCA06DD0__INCLUDED_)
