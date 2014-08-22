// EnumWindow_GUIView.cpp : implementation of the CEnumWindow_GUIView class
//

#include "stdafx.h"
#include "EnumWindow_GUI.h"

#include "EnumWindow_GUIDoc.h"
#include "EnumWindow_GUIView.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CEnumWindow_GUIView

IMPLEMENT_DYNCREATE(CEnumWindow_GUIView, CTreeView)

BEGIN_MESSAGE_MAP(CEnumWindow_GUIView, CTreeView)
	//{{AFX_MSG_MAP(CEnumWindow_GUIView)
		// NOTE - the ClassWizard will add and remove mapping macros here.
		//    DO NOT EDIT what you see in these blocks of generated code!
	//}}AFX_MSG_MAP
	// Standard printing commands
	ON_COMMAND(ID_FILE_PRINT, CTreeView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_DIRECT, CTreeView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_PREVIEW, CTreeView::OnFilePrintPreview)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CEnumWindow_GUIView construction/destruction

CEnumWindow_GUIView::CEnumWindow_GUIView()
{
	// TODO: add construction code here

}

CEnumWindow_GUIView::~CEnumWindow_GUIView()
{
}

BOOL CEnumWindow_GUIView::PreCreateWindow(CREATESTRUCT& cs)
{
	// TODO: Modify the Window class or styles here by modifying
	//  the CREATESTRUCT cs

	return CTreeView::PreCreateWindow(cs);
}

/////////////////////////////////////////////////////////////////////////////
// CEnumWindow_GUIView drawing

void CEnumWindow_GUIView::OnDraw(CDC* pDC)
{
	CEnumWindow_GUIDoc* pDoc = GetDocument();
	ASSERT_VALID(pDoc);
	// TODO: add draw code for native data here
}

/////////////////////////////////////////////////////////////////////////////
// CEnumWindow_GUIView printing

BOOL CEnumWindow_GUIView::OnPreparePrinting(CPrintInfo* pInfo)
{
	// default preparation
	return DoPreparePrinting(pInfo);
}

void CEnumWindow_GUIView::OnBeginPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
{
	// TODO: add extra initialization before printing
}

void CEnumWindow_GUIView::OnEndPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
{
	// TODO: add cleanup after printing
}

/////////////////////////////////////////////////////////////////////////////
// CEnumWindow_GUIView diagnostics

#ifdef _DEBUG
void CEnumWindow_GUIView::AssertValid() const
{
	CTreeView::AssertValid();
}

void CEnumWindow_GUIView::Dump(CDumpContext& dc) const
{
	CTreeView::Dump(dc);
}

CEnumWindow_GUIDoc* CEnumWindow_GUIView::GetDocument() // non-debug version is inline
{
	ASSERT(m_pDocument->IsKindOf(RUNTIME_CLASS(CEnumWindow_GUIDoc)));
	return (CEnumWindow_GUIDoc*)m_pDocument;
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CEnumWindow_GUIView message handlers

void CEnumWindow_GUIView::OnInitialUpdate() 
{
	CTreeView::OnInitialUpdate();
	
    //设置TreeView Style
    LONG lOld = GetWindowLong(GetSafeHwnd(), GWL_STYLE);
    SetWindowLong(GetSafeHwnd(), 
                    GWL_STYLE, lOld | TVS_HASBUTTONS | TVS_HASLINES | TVS_LINESATROOT
                    );

    EnumAllWindows();
	
}

typedef struct _tagWndItem
{
    HWND m_hWnd;
    HTREEITEM m_hParentTree;
}tagWndItem;

static CTreeCtrl *pctrl;
static CString str;

BOOL CALLBACK EnumChildProc(
                            HWND hwnd,      // handle to child window
                            LPARAM lParam   // application-defined value
                            )
{
    tagWndItem *pItem = (tagWndItem *)lParam;
    str.Format("0x%08p", hwnd);

    HWND hParent = GetParent(hwnd);
    if (hParent == (HWND)pItem->m_hWnd)
    {
        //为子窗口, 插入到父窗口树下
        
        HTREEITEM hSubTree = pctrl->InsertItem(str, pItem->m_hParentTree);
        
        //并遍历其子窗口
        tagWndItem tmpItem = {hwnd, hSubTree}; 
        EnumChildWindows(hwnd, EnumChildProc, (LPARAM)&tmpItem);
    }
    else
    {
        int n = 0;
    }
    return TRUE;
}

void CEnumWindow_GUIView::EnumAllWindows()
{
    pctrl = &GetTreeCtrl();
    ASSERT(pctrl != NULL);

    HWND hWndDeskTop = ::GetDesktopWindow();

    str.Format("0x%08p", hWndDeskTop);
    HTREEITEM hParentTree = pctrl->InsertItem(str, 0);

    //对子窗口进行遍历
    tagWndItem Item = {hWndDeskTop, hParentTree};
    ::EnumChildWindows(hWndDeskTop, EnumChildProc, (LPARAM)&Item);
}
