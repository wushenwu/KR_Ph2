#if !defined(AFX_BUILDVIEW_H__D58902D0_400D_4EF9_96CE_55F480C5708A__INCLUDED_)
#define AFX_BUILDVIEW_H__D58902D0_400D_4EF9_96CE_55F480C5708A__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// buildview.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CBuildView dialog

class CBuildView : public CDialog
{
// Construction
public:
	CBuildView(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CBuildView)
	enum { IDD = IDD_BUILD };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CBuildView)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CBuildView)
	virtual BOOL OnInitDialog();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_BUILDVIEW_H__D58902D0_400D_4EF9_96CE_55F480C5708A__INCLUDED_)
