#if !defined(AFX_WNDPROPERTY_CLASS_H__2268B6B8_6229_4E0B_A545_752A67424884__INCLUDED_)
#define AFX_WNDPROPERTY_CLASS_H__2268B6B8_6229_4E0B_A545_752A67424884__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// WndProperty_Class.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CWndProperty_Class dialog

class CWndProperty_Class : public CDialog
{
// Construction
public:
	void SetClassInfo();
	CWndProperty_Class(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CWndProperty_Class)
	enum { IDD = IDD_WNDPROPERTY_CLASS };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CWndProperty_Class)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CWndProperty_Class)
	virtual BOOL OnInitDialog();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_WNDPROPERTY_CLASS_H__2268B6B8_6229_4E0B_A545_752A67424884__INCLUDED_)
