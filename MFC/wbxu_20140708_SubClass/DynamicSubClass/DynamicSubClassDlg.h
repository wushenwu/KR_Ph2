// DynamicSubClassDlg.h : header file
//

#if !defined(AFX_DYNAMICSUBCLASSDLG_H__80660F29_FD64_42D6_AA12_4F0F02122256__INCLUDED_)
#define AFX_DYNAMICSUBCLASSDLG_H__80660F29_FD64_42D6_AA12_4F0F02122256__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "MyButton.h"

/////////////////////////////////////////////////////////////////////////////
// CDynamicSubClassDlg dialog

class CDynamicSubClassDlg : public CDialog
{
// Construction
public:
	CDynamicSubClassDlg(CWnd* pParent = NULL);	// standard constructor

public:
    virtual ~CDynamicSubClassDlg();

protected:
    CMyButton *m_pMyButton;

// Dialog Data
	//{{AFX_DATA(CDynamicSubClassDlg)
	enum { IDD = IDD_DYNAMICSUBCLASS_DIALOG };
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CDynamicSubClassDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CDynamicSubClassDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnButton1();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DYNAMICSUBCLASSDLG_H__80660F29_FD64_42D6_AA12_4F0F02122256__INCLUDED_)
