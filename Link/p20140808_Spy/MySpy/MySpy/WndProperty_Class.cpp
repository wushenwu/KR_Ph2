// WndProperty_Class.cpp : implementation file
//

#include "stdafx.h"
#include "MySpy.h"
#include "WndProperty_Class.h"
#include "WindowPropertyDlg.h"

#include "Info.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CWndProperty_Class dialog


CWndProperty_Class::CWndProperty_Class(CWnd* pParent /*=NULL*/)
	: CDialog(CWndProperty_Class::IDD, pParent)
{
	//{{AFX_DATA_INIT(CWndProperty_Class)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
}


void CWndProperty_Class::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CWndProperty_Class)
		// NOTE: the ClassWizard will add DDX and DDV calls here
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CWndProperty_Class, CDialog)
	//{{AFX_MSG_MAP(CWndProperty_Class)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CWndProperty_Class message handlers

BOOL CWndProperty_Class::OnInitDialog() 
{
	CDialog::OnInitDialog();
	
	SetClassInfo();
	
	return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}



void CWndProperty_Class::SetClassInfo()
{
    //»ñÈ¡HWND
    CWnd *pParent = GetParent()->GetParent();
    ASSERT(pParent != NULL);
    
    HWND hWnd= ((CWindowPropertyDlg *)pParent)->GetWndHandle();
    ASSERT(hWnd != NULL);

    CString str;
    CInfo infoobj(hWnd, str);
    
    //class name
    infoobj.GetClassName();
    SetDlgItemText(IDC_WND_CLASSNAME, str);
    
    //style
    infoobj.GetClassStyle();
    SetDlgItemText(IDC_WND_CLASSSTYLE, str);
    
    //clss bytes
    infoobj.GetClassBytes();
    SetDlgItemText(IDC_WND_CLASSBYTES, str);

    //atom
    infoobj.GetClassAtom();
    SetDlgItemText(IDC_WND_CLASSATOM, str);

    //wndbytes
    infoobj.GetWndBytes();
    SetDlgItemText(IDC_WND_WNDBYTES, str);

    //Menuname
    infoobj.GetMenuName();
    SetDlgItemText(IDC_WND_MENUNAME, str);

    //icon handle
    infoobj.GetIconHandle();
    SetDlgItemText(IDC_WND_ICONHANDLE, str);

    //cursor handle
    infoobj.GetCursorHandle();
    SetDlgItemText(IDC_WND_CURSORHANDLE, str);

    //bkgbrush
    infoobj.GetBkgBrush();
    SetDlgItemText(IDC_WND_BKGBRUSH, str);

    //hinstance
    infoobj.GetInstanceHandle();
    SetDlgItemText(IDC_WND_INSTANCEHANDLE, str);

    //wndproc
    infoobj.GetWndProc();
    SetDlgItemText(IDC_WND_WNDPROC, str);
  
}
