// MainFrm.h : interface of the CMainFrame class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_MAINFRM_H__A2B519A4_8CD6_497A_B544_6E6FEE8C7B0E__INCLUDED_)
#define AFX_MAINFRM_H__A2B519A4_8CD6_497A_B544_6E6FEE8C7B0E__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

class CCompileBar: public CToolBar
{
public:
    CComboBox   m_comboBox_PRO;
    CComboBox   m_comboBox_CONFIG;
};

class CMainFrame : public CMDIFrameWnd
{
	DECLARE_DYNAMIC(CMainFrame)
public:
	CMainFrame();

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
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CMainFrame();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:  // control bar embedded members
	CStatusBar  m_wndStatusBar;
	CToolBar    m_wndToolBar;

    //±‡“Î
    CCompileBar m_CompileBar;

    //WorkSpace
    CDialogBar m_WorkSpaceBar;
    CImageList m_ImgListWorkSpace;
    CDialog *m_pDlg[3];

    //Output
    CDialogBar m_OutputBar;
    CImageList m_ImgListOutput;
    CDialog *m_pDlgOutput[3];

    //∑÷∏Ó
//     CSplitterWnd m_SplitterWndTop;
//     CSplitterWnd m_SplitterWndLeft;

// Generated message map functions
protected:
	BOOL CreateOutputBar(void);
	BOOL CreateWorkSpaceBar(void);
	BOOL CreateCompileBar(void);
	//{{AFX_MSG(CMainFrame)
	afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
	afx_msg void OnCompileTBD();
    afx_msg void OnSelchangeWorkSpace(NMHDR* pNMHDR, LRESULT* pResult);
    afx_msg void OnSelchangeOutPut(NMHDR* pNMHDR, LRESULT* pResult);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MAINFRM_H__A2B519A4_8CD6_497A_B544_6E6FEE8C7B0E__INCLUDED_)
