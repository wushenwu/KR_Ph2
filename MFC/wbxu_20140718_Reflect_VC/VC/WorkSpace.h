#if !defined(AFX_WORKSPACE_H__039004F5_B640_4A22_A2D4_F696C4FF20F2__INCLUDED_)
#define AFX_WORKSPACE_H__039004F5_B640_4A22_A2D4_F696C4FF20F2__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// WorkSpace.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CWorkSpace dialog

class CWorkSpace : public CDialog
{
// Construction
public:
	CWorkSpace(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CWorkSpace)
	enum { IDD = IDD_WORKSPACE };
	CTabCtrl	m_WorkSpace;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CWorkSpace)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
    CDialog *m_pDlg[3];

	// Generated message map functions
	//{{AFX_MSG(CWorkSpace)
	virtual BOOL OnInitDialog();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_WORKSPACE_H__039004F5_B640_4A22_A2D4_F696C4FF20F2__INCLUDED_)
