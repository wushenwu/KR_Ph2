// WndProperty_Process.cpp : implementation file
//

#include "stdafx.h"
#include "MySpy.h"
#include "WndProperty_Process.h"

#include "WindowPropertyDlg.h"
#include "Info.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CWndProperty_Process dialog


CWndProperty_Process::CWndProperty_Process(CWnd* pParent /*=NULL*/)
	: CDialog(CWndProperty_Process::IDD, pParent)
{
	//{{AFX_DATA_INIT(CWndProperty_Process)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
}


void CWndProperty_Process::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CWndProperty_Process)
		// NOTE: the ClassWizard will add DDX and DDV calls here
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CWndProperty_Process, CDialog)
	//{{AFX_MSG_MAP(CWndProperty_Process)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CWndProperty_Process message handlers

BOOL CWndProperty_Process::OnInitDialog() 
{
	CDialog::OnInitDialog();
	
    SetProcessInfo();
	
	return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}

void CWndProperty_Process::SetProcessInfo()
{
    //»ñÈ¡HWND
    CWnd *pParent = GetParent()->GetParent();
    ASSERT(pParent != NULL);
    
    HWND hWnd= ((CWindowPropertyDlg *)pParent)->GetWndHandle();
    ASSERT(hWnd != NULL);
    
    CString str;
    CInfo obj(hWnd, str);

    obj.GetPID();
    SetDlgItemText(IDC_PROCESS_PID, str);

    obj.GetTID();
    SetDlgItemText(IDC_PROCESS_TID, str);



}
