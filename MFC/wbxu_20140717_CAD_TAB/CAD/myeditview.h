#if !defined(AFX_MYEDITVIEW_H__7D18462A_682C_44EE_B006_D6B8F21BD4E0__INCLUDED_)
#define AFX_MYEDITVIEW_H__7D18462A_682C_44EE_B006_D6B8F21BD4E0__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// myeditview.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CMyEditView view

class CMyEditView : public CEditView
{
protected:
	CMyEditView();           // protected constructor used by dynamic creation
	DECLARE_DYNCREATE(CMyEditView)

// Attributes
public:

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMyEditView)
	public:
	virtual void OnInitialUpdate();
	protected:
	virtual void OnDraw(CDC* pDC);      // overridden to draw this view
	virtual void OnUpdate(CView* pSender, LPARAM lHint, CObject* pHint);
	//}}AFX_VIRTUAL

// Implementation
protected:
	virtual ~CMyEditView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

	// Generated message map functions
protected:
	//{{AFX_MSG(CMyEditView)
		// NOTE - the ClassWizard will add and remove member functions here.
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MYEDITVIEW_H__7D18462A_682C_44EE_B006_D6B8F21BD4E0__INCLUDED_)
