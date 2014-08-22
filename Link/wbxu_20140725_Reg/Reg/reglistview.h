#if !defined(AFX_REGLISTVIEW_H__BA958C7E_2FCF_4750_9864_A51A01A17889__INCLUDED_)
#define AFX_REGLISTVIEW_H__BA958C7E_2FCF_4750_9864_A51A01A17889__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// reglistview.h : header file
//
#include <afxcview.h>
#include "RegDoc.h"

/////////////////////////////////////////////////////////////////////////////
// CRegListView view
class CRegListView : public CListView
{
protected:
	CRegListView();           // protected constructor used by dynamic creation
	DECLARE_DYNCREATE(CRegListView)

// Attributes
protected:
    CImageList m_ImgList;

    //跟踪当前选中的key
    CUpdateInfo m_UpdateInfo;

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CRegListView)
	public:
	virtual void OnInitialUpdate();
	protected:
	virtual void OnDraw(CDC* pDC);      // overridden to draw this view
	virtual void OnUpdate(CView* pSender, LPARAM lHint, CObject* pHint);
	//}}AFX_VIRTUAL

// Implementation
protected:
	virtual ~CRegListView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

	// Generated message map functions
public:
	void ForceUpdate(void);
	//{{AFX_MSG(CRegListView)
	afx_msg void OnRButtonDown(UINT nFlags, CPoint point);
	afx_msg void OnNewSZValue();
	afx_msg void OnDelValue();
	afx_msg void OnNewbi();
	afx_msg void OnNewdword();
	afx_msg void OnModifyValue();
	afx_msg void OnDblclk(NMHDR* pNMHDR, LRESULT* pResult);
	afx_msg void OnNewkey();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

extern CRegListView *g_pRegLstView;

#endif // !defined(AFX_REGLISTVIEW_H__BA958C7E_2FCF_4750_9864_A51A01A17889__INCLUDED_)
