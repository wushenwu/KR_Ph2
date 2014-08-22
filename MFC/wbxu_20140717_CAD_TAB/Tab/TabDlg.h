// TabDlg.h : header file
//

#if !defined(AFX_TABDLG_H__9070EA3F_0C0B_4FC1_BDBB_9F2242588209__INCLUDED_)
#define AFX_TABDLG_H__9070EA3F_0C0B_4FC1_BDBB_9F2242588209__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "Page1.h"
#include "Page2.h"
#include "Page3.h"

/////////////////////////////////////////////////////////////////////////////
// CTabDlg dialog

class CTabDlg : public CDialog
{
// Construction
public:
	CTabDlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CTabDlg)
	enum { IDD = IDD_TAB_DIALOG };
	CTabCtrl	m_TabCtrl;          //
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CTabDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;    

    CDialog *m_pDlg[3];

	// Generated message map functions
	//{{AFX_MSG(CTabDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnSelchangeTab1(NMHDR* pNMHDR, LRESULT* pResult);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_TABDLG_H__9070EA3F_0C0B_4FC1_BDBB_9F2242588209__INCLUDED_)
