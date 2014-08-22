// EnumWindow_GUIView.h : interface of the CEnumWindow_GUIView class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_ENUMWINDOW_GUIVIEW_H__26341EE7_B0B5_4284_AF7D_E8F507A9A1EE__INCLUDED_)
#define AFX_ENUMWINDOW_GUIVIEW_H__26341EE7_B0B5_4284_AF7D_E8F507A9A1EE__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include <afxcview.h>

class CEnumWindow_GUIView : public CTreeView
{
protected: // create from serialization only
	CEnumWindow_GUIView();
	DECLARE_DYNCREATE(CEnumWindow_GUIView)

// Attributes
public:
	CEnumWindow_GUIDoc* GetDocument();

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CEnumWindow_GUIView)
	public:
	virtual void OnDraw(CDC* pDC);  // overridden to draw this view
	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
	virtual void OnInitialUpdate();
	protected:
	virtual BOOL OnPreparePrinting(CPrintInfo* pInfo);
	virtual void OnBeginPrinting(CDC* pDC, CPrintInfo* pInfo);
	virtual void OnEndPrinting(CDC* pDC, CPrintInfo* pInfo);
	//}}AFX_VIRTUAL

// Implementation
public:
	void EnumAllWindows();
	virtual ~CEnumWindow_GUIView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// Generated message map functions
protected:
	//{{AFX_MSG(CEnumWindow_GUIView)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

#ifndef _DEBUG  // debug version in EnumWindow_GUIView.cpp
inline CEnumWindow_GUIDoc* CEnumWindow_GUIView::GetDocument()
   { return (CEnumWindow_GUIDoc*)m_pDocument; }
#endif

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_ENUMWINDOW_GUIVIEW_H__26341EE7_B0B5_4284_AF7D_E8F507A9A1EE__INCLUDED_)
