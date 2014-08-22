// ToolKitDlg.h : header file
//

#if !defined(AFX_TOOLKITDLG_H__057C352E_A76D_411C_8D4A_1DED9D3BFA1B__INCLUDED_)
#define AFX_TOOLKITDLG_H__057C352E_A76D_411C_8D4A_1DED9D3BFA1B__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CToolKitDlg dialog

class CToolKitDlg : public CDialog
{
// Construction
public:
	void DoProcess();
	CToolKitDlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CToolKitDlg)
	enum { IDD = IDD_TOOLKIT_DIALOG };
	CTabCtrl	m_TabCtrl;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CToolKitDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
    void InitTabCtrl();

	HICON m_hIcon;

    //
    CDialog *m_pDlg[IDS_STR_PROFILE - IDS_STR_PROCESS];

	// Generated message map functions
	//{{AFX_MSG(CToolKitDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_TOOLKITDLG_H__057C352E_A76D_411C_8D4A_1DED9D3BFA1B__INCLUDED_)
