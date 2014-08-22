// WindowView.cpp : implementation file
//

#include "stdafx.h"
#include "MySpy.h"
#include "WindowView.h"

#include "Info.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CWindowView

IMPLEMENT_DYNCREATE(CWindowView, CTreeView)

CWindowView::CWindowView()
{
}

CWindowView::~CWindowView()
{
}


BEGIN_MESSAGE_MAP(CWindowView, CTreeView)
	//{{AFX_MSG_MAP(CWindowView)
		// NOTE - the ClassWizard will add and remove mapping macros here.
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CWindowView drawing

void CWindowView::OnDraw(CDC* pDC)
{
	CDocument* pDoc = GetDocument();
	// TODO: add draw code here
}

/////////////////////////////////////////////////////////////////////////////
// CWindowView diagnostics

#ifdef _DEBUG
void CWindowView::AssertValid() const
{
	CTreeView::AssertValid();
}

void CWindowView::Dump(CDumpContext& dc) const
{
	CTreeView::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CWindowView message handlers
#if 0
BOOL CALLBACK EnumChildProc(
                            HWND hwnd,      // handle to child window
                            LPARAM lParam   // application-defined value
)
{
    CString str;
    CString strRecord;
    CInfo obj(hwnd, str);
    
    obj.GetWindowText();
    strRecord.Format("%p \"%s\"", hwnd, str);
    
    obj.GetClassName();
    strRecord.Format("%s \"%s\"", strRecord, str);
    
    //ÃÌº”item
    //HTREEITEM hParent = ctrl.InsertItem(strRecord, 0); 
    
    return TRUE;
}
#endif

void CWindowView::OnInitialUpdate() 
{
	CTreeView::OnInitialUpdate();
	
    //…Ë÷√TreeView Style
    LONG lOld = GetWindowLong(GetSafeHwnd(), GWL_STYLE);
    SetWindowLong(GetSafeHwnd(), 
                    GWL_STYLE, lOld | TVS_HASBUTTONS | TVS_HASLINES | TVS_LINESATROOT
                    );

    CTreeCtrl& ctrl = GetTreeCtrl();

    HWND hWnd = ::GetDesktopWindow();
    
    //EnumChildWindows(hWnd, EnumChildProc, this);
}
