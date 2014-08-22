// MsgOptionDlg.cpp : implementation file
//

#include "stdafx.h"
#include "MySpy.h"
#include "MsgOptionDlg.h"

#include "MsgOpt_Wnd.h"

#include "Inject.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CMsgOptionDlg dialog
static char *g_szPages[] = {"Windows", 
                    "Messages", 
                    "Output"
};
static const int g_ResID[] = {IDD_MSG_WND, 
                        IDD_MSG_WND, 
                        IDD_MSG_WND
};

static int g_nCount = sizeof(g_szPages) / sizeof(g_szPages[0]);


CMsgOptionDlg::CMsgOptionDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CMsgOptionDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CMsgOptionDlg)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT

    m_hWnd = NULL;

    CString strExePath;
    GetModuleFileName(NULL, strExePath.GetBuffer(0), MAX_PATH);
    int i = strExePath.ReverseFind('\\');
    
    strncpy(m_szDllPath, strExePath.GetBuffer(0), i + 1);
    m_szDllPath[i + 1] = '\0';
    strcat(m_szDllPath, "InjectDll.dll");    
}


void CMsgOptionDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CMsgOptionDlg)
	DDX_Control(pDX, IDC_MSG_OPTION_TAB, m_MsgOptWndTab);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CMsgOptionDlg, CDialog)
	//{{AFX_MSG_MAP(CMsgOptionDlg)
	ON_BN_CLICKED(IDC_MSG_OK, OnMsgOk)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMsgOptionDlg message handlers

BOOL CMsgOptionDlg::OnInitDialog() 
{
	CDialog::OnInitDialog();
	
    CRect rc;
    m_MsgOptWndTab.GetClientRect(&rc);
    rc.DeflateRect(0, 25, 0, 50);
    
    
    for (int i = 0; i < g_nCount; i++)
    {
        m_MsgOptWndTab.InsertItem(i, g_szPages[i]);
    }
    
    m_pDlg[0] = new CMsgOpt_Wnd;
    m_pDlg[1] = new CMsgOpt_Wnd;
    m_pDlg[2] = new CMsgOpt_Wnd;
    
    for (i = 0; i < g_nCount; i++)
    {
        m_pDlg[i]->Create(g_ResID[i], &m_MsgOptWndTab);
        m_pDlg[i]->MoveWindow(&rc);
    }
    
    m_pDlg[0]->ShowWindow(SW_NORMAL);   

	
	return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}

void CMsgOptionDlg::OnMsgOk() 
{   
    ASSERT(m_hWnd != NULL);
    
    //将dll注入到进程中, 对消息进行监控
    DWORD dwPID = 0;
    ::GetWindowThreadProcessId(m_hWnd, &dwPID);

    Inject(dwPID, m_szDllPath, m_hWnd); 

    //开启Message Window, 并在其中创建线程读取msg
    ((CMySpyApp *)AfxGetApp())->NewMsgWnd();
    AfxGetMainWnd()->ShowWindow(SW_SHOWNORMAL);

    EndDialog(-1);
}

void CMsgOptionDlg::SetWndHandle(HWND hWnd)
{
    ASSERT(hWnd != NULL);

    m_hWnd = hWnd;
}