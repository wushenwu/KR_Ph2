// MyEditView.cpp : implementation file
//

#include "stdafx.h"
#include "CAD.h"
#include "myeditview.h"

#include "Shape\MyShape.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CMyEditView

// #define PS_SOLID            0
// #define PS_DASH             1       // -------  
// #define PS_DOT              2       // .......  
// #define PS_DASHDOT          3       // _._._._  
// #define PS_DASHDOTDOT       4       // _.._.._ 
char g_szPenStyle[][8] = {
    "_______",
    "-------",
    ".......",
    "_._._._",
    "_.._.._"
};

IMPLEMENT_DYNCREATE(CMyEditView, CEditView)

CMyEditView::CMyEditView()
{
}

CMyEditView::~CMyEditView()
{
}


BEGIN_MESSAGE_MAP(CMyEditView, CEditView)
	//{{AFX_MSG_MAP(CMyEditView)
		// NOTE - the ClassWizard will add and remove mapping macros here.
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMyEditView drawing

void CMyEditView::OnDraw(CDC* pDC)
{
	CDocument* pDoc = GetDocument();
	// TODO: add draw code here
}

/////////////////////////////////////////////////////////////////////////////
// CMyEditView diagnostics

#ifdef _DEBUG
void CMyEditView::AssertValid() const
{
	CEditView::AssertValid();
}

void CMyEditView::Dump(CDumpContext& dc) const
{
	CEditView::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CMyEditView message handlers

void CMyEditView::OnInitialUpdate() 
{
	CEditView::OnInitialUpdate();
	
	// TODO: Add your specialized code here and/or call the base class
    TCHAR szInfo[MAXBYTE];

    tagPen pen;
    wsprintf(szInfo, TEXT("Pen: "
                          "\r\n\tStyle: %s"
                          "\r\n\tWidth: %d"
                          "\r\n\tColor:%X\r\n"), 
                          g_szPenStyle[pen.m_nStyle], 
                          pen.m_nWidth, 
                          pen.m_Color);

    tagBrush brush;
    wsprintf(szInfo, TEXT("%s"
                          "Brush:" 
                          "\r\n\t实体?: %c"
                          "\r\n\tColor: 0x%X\r\n"), 
                            szInfo,
                            (brush.m_IsSolid ? 'Y' : 'N'), 
                            brush.m_Color
                            );
    

	CEdit& ctrl = GetEditCtrl();
    ctrl.SetWindowText(szInfo);    
}

void CMyEditView::OnUpdate(CView* pSender, LPARAM lHint, CObject* pHint) 
{
	// TODO: Add your specialized code here and/or call the base class
	if (NULL == pHint)
	{
        return;
	}

    TCHAR szInfo[MAXBYTE];

    tagPen pen = ((CMyShape *)pHint)->GetPen();
    tagBrush brush = ((CMyShape *)pHint)->GetBrush();
    
    wsprintf(szInfo, TEXT("Pen: "
                        "\r\n\tStyle: %s"
                        "\r\n\tWidth: %d"
                        "\r\n\tColor:0x%x\r\n"), 
                        g_szPenStyle[pen.m_nStyle], 
                        pen.m_nWidth, 
                        pen.m_Color);
   
    wsprintf(szInfo, TEXT("%s"
        "Brush:" 
        "\r\n\t实体?: %c"
        "\r\n\tColor: 0x%x\r\n"), 
        szInfo,
        (brush.m_IsSolid ? 'Y' : 'N'), 
        brush.m_Color
        );
    
    
    CEdit& ctrl = GetEditCtrl();
    ctrl.SetWindowText(szInfo);    
	
}
