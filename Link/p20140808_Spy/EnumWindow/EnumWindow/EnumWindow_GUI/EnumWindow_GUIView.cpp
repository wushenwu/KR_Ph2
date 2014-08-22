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
static CString strWndText;
static CString strClassName;

void EnumZOrder(HWND hCurrent, HTREEITEM hParentTree)
{
    //先将自身插入到父节点的孩子中
    ::GetWindowText(hCurrent, strWndText.GetBuffer(0), MAXBYTE);
    ::GetClassName(hCurrent, strClassName.GetBuffer(0), MAXBYTE);
    str.Format("0x%08p \"%s\" \"%s\"", 
                    hCurrent,
                    strWndText,
                    strClassName);
    HTREEITEM hSubTree = pctrl->InsertItem(str, hParentTree);

    //先处理child
    HWND hChild = ::GetWindow(hCurrent, GW_CHILD);
    if (hChild != NULL)
    {
        EnumZOrder(hChild, hSubTree);
    }

    //再处理next
    HWND hNext = ::GetWindow(hCurrent, GW_HWNDNEXT);
    if (hNext != NULL)
    {
        EnumZOrder(hNext, hParentTree);
    }
}

void CEnumWindow_GUIView::EnumAllWindows()
{
    pctrl = &GetTreeCtrl();
    ASSERT(pctrl != NULL);

    HWND hWndDeskTop = ::GetDesktopWindow();

    str.Format("0x%08p", hWndDeskTop);
    HTREEITEM hParentTree = pctrl->InsertItem(str, 0);

    HWND hChild = ::GetWindow(hWndDeskTop, GW_CHILD);
    EnumZOrder(hChild, hParentTree);
}
