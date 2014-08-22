#if !defined(AFX_MYBUTTONPROXY_H__AAB0B2A3_F3E0_4D8E_8A13_5A37B1113ED9__INCLUDED_)
#define AFX_MYBUTTONPROXY_H__AAB0B2A3_F3E0_4D8E_8A13_5A37B1113ED9__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// MyButtonProxy.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CMyButtonProxy window

class CMyButtonProxy : public CButton
{
// Construction
public:
	CMyButtonProxy();

// Attributes
public:

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMyButtonProxy)
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CMyButtonProxy();

	// Generated message map functions
protected:
	//{{AFX_MSG(CMyButtonProxy)
	afx_msg void OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags);
	//}}AFX_MSG

	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MYBUTTONPROXY_H__AAB0B2A3_F3E0_4D8E_8A13_5A37B1113ED9__INCLUDED_)
