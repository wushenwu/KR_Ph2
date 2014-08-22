// WMCopyDataDlg.h : header file
//

#if !defined(AFX_WMCOPYDATADLG_H__94E87826_2A19_4C3D_89B4_03F2824815EB__INCLUDED_)
#define AFX_WMCOPYDATADLG_H__94E87826_2A19_4C3D_89B4_03F2824815EB__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CWMCopyDataDlg dialog

class CWMCopyDataDlg : public CDialog
{
// Construction
public:
	CWMCopyDataDlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CWMCopyDataDlg)
	enum { IDD = IDD_WMCOPYDATA_DIALOG };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CWMCopyDataDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CWMCopyDataDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnBtnWrite();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_WMCOPYDATADLG_H__94E87826_2A19_4C3D_89B4_03F2824815EB__INCLUDED_)
