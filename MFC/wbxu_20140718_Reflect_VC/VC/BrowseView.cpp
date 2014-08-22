// BrowseView.cpp : implementation file
//

#include "stdafx.h"
#include "VC.h"
#include "BrowseView.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CBrowseView

IMPLEMENT_DYNCREATE(CBrowseView, CView)

CBrowseView::CBrowseView()
{
}

CBrowseView::~CBrowseView()
{
}


BEGIN_MESSAGE_MAP(CBrowseView, CView)
	//{{AFX_MSG_MAP(CBrowseView)
		// NOTE - the ClassWizard will add and remove mapping macros here.
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CBrowseView drawing

void CBrowseView::OnDraw(CDC* pDC)
{
	CDocument* pDoc = GetDocument();
	// TODO: add draw code here
}

/////////////////////////////////////////////////////////////////////////////
// CBrowseView diagnostics

#ifdef _DEBUG
void CBrowseView::AssertValid() const
{
	CView::AssertValid();
}

void CBrowseView::Dump(CDumpContext& dc) const
{
	CView::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CBrowseView message handlers
