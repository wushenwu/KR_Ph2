// ProcessDlg.cpp : implementation file
//

#include "stdafx.h"
#include "ToolKit.h"
#include "ProcessDlg.h"
#include "ProcessModuleDlg.h"

#include <Tlhelp32.h>
#include <Psapi.h>
#pragma comment(lib, "psapi.lib")

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif


extern CTabCtrl *g_pTabCtrl;

/////////////////////////////////////////////////////////////////////////////
// CProcessDlg dialog


CProcessDlg::CProcessDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CProcessDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CProcessDlg)
	//}}AFX_DATA_INIT
}


void CProcessDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CProcessDlg)
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CProcessDlg, CDialog)
	//{{AFX_MSG_MAP(CProcessDlg)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CProcessDlg message handlers

BOOL CProcessDlg::OnInitDialog() 
{
	CDialog::OnInitDialog();
	 
	// TODO: Add extra initialization here
    InitCtrl();

    //为解决List Ctrl中弹出菜单，导致窗口暂时不响应的问题
    ShowWindow(SW_MINIMIZE);
    ShowWindow(SW_SHOWNORMAL);

	return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}

void CProcessDlg::InitCtrl()
{
    CRect rect;
    g_pTabCtrl->GetClientRect(&rect);

    m_ProcessListCtrl.InitCtrl( rect, 
                                this, 
                                IDD_DLG_PROCESS);

    CString strHeader;
    CString str;
    for (int i = IDS_PROCESS_NAME; i < IDS_PROCESS_TODO; i++)
    { 
        str.LoadString(i);
        strHeader += str;
        strHeader += '|';
    }

    m_ProcessListCtrl.InsertHeader(strHeader);

    //
    m_ProcessListCtrl.Walk();
}
