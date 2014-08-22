// FocusEnterDlg.h : header file
//

#if !defined(AFX_FOCUSENTERDLG_H__B40C56DC_4E8E_48E4_84A2_78507C8D35CB__INCLUDED_)
#define AFX_FOCUSENTERDLG_H__B40C56DC_4E8E_48E4_84A2_78507C8D35CB__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CFocusEnterDlg dialog

class CFocusEnterDlg : public CDialog
{
// Construction
public:
	CFocusEnterDlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CFocusEnterDlg)
	enum { IDD = IDD_FOCUSENTER_DIALOG };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CFocusEnterDlg)
	public:
	virtual BOOL PreTranslateMessage(MSG* pMsg);
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CFocusEnterDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_FOCUSENTERDLG_H__B40C56DC_4E8E_48E4_84A2_78507C8D35CB__INCLUDED_)
