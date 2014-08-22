// WndProperty_Wnd.cpp : implementation file
//

#include "stdafx.h"
#include "MySpy.h"
#include "WndProperty_Wnd.h"

#include "WindowPropertyDlg.h"
#include "Info.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CWndProperty_Wnd dialog


CWndProperty_Wnd::CWndProperty_Wnd(CWnd* pParent /*=NULL*/)
	: CDialog(CWndProperty_Wnd::IDD, pParent)
{
	//{{AFX_DATA_INIT(CWndProperty_Wnd)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
}


void CWndProperty_Wnd::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CWndProperty_Wnd)
		// NOTE: the ClassWizard will add DDX and DDV calls here
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CWndProperty_Wnd, CDialog)
	//{{AFX_MSG_MAP(CWndProperty_Wnd)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CWndProperty_Wnd message handlers

BOOL CWndProperty_Wnd::OnInitDialog() 
{
	CDialog::OnInitDialog();
	
	SetWndInfo();
	
	return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}

void CWndProperty_Wnd::SetWndInfo()
{
    //»ñÈ¡HWND
    CWnd *pParent = GetParent()->GetParent();
    ASSERT(pParent != NULL);
    
    HWND hWnd= ((CWindowPropertyDlg *)pParent)->GetWndHandle();
    ASSERT(hWnd != NULL);
    
    CString str;
    CInfo obj(hWnd, str);

    //NEXT 
    obj.GetNextWnd();
    SetDlgItemText(IDC_WND_NEXT, str);

    //pre
    obj.GetPreWnd();
    SetDlgItemText(IDC_WND_PRE, str);

    //parent
    obj.GetParentWnd();
    SetDlgItemText(IDC_WND_PARENT, str);

    //1st child
    obj.Get1stChildWnd();
    SetDlgItemText(IDC_WND_1stChild, str);

    //owner todo
    SetDlgItemText(IDC_WND_OWNER, "TODO");
}
