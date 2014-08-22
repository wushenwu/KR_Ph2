// WinMineDlg.h : header file
//

#if !defined(AFX_WINMINEDLG_H__FBC89EF5_0784_4349_84BA_E683128523E6__INCLUDED_)
#define AFX_WINMINEDLG_H__FBC89EF5_0784_4349_84BA_E683128523E6__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "mybtn.h"

/////////////////////////////////////////////////////////////////////////////
// CWinMineDlg dialog

class CWinMineDlg : public CDialog
{
// Construction
public:
	CWinMineDlg(CWnd* pParent = NULL);	// standard constructor

protected:
    virtual void ResizeWindow(void);
    virtual void CreateButton(void);

// Dialog Data
	//{{AFX_DATA(CWinMineDlg)
	enum { IDD = IDD_WINMINE_DIALOG };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CWinMineDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//virtual BOOL OnCommand(WPARAM wParam, LPARAM lParam);
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CWinMineDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnLButtonDown(UINT nFlags, CPoint point);
	afx_msg void OnLButtonUp(UINT nFlags, CPoint point);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_WINMINEDLG_H__FBC89EF5_0784_4349_84BA_E683128523E6__INCLUDED_)
