#if !defined(AFX_BROWSEVIEW_H__8306B556_52A9_46B2_8CB0_D5636FE217AF__INCLUDED_)
#define AFX_BROWSEVIEW_H__8306B556_52A9_46B2_8CB0_D5636FE217AF__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// BrowseView.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CBrowseView view

class CBrowseView : public CView
{
protected:
	CBrowseView();           // protected constructor used by dynamic creation
	DECLARE_DYNCREATE(CBrowseView)

// Attributes
public:

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CBrowseView)
	protected:
	virtual void OnDraw(CDC* pDC);      // overridden to draw this view
	//}}AFX_VIRTUAL

// Implementation
protected:
	virtual ~CBrowseView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

	// Generated message map functions
protected:
	//{{AFX_MSG(CBrowseView)
		// NOTE - the ClassWizard will add and remove member functions here.
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_BROWSEVIEW_H__8306B556_52A9_46B2_8CB0_D5636FE217AF__INCLUDED_)
