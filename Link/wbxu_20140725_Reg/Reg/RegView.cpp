// RegView.cpp : implementation of the CRegView class
//

#include "stdafx.h"
#include "Reg.h"

#include "RegDoc.h"
#include "RegView.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CRegView

IMPLEMENT_DYNCREATE(CRegView, CView)

BEGIN_MESSAGE_MAP(CRegView, CView)
	//{{AFX_MSG_MAP(CRegView)
		// NOTE - the ClassWizard will add and remove mapping macros here.
		//    DO NOT EDIT what you see in these blocks of generated code!
	//}}AFX_MSG_MAP
	// Standard printing commands
	ON_COMMAND(ID_FILE_PRINT, CView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_DIRECT, CView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_PREVIEW, CView::OnFilePrintPreview)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CRegView construction/destruction

CRegView::CRegView()
{
	// TODO: add construction code here

}

CRegView::~CRegView()
{
}

BOOL CRegView::PreCreateWindow(CREATESTRUCT& cs)
{
	// TODO: Modify the Window class or styles here by modifying
	//  the CREATESTRUCT cs

	return CView::PreCreateWindow(cs);
}

/////////////////////////////////////////////////////////////////////////////
// CRegView drawing

void CRegView::OnDraw(CDC* pDC)
{
	CRegDoc* pDoc = GetDocument();
	ASSERT_VALID(pDoc);
	// TODO: add draw code for native data here
}

/////////////////////////////////////////////////////////////////////////////
// CRegView printing

BOOL CRegView::OnPreparePrinting(CPrintInfo* pInfo)
{
	// default preparation
	return DoPreparePrinting(pInfo);
}

void CRegView::OnBeginPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
{
	// TODO: add extra initialization before printing
}

void CRegView::OnEndPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
{
	// TODO: add cleanup after printing
}

/////////////////////////////////////////////////////////////////////////////
// CRegView diagnostics

#ifdef _DEBUG
void CRegView::AssertValid() const
{
	CView::AssertValid();
}

void CRegView::Dump(CDumpContext& dc) const
{
	CView::Dump(dc);
}

CRegDoc* CRegView::GetDocument() // non-debug version is inline
{
	ASSERT(m_pDocument->IsKindOf(RUNTIME_CLASS(CRegDoc)));
	return (CRegDoc*)m_pDocument;
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CRegView message handlers
