// FileCopyDlg.h : header file
//

#if !defined(AFX_FILECOPYDLG_H__2EBEBD79_4587_4982_953F_CF0238A317D7__INCLUDED_)
#define AFX_FILECOPYDLG_H__2EBEBD79_4587_4982_953F_CF0238A317D7__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#define THREADCOUNT     5

/////////////////////////////////////////////////////////////////////////////
// CFileCopyDlg dialog

class CFileCopyDlg : public CDialog
{
// Construction
public:
	CFileCopyDlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CFileCopyDlg)
	enum { IDD = IDD_FILECOPY_DIALOG };
	CProgressCtrl	m_progessctrl;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CFileCopyDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

public:
    char m_SRCFile[MAX_PATH];
    char m_DSTFile[MAX_PATH];
    DWORD m_dwFileLen;
    DWORD m_dwCopyedLen;    //already copyed len


    //线程及同步相关
    HANDLE m_hThread[THREADCOUNT];
    HANDLE m_hPauseEvent;
    CRITICAL_SECTION m_CriSection;

    //
    BOOL m_IsPaused;

	// Generated message map functions
	//{{AFX_MSG(CFileCopyDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnSelSRC();
	afx_msg void OnSelDst();
	afx_msg void OnCopy();
	afx_msg void OnOutofmemoryProgressFile(NMHDR* pNMHDR, LRESULT* pResult);
	afx_msg void OnTimer(UINT nIDEvent);
	afx_msg void OnPauseContinue();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_FILECOPYDLG_H__2EBEBD79_4587_4982_953F_CF0238A317D7__INCLUDED_)
