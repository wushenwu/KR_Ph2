// MainFrm.cpp : implementation of the CMainFrame class
//

#include "stdafx.h"
#include "VC.h"

#include "MainFrm.h"

//workspace
#include "ClassView.h"
#include "ResView.h"
#include "FileView.h"

//output
#include "DebugView.h"
#include "buildview.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

#define  BASE_CODE  

/////////////////////////////////////////////////////////////////////////////
// CMainFrame

IMPLEMENT_DYNAMIC(CMainFrame, CMDIFrameWnd)

BEGIN_MESSAGE_MAP(CMainFrame, CMDIFrameWnd)
	//{{AFX_MSG_MAP(CMainFrame)
	ON_WM_CREATE()
	ON_COMMAND_RANGE(IDS_COMPILE, IDS_BREAKPOINT,  OnCompileTBD)
    ON_NOTIFY(TCN_SELCHANGE, IDC_TAB1, OnSelchangeWorkSpace)
    ON_NOTIFY(TCN_SELCHANGE, IDC_OUTPUT, OnSelchangeOutPut)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

static UINT indicators[] =
{
	ID_SEPARATOR,           // status line indicator
	ID_INDICATOR_CAPS,
	ID_INDICATOR_NUM,
	ID_INDICATOR_SCRL,
};

static UINT BASED_CODE compiles[] =
{
    // same order as in the bitmap 'compile.bmp'
    ID_SEPARATOR,           // for combo box (program)
    ID_SEPARATOR,           // for combo box (debug/replace)
    ID_SEPARATOR,           //留空
    IDS_COMPILE,
    IDS_BUILD,
    IDS_STOP,
    IDS_EXECUTE,
    IDS_GO,
    IDS_BREAKPOINT,
};


/////////////////////////////////////////////////////////////////////////////
// CMainFrame construction/destruction

CMainFrame::CMainFrame()
{
	// TODO: add member initialization code here
	
}

CMainFrame::~CMainFrame()
{
}

int CMainFrame::OnCreate(LPCREATESTRUCT lpCreateStruct)
{
	if (CMDIFrameWnd::OnCreate(lpCreateStruct) == -1)
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

#if 1
    //处理其他的工具栏
    if (!CreateCompileBar())
    {
        return -1;
    }
    
    if (!CreateWorkSpaceBar())
    {
        return -1;
    }

    if (!CreateOutputBar())
    {
        return -1;
    }

#endif

	return 0;
}

BOOL CMainFrame::PreCreateWindow(CREATESTRUCT& cs)
{
	if( !CMDIFrameWnd::PreCreateWindow(cs) )
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
	CMDIFrameWnd::AssertValid();
}

void CMainFrame::Dump(CDumpContext& dc) const
{
	CMDIFrameWnd::Dump(dc);
}

#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CMainFrame message handlers


BOOL CMainFrame::CreateCompileBar()
{
    const int nDropHeight = 200;
    
    if (!m_CompileBar.CreateEx(this,
                            TBSTYLE_FLAT,
                            WS_CHILD|WS_VISIBLE|CBRS_TOP|
                            CBRS_TOOLTIPS|CBRS_FLYBY) ||
        !m_CompileBar.LoadBitmap(IDB_COMPILE) ||
        !m_CompileBar.SetButtons(compiles, sizeof(compiles)/sizeof(UINT)))
    {
        TRACE0("Failed to create compilebar\n");
        return FALSE;       // fail to create
    }
    
    // Create the combo box for Active Project, and Configuration
    m_CompileBar.SetButtonInfo(0, IDS_SELECT_PROJECT, TBBS_SEPARATOR, 100);
    m_CompileBar.SetButtonInfo(1, IDS_SELECT_CONFIG, TBBS_SEPARATOR, 200);
    
    // Design guide advises 12 pixel gap between combos and buttons
    m_CompileBar.SetButtonInfo(2, ID_SEPARATOR, TBBS_SEPARATOR, 12);

    //为Active Project 创建CB
    CRect rect;
    m_CompileBar.GetItemRect(0, &rect);
    rect.top = 3;
    rect.bottom = rect.top + nDropHeight;
    if (!m_CompileBar.m_comboBox_PRO.Create(
                        CBS_DROPDOWNLIST|WS_VISIBLE|WS_TABSTOP,
                        rect, &m_CompileBar, IDS_SELECT_PROJECT))
    {
        TRACE0("Failed to create combo-box for project\n");
        return FALSE;
    }

    //为Active Configuration 创建CB
    m_CompileBar.GetItemRect(1, &rect);
    rect.top = 3;
    rect.bottom = rect.top + nDropHeight;
    if (!m_CompileBar.m_comboBox_CONFIG.Create(
                        CBS_DROPDOWNLIST|WS_VISIBLE|WS_TABSTOP,
                        rect, &m_CompileBar, IDS_SELECT_CONFIG))
    {
        TRACE0("Failed to create combo-box for configuration\n");
        return FALSE;
    }
    
    //  Fill the combo box
    m_CompileBar.m_comboBox_PRO.AddString(TEXT("VC"));
    m_CompileBar.m_comboBox_PRO.AddString(TEXT("Reflect"));
    m_CompileBar.m_comboBox_PRO.SetCurSel(0);

    CString str;
    str.LoadString(IDS_DEBUG);
    m_CompileBar.m_comboBox_CONFIG.AddString(str);

    str.LoadString(IDS_RELEASE);
    m_CompileBar.m_comboBox_CONFIG.AddString(str);
    m_CompileBar.m_comboBox_CONFIG.SetCurSel(0);

    m_CompileBar.EnableDocking(CBRS_ALIGN_ANY);
    EnableDocking(CBRS_ALIGN_ANY);
	DockControlBar(&m_CompileBar);
    
    return TRUE;
}

void CMainFrame::OnCompileTBD() 
{
	// TODO: Add your command handler code here
    AfxMessageBox("To Be Done");	
}

BOOL CMainFrame::OnCreateClient(LPCREATESTRUCT lpcs, CCreateContext* pContext) 
{
	// TODO: Add your specialized code here and/or call the base class
	
	return CMDIFrameWnd::OnCreateClient(lpcs, pContext);
}

BOOL CMainFrame::CreateWorkSpaceBar()
{
    //创建Dialogbar
    if (!m_WorkSpaceBar.Create(this, 
                            IDD_WORKSPACE,    //对具体资源关联
                            CBRS_LEFT|CBRS_TOOLTIPS|CBRS_FLYBY,
                            IDD_WORKSPACE
                                            )
        )
    {
        TRACE0("Failed to create workspace\n");
        return FALSE;       // fail to create
    }

    //加载图片列表
    m_ImgListOutput.Create(16, 16, ILC_COLOR32 | ILC_MASK, 0, 3);
    m_ImgListOutput.Add(LoadIcon(AfxGetInstanceHandle(), 
        MAKEINTRESOURCE(IDI_CLASSVIEW)));
    m_ImgListOutput.Add(LoadIcon(AfxGetInstanceHandle(), 
        MAKEINTRESOURCE(IDI_RESOURCEVIEW)));
    m_ImgListOutput.Add(LoadIcon(AfxGetInstanceHandle(), 
        MAKEINTRESOURCE(IDI_FILEVIEW)));
    
    //设置图片列表
    CTabCtrl *pTabCtrl = (CTabCtrl *)m_WorkSpaceBar.GetDlgItem(IDC_TAB1);
    pTabCtrl->SetImageList(&m_ImgListOutput);

    //添加Item
    CString str;
    str.LoadString(IDS_CLASSVIEW);
    pTabCtrl->InsertItem(0, str);

    str.LoadString(IDS_RESOURCEVIEW);
    pTabCtrl->InsertItem(1, str);

    str.LoadString(IDS_FILEVIEW);
    pTabCtrl->InsertItem(2, str);
    
    //
    m_pDlg[0] = new CClassView();
    m_pDlg[1] = new CResView();
    m_pDlg[2] = new CFileView();
    
    //设置各Dialog的区域
    CRect rc;
    pTabCtrl->GetClientRect(&rc);
    rc.DeflateRect(0, 0, 0, 50);
    
    for (int i = 0; i < 3; i++)
    {
        m_pDlg[i]->Create(IDD_CLASSVIEW + i, pTabCtrl);
        m_pDlg[i]->MoveWindow(rc, TRUE);
    }
    
    m_pDlg[0]->ShowWindow(SW_NORMAL);
   
    
    
    // TODO: Delete these three lines if you don't want the toolbar to
    //  be dockable
    m_WorkSpaceBar.EnableDocking(CBRS_ALIGN_ANY);
    EnableDocking(CBRS_ALIGN_ANY);
	DockControlBar(&m_WorkSpaceBar);

    return TRUE;
}

void CMainFrame::OnSelchangeWorkSpace(NMHDR* pNMHDR, LRESULT* pResult) 
{
    // TODO: Add your control notification handler code here
    CTabCtrl *pTabCtrl = (CTabCtrl *)m_WorkSpaceBar.GetDlgItem(IDC_TAB1);
    int nIndex = pTabCtrl->GetCurSel();
    
    for (int i = 0; i < 3; i++)
    {
        if (nIndex == i)
        {
            m_pDlg[i]->ShowWindow(SW_SHOW);
        }
        else
        {
            m_pDlg[i]->ShowWindow(SW_HIDE);
        }
    }
    
    *pResult = 0;
}


BOOL CMainFrame::CreateOutputBar()
{
    //创建Dialogbar
    if (!m_OutputBar.Create(this, 
                            IDD_OUTPUT,    //对具体资源关联
                            CBRS_BOTTOM|CBRS_TOOLTIPS|CBRS_FLYBY,
                            IDD_OUTPUT
                            )
                           )
    {
        TRACE0("Failed to create OUTPUT\n");
        return FALSE;       // fail to create
    }
    
#if 0
    //加载图片列表  To Be Done
    m_ImgListOutput.Create(16, 16, ILC_COLOR32 | ILC_MASK, 0, 3);
    m_ImgListOutput.Add(LoadIcon(AfxGetInstanceHandle(), 
        MAKEINTRESOURCE(IDI_CLASSVIEW)));
    m_ImgListOutput.Add(LoadIcon(AfxGetInstanceHandle(), 
        MAKEINTRESOURCE(IDI_RESOURCEVIEW)));
    m_ImgListOutput.Add(LoadIcon(AfxGetInstanceHandle(), 
        MAKEINTRESOURCE(IDI_FILEVIEW)));
#endif
    
    //设置图片列表
    CTabCtrl *pTabCtrl = (CTabCtrl *)m_OutputBar.GetDlgItem(IDC_OUTPUT);
    //pTabCtrl->SetImageList(&m_ImgListOutput);

    
    //添加Item
    pTabCtrl->InsertItem(0, TEXT("Build"));
    
    pTabCtrl->InsertItem(1, TEXT("Debug"));
    
    pTabCtrl->InsertItem(2, TEXT("Find in Files"));
    
    //
    m_pDlgOutput[0] = new CBuildView();
    m_pDlgOutput[1] = new CDebugView();
    
    //设置各Dialog的区域
    CRect rc;
    pTabCtrl->GetClientRect(&rc);
    rc.DeflateRect(0, 0, 0, 50);
    
    for (int i = 0; i < 2; i++)
    {
        m_pDlgOutput[i]->Create(IDD_BUILD + i, pTabCtrl);
        m_pDlgOutput[i]->MoveWindow(rc, TRUE);
    }
    
    m_pDlgOutput[0]->ShowWindow(SW_NORMAL);
    
    
    // TODO: Delete these three lines if you don't want the toolbar to
    //  be dockable
    m_OutputBar.EnableDocking(CBRS_ALIGN_ANY);
    EnableDocking(CBRS_ALIGN_ANY);
	DockControlBar(&m_OutputBar);

    return TRUE;
}

void CMainFrame::OnSelchangeOutPut(NMHDR* pNMHDR, LRESULT* pResult) 
{
    // TODO: Add your control notification handler code here
    CTabCtrl *pTabCtrl = (CTabCtrl *)m_OutputBar.GetDlgItem(IDC_OUTPUT);
    int nIndex = pTabCtrl->GetCurSel();
    
    for (int i = 0; i < 2; i++)
    {
        if (nIndex == i)
        {
            m_pDlgOutput[i]->ShowWindow(SW_SHOW);
        }
        else
        {
            m_pDlgOutput[i]->ShowWindow(SW_HIDE);
        }
    }
    
    *pResult = 0;
}

