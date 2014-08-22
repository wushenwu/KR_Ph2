// RCT_ClientView.h : interface of the CRCT_ClientView class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_RCT_CLIENTVIEW_H__7136B179_601F_47D2_8CAF_047F4DBC6067__INCLUDED_)
#define AFX_RCT_CLIENTVIEW_H__7136B179_601F_47D2_8CAF_047F4DBC6067__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "..\\RCT_Server\\MySocket.h"
#include "..\\RCT_Server\\RCT_Common.h"


class CRCT_ClientView : public CView
{
protected: // create from serialization only
	CRCT_ClientView();
	DECLARE_DYNCREATE(CRCT_ClientView)

// Attributes
public:
	CRCT_ClientDoc* GetDocument();

// Operations
public:

public:
    CMySocket m_MySocket;

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CRCT_ClientView)
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
	void ProcessCapture(char *szBuff);
	virtual ~CRCT_ClientView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// Generated message map functions
protected:
	//{{AFX_MSG(CRCT_ClientView)
	afx_msg void OnRCTStart();
	afx_msg void OnCapture();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

#ifndef _DEBUG  // debug version in RCT_ClientView.cpp
inline CRCT_ClientDoc* CRCT_ClientView::GetDocument()
   { return (CRCT_ClientDoc*)m_pDocument; }
#endif

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_RCT_CLIENTVIEW_H__7136B179_601F_47D2_8CAF_047F4DBC6067__INCLUDED_)
