// WndProperty_General.cpp : implementation file
//

#include "stdafx.h"
#include "MySpy.h"
#include "WndProperty_General.h"

#include "WindowPropertyDlg.h"
#include "Info.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CWndProperty_General dialog


CWndProperty_General::CWndProperty_General(CWnd* pParent /*=NULL*/)
	: CDialog(CWndProperty_General::IDD, pParent)
{
	//{{AFX_DATA_INIT(CWndProperty_General)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
}


void CWndProperty_General::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CWndProperty_General)
		// NOTE: the ClassWizard will add DDX and DDV calls here
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CWndProperty_General, CDialog)
	//{{AFX_MSG_MAP(CWndProperty_General)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CWndProperty_General message handlers

BOOL CWndProperty_General::OnInitDialog() 
{
	CDialog::OnInitDialog();
	
	SetGeneralInfo();
	
	return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}

void CWndProperty_General::SetGeneralInfo()
{
    //»ñÈ¡HWND
    CWnd *pParent = GetParent()->GetParent();
    ASSERT(pParent != NULL);
    
    HWND hWnd= ((CWindowPropertyDlg *)pParent)->GetWndHandle();
    ASSERT(hWnd != NULL);
    
    CString str;
    CInfo obj(hWnd, str);

    //window caption
    obj.GetWindowText();
    SetDlgItemText(IDC_GEN_WNDCAP, str);

    //wnd handle
    obj.GetWndHandle();
    SetDlgItemText(IDC_GEN_WNDHANDLE, str);

    //wndproc
    obj.GetWndProc();
    SetDlgItemText(IDC_GEN_WNDPROC, str);

    //rect
    obj.GetWndRect();
    SetDlgItemText(IDC_GEN_WNDRECT, str);

    //restored rect??

    //client rect
    obj.GetClientRect();
    SetDlgItemText(IDC_GEN_CLIENTRECT, str);

    //hinstance
    obj.GetInstanceHandle();
    SetDlgItemText(IDC_GEN_HINSTANCE, str);

    //menu
    obj.GetMenuName();
    SetDlgItemText(IDC_GEN_MENUHANDLE, str);

    //user data ??

    //wnd bytes
    obj.GetWndBytes();
    //??
    
}
