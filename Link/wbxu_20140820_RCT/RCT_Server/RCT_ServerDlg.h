// RCT_ServerDlg.h : header file
//

#if !defined(AFX_RCT_SERVERDLG_H__1B167E62_49EA_45FC_92B9_D6899204146A__INCLUDED_)
#define AFX_RCT_SERVERDLG_H__1B167E62_49EA_45FC_92B9_D6899204146A__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "MySocket.h"
#include "RCT_Common.h"

/////////////////////////////////////////////////////////////////////////////
// CRCT_ServerDlg dialog

class CRCT_ServerDlg : public CDialog
{
// Construction
public:
	CRCT_ServerDlg(CWnd* pParent = NULL);	// standard constructor

public:
    LRESULT OnFinish(WPARAM wParam, LPARAM lParam);
    LRESULT OnProcessCommand(WPARAM wParam, LPARAM lParam);
    LRESULT OnAccept(WPARAM wParam, LPARAM lParam);
    LRESULT OnNetEvents (WPARAM, LPARAM);
	void StartService();

// Dialog Data
	//{{AFX_DATA(CRCT_ServerDlg)
	enum { IDD = IDD_RCT_SERVER_DIALOG };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CRCT_ServerDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
public:
	HICON m_hIcon;

    CMySocket m_MySocket;
    BOOL m_bOnline;

	// Generated message map functions
	//{{AFX_MSG(CRCT_ServerDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnTimer(UINT nIDEvent);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_RCT_SERVERDLG_H__1B167E62_49EA_45FC_92B9_D6899204146A__INCLUDED_)
