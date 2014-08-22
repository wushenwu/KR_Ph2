// MySpyView.h : interface of the CMessageView class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_MYSPYVIEW_H__9241D076_5A9B_4853_BF7E_853D79040D01__INCLUDED_)
#define AFX_MYSPYVIEW_H__9241D076_5A9B_4853_BF7E_853D79040D01__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "afxcview.h"

class CMessageView : public CListView
{
protected: // create from serialization only
	CMessageView();
	DECLARE_DYNCREATE(CMessageView)

// Attributes
public:
	CMessageDoc* GetDocument();

    HANDLE m_hMap;
    LPVOID m_lpBuff;

    HANDLE m_hWriteEvent;
    HANDLE m_hReadEvent;

    BOOL m_IsStop;

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMessageView)
	public:
    virtual void OnInitialUpdate();
	virtual void OnDraw(CDC* pDC);  // overridden to draw this view
	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
	protected:
	virtual BOOL OnPreparePrinting(CPrintInfo* pInfo);
	virtual void OnBeginPrinting(CDC* pDC, CPrintInfo* pInfo);
	virtual void OnEndPrinting(CDC* pDC, CPrintInfo* pInfo);
	//}}AFX_VIRTUAL

// Implementation
public:
	void PrepareBuffer();
	virtual ~CMessageView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// Generated message map functions
protected:
	//{{AFX_MSG(CMessageView)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
    afx_msg void OnStartStop();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

#ifndef _DEBUG  // debug version in MySpyView.cpp
inline CMessageDoc* CMessageView::GetDocument()
   { return (CMessageDoc*)m_pDocument; }
#endif

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MYSPYVIEW_H__9241D076_5A9B_4853_BF7E_853D79040D01__INCLUDED_)
