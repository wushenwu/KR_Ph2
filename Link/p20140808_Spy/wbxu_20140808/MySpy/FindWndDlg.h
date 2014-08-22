#if !defined(AFX_FINDWNDDLG_H__5347197F_327D_4E77_AF19_41CA19F8036D__INCLUDED_)
#define AFX_FINDWNDDLG_H__5347197F_327D_4E77_AF19_41CA19F8036D__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// FindWndDlg.h : header file
//
#include "MyStatic.h"

/////////////////////////////////////////////////////////////////////////////
// CFindWndDlg dialog

class CFindWndDlg : public CDialog
{
// Construction
public:
	void SetInfo();
	void SetWndHandle(HWND hWnd);
	CFindWndDlg(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CFindWndDlg)
	enum { IDD = IDD_DLG_FINDWND };
	CMyStatic	m_FindTool;
	//}}AFX_DATA

    DECLARE_DYNAMIC(CFindWndDlg)    //hack


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CFindWndDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
    //设置主窗口的隐藏
    BOOL m_IsHidden;

    HWND m_hWnd;

	// Generated message map functions
	//{{AFX_MSG(CFindWndDlg)
	afx_msg void OnFindHide();
	afx_msg void OnFindOk();
	afx_msg void OnFindCancel();
	afx_msg void OnClose();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_FINDWNDDLG_H__5347197F_327D_4E77_AF19_41CA19F8036D__INCLUDED_)
