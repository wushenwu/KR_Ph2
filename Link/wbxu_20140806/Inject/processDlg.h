// processDlg.h : header file
//

#if !defined(AFX_PROCESSDLG_H__5EBC2E8E_50F7_45B6_A8C3_F0F9B9B4C7A2__INCLUDED_)
#define AFX_PROCESSDLG_H__5EBC2E8E_50F7_45B6_A8C3_F0F9B9B4C7A2__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

/////////////////////////////////////////////////////////////////////////////
// CProcessDlg dialog
#include "MyListCtrl.h"

class CProcessDlg : public CDialog
{
// Construction
public:
	void ShowErrorMessage();
	void InitListCtrl();
	CProcessDlg(CWnd* pParent = NULL);	// standard constructor
  
// Dialog Data
	//{{AFX_DATA(CProcessDlg)
	enum { IDD = IDD_PROCESS_DIALOG };
	CMyListCtrl	m_ctlProcess;
	UINT	m_dwPID;
	CString	m_strPath;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CProcessDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

    HMODULE m_hModule;

  CImageList m_ImageList;
	// Generated message map functions
	//{{AFX_MSG(CProcessDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnBtnUpdate();
	afx_msg void OnBtnEnumWindow();
	afx_msg void OnBtnEnumWindow2();
	afx_msg void OnDblclkListProcess(NMHDR* pNMHDR, LRESULT* pResult);
	afx_msg void OnBtnPath();
	afx_msg void OnBtnInject();
	afx_msg void OnBtnUnload();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_PROCESSDLG_H__5EBC2E8E_50F7_45B6_A8C3_F0F9B9B4C7A2__INCLUDED_)
