// MainFrm.h : interface of the CMainFrame class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_MAINFRM_H__6BB0DF89_86C0_4F53_80ED_3EFCA6E831BB__INCLUDED_)
#define AFX_MAINFRM_H__6BB0DF89_86C0_4F53_80ED_3EFCA6E831BB__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#pragma warning(disable: 4786)

#define USE_ISHAPE
#ifdef USE_ISHAPE
    #include "IShape.h"
#endif

class CMainFrame : public CFrameWnd
{
	
protected: // create from serialization only
	CMainFrame();
	DECLARE_DYNCREATE(CMainFrame)

// Attributes
public:

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMainFrame)
	public:
	virtual BOOL PreCreateWindow(CREATESTRUCT& cs);
	protected:
	virtual BOOL OnCreateClient(LPCREATESTRUCT lpcs, CCreateContext* pContext);
	virtual BOOL OnCommand(WPARAM wParam, LPARAM lParam);
	//}}AFX_VIRTUAL

// Implementation
public:
	static void ShowErrorMessage();
	void LoadPlugin();
	virtual ~CMainFrame();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:  // control bar embedded members
	CStatusBar  m_wndStatusBar;
	CToolBar    m_wndToolBar;

    //自己的工具栏
    CToolBar    m_ShapeToolBar;
    CToolBar    m_ControlBar;
    CImageList  m_ImageList;

    //工具栏上控件
    CEdit       m_EditCtrl;

    //
    CDialogBar  m_DlgBar;

    //关于视图分割
    CSplitterWnd m_SplitterWnd1;  
    CSplitterWnd m_SplitterWnd2;


// Generated message map functions
protected:
	int CreateMyDlgBar(void);
	int CreateMyConrolBar();
	int CreateMyShapeBar(void);
	//{{AFX_MSG(CMainFrame)
	afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
	afx_msg void OnViewStatusBar();
	afx_msg void OnUpdateViewStatusBar(CCmdUI* pCmdUI);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MAINFRM_H__6BB0DF89_86C0_4F53_80ED_3EFCA6E831BB__INCLUDED_)
