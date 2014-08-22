// WindowPropertyDlg.cpp : implementation file
//

#include "stdafx.h"
#include "MySpy.h"
#include "WindowPropertyDlg.h"

#include "WndProperty_Class.h"
#include "WndProperty_General.h"
#include "WndProperty_Style.h"
#include "WndProperty_Wnd.h"
#include "WndProperty_Process.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CWindowPropertyDlg dialog

static char *g_szPages[] = {"General", 
                    "Styles", 
                    "Window", 
                    "Class", 
                    "Process"
};
static const int g_ResID[] = {IDD_WNDPROPER_GENERAL, 
                    IDD_WNDPROPERTY_STYLE, 
                    IDD_WNDPROPERTY_WND,
                    IDD_WNDPROPERTY_CLASS, 
                    IDD_WNDPROPERTY_PROCESS
};
    
static int g_nCount = sizeof(g_szPages) / sizeof(g_szPages[0]);


CWindowPropertyDlg::CWindowPropertyDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CWindowPropertyDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CWindowPropertyDlg)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT

    memset(m_pDlg, 0, sizeof(m_pDlg));

    m_hWnd = NULL;
}


void CWindowPropertyDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CWindowPropertyDlg)
	DDX_Control(pDX, IDC_TAB_WNDPROPERTY, m_tabWndProperty);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CWindowPropertyDlg, CDialog)
	//{{AFX_MSG_MAP(CWindowPropertyDlg)
	ON_NOTIFY(TCN_SELCHANGE, IDC_TAB_WNDPROPERTY, OnSelchangeTabWndproperty)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CWindowPropertyDlg message handlers

BOOL CWindowPropertyDlg::OnInitDialog() 
{
	CDialog::OnInitDialog();
	
	// TODO: Add extra initialization here
    CRect rc;
    m_tabWndProperty.GetClientRect(&rc);
    rc.DeflateRect(0, 25, 0, 0);

    
    for (int i = 0; i < g_nCount; i++)
    {
        m_tabWndProperty.InsertItem(i, g_szPages[i]);
    }

    m_pDlg[0] = new CWndProperty_General;
    m_pDlg[1] = new CWndProperty_Style;
    m_pDlg[2] = new CWndProperty_Wnd;
    m_pDlg[3] = new CWndProperty_Class;
    m_pDlg[4] = new CWndProperty_Process;

    for (i = 0; i < g_nCount; i++)
    {
        m_pDlg[i]->Create(g_ResID[i], &m_tabWndProperty);
        m_pDlg[i]->MoveWindow(&rc);
    }

    m_pDlg[0]->ShowWindow(SW_NORMAL);   

	
	return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}

void CWindowPropertyDlg::OnSelchangeTabWndproperty(NMHDR* pNMHDR, LRESULT* pResult) 
{
    int nIndex = m_tabWndProperty.GetCurSel();
    
    for (int i = 0; i < g_nCount; i++)
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

void CWindowPropertyDlg::SetWndHandle(HWND hWnd)
{
    ASSERT(hWnd != NULL);
    m_hWnd = hWnd;
}

HWND CWindowPropertyDlg::GetWndHandle()
{
    return m_hWnd;
}
