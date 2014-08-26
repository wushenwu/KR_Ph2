// shapestreeview.cpp : implementation file
//

#include "stdafx.h"
#include "CAD.h"
#include "shapestreeview.h"

#include "Shape\MyLine.h"
#include "Shape\MyRect.h"
#include "Shape\MyEllipse.h"

#define USE_ISHAPE
#ifdef USE_ISHAPE
    #include "IShape.h"
#endif

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CShapesTreeView

HTREEITEM g_hLine;
HTREEITEM g_hRect;
HTREEITEM g_hEllipse;


IMPLEMENT_DYNCREATE(CShapesTreeView, CTreeView)

CShapesTreeView::CShapesTreeView()
{
}

CShapesTreeView::~CShapesTreeView()
{
}


BEGIN_MESSAGE_MAP(CShapesTreeView, CTreeView)
	//{{AFX_MSG_MAP(CShapesTreeView)
		// NOTE - the ClassWizard will add and remove mapping macros here.
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CShapesTreeView drawing

void CShapesTreeView::OnDraw(CDC* pDC)
{
	CDocument* pDoc = GetDocument();
	// TODO: add draw code here
}

/////////////////////////////////////////////////////////////////////////////
// CShapesTreeView diagnostics

#ifdef _DEBUG
void CShapesTreeView::AssertValid() const
{
	CTreeView::AssertValid();
}

void CShapesTreeView::Dump(CDumpContext& dc) const
{
	CTreeView::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CShapesTreeView message handlers

void CShapesTreeView::OnUpdate(CView* pSender, LPARAM lHint, CObject* pHint) 
{
	// TODO: Add your specialized code here and/or call the base class
    if (NULL == pHint)
    {
        return;
    }

    TCHAR szInfo[MAXBYTE];

#ifdef USE_ISHAPE
    ((IShape *)pHint)->GetPositionInfo(szInfo);
    //#define CMyLine CLine
#else
    ((CMyShape *)pHint)->GetPositionInfo(szInfo);
    #define CMyLine CMyLine
#endif

    CTreeCtrl& ctrl = GetTreeCtrl();
    if (pHint->IsKindOf(RUNTIME_CLASS(CMyLine)))
    {
        ctrl.InsertItem(szInfo, 1, 1, g_hLine);
    }

#if 0
    else if (pHint->IsKindOf(RUNTIME_CLASS(CMyRect)))
    {
        ctrl.InsertItem(szInfo, 2, 2, g_hRect);
    }
    else if (pHint->IsKindOf(RUNTIME_CLASS(CMyEllipse)))
    {
        ctrl.InsertItem(szInfo, 3, 3, g_hEllipse);
    } 
#endif
}

void CShapesTreeView::OnInitialUpdate() 
{
	CTreeView::OnInitialUpdate();
	
	// TODO: Add your specialized code here and/or call the base class

    if (m_ImageList != NULL)    //这样避免图片的重复加载
    {
        return;
    }

    //设置TreeView Style
    LONG lOld = GetWindowLong(GetSafeHwnd(), GWL_STYLE);
    SetWindowLong(GetSafeHwnd(), 
                    GWL_STYLE, lOld | TVS_HASBUTTONS | TVS_HASLINES | TVS_LINESATROOT
                    );

    //加载图片列表
    m_ImageList.Create(16, 16, ILC_COLOR32 | ILC_MASK, 0, 4);
    m_ImageList.Add(LoadIcon(AfxGetInstanceHandle(), 
                    MAKEINTRESOURCE(IDI_SHAPE)));
    m_ImageList.Add(LoadIcon(AfxGetInstanceHandle(), 
                    MAKEINTRESOURCE(IDI_LINE)));
    m_ImageList.Add(LoadIcon(AfxGetInstanceHandle(), 
                    MAKEINTRESOURCE(IDI_RECT)));
    m_ImageList.Add(LoadIcon(AfxGetInstanceHandle(), 
                    MAKEINTRESOURCE(IDI_ELLIPSE)));

    //设置图片列表
    CTreeCtrl& ctrl = GetTreeCtrl();
    ctrl.SetImageList(&m_ImageList, TVSIL_NORMAL );

    //添加item
    HTREEITEM hParent = ctrl.InsertItem("ShapesTreeView", 0, 0);
    g_hLine   = ctrl.InsertItem("Line", 1, 1, hParent);
    g_hRect   = ctrl.InsertItem("Rect", 2, 2, hParent);
    g_hEllipse= ctrl.InsertItem("Ellipse", 3, 3, hParent);
}
