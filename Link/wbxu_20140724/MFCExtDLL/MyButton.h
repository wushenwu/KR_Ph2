#if !defined(AFX_MYBUTTON_H__BB0ACC95_2228_4110_83C3_09DBD412CE6A__INCLUDED_)
#define AFX_MYBUTTON_H__BB0ACC95_2228_4110_83C3_09DBD412CE6A__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// MyButton.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CMyButton window

class AFX_EXT_CLASS CMyButton : public CButton
{
// Construction
public:
	CMyButton();

// Attributes
public:

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMyButton)
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CMyButton();

	// Generated message map functions
protected:
	//{{AFX_MSG(CMyButton)
	afx_msg void OnClicked();
	//}}AFX_MSG

	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MYBUTTON_H__BB0ACC95_2228_4110_83C3_09DBD412CE6A__INCLUDED_)
