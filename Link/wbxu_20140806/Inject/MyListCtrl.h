#if !defined(AFX_MYLISTCTRL_H__56781D75_229D_451F_A525_833C52CF0CB5__INCLUDED_)
#define AFX_MYLISTCTRL_H__56781D75_229D_451F_A525_833C52CF0CB5__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// MyListCtrl.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CMyListCtrl window

class CMyListCtrl : public CListCtrl
{
// Construction
public:
	CMyListCtrl();

// Attributes
public:

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMyListCtrl)
	//}}AFX_VIRTUAL

// Implementation
public:
	void Insert(CString strItem);
	AutoSize();
	void Init(CString strColumn);
	virtual ~CMyListCtrl();

	// Generated message map functions
protected:
	//{{AFX_MSG(CMyListCtrl)
		// NOTE - the ClassWizard will add and remove member functions here.
	//}}AFX_MSG

	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MYLISTCTRL_H__56781D75_229D_451F_A525_833C52CF0CB5__INCLUDED_)
