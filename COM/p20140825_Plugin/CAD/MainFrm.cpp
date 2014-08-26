// MainFrm.cpp : implementation of the CMainFrame class
//

#include "stdafx.h"
#include "CAD.h"

#include "MainFrm.h"

#include "shapestreeview.h"
#include "myeditview.h"

#include <map>
using namespace std;

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

#ifdef USE_ISHAPE
    //菜单与图形的对应
    map<UINT, IShapeFactory *> g_mapMenuShapeFactory;

    IShapeFactory *g_IShapeFactory = NULL;
#endif

/////////////////////////////////////////////////////////////////////////////
// CMainFrame

IMPLEMENT_DYNCREATE(CMainFrame, CFrameWnd)

BEGIN_MESSAGE_MAP(CMainFrame, CFrameWnd)
	//{{AFX_MSG_MAP(CMainFrame)
	ON_WM_CREATE()
	ON_COMMAND(ID_VIEW_STATUS_BAR, OnViewStatusBar)
	ON_UPDATE_COMMAND_UI(ID_VIEW_STATUS_BAR, OnUpdateViewStatusBar)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

static UINT indicators[] =
{
	ID_SEPARATOR,           // status line indicator
	ID_INDICATOR_CAPS,
	ID_INDICATOR_NUM,
	ID_INDICATOR_SCRL,
};

/////////////////////////////////////////////////////////////////////////////
// CMainFrame construction/destruction

CMainFrame::CMainFrame()
{
	// TODO: add member initialization code here
    
#ifdef USE_ISHAPE
    //禁用对菜单的自动灰化处理
    m_bAutoMenuEnable = FALSE;
#endif
}

CMainFrame::~CMainFrame()
{
}

int CMainFrame::OnCreate(LPCREATESTRUCT lpCreateStruct)
{
	if (CFrameWnd::OnCreate(lpCreateStruct) == -1)
		return -1;
	
	if (!m_wndToolBar.CreateEx(this, TBSTYLE_FLAT, WS_CHILD | WS_VISIBLE | CBRS_TOP
		| CBRS_GRIPPER | CBRS_TOOLTIPS | CBRS_FLYBY | CBRS_SIZE_DYNAMIC) ||
		!m_wndToolBar.LoadToolBar(IDR_MAINFRAME))
	{
		TRACE0("Failed to create toolbar\n");
		return -1;      // fail to create
	}

	if (!m_wndStatusBar.Create(this) ||
		!m_wndStatusBar.SetIndicators(indicators,
		  sizeof(indicators)/sizeof(UINT)))
	{
		TRACE0("Failed to create status bar\n");
		return -1;      // fail to create
	}

	// TODO: Delete these three lines if you don't want the toolbar to
	//  be dockable
	m_wndToolBar.EnableDocking(CBRS_ALIGN_ANY);
	EnableDocking(CBRS_ALIGN_ANY);
	DockControlBar(&m_wndToolBar);

    //与画图操作相关的工具栏
    int nRet = CreateMyShapeBar();
    if (-1 == nRet)
    {
        return -1;
    }

#if 0
    nRet = CreateMyConrolBar();
    if (-1 == nRet)
    {
        return -1;
    }

    nRet = CreateMyDlgBar();
    if (-1 == nRet)
    {
        return -1;
    }
#endif

#ifdef USE_ISHAPE
    //插件菜单
    LoadPlugin();
#endif

	return 0;
}

BOOL CMainFrame::PreCreateWindow(CREATESTRUCT& cs)
{
	if( !CFrameWnd::PreCreateWindow(cs) )
		return FALSE;
	// TODO: Modify the Window class or styles here by modifying
	//  the CREATESTRUCT cs

	return TRUE;
}

/////////////////////////////////////////////////////////////////////////////
// CMainFrame diagnostics

#ifdef _DEBUG
void CMainFrame::AssertValid() const
{
	CFrameWnd::AssertValid();
}

void CMainFrame::Dump(CDumpContext& dc) const
{
	CFrameWnd::Dump(dc);
}

#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CMainFrame message handlers


int CMainFrame::CreateMyShapeBar()
{
    if (!m_ShapeToolBar.CreateEx(this, 
                            TBSTYLE_FLAT, 
                            WS_CHILD | WS_VISIBLE 
                            |CBRS_LEFT       //默认位置
                            | CBRS_GRIPPER 
                            | CBRS_TOOLTIPS 
                            | CBRS_FLYBY    //是否更新状态栏
                            | CBRS_SIZE_DYNAMIC) 
                            || !m_ShapeToolBar.LoadToolBar(IDR_SHAPEBAR))
    {
        TRACE0("Failed to create toolbar\n");
        return -1;      // fail to create
    }
    
    // TODO: Delete these three lines if you don't want the toolbar to
    //  be dockable
    m_ShapeToolBar.EnableDocking(CBRS_ALIGN_ANY);
    EnableDocking(CBRS_ALIGN_ANY);
	DockControlBar(&m_ShapeToolBar);

    return 0;
}

int CMainFrame::CreateMyConrolBar()
{
    if (!m_ControlBar.CreateEx(this, 
                            TBSTYLE_FLAT, 
                            WS_CHILD | WS_VISIBLE 
                            |CBRS_BOTTOM       //默认位置
                            | CBRS_GRIPPER 
                            | CBRS_TOOLTIPS 
                            | CBRS_FLYBY    //是否更新状态栏
                            | CBRS_SIZE_DYNAMIC) 
                            || !m_ControlBar.LoadToolBar(IDR_CONTROLBAR))
    {
        TRACE0("Failed to create toolbar\n");
        return -1;      // fail to create
    }
    
    /*
    工具栏与图形
    */
    //加载图形
    m_ImageList.Create(32, 32, ILC_COLOR32 | ILC_MASK , 0, 10);
    m_ImageList.Add(LoadIcon(AfxGetInstanceHandle(), 
        MAKEINTRESOURCE(IDI_ICON2)));
    m_ImageList.Add(LoadIcon(AfxGetInstanceHandle(), 
        MAKEINTRESOURCE(IDI_ICON3)));
    m_ImageList.Add(LoadIcon(AfxGetInstanceHandle(), 
        MAKEINTRESOURCE(IDI_ICON4)));
    m_ImageList.Add(LoadIcon(AfxGetInstanceHandle(), 
        MAKEINTRESOURCE(IDI_ICON5)));
    m_ImageList.Add(LoadIcon(AfxGetInstanceHandle(), 
        MAKEINTRESOURCE(IDI_ICON6)));
    m_ImageList.Add(LoadIcon(AfxGetInstanceHandle(), 
        MAKEINTRESOURCE(IDI_ICON7)));
    
    //使用工具栏内涵的控件来部署图片
    CToolBarCtrl& ctrl = m_ControlBar.GetToolBarCtrl();
    ctrl.SetImageList(&m_ImageList);

    /*
    工具栏与控件
    */
    //将工具栏上的Item设为seperator，获取rect
    m_ControlBar.SetButtonInfo(0, WM_USER + 1, TBBS_SEPARATOR, 100);
    CRect rc;
    ctrl.GetItemRect(0, &rc); 
    
    //加载控件
    m_EditCtrl.Create(WS_CHILD | WS_VISIBLE | WS_BORDER, rc, &m_ControlBar, WM_USER + 1);


    // TODO: Delete these three lines if you don't want the toolbar to
    //  be dockable
    m_ControlBar.EnableDocking(CBRS_ALIGN_ANY);
    EnableDocking(CBRS_ALIGN_ANY);
    DockControlBar(&m_ControlBar);

    return 0;
}

int CMainFrame::CreateMyDlgBar()
{
    //创建Dialogbar
    m_DlgBar.Create(this, IDD_DIALOGBAR,    //对具体资源关联
                          CBRS_RIGHT|CBRS_TOOLTIPS|CBRS_FLYBY, 
                          WM_USER + 1);
    
    // TODO: Delete these three lines if you don't want the toolbar to
    //  be dockable
    m_DlgBar.EnableDocking(CBRS_ALIGN_ANY);
    EnableDocking(CBRS_ALIGN_ANY);
	DockControlBar(&m_DlgBar);

    return 0;
}

void CMainFrame::OnViewStatusBar() 
{
	// TODO: Add your command handler code here
	
}

void CMainFrame::OnUpdateViewStatusBar(CCmdUI* pCmdUI) 
{
	// TODO: Add your command update UI handler code here
}

BOOL CMainFrame::OnCreateClient(LPCREATESTRUCT lpcs, CCreateContext* pContext) 
{
	// TODO: Add your specialized code here and/or call the base class
    
    //划分成两行一列
    BOOL bRet = m_SplitterWnd1.CreateStatic(this, 2, 1);
    
    //将第1行进行再分割，分割成一个TreeView，和原来的画图视图
    bRet = m_SplitterWnd2.CreateStatic(&m_SplitterWnd1, 
                                        1, 2, 
                                        WS_CHILD | WS_VISIBLE, 
                                        m_SplitterWnd1.IdFromRowCol(0, 0)
                                        );

    //紧接着createview
    m_SplitterWnd2.CreateView(0, 0, RUNTIME_CLASS(CShapesTreeView), CSize(0, 0), pContext);
    m_SplitterWnd2.CreateView(0, 1, pContext->m_pNewViewClass, CSize(0, 0), pContext);

    m_SplitterWnd2.SetColumnInfo(0, 200, 1);

    //将第2行设置为CEditView
    m_SplitterWnd1.CreateView(1, 0, RUNTIME_CLASS(CMyEditView), CSize(0, 0), pContext);
    
    m_SplitterWnd1.SetRowInfo(0, 300, 10);
    

	return TRUE;
	//return CFrameWnd::OnCreateClient(lpcs, pContext);
}

void CMainFrame::LoadPlugin()
{
#ifdef USE_ISHAPE
     /*
    遍历Plugin目录, 加载DLL
    */
    CString strDir;
    DWORD dwRet = ::GetCurrentDirectory(MAX_PATH, strDir.GetBufferSetLength(MAX_PATH));
    if (0 == dwRet)
    {
        ShowErrorMessage();
        return;
    }

    //should release b4 change
    strDir.ReleaseBuffer();
    strDir += TEXT("\\Plugin\\*.dll");

    CFileFind finder;
    BOOL bRet = finder.FindFile(strDir);
    if (!bRet)
    {
        //not *.dll found
        ShowErrorMessage();
        return;
    }

    //菜单相关
    CMenu *pMenu = GetMenu();
    if (NULL == pMenu)
    {
        return;
    }

    CMenu *pSubMenu = pMenu->GetSubMenu(6);
    if (NULL == pSubMenu)
    {
        return;
    }

    UINT nMenu = (WM_USER + 1);

    //After calling FindFile to begin the file search,
    //call FindNextFile to retrieve subsequent files. 
    //You must call FindNextFile at least once before calling any of the following attribute member functions
    CString strPath;
    CString strName;
    HMODULE hMod = NULL;
    IShapeFactory *pobj = NULL;

    BOOL bTmp;
    bRet = TRUE;
    while (bRet)
    {
        bRet = finder.FindNextFile();
        strPath = finder.GetFilePath();

        //加载dll, 获取Name, 并设置插件菜单
        hMod = ::LoadLibrary(strPath);
        if (NULL == hMod)
        {
            ShowErrorMessage();

            ::FreeLibrary(hMod);
            continue;
        }

        PFNCreateShapeFactory pfnCreateShapeFactory = (PFNCreateShapeFactory)::GetProcAddress(hMod,
                                                                        "CreateShapeFactory");
        if (NULL == pfnCreateShapeFactory)
        {
            ShowErrorMessage();

            ::FreeLibrary(hMod);
            continue;
        }

        pobj = (*pfnCreateShapeFactory)();
        if (NULL == pobj)
        {
            ::FreeLibrary(hMod);
            continue;
        }
        
        //处理菜单
        bTmp = pSubMenu->AppendMenu(MF_STRING, 
                            nMenu, 
                            pobj->GetName());
        if (!bTmp)
        {
            ::FreeLibrary(hMod);
            continue;
        }

        //建立菜单和图形间的关系
        g_mapMenuShapeFactory[nMenu] = pobj;

        nMenu++;
    }
#endif
}

void CMainFrame::ShowErrorMessage()
{
    LPVOID lpMsgBuf;
    FormatMessage( 
        FORMAT_MESSAGE_ALLOCATE_BUFFER | 
        FORMAT_MESSAGE_FROM_SYSTEM | 
        FORMAT_MESSAGE_IGNORE_INSERTS,
        NULL,
        ::GetLastError(),
        MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT), // Default language
        (LPTSTR) &lpMsgBuf,
        0,
        NULL 
        );
    
    ::MessageBox( NULL, (LPCTSTR)lpMsgBuf, "Error", MB_OK | MB_ICONINFORMATION );
    LocalFree(lpMsgBuf);
}

BOOL CMainFrame::OnCommand(WPARAM wParam, LPARAM lParam) 
{
#ifdef USE_ISHAPE
    WORD wID = LOWORD(wParam);
    WORD wNotify = HIWORD(wParam);
    
    map<UINT, IShapeFactory *>::iterator it;
    it = g_mapMenuShapeFactory.find(wID);
    if (it != g_mapMenuShapeFactory.end())
    {
        if (g_IShapeFactory != NULL)
        {
            g_IShapeFactory->Release();
        }

        g_IShapeFactory = it->second;
    }
#endif
	
	return CFrameWnd::OnCommand(wParam, lParam);
}
