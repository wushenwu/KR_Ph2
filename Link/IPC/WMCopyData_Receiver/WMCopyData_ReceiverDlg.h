// WMCopyData_ReceiverDlg.h : header file
//

#if !defined(AFX_WMCOPYDATA_RECEIVERDLG_H__061375E9_AD83_4BB6_B536_C004DB7D5553__INCLUDED_)
#define AFX_WMCOPYDATA_RECEIVERDLG_H__061375E9_AD83_4BB6_B536_C004DB7D5553__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CWMCopyData_ReceiverDlg dialog

class CWMCopyData_ReceiverDlg : public CDialog
{
// Construction
public:
	CWMCopyData_ReceiverDlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CWMCopyData_ReceiverDlg)
	enum { IDD = IDD_WMCOPYDATA_RECEIVER_DIALOG };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CWMCopyData_ReceiverDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CWMCopyData_ReceiverDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg BOOL OnCopyData(CWnd* pWnd, COPYDATASTRUCT* pCopyDataStruct);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_WMCOPYDATA_RECEIVERDLG_H__061375E9_AD83_4BB6_B536_C004DB7D5553__INCLUDED_)
