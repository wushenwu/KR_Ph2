// ReflectDlg.h : header file
//

#if !defined(AFX_REFLECTDLG_H__76FABACA_32B6_4AFA_A997_5BE65AF1CC43__INCLUDED_)
#define AFX_REFLECTDLG_H__76FABACA_32B6_4AFA_A997_5BE65AF1CC43__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "mybtn.h"
#include "myedit.h"

/////////////////////////////////////////////////////////////////////////////
// CReflectDlg dialog

class CReflectDlg : public CDialog
{
// Construction
public:
	CReflectDlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CReflectDlg)
	enum { IDD = IDD_REFLECT_DIALOG };
	CMyEdit	m_MyEdit;
	CMyBTN	m_MyBTN;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CReflectDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CReflectDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnButton1();
	afx_msg HBRUSH OnCtlColor(CDC* pDC, CWnd* pWnd, UINT nCtlColor);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_REFLECTDLG_H__76FABACA_32B6_4AFA_A997_5BE65AF1CC43__INCLUDED_)
