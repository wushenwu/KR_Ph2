// ProcessThreadDlg.cpp : implementation file
//

#include "stdafx.h"
#include "ToolKit.h"
#include "ProcessThreadDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CProcessThreadDlg dialog


CProcessThreadDlg::CProcessThreadDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CProcessThreadDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CProcessThreadDlg)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT

    m_dwPID = 0;
}


void CProcessThreadDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CProcessThreadDlg)
		// NOTE: the ClassWizard will add DDX and DDV calls here
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CProcessThreadDlg, CDialog)
	//{{AFX_MSG_MAP(CProcessThreadDlg)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CProcessThreadDlg message handlers

BOOL CProcessThreadDlg::OnInitDialog() 
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

void CProcessThreadDlg::InitCtrl()
{
    CRect rect;
    GetClientRect(&rect);
    
    m_ThreadList.InitCtrl( rect, 
                            this, 
                            IDD_DLG_PROCESS_THREAD);
    
    CString strHeader;
    CString str;
    for (int i = IDS_THREAD_ID; i < IDS_THREAD_TODO; i++)
    { 
        str.LoadString(i);
        strHeader += str;
        strHeader += '|';
    }
    
    m_ThreadList.InsertHeader(strHeader);
    
    //
    m_ThreadList.SetPID(m_dwPID);
    m_ThreadList.Walk();
}
