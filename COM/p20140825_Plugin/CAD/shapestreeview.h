#if !defined(AFX_SHAPESTREEVIEW_H__F38EE14A_BF78_463E_A51E_64ECF51EAABD__INCLUDED_)
#define AFX_SHAPESTREEVIEW_H__F38EE14A_BF78_463E_A51E_64ECF51EAABD__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// shapestreeview.h : header file
//

#include <afxcview.h>

/////////////////////////////////////////////////////////////////////////////
// CShapesTreeView view

class CShapesTreeView : public CTreeView
{
protected:
	CShapesTreeView();           // protected constructor used by dynamic creation
	DECLARE_DYNCREATE(CShapesTreeView)

// Attributes
public:
    CImageList m_ImageList;
// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CShapesTreeView)
	public:
	virtual void OnInitialUpdate();
	protected:
	virtual void OnDraw(CDC* pDC);      // overridden to draw this view
	virtual void OnUpdate(CView* pSender, LPARAM lHint, CObject* pHint);
	//}}AFX_VIRTUAL

// Implementation
protected:
	virtual ~CShapesTreeView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

	// Generated message map functions
protected:
	//{{AFX_MSG(CShapesTreeView)
		// NOTE - the ClassWizard will add and remove member functions here.
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SHAPESTREEVIEW_H__F38EE14A_BF78_463E_A51E_64ECF51EAABD__INCLUDED_)
