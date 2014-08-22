// PropertySheetDlg.h : header file
//

#if !defined(AFX_PROPERTYSHEETDLG_H__DB2D0F29_93E3_485E_AF22_B6366F6B42F4__INCLUDED_)
#define AFX_PROPERTYSHEETDLG_H__DB2D0F29_93E3_485E_AF22_B6366F6B42F4__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CPropertySheetDlg dialog

class CPropertySheetDlg : public CDialog
{
// Construction
public:
	CPropertySheetDlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CPropertySheetDlg)
	enum { IDD = IDD_PROPERTYSHEET_DIALOG };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CPropertySheetDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CPropertySheetDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnButton1();
	afx_msg void OnButton2();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_PROPERTYSHEETDLG_H__DB2D0F29_93E3_485E_AF22_B6366F6B42F4__INCLUDED_)
