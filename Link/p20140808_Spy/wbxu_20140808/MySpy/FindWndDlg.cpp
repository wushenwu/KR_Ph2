// FindWndDlg.cpp : implementation file
//

#include "stdafx.h"
#include "MySpy.h"
#include "FindWndDlg.h"

#include "MainFrm.h"
#include "WindowPropertyDlg.h"

#include "Info.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CFindWndDlg dialog

IMPLEMENT_DYNAMIC(CFindWndDlg, CDialog) 

CFindWndDlg::CFindWndDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CFindWndDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CFindWndDlg)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT

    m_IsHidden = FALSE;
    m_hWnd = NULL;

    m_FindTool.SetParentWnd(this);
}

void CFindWndDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CFindWndDlg)
	DDX_Control(pDX, ID_FIND_TOOL, m_FindTool);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CFindWndDlg, CDialog)
	//{{AFX_MSG_MAP(CFindWndDlg)
	ON_WM_LBUTTONDOWN()
	ON_BN_CLICKED(ID_FIND_HIDE, OnFindHide)
	ON_BN_CLICKED(IDC_FIND_OK, OnFindOk)
	ON_BN_CLICKED(IDC_FIND_CANCEL, OnFindCancel)
	ON_WM_CLOSE()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CFindWndDlg message handlers

void CFindWndDlg::OnFindHide() 
{
	m_IsHidden = !m_IsHidden;
    if (m_IsHidden)
    {
        AfxGetMainWnd()->ShowWindow(SW_HIDE);   
    }
    else
    {
        AfxGetMainWnd()->ShowWindow(SW_NORMAL);
    }
}

void CFindWndDlg::OnFindOk() 
{
    //对句柄的检测，todo

    AfxGetMainWnd()->ShowWindow(SW_NORMAL);
    
    BOOL bRet;
    static CWindowPropertyDlg *pdlg = new CWindowPropertyDlg;
    CWindowPropertyDlg *&ptmp = pdlg;
    if (NULL == pdlg)
    {
        goto ERROR_CLEAN;
    }

    if (pdlg->m_hWnd != NULL)
    {
        pdlg->DestroyWindow();
    }

    pdlg->SetWndHandle(m_hWnd);
    bRet = pdlg->Create(IDD_DLG_WNDPROPERITY); //return immediately
    if (!bRet)
    {
        AfxMessageBox("Create CWindowPropertyDlg Error");

        pdlg->DestroyWindow();
        goto ERROR_CLEAN;
    }

    pdlg->ShowWindow(SW_SHOW);

    //pdlg的释放问题，在上面解决，新建前进行判定
    
ERROR_CLEAN:
    EndDialog(-1);
}

void CFindWndDlg::OnFindCancel() 
{  	
    AfxGetMainWnd()->ShowWindow(SW_NORMAL);
}

void CFindWndDlg::OnClose() 
{
    AfxGetMainWnd()->ShowWindow(SW_NORMAL); 
	
	CDialog::OnClose();
}

void CFindWndDlg::SetWndHandle(HWND hWnd)
{
    ASSERT(hWnd != NULL);
    m_hWnd = hWnd;
}

void CFindWndDlg::SetInfo()
{
    ASSERT(m_hWnd != 0);

    CString str;
    CInfo infoobj(m_hWnd, str);
    
    //handle
    infoobj.GetWndHandle();
    SetDlgItemText(IDC_FIND_HANDLE, str);
    
    //caption
    infoobj.GetWindowText();
    SetDlgItemText(IDC_FIND_CAPTION, str);
    
    //class
    infoobj.GetClassName();
    SetDlgItemText(IDC_FIND_CLASS, str);
    
    //style
    infoobj.GetClassStyle();
    SetDlgItemText(IDC_FIND_STYLE, str);
    
    //rect
    infoobj.GetWndRect();
    SetDlgItemText(IDC_FIND_RECT, str);
    
}
