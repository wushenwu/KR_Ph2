#if !defined(AFX_MYEDITPROXY_H__FB751F0F_05D8_4B90_BA30_E7147B2740ED__INCLUDED_)
#define AFX_MYEDITPROXY_H__FB751F0F_05D8_4B90_BA30_E7147B2740ED__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// MyEditProxy.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CMyEditProxy window

class CMyEditProxy : public CEdit
{
// Construction
public:
	CMyEditProxy();

// Attributes
public:

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMyEditProxy)
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CMyEditProxy();

	// Generated message map functions
protected:
	//{{AFX_MSG(CMyEditProxy)
	afx_msg void OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags);
	//}}AFX_MSG

	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MYEDITPROXY_H__FB751F0F_05D8_4B90_BA30_E7147B2740ED__INCLUDED_)
