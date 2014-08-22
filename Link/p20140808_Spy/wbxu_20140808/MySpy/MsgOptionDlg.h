#if !defined(AFX_MSGOPTIONDLG_H__5B78FCCC_7A68_4DC9_BABA_2B8A1EE87CB0__INCLUDED_)
#define AFX_MSGOPTIONDLG_H__5B78FCCC_7A68_4DC9_BABA_2B8A1EE87CB0__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// MsgOptionDlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CMsgOptionDlg dialog

class CMsgOptionDlg : public CDialog
{
// Construction
public:
	void SetWndHandle(HWND hWnd);
	CMsgOptionDlg(CWnd* pParent = NULL);   // standard constructor

    static LRESULT CALLBACK WindowProc(  HWND hwnd,      // handle to window
        UINT uMsg,      // message identifier
        WPARAM wParam,  // first message parameter
        LPARAM lParam   // second message parameter
                            );

// Dialog Data
	//{{AFX_DATA(CMsgOptionDlg)
	enum { IDD = IDD_MSG_OPTIONS };
	CTabCtrl	m_MsgOptWndTab;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMsgOptionDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
    CDialog *m_pDlg[3];

    //已选中的窗口句柄
    HWND m_hWnd;

    TCHAR m_szDllPath[MAX_PATH];

	// Generated message map functions
	//{{AFX_MSG(CMsgOptionDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnMsgOk();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MSGOPTIONDLG_H__5B78FCCC_7A68_4DC9_BABA_2B8A1EE87CB0__INCLUDED_)
