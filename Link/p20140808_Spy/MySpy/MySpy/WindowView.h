#if !defined(AFX_WINDOWVIEW_H__3B1BB566_CF54_4D1E_A543_0258F8168125__INCLUDED_)
#define AFX_WINDOWVIEW_H__3B1BB566_CF54_4D1E_A543_0258F8168125__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// WindowView.h : header file
//

#include <afxcview.h>

/////////////////////////////////////////////////////////////////////////////
// CWindowView view

class CWindowView : public CTreeView
{
protected:
	CWindowView();           // protected constructor used by dynamic creation
	DECLARE_DYNCREATE(CWindowView)

// Attributes
public:

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CWindowView)
	public:
	virtual void OnInitialUpdate();
	protected:
	virtual void OnDraw(CDC* pDC);      // overridden to draw this view
	//}}AFX_VIRTUAL

// Implementation
protected:
	virtual ~CWindowView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

	// Generated message map functions
protected:
	//{{AFX_MSG(CWindowView)
		// NOTE - the ClassWizard will add and remove member functions here.
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_WINDOWVIEW_H__3B1BB566_CF54_4D1E_A543_0258F8168125__INCLUDED_)
