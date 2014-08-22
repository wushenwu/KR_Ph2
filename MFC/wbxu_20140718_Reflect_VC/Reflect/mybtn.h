#if !defined(AFX_MYBTN_H__6244102F_4F55_44D8_A192_71192C55AA8A__INCLUDED_)
#define AFX_MYBTN_H__6244102F_4F55_44D8_A192_71192C55AA8A__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// mybtn.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CMyBTN window

class CMyBTN : public CButton
{
// Construction
public:
	CMyBTN();

// Attributes
public:

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMyBTN)
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CMyBTN();

	// Generated message map functions
protected:
	//{{AFX_MSG(CMyBTN)
	afx_msg void OnClicked();
	//}}AFX_MSG

	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MYBTN_H__6244102F_4F55_44D8_A192_71192C55AA8A__INCLUDED_)
