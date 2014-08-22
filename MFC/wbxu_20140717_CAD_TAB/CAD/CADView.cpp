// CADView.cpp : implementation of the CCADView class
//

#include "stdafx.h"
#include "CAD.h"

#include "CADDoc.h"
#include "CADView.h"

#include "Set\setdlg.h"

#include "Shape\MyLine.h"

//add your object factory here
#include "Shape\MyLineFactory.h"
#include "Shape\MyRectFactory.h"
#include "Shape\MyEllipseFactory.h"

//add your command here
#include "Command\MyDrawCommand.h"
#include "Command\MyDeleteCommand.h"
#include "Command\MyModifyCommand.h"



#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

// �Բ˵�����ķ�ʽ
//#define  MENU_USE_MFC

/////////////////////////////////////////////////////////////////////////////
// CCADView

IMPLEMENT_DYNCREATE(CCADView, CView)

BEGIN_MESSAGE_MAP(CCADView, CView)
	//{{AFX_MSG_MAP(CCADView)
	ON_COMMAND(IDM_LINE, OnLine)
	ON_COMMAND(IDM_RECT, OnRect)
	ON_WM_LBUTTONDOWN()
	ON_WM_LBUTTONUP()
	ON_WM_MOUSEMOVE()
	ON_COMMAND(IDM_ELLIPSE, OnEllipse)
	ON_COMMAND(IDM_CAPTURE, OnCapture)
	ON_COMMAND(IDM_SET, OnSet)
	ON_COMMAND(ID_EDIT_UNDO, OnEditUndo)
	ON_COMMAND(ID_EDIT_REDO, OnEditRedo)
	ON_COMMAND(IDM_SELECT, OnSelect)
	ON_COMMAND(IDM_DELETE, OnDelete)
	ON_COMMAND(IDM_MODIFY, OnModify)
	ON_COMMAND(IDM_MOVE, OnMove)
	ON_WM_RBUTTONDOWN()
	ON_COMMAND(IDM_ROTATE, OnRotate)
	ON_COMMAND(IDM_CANCEL, OnCancel)
	//ON_UPDATE_COMMAND_UI(IDM_LINE, OnShapeMenuUI) //����ֱ�ߵĴ���
	//}}AFX_MSG_MAP
	// Standard printing commands
	ON_COMMAND(ID_FILE_PRINT, CView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_DIRECT, CView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_PREVIEW, CView::OnFilePrintPreview)
    //����µ���Ϣ
    ON_UPDATE_COMMAND_UI_RANGE(IDM_LINE, IDM_ELLIPSE, OnShapeMenuUI)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CCADView construction/destruction

CCADView::CCADView()
{
	// TODO: add construction code here
    m_pMyShape = NULL;
    m_pMyShapeFactory = NULL;

    m_IsSelect = FALSE;
    m_pSelectShape = NULL;
    m_IsMove = FALSE;
    m_IsRotate = FALSE;

    m_IsDown = FALSE;

    //
    m_nMenuID = 0;
}

CCADView::~CCADView()
{
    if (m_pMyShape != NULL)
    {
        delete m_pMyShape;
        m_pMyShape = NULL;
    }

    if (m_pMyShapeFactory != NULL)
    {
        delete m_pMyShapeFactory;
        m_pMyShapeFactory = NULL;
    }
}

BOOL CCADView::PreCreateWindow(CREATESTRUCT& cs)
{
	// TODO: Modify the Window class or styles here by modifying
	//  the CREATESTRUCT cs

	return CView::PreCreateWindow(cs);
}

/////////////////////////////////////////////////////////////////////////////
// CCADView drawing

void CCADView::OnDraw(CDC* pDC)
{
	CCADDoc* pDoc = GetDocument();
	ASSERT_VALID(pDoc);
	// TODO: add draw code for native data here

    /*
    ���ѱ����ͼ�ν����ػ�
    */
    //��䱳��
    CRect rc;
    GetClientRect(&rc);

    //����˫���壬���������仯����µ���˸����
    //1.���������ڴ�DC
    CDC memDC;
    memDC.CreateCompatibleDC(pDC);

    //2.��������λͼ
    CBitmap bitmap;
    bitmap.CreateCompatibleBitmap(pDC, rc.Width(), rc.Height());
    
    //3.ѡ��λͼ
    memDC.SelectObject(bitmap);

    //4.����
    //��䱳��
    CBrush brush(RGB(0xff, 0xff, 0xff));
    memDC.FillRect(&rc, &brush);

    CMyList<CMyShape> &ShapeList = pDoc->m_ShapeList;
    
    //�����Ѵ�ͼ��
    POSITION pos = ShapeList.GetHeadPosition();
    while(pos)
    {
        CMyShape *pmyShape = ShapeList.GetNext(pos);
        if (pmyShape == m_pSelectShape)
        {
            //��ѡ�е�ͼ�ν����ػ�
            pmyShape->OnSelected(&memDC);
        }
        else
        {
            pmyShape->Draw(&memDC);
        }
    }

    //�������Ƶ�ǰͼ��
    if (m_pMyShape != NULL)
    {
        m_pMyShape->Draw(&memDC);
    }

    //5.ճ��
    pDC->BitBlt(0, 0, rc.Width(), rc.Height(), &memDC, 0, 0, SRCCOPY);
}

/////////////////////////////////////////////////////////////////////////////
// CCADView printing

BOOL CCADView::OnPreparePrinting(CPrintInfo* pInfo)
{
	// default preparation
	return DoPreparePrinting(pInfo);
}

void CCADView::OnBeginPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
{
	// TODO: add extra initialization before printing
}

void CCADView::OnEndPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
{
	// TODO: add cleanup after printing
}

/////////////////////////////////////////////////////////////////////////////
// CCADView diagnostics

#ifdef _DEBUG
void CCADView::AssertValid() const
{
	CView::AssertValid();
}

void CCADView::Dump(CDumpContext& dc) const
{
	CView::Dump(dc);
}

CCADDoc* CCADView::GetDocument() // non-debug version is inline
{
	ASSERT(m_pDocument->IsKindOf(RUNTIME_CLASS(CCADDoc)));
	return (CCADDoc*)m_pDocument;
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CCADView message handlers

BOOL CCADView::ChangeCursor()
{
    HCURSOR hCursor = ::LoadCursor(NULL,
                                  MAKEINTRESOURCE(IDC_CROSS));
    if (NULL == hCursor )
    {
        return FALSE;
    }

    DWORD nRet = ::SetClassLong(GetSafeHwnd(), GCL_HCURSOR, (LONG)hCursor);
    if (0 == nRet)
    {
        return FALSE;
    }

    return TRUE;
}

void CCADView::OnLine() 
{
	// TODO: Add your command handler code here

    //�������ù�����̬����̬�Ĳ���ȷ���Ķ���
    if (m_pMyShapeFactory != NULL)
    {
        delete m_pMyShapeFactory;
    }

    m_pMyShapeFactory = new CMyLineFactory();

    ResetSelect();

#ifdef MENU_USE_MFC

    //�˵�����
    m_nMenuID = IDM_LINE;

#else

    CheckMenu(IDM_LINE);

#endif

}

void CCADView::OnRect() 
{
	// TODO: Add your command handler code here
    if (m_pMyShapeFactory != NULL)
    {
        delete m_pMyShapeFactory;
    }

    m_pMyShapeFactory = new CMyRectFactory();   
    
    ResetSelect();  
    
#ifdef MENU_USE_MFC
    //
    m_nMenuID = IDM_RECT;

#else

    CheckMenu(IDM_RECT);

#endif
}

void CCADView::ProcessSelect(CPoint point)
{
    //����point���Լ�ShapeList���ж�ѡ�����ĸ�ͼ��
    CCADDoc *pDoc = GetDocument();
    ASSERT_VALID(pDoc);

    CMyList<CMyShape> &ShapeList = pDoc->m_ShapeList;

    POSITION pos = ShapeList.GetTailPosition();
    while (pos)
    {
        CMyShape *pShape = ShapeList.GetPrev(pos);
        
        //�ɸ�ͼ���Լ������ж��Ƿ�ѡ��
        if (pShape->IsSelected(point))
        {
            m_pSelectShape = pShape;
            
            //�����ػ�
            InvalidateRect(NULL, FALSE);
            return;
        }
    }

    //���δѡ���κ�ͼ�Σ����������
    m_pSelectShape = NULL;
    InvalidateRect(NULL, FALSE);
}

void CCADView::ProcessMove(CPoint point)
{    
    if (NULL == m_pSelectShape)
    {
        return;
    }

    CCADDoc *pDoc = GetDocument();
    ASSERT_VALID(pDoc);
    
    CMyList<CMyShape> &ShapeList = pDoc->m_ShapeList;
   
    //Ӧ����ԭͼ��
    CMyShape *pOldState = m_pSelectShape->CopySelf();
    
    //�����µ�λ��
    m_pSelectShape->SetPosition(point);

    //�µ�״̬
    CMyShape *pNewState = m_pSelectShape->CopySelf();

    m_CmdMgr.AddCommand(new CMyModifyCommand(ShapeList, 
                                        m_pSelectShape, //��ǰͼ��
                                        pOldState,      //
                                        pNewState));

    InvalidateRect(NULL, FALSE);

}

void CCADView::ProcessRotate(CPoint point)
{    
    if (NULL == m_pSelectShape)
    {
        return;
    }
    
    CCADDoc *pDoc = GetDocument();
    ASSERT_VALID(pDoc);
    
    CMyList<CMyShape> &ShapeList = pDoc->m_ShapeList;
    
    //Ӧ����ԭͼ��
    CMyShape *pOldState = m_pSelectShape->CopySelf();
    
    //�����µ�λ��
    m_pSelectShape->SetPosition_Rotate(point);
    
    //�µ�״̬
    CMyShape *pNewState = m_pSelectShape->CopySelf();
    
    m_CmdMgr.AddCommand(new CMyModifyCommand(ShapeList, 
        m_pSelectShape, //��ǰͼ��
        pOldState,      //
        pNewState));
    
    InvalidateRect(NULL, FALSE);  
}

void CCADView::OnLButtonDown(UINT nFlags, CPoint point) 
{
    //����ͼ�ε���ת
    if (m_IsRotate)
    {
        ProcessRotate(point);
        return;
    }

    //����ͼ�ε��ƶ�
    if (m_IsMove)
    {
        ProcessMove(point);
        return;
    }

    //����ͼ�ε�ѡ��
    if (m_IsSelect)
    {
        ProcessSelect(point);
        return;
    }

	// TODO: Add your message handler code here and/or call default
    if (NULL == m_pMyShapeFactory)
    {
        return;
    }

    m_IsDown = TRUE;

    //�½�ͼ�ζ���
    if (m_pMyShape != NULL)
    {
        delete m_pMyShape;
    }

    m_pMyShape = m_pMyShapeFactory->CreateShape();
    if (NULL == m_pMyShape)
    {
        return;
    }

    //�ɸ�ͼ���Լ��������
    m_pMyShape->OnLButtonDown(nFlags, point);

    //����ͼ�εĻ��ʺͻ�ˢ
    m_pMyShape->SetPen(m_tagPen);
    m_pMyShape->SetBrush(m_tagBrush);
    
    SetCapture(); //��곬�����ڣ����Լ�����Ӧ��Ϣ

	CView::OnLButtonDown(nFlags, point);
}

void CCADView::OnLButtonUp(UINT nFlags, CPoint point) 
{
	// TODO: Add your message handler code here and/or call default
    if (NULL == m_pMyShapeFactory
        || !m_IsDown)
    {
        return;
    }

    m_IsDown = FALSE;

    m_pMyShape->OnLButtonUp(nFlags, point);

    CCADDoc *pDoc = GetDocument();
    ASSERT_VALID(pDoc);

    //��Ҫ��ͼ�����ݱ��棬��Ӧ���ػ�
    CMyList<CMyShape> &ShapeList = pDoc->m_ShapeList;
    ShapeList.AddTail(m_pMyShape);

    //��������������������
    m_CmdMgr.AddCommand(new CMyDrawCommand(ShapeList, m_pMyShape));

    //������ͼ�и���, ��CObject *������Ϣ�Ĵ���
    GetDocument()->UpdateAllViews(this, NULL, m_pMyShape);

    //��ͼ��
    CClientDC curDC(this);
    m_pMyShape->Draw(&curDC);
    m_pMyShape = NULL;

    ReleaseCapture();

	CView::OnLButtonUp(nFlags, point);
}

void CCADView::OnMouseMove(UINT nFlags, CPoint point) 
{
	// TODO: Add your message handler code here and/or call default
    if (NULL == m_pMyShape
        || NULL == m_pMyShapeFactory)
    {
        return;
    }

    m_pMyShape->OnMouseMove(nFlags, point);
 
    //���move�����й켣���⣬���������ػ�
    CClientDC curDC(this);
    OnDraw(&curDC);
	
	CView::OnMouseMove(nFlags, point);
}

void CCADView::OnInitialUpdate() 
{
    ChangeCursor();

	CView::OnInitialUpdate();
	
	// TODO: Add your specialized code here and/or call the base class
	
}

void CCADView::OnEllipse() 
{
	// TODO: Add your command handler code here
    if (m_pMyShapeFactory != NULL)
    {
        delete m_pMyShapeFactory;
    }

    m_pMyShapeFactory = new CMyEllipseFactory();

    ResetSelect();

#ifdef MENU_USE_MFC
    //
    m_nMenuID = IDM_ELLIPSE;

#else

    CheckMenu(IDM_ELLIPSE);

#endif
}

void CCADView::OnCapture() 
{
	// TODO: Add your command handler code here
	
    //��ͼ
    CDC DisplayDC;
    DisplayDC.CreateDC("DISPLAY", NULL, NULL, NULL);
    
    //��ȡ��Ļ�ֱ���
    int nWidth;
    int nHeight;
    
    nWidth = GetSystemMetrics(SM_CXSCREEN);
    nHeight = GetSystemMetrics(SM_CYSCREEN);
    
    //ճ��    
    CClientDC dc(this);
    //dc.BitBlt(0, 0, nWidth, nHeight, &DisplayDC, 0, 0, SRCCOPY);  //δ��������
    
    //����
    CRect rc;
    GetClientRect(rc);
    dc.StretchBlt(0, 0, rc.Width(), rc.Height(), 
                &DisplayDC, 0, 0, nWidth, nHeight, SRCCOPY);

}
void CCADView::OnSet() 
{
	// TODO: Add your command handler code here
  
    //������(View) ��SetDLG��ͨ��

    //�������ڵ������SetDLG��������
    CSetDLG dlg;
    dlg.SetPen(m_tagPen);
    dlg.SetBrush(m_tagBrush);

    //����SetDLG�ķ���ֵ����������
    if (IDOK == dlg.DoModal())
    {
        m_tagPen = dlg.GetPen();
        m_tagBrush = dlg.GetBrush();

        //�Աʺͻ�ˢ��״̬��ʾ
        CMyLine *pLine = new CMyLine;
        if (pLine != NULL)
        {
            pLine->SetPen(m_tagPen);
            pLine->SetBrush(m_tagBrush);
            //GetDocument()->OnUpdate(this, NULL, pLine);

            GetDocument()->UpdateAllViews(this, NULL, pLine);

            delete pLine;
            pLine = NULL;
        }        
    }
}

void CCADView::OnEditUndo() 
{
	// TODO: Add your command handler code here
    if (m_CmdMgr.Undo())
    {
        InvalidateRect(NULL, FALSE);
    }  
}

void CCADView::OnEditRedo() 
{
	// TODO: Add your command handler code here
    if (m_CmdMgr.Redo())
    {
        InvalidateRect(NULL, FALSE);
    }  
}

void CCADView::OnSelect() 
{
	// TODO: Add your command handler code here
    m_IsSelect = TRUE;
}

void CCADView::ResetSelect()
{
    m_IsRotate = FALSE;
    m_IsMove = FALSE;
    m_IsSelect = FALSE;
    m_pSelectShape = NULL;
    InvalidateRect(NULL, FALSE);
}

void CCADView::OnDelete() 
{
	// TODO: Add your command handler code here
    if (NULL == m_pSelectShape)
    {
        return;
    }

    CCADDoc *pDoc = GetDocument();
    ASSERT_VALID(pDoc);

    CMyList<CMyShape> &ShapeList = pDoc->m_ShapeList;
    POSITION pos = ShapeList.Find(m_pSelectShape);
    if (pos != NULL)
    {
        //�����ز���
        ShapeList.RemoveAt(pos);
        InvalidateRect(NULL, FALSE);

        //Ȼ���¼��־
        m_CmdMgr.AddCommand(new CMyDeleteCommand(ShapeList, m_pSelectShape));
    }
}

void CCADView::OnModify() 
{
	// TODO: Add your command handler code here
    if (NULL == m_pSelectShape)
    {
        return;
    }

    //����ѡ�е�ͼ�ε������SetDLG��������
    CSetDLG dlg;
    dlg.SetPen(m_pSelectShape->GetPen());
    dlg.SetBrush(m_pSelectShape->GetBrush());

    //1.Ӧ����ԭͼ��,
    CMyShape *pOldState = m_pSelectShape->CopySelf();
    
    //����SetDLG�ķ���ֵ����������
    if (IDOK == dlg.DoModal())
    {
        m_pSelectShape->SetPen(dlg.GetPen());
        m_pSelectShape->SetBrush(dlg.GetBrush());

        //2. �µ�ͼ��״̬
        CMyShape *pNewState = m_pSelectShape->CopySelf();

        CCADDoc *pDoc = GetDocument();
        ASSERT_VALID(pDoc);
        
        //3.�����־
        CMyList<CMyShape> &ShapeList = pDoc->m_ShapeList;
        m_CmdMgr.AddCommand(new CMyModifyCommand(ShapeList, 
                                                m_pSelectShape, //��ǰͼ��
                                                pOldState,      //
                                                pNewState));

        InvalidateRect(NULL, FALSE);
    }
}

void CCADView::OnMove() 
{
	// TODO: Add your command handler code here
    if (NULL == m_pSelectShape)
    {
        return;
    }

    //������ѡ�е�ͼ�ο��ƶ�����������Ҫ����LBTNDown��Ϣ
    m_IsMove = TRUE;
    m_IsRotate = FALSE;
	
}

void CCADView::OnRButtonDown(UINT nFlags, CPoint point) 
{
	// TODO: Add your message handler code here and/or call default
    if (NULL == m_pSelectShape)
    {
        return;
    }

    //��̬���ز˵�
    CMenu menu;
    menu.LoadMenu(IDR_MENU1);
    CMenu *pSubMenu = menu.GetSubMenu(0);

    //
    GetCursorPos(&point);   //����ClientToScreen(&point);

    
    pSubMenu->TrackPopupMenu(TPM_LEFTALIGN, 
                            point.x, point.y, 
                              this);
	
	CView::OnRButtonDown(nFlags, point);
}

void CCADView::OnCancel() 
{
	// TODO: Add your command handler code here
	ResetSelect();
}

void CCADView::OnRotate() 
{
	// TODO: Add your command handler code here
    if (NULL == m_pSelectShape)
    {
        return;
    }
	
    m_IsRotate = TRUE;
    m_IsMove = FALSE;
}

void CCADView::OnShapeMenuUI(CCmdUI* pCmdUI) 
{
	// TODO: Add your command update UI handler code here
    if (m_nMenuID == pCmdUI->m_nID)
    {
        pCmdUI->SetCheck(TRUE);
    }
    else
    {
    #ifdef MENU_USE_MFC //��Ҫ��SDK��ʽ����Ӱ��
        pCmdUI->SetCheck(FALSE);
    #else

    #endif
    }	
}

//��������SDK��ʽ���Բ˵��Ĺ���
void CCADView::CheckMenu(UINT nMenuID)
{
    //Get the main window
    CWnd *pMainWnd = AfxGetMainWnd();
    if (NULL == pMainWnd)
    {
        return;
    }
    
    //Get main window's menu
    CMenu *pMenu = pMainWnd->GetMenu();
    if (NULL == pMenu)
    {
        return;
    }

    //��ȡҪ���õ��Ӳ˵�
    CMenu *pSubMenu = pMenu->GetSubMenu(3);
    if (NULL == pSubMenu)
    {
        return;
    }

    UINT nCount = pSubMenu->GetMenuItemCount();
    for (UINT i = 0; i < nCount; i++)
    {
        //ȡ�����е�ѡ��
        pSubMenu->CheckMenuItem(i, MF_BYPOSITION | MF_UNCHECKED);
    }

    //��ָ��ID������ѡ��
    pSubMenu->CheckMenuItem(nMenuID, MF_BYCOMMAND | MF_CHECKED);
}
