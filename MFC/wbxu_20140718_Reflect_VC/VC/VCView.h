// VCView.h : interface of the CVCView class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_VCVIEW_H__8DD04CEF_775F_46CF_A7E5_070666D41B4D__INCLUDED_)
#define AFX_VCVIEW_H__8DD04CEF_775F_46CF_A7E5_070666D41B4D__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000


class CVCView : public CView
{
protected: // create from serialization only
	CVCView();
	DECLARE_DYNCREATE(CVCView)

// Attributes
public:
	CVCDoc* GetDocument();

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CVCView)
	public:
	virtual void OnDraw(CDC* pDC);  // overridden to draw this view
	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
	protected:
	virtual BOOL OnPreparePrinting(CPrintInfo* pInfo);
	virtual void OnBeginPrinting(CDC* pDC, CPrintInfo* pInfo);
	virtual void OnEndPrinting(CDC* pDC, CPrintInfo* pInfo);
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CVCView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// Generated message map functions
protected:
	//{{AFX_MSG(CVCView)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

#ifndef _DEBUG  // debug version in VCView.cpp
inline CVCDoc* CVCView::GetDocument()
   { return (CVCDoc*)m_pDocument; }
#endif

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_VCVIEW_H__8DD04CEF_775F_46CF_A7E5_070666D41B4D__INCLUDED_)
