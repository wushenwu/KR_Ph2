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

// 对菜单管理的方式
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
	//ON_UPDATE_COMMAND_UI(IDM_LINE, OnShapeMenuUI) //仅对直线的处理
	//}}AFX_MSG_MAP
	// Standard printing commands
	ON_COMMAND(ID_FILE_PRINT, CView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_DIRECT, CView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_PREVIEW, CView::OnFilePrintPreview)
    //添加新的消息
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
    将已保存的图形进行重绘
    */
    //填充背景
    CRect rc;
    GetClientRect(&rc);

    //利用双缓冲，解决大面积变化情况下的闪烁问题
    //1.创建兼容内存DC
    CDC memDC;
    memDC.CreateCompatibleDC(pDC);

    //2.创建兼容位图
    CBitmap bitmap;
    bitmap.CreateCompatibleBitmap(pDC, rc.Width(), rc.Height());
    
    //3.选择位图
    memDC.SelectObject(bitmap);

    //4.绘制
    //填充背景
    CBrush brush(RGB(0xff, 0xff, 0xff));
    memDC.FillRect(&rc, &brush);

    CMyList<CMyShape> &ShapeList = pDoc->m_ShapeList;
    
    //绘制已存图形
    POSITION pos = ShapeList.GetHeadPosition();
    while(pos)
    {
        CMyShape *pmyShape = ShapeList.GetNext(pos);
        if (pmyShape == m_pSelectShape)
        {
            //对选中的图形进行重绘
            pmyShape->OnSelected(&memDC);
        }
        else
        {
            pmyShape->Draw(&memDC);
        }
    }

    //再来绘制当前图形
    if (m_pMyShape != NULL)
    {
        m_pMyShape->Draw(&memDC);
    }

    //5.粘贴
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

    //后续利用工厂多态，动态的产生确定的对象
    if (m_pMyShapeFactory != NULL)
    {
        delete m_pMyShapeFactory;
    }

    m_pMyShapeFactory = new CMyLineFactory();

    ResetSelect();

#ifdef MENU_USE_MFC

    //菜单设置
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
    //根据point，以及ShapeList，判断选中了哪个图形
    CCADDoc *pDoc = GetDocument();
    ASSERT_VALID(pDoc);

    CMyList<CMyShape> &ShapeList = pDoc->m_ShapeList;

    POSITION pos = ShapeList.GetTailPosition();
    while (pos)
    {
        CMyShape *pShape = ShapeList.GetPrev(pos);
        
        //由各图形自己负责判断是否选中
        if (pShape->IsSelected(point))
        {
            m_pSelectShape = pShape;
            
            //进行重绘
            InvalidateRect(NULL, FALSE);
            return;
        }
    }

    //如果未选中任何图形，则进行重置
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
   
    //应保存原图形
    CMyShape *pOldState = m_pSelectShape->CopySelf();
    
    //设置新的位置
    m_pSelectShape->SetPosition(point);

    //新的状态
    CMyShape *pNewState = m_pSelectShape->CopySelf();

    m_CmdMgr.AddCommand(new CMyModifyCommand(ShapeList, 
                                        m_pSelectShape, //当前图形
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
    
    //应保存原图形
    CMyShape *pOldState = m_pSelectShape->CopySelf();
    
    //设置新的位置
    m_pSelectShape->SetPosition_Rotate(point);
    
    //新的状态
    CMyShape *pNewState = m_pSelectShape->CopySelf();
    
    m_CmdMgr.AddCommand(new CMyModifyCommand(ShapeList, 
        m_pSelectShape, //当前图形
        pOldState,      //
        pNewState));
    
    InvalidateRect(NULL, FALSE);  
}

void CCADView::OnLButtonDown(UINT nFlags, CPoint point) 
{
    //处理图形的旋转
    if (m_IsRotate)
    {
        ProcessRotate(point);
        return;
    }

    //处理图形的移动
    if (m_IsMove)
    {
        ProcessMove(point);
        return;
    }

    //处理图形的选择
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

    //新建图形对象
    if (m_pMyShape != NULL)
    {
        delete m_pMyShape;
    }

    m_pMyShape = m_pMyShapeFactory->CreateShape();
    if (NULL == m_pMyShape)
    {
        return;
    }

    //由各图形自己负责完成
    m_pMyShape->OnLButtonDown(nFlags, point);

    //设置图形的画笔和画刷
    m_pMyShape->SetPen(m_tagPen);
    m_pMyShape->SetBrush(m_tagBrush);
    
    SetCapture(); //鼠标超过窗口，可以继续响应消息

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

    //需要将图形数据保存，以应对重绘
    CMyList<CMyShape> &ShapeList = pDoc->m_ShapeList;
    ShapeList.AddTail(m_pMyShape);

    //向命令管理器中添加命令
    m_CmdMgr.AddCommand(new CMyDrawCommand(ShapeList, m_pMyShape));

    //向别的视图中更新, 用CObject *进行消息的传递
    GetDocument()->UpdateAllViews(this, NULL, m_pMyShape);

    //画图形
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
 
    //解决move过程中轨迹问题，先来进行重绘
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
	
    //截图
    CDC DisplayDC;
    DisplayDC.CreateDC("DISPLAY", NULL, NULL, NULL);
    
    //获取屏幕分辨率
    int nWidth;
    int nHeight;
    
    nWidth = GetSystemMetrics(SM_CXSCREEN);
    nHeight = GetSystemMetrics(SM_CYSCREEN);
    
    //粘贴    
    CClientDC dc(this);
    //dc.BitBlt(0, 0, nWidth, nHeight, &DisplayDC, 0, 0, SRCCOPY);  //未进行缩放
    
    //缩放
    CRect rc;
    GetClientRect(rc);
    dc.StretchBlt(0, 0, rc.Width(), rc.Height(), 
                &DisplayDC, 0, 0, nWidth, nHeight, SRCCOPY);

}
void CCADView::OnSet() 
{
	// TODO: Add your command handler code here
  
    //主窗口(View) 与SetDLG的通信

    //根据现在的情况对SetDLG进行设置
    CSetDLG dlg;
    dlg.SetPen(m_tagPen);
    dlg.SetBrush(m_tagBrush);

    //根据SetDLG的返回值来进行设置
    if (IDOK == dlg.DoModal())
    {
        m_tagPen = dlg.GetPen();
        m_tagBrush = dlg.GetBrush();

        //对笔和画刷的状态显示
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
        //完成相关操作
        ShapeList.RemoveAt(pos);
        InvalidateRect(NULL, FALSE);

        //然后记录日志
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

    //根据选中的图形的情况对SetDLG进行设置
    CSetDLG dlg;
    dlg.SetPen(m_pSelectShape->GetPen());
    dlg.SetBrush(m_pSelectShape->GetBrush());

    //1.应保存原图形,
    CMyShape *pOldState = m_pSelectShape->CopySelf();
    
    //根据SetDLG的返回值来进行设置
    if (IDOK == dlg.DoModal())
    {
        m_pSelectShape->SetPen(dlg.GetPen());
        m_pSelectShape->SetBrush(dlg.GetBrush());

        //2. 新的图形状态
        CMyShape *pNewState = m_pSelectShape->CopySelf();

        CCADDoc *pDoc = GetDocument();
        ASSERT_VALID(pDoc);
        
        //3.添加日志
        CMyList<CMyShape> &ShapeList = pDoc->m_ShapeList;
        m_CmdMgr.AddCommand(new CMyModifyCommand(ShapeList, 
                                                m_pSelectShape, //当前图形
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

    //现在有选中的图形可移动。接下来需要处理LBTNDown消息
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

    //动态加载菜单
    CMenu menu;
    menu.LoadMenu(IDR_MENU1);
    CMenu *pSubMenu = menu.GetSubMenu(0);

    //
    GetCursorPos(&point);   //或者ClientToScreen(&point);

    
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
    #ifdef MENU_USE_MFC //不要对SDK方式产生影响
        pCmdUI->SetCheck(FALSE);
    #else

    #endif
    }	
}

//利用类似SDK方式，对菜单的管理
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

    //获取要设置的子菜单
    CMenu *pSubMenu = pMenu->GetSubMenu(3);
    if (NULL == pSubMenu)
    {
        return;
    }

    UINT nCount = pSubMenu->GetMenuItemCount();
    for (UINT i = 0; i < nCount; i++)
    {
        //取消所有的选择
        pSubMenu->CheckMenuItem(i, MF_BYPOSITION | MF_UNCHECKED);
    }

    //对指定ID进行再选择
    pSubMenu->CheckMenuItem(nMenuID, MF_BYCOMMAND | MF_CHECKED);
}
