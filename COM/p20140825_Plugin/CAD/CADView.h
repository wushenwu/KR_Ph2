// CADView.h : interface of the CCADView class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_CADVIEW_H__E3750CEC_81A2_461E_A82B_651D71BDB2C7__INCLUDED_)
#define AFX_CADVIEW_H__E3750CEC_81A2_461E_A82B_651D71BDB2C7__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "Shape\MyShapeFactory.h"

#include "Command\MyCmdMgr.h"

#include "IShape.h"

#define  USE_ISHAPE

class CCADView : public CView
{
protected: // create from serialization only
	CCADView();
	DECLARE_DYNCREATE(CCADView)

// Attributes
public:
	CCADDoc* GetDocument();

protected:
    void ProcessSelect(CPoint point);
    void ProcessMove(CPoint point);
    void ProcessRotate(CPoint point);
    void ResetSelect(void);

public:
    //图形类，及图形类工厂，以解决多态问题
#ifdef USE_ISHAPE
    IShape *m_pMyShape;
    IShapeFactory *m_pMyShapeFactory;
    IShape *m_pSelectShape;
#else
    CMyShape *m_pMyShape;
    CMyShapeFactory *m_pMyShapeFactory;
    CMyShape *m_pSelectShape;
#endif

    //命令管理器
    CMyCmdMgr m_CmdMgr;

    //选择
    BOOL m_IsSelect;

    //移动
    BOOL m_IsMove;

    //旋转
    BOOL m_IsRotate;
    
    BOOL m_IsDown;

    //
    tagPen m_tagPen;
    tagBrush m_tagBrush;

protected:
    //关于菜单的设置
    UINT    m_nMenuID;
    

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CCADView)
	public:
	virtual void OnDraw(CDC* pDC);  // overridden to draw this view
	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
	virtual void OnInitialUpdate();
	protected:
	virtual BOOL OnPreparePrinting(CPrintInfo* pInfo);
	virtual void OnBeginPrinting(CDC* pDC, CPrintInfo* pInfo);
	virtual void OnEndPrinting(CDC* pDC, CPrintInfo* pInfo);
	virtual BOOL OnCommand(WPARAM wParam, LPARAM lParam);
	//}}AFX_VIRTUAL

// Implementation
public:
	void CheckMenu(UINT nMenuID);
	virtual BOOL ChangeCursor(void);
	virtual ~CCADView();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// Generated message map functions
protected:
	//{{AFX_MSG(CCADView)
#ifndef USE_ISHAPE
	afx_msg void OnLine();
	afx_msg void OnRect();
    afx_msg void OnEllipse();
#endif
	afx_msg void OnLButtonDown(UINT nFlags, CPoint point);
	afx_msg void OnLButtonUp(UINT nFlags, CPoint point);
	afx_msg void OnMouseMove(UINT nFlags, CPoint point);
	afx_msg void OnCapture();
	afx_msg void OnSet();
	afx_msg void OnEditUndo();
	afx_msg void OnEditRedo();
	afx_msg void OnSelect();
	afx_msg void OnDelete();
	afx_msg void OnModify();
	afx_msg void OnMove();
	afx_msg void OnRButtonDown(UINT nFlags, CPoint point);
	afx_msg void OnCancel();
	afx_msg void OnRotate();
	afx_msg void OnShapeMenuUI(CCmdUI* pCmdUI);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

#ifndef _DEBUG  // debug version in CADView.cpp
inline CCADDoc* CCADView::GetDocument()
   { return (CCADDoc*)m_pDocument; }
#endif

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CADVIEW_H__E3750CEC_81A2_461E_A82B_651D71BDB2C7__INCLUDED_)
