// WndProperty_Style.cpp : implementation file
//

#include "stdafx.h"
#include "MySpy.h"
#include "WndProperty_Style.h"
#include "WindowPropertyDlg.h"
#include "Info.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CWndProperty_Style dialog


CWndProperty_Style::CWndProperty_Style(CWnd* pParent /*=NULL*/)
	: CDialog(CWndProperty_Style::IDD, pParent)
{
	//{{AFX_DATA_INIT(CWndProperty_Style)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
}


void CWndProperty_Style::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CWndProperty_Style)
		// NOTE: the ClassWizard will add DDX and DDV calls here
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CWndProperty_Style, CDialog)
	//{{AFX_MSG_MAP(CWndProperty_Style)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CWndProperty_Style message handlers

BOOL CWndProperty_Style::OnInitDialog() 
{
	CDialog::OnInitDialog();
	
	SetStyleInfo();
	
	return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}

void CWndProperty_Style::SetStyleInfo()
{
    //»ñÈ¡HWND
    CWnd *pParent = GetParent()->GetParent();
    ASSERT(pParent != NULL);
    
    HWND hWnd= ((CWindowPropertyDlg *)pParent)->GetWndHandle();
    ASSERT(hWnd != NULL);
    
    CString str;
    CInfo obj(hWnd, str);

    obj.GetWndStyle();
    SetDlgItemText(IDC_STYLE_WND, str);

    //list box todo

    obj.GetWndExStyle();
    SetDlgItemText(IDC_STYLE_EX, str);

    //list box todo
}
