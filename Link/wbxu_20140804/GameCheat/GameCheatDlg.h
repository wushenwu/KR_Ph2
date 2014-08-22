// GameCheatDlg.h : header file
//

#if !defined(AFX_GAMECHEATDLG_H__3C1FD0B4_D297_48AF_BD72_D84CDE0A9519__INCLUDED_)
#define AFX_GAMECHEATDLG_H__3C1FD0B4_D297_48AF_BD72_D84CDE0A9519__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CGameCheatDlg dialog

#define  EVENT_COUNT  5  

class CGameCheatDlg : public CDialog
{
// Construction
public:
	void InitGameCheat();
	void ShowErrMsg(void);
	CGameCheatDlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CGameCheatDlg)
	enum { IDD = IDD_GAMECHEAT_DIALOG };
	BOOL	m_bNoDie;
	DWORD	m_dwBulletsInit;
	DWORD	m_dwBulletsTotal;
	BOOL	m_bAuto;
	DWORD	m_dwSpeed;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CGameCheatDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
public:
	void SetAutoEscape();
	void SetSpeed();
	void SetBulletsTotal();
	void SetBulletsInit();
	void SetNoDie(void);
	void ChangeAccess(BOOL bChange);
	HICON m_hIcon;

    HANDLE m_hEvents[EVENT_COUNT];

    DWORD m_dwPID;
    HANDLE m_hProcess;

    CWinThread *m_pCheatThread;    //作弊用的线程
    BOOL m_bCheatStart;

    CWinThread *m_pAutoThread;     //自动躲避的呦叱

	// Generated message map functions
	//{{AFX_MSG(CGameCheatDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnBtnGamestart();
	afx_msg void OnCheckNodie();
	afx_msg void OnChangeBulletsInit();
	afx_msg void OnChangeBulletsTotal();
	afx_msg void OnChangeBulletsSpeed();
	afx_msg void OnCheckAuto();
	afx_msg void OnBtnGamecheat();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_GAMECHEATDLG_H__3C1FD0B4_D297_48AF_BD72_D84CDE0A9519__INCLUDED_)
