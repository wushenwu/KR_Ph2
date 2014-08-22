// ChildFrm.cpp : implementation of the CChildFrame class
//

#include "stdafx.h"
#include "VC.h"

#include "ChildFrm.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CChildFrame

IMPLEMENT_DYNCREATE(CChildFrame, CMDIChildWnd)

BEGIN_MESSAGE_MAP(CChildFrame, CMDIChildWnd)
	//{{AFX_MSG_MAP(CChildFrame)
		// NOTE - the ClassWizard will add and remove mapping macros here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CChildFrame construction/destruction

CChildFrame::CChildFrame()
{
	// TODO: add member initialization code here
	
}

CChildFrame::~CChildFrame()
{
}

BOOL CChildFrame::PreCreateWindow(CREATESTRUCT& cs)
{
	// TODO: Modify the Window class or styles here by modifying
	//  the CREATESTRUCT cs

	if( !CMDIChildWnd::PreCreateWindow(cs) )
		return FALSE;

	return TRUE;
}



/////////////////////////////////////////////////////////////////////////////
// CChildFrame diagnostics

#ifdef _DEBUG
void CChildFrame::AssertValid() const
{
	CMDIChildWnd::AssertValid();
}

void CChildFrame::Dump(CDumpContext& dc) const
{
	CMDIChildWnd::Dump(dc);
}

#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CChildFrame message handlers

BOOL CChildFrame::OnCreateClient(LPCREATESTRUCT lpcs, CCreateContext* pContext) 
{
	// TODO: Add your specialized code here and/or call the base class

#if 0
    //划分成两行一列
    BOOL bRet = m_SplitterWndTop.CreateStatic(this, 2, 1);
    
    //将第1行进行再分割，分割成一个TreeView，和原来的画图视图
    bRet = m_SplitterWndLeft.CreateStatic(&m_SplitterWndTop, 
        1, 2, 
        WS_CHILD | WS_VISIBLE, 
        m_SplitterWndTop.IdFromRowCol(0, 0)
        );
    
    /*紧接着createview*/
    //这里创建浏览视图
    m_SplitterWndLeft.CreateView(0, 0, pContext->m_pNewViewClass, CSize(0, 0), pContext);
    m_SplitterWndLeft.CreateView(0, 1, pContext->m_pNewViewClass, CSize(0, 0), pContext);
    
    m_SplitterWndLeft.SetColumnInfo(0, 200, 1);
    
    //将第2行设置为CEditView
    m_SplitterWndTop.CreateView(1, 0, pContext->m_pNewViewClass, CSize(0, 0), pContext);
    
    m_SplitterWndTop.SetRowInfo(0, 300, 10);

    return TRUE;
#endif

	return CMDIChildWnd::OnCreateClient(lpcs, pContext);
    
}
