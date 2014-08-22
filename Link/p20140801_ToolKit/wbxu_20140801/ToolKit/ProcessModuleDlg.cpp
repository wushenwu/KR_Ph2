// ProcessModuleDlg.cpp : implementation file
//

#include "stdafx.h"
#include "ToolKit.h"
#include "ProcessModuleDlg.h"


#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CProcessModuleDlg dialog


CProcessModuleDlg::CProcessModuleDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CProcessModuleDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CProcessModuleDlg)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
}


void CProcessModuleDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CProcessModuleDlg)
		// NOTE: the ClassWizard will add DDX and DDV calls here
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CProcessModuleDlg, CDialog)
	//{{AFX_MSG_MAP(CProcessModuleDlg)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CProcessModuleDlg message handlers

BOOL CProcessModuleDlg::OnInitDialog() 
{
	CDialog::OnInitDialog();
	
	// TODO: Add extra initialization here
    DWORD dwPID = m_dwPID;
    
    InitCtrl();

    //为解决List Ctrl中弹出菜单，导致窗口暂时不响应的问题
    ShowWindow(SW_MINIMIZE);
    ShowWindow(SW_SHOWNORMAL);
	
	return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}

void CProcessModuleDlg::InitCtrl()
{
    CRect rect;
    GetClientRect(&rect);

    m_ModuleListCtrl.InitCtrl(rect,
                             this,
                             IDD_DLG_PROCESS_MODULE
                             );

    CString strHeader;
    CString str;
    for (int i = IDS_MODULE_PATH; i < IDS_MODULE_TODO; i++)
    {
        str.LoadString(i);
        strHeader += str;
        strHeader += '|';
    }

    //
    m_ModuleListCtrl.InsertHeader(strHeader);

    //
    m_ModuleListCtrl.SetPID(m_dwPID);
    m_ModuleListCtrl.Walk();
}
