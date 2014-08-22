// CallWindowDlg.h : header file
//

#if !defined(AFX_CALLWINDOWDLG_H__96FE0C40_2BEC_4945_AC6B_F7A29BFC515E__INCLUDED_)
#define AFX_CALLWINDOWDLG_H__96FE0C40_2BEC_4945_AC6B_F7A29BFC515E__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#pragma  comment(lib, "../MFCExtDLL/Debug/MFCExtDLL.lib")
#include "../MFCExtDLL/MyButton.h"

/////////////////////////////////////////////////////////////////////////////
// CCallWindowDlg dialog

class CCallWindowDlg : public CDialog
{
// Construction
public:
	CCallWindowDlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CCallWindowDlg)
	enum { IDD = IDD_CALLWINDOW_DIALOG };
	CMyButton	m_MyButton;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CCallWindowDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CCallWindowDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnButton1();
	afx_msg void OnButton2();
	afx_msg void OnButton3();
	afx_msg void OnButton4();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CALLWINDOWDLG_H__96FE0C40_2BEC_4945_AC6B_F7A29BFC515E__INCLUDED_)
