#if !defined(AFX_MYLISTBOXPROXY_H__CF61CB90_89FF_4E1A_980B_EA61F41091FD__INCLUDED_)
#define AFX_MYLISTBOXPROXY_H__CF61CB90_89FF_4E1A_980B_EA61F41091FD__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// MyListBoxProxy.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CMyListBoxProxy window

class CMyListBoxProxy : public CListBox
{
// Construction
public:
	CMyListBoxProxy();

// Attributes
public:

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMyListBoxProxy)
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CMyListBoxProxy();

	// Generated message map functions
protected:
	//{{AFX_MSG(CMyListBoxProxy)
	afx_msg void OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags);
	//}}AFX_MSG

	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MYLISTBOXPROXY_H__CF61CB90_89FF_4E1A_980B_EA61F41091FD__INCLUDED_)
