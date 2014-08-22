// RegView.h : interface of the CRegView class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_REGVIEW_H__611AA4CA_A7F7_44FE_9ACF_6F3B1ADB129F__INCLUDED_)
#define AFX_REGVIEW_H__611AA4CA_A7F7_44FE_9ACF_6F3B1ADB129F__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000


class CRegView : public CView
{
protected: // create from serialization only
	CRegView();
	DECLARE_DYNCREATE(CRegView)

// Attributes
public:
	CRegDoc* GetDocument();

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CRegView)
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
	virtual ~CRegView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// Generated message map functions
protected:
	//{{AFX_MSG(CRegView)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

#ifndef _DEBUG  // debug version in RegView.cpp
inline CRegDoc* CRegView::GetDocument()
   { return (CRegDoc*)m_pDocument; }
#endif

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_REGVIEW_H__611AA4CA_A7F7_44FE_9ACF_6F3B1ADB129F__INCLUDED_)
