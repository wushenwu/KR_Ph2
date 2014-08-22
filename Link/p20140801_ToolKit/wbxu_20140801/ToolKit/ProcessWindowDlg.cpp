// ProcessWindowDlg.cpp : implementation file
//

#include "stdafx.h"
#include "ToolKit.h"
#include "ProcessWindowDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CProcessWindowDlg dialog


CProcessWindowDlg::CProcessWindowDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CProcessWindowDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CProcessWindowDlg)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
}


void CProcessWindowDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CProcessWindowDlg)
		// NOTE: the ClassWizard will add DDX and DDV calls here
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CProcessWindowDlg, CDialog)
	//{{AFX_MSG_MAP(CProcessWindowDlg)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CProcessWindowDlg message handlers

BOOL CProcessWindowDlg::OnInitDialog() 
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

void CProcessWindowDlg::InitCtrl()
{
    CRect rect;
    GetClientRect(&rect);
    
    m_WindowList.InitCtrl( rect, 
                            this, 
                            IDD_DLG_PROCESS_WINDOW);
    
    CString strHeader;
    CString str;
    for (int i = IDS_WINDOW_HANDLE; i < IDS_WINDOW_TODO; i++)
    { 
        str.LoadString(i);
        strHeader += str;
        strHeader += '|';
    }
    
    m_WindowList.InsertHeader(strHeader);
    
    //
    m_WindowList.SetPID(m_dwPID);
    m_WindowList.Walk();
}
