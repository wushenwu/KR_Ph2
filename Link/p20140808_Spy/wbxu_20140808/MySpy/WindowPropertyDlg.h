#if !defined(AFX_WINDOWPROPERTYDLG_H__ECB85EC2_6279_44D3_B90C_24019A1BD927__INCLUDED_)
#define AFX_WINDOWPROPERTYDLG_H__ECB85EC2_6279_44D3_B90C_24019A1BD927__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// WindowPropertyDlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CWindowPropertyDlg dialog

class CWindowPropertyDlg : public CDialog
{
// Construction
public:
	HWND GetWndHandle();
	void SetWndHandle(HWND hWnd);
	CWindowPropertyDlg(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CWindowPropertyDlg)
	enum { IDD = IDD_DLG_WNDPROPERITY };
	CTabCtrl	m_tabWndProperty;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CWindowPropertyDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
public:
    CDialog *m_pDlg[5];

    HWND m_hWnd;

	// Generated message map functions
	//{{AFX_MSG(CWindowPropertyDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSelchangeTabWndproperty(NMHDR* pNMHDR, LRESULT* pResult);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_WINDOWPROPERTYDLG_H__ECB85EC2_6279_44D3_B90C_24019A1BD927__INCLUDED_)
