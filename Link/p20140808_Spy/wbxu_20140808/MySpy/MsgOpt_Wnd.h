#if !defined(AFX_MSGOPT_WND_H__9C50E139_8633_45FA_A728_01AFE0A17474__INCLUDED_)
#define AFX_MSGOPT_WND_H__9C50E139_8633_45FA_A728_01AFE0A17474__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// MsgOpt_Wnd.h : header file
//

#include "MyStatic.h"

/////////////////////////////////////////////////////////////////////////////
// CMsgOpt_Wnd dialog

class CMsgOpt_Wnd : public CDialog
{
// Construction
public:
	void SetInfo();
	void SetWndHandle(HWND hWnd);
	CMsgOpt_Wnd(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CMsgOpt_Wnd)
	enum { IDD = IDD_MSG_WND };
	CMyStatic	m_FindTool;
	//}}AFX_DATA

    DECLARE_DYNAMIC(CMsgOpt_Wnd)    //hack

protected:
    //设置主窗口的隐藏
    BOOL m_IsHidden;
    
    HWND m_hWnd;

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMsgOpt_Wnd)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CMsgOpt_Wnd)
	afx_msg void OnMsgFindHide();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MSGOPT_WND_H__9C50E139_8633_45FA_A728_01AFE0A17474__INCLUDED_)
