#if !defined(AFX_WNDPROPERTY_PROCESS_H__3887B37C_BE79_4073_9986_84802F2212F3__INCLUDED_)
#define AFX_WNDPROPERTY_PROCESS_H__3887B37C_BE79_4073_9986_84802F2212F3__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// WndProperty_Process.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CWndProperty_Process dialog

class CWndProperty_Process : public CDialog
{
// Construction
public:
	void SetProcessInfo();
	CWndProperty_Process(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CWndProperty_Process)
	enum { IDD = IDD_WNDPROPERTY_PROCESS };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CWndProperty_Process)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CWndProperty_Process)
	virtual BOOL OnInitDialog();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_WNDPROPERTY_PROCESS_H__3887B37C_BE79_4073_9986_84802F2212F3__INCLUDED_)
