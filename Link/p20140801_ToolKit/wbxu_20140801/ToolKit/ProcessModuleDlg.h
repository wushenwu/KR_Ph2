#if !defined(AFX_PROCESSMODULEDLG_H__F6D3CE4D_7D35_4B7E_891F_D4630D911190__INCLUDED_)
#define AFX_PROCESSMODULEDLG_H__F6D3CE4D_7D35_4B7E_891F_D4630D911190__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// ProcessModuleDlg.h : header file
//

#include "ProcessModuleList.h"

/////////////////////////////////////////////////////////////////////////////
// CProcessModuleDlg dialog

class CProcessModuleDlg : public CDialog
{
// Construction
public:
	CProcessModuleDlg(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CProcessModuleDlg)
	enum { IDD = IDD_DLG_PROCESS_MODULE };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CProcessModuleDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

public:
	void InitCtrl();
    void SetPID(DWORD dwPID)
    {
        m_dwPID = dwPID;
    }


// Implementation
protected:
    DWORD m_dwPID;
    CProcessModuleList m_ModuleListCtrl;

	// Generated message map functions
	//{{AFX_MSG(CProcessModuleDlg)
	virtual BOOL OnInitDialog();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_PROCESSMODULEDLG_H__F6D3CE4D_7D35_4B7E_891F_D4630D911190__INCLUDED_)
