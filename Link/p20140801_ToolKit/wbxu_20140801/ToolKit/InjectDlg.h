#if !defined(AFX_INJECTDLG_H__935A4915_EA3F_4BB1_AAB1_688F502712A4__INCLUDED_)
#define AFX_INJECTDLG_H__935A4915_EA3F_4BB1_AAB1_688F502712A4__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// InjectDlg.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CInjectDlg dialog

class CInjectDlg : public CDialog
{
// Construction
public:
	CInjectDlg(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CInjectDlg)
	enum { IDD = IDD_DLG_INJECT };
	CString	m_DllPath;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CInjectDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CInjectDlg)
		// NOTE: the ClassWizard will add member functions here
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_INJECTDLG_H__935A4915_EA3F_4BB1_AAB1_688F502712A4__INCLUDED_)
