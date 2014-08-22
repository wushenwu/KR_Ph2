// ProcessMemoryDlg.cpp : implementation file
//

#include "stdafx.h"
#include "ToolKit.h"
#include "ProcessMemoryDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CProcessMemoryDlg dialog


CProcessMemoryDlg::CProcessMemoryDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CProcessMemoryDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CProcessMemoryDlg)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
}


void CProcessMemoryDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CProcessMemoryDlg)
		// NOTE: the ClassWizard will add DDX and DDV calls here
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CProcessMemoryDlg, CDialog)
	//{{AFX_MSG_MAP(CProcessMemoryDlg)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CProcessMemoryDlg message handlers

BOOL CProcessMemoryDlg::OnInitDialog() 
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

void CProcessMemoryDlg::InitCtrl()
{
    CRect rect;
    GetClientRect(&rect);
    
    m_MemoryListCtrl.InitCtrl(rect,
                                this,
                                IDD_DLG_PROCESS_MEMORY
                                );
    
    CString strHeader;
    CString str;
    for (int i = IDS_MEM_ADDR; i < IDS_MEM_TODO; i++)
    {
        str.LoadString(i);
        strHeader += str;
        strHeader += '|';
    }
    
    //
    m_MemoryListCtrl.InsertHeader(strHeader);
    
    //
    m_MemoryListCtrl.SetPID(m_dwPID);
    m_MemoryListCtrl.Walk();
}
