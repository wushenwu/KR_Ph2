#if !defined(AFX_REGTREEVIEW_H__79CA0173_37CA_4500_959D_CBA484D3253C__INCLUDED_)
#define AFX_REGTREEVIEW_H__79CA0173_37CA_4500_959D_CBA484D3253C__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// regtreeview.h : header file
//

#include <afxcview.h>
#include "RegDoc.h"

/////////////////////////////////////////////////////////////////////////////
// CRegTreeView view

class CRegTreeView : public CTreeView
{
protected:
	CRegTreeView();           // protected constructor used by dynamic creation
	DECLARE_DYNCREATE(CRegTreeView)

// Attributes
protected:
    CImageList m_ImageList;

    CUpdateInfo m_UpdateInfo;

// Operations
public:
    CRegDoc* GetDocument();

    void 
    EnumKey(HKEY hKey, LPCTSTR lpSubKey, 
            HTREEITEM hParent, CTreeCtrl& treeCtrl,
            BOOL IsActive); //延迟加载，是否主动预取

    void EnumValue(CString &fullpath, HTREEITEM hCurSel);

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CRegTreeView)
	public:
	virtual void OnInitialUpdate();
	protected:
	virtual void OnDraw(CDC* pDC);      // overridden to draw this view
	virtual void OnUpdate(CView* pSender, LPARAM lHint, CObject* pHint);
	//}}AFX_VIRTUAL

// Implementation
protected:
	virtual ~CRegTreeView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

	// Generated message map functions
public:
	//{{AFX_MSG(CRegTreeView)
	afx_msg void OnSelchanged(NMHDR* pNMHDR, LRESULT* pResult);
	afx_msg void OnRButtonDown(UINT nFlags, CPoint point);
	afx_msg void OnNewSZValue();
	afx_msg void OnNewBIValue();
	afx_msg void OnNewdword();
	afx_msg void OnNewkey();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

extern CRegTreeView *g_pRegTreeView;
#endif // !defined(AFX_REGTREEVIEW_H__79CA0173_37CA_4500_959D_CBA484D3253C__INCLUDED_)
