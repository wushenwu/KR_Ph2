// ThreadDlg.h : header file
//

#if !defined(AFX_THREADDLG_H__88AA5AC8_A991_4D08_8583_88EA01DC0E5B__INCLUDED_)
#define AFX_THREADDLG_H__88AA5AC8_A991_4D08_8583_88EA01DC0E5B__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "..\\MySyncFunc\MySynFunc.h"

//#define  USE_MYSYNFUN

/////////////////////////////////////////////////////////////////////////////
// CThreadDlg dialog

class CThreadDlg : public CDialog
{
// Construction
public:
	CThreadDlg(CWnd* pParent = NULL);	// standard constructor
  static DWORD WINAPI ThreadProc(LPVOID lpParameter);
// Dialog Data
	//{{AFX_DATA(CThreadDlg)
	enum { IDD = IDD_THREAD_DIALOG };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CThreadDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
public:
    int m_nNum1;
    int m_nNum2;
    HANDLE m_hPause;
    HANDLE m_hEvent;
    BOOL m_IsStop;
    HANDLE m_hThread[2];

    CMyEvent *m_pPause;
    CMyEvent *m_pEvent;

protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CThreadDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnBtnCreateThread();
	afx_msg void OnTimer(UINT nIDEvent);
	afx_msg void OnBtnExitThread();
	afx_msg void OnBtnPauseThread();
	afx_msg void OnBtnResumeThread();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_THREADDLG_H__88AA5AC8_A991_4D08_8583_88EA01DC0E5B__INCLUDED_)
