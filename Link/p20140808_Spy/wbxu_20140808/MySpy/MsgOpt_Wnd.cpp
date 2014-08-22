// MsgOpt_Wnd.cpp : implementation file
//

#include "stdafx.h"
#include "MySpy.h"
#include "MsgOpt_Wnd.h"
#include "MsgOptionDlg.h"

#include "Info.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CMsgOpt_Wnd dialog
IMPLEMENT_DYNAMIC(CMsgOpt_Wnd, CDialog)

CMsgOpt_Wnd::CMsgOpt_Wnd(CWnd* pParent /*=NULL*/)
	: CDialog(CMsgOpt_Wnd::IDD, pParent)
{
	//{{AFX_DATA_INIT(CMsgOpt_Wnd)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT

    m_IsHidden = FALSE;
    m_hWnd = NULL;

    m_FindTool.SetParentWnd(this);
}


void CMsgOpt_Wnd::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CMsgOpt_Wnd)
	DDX_Control(pDX, IDC_MSG_FIND_TOOL, m_FindTool);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CMsgOpt_Wnd, CDialog)
	//{{AFX_MSG_MAP(CMsgOpt_Wnd)
	ON_BN_CLICKED(IDC_MSG_FIND_HIDE, OnMsgFindHide)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMsgOpt_Wnd message handlers

void CMsgOpt_Wnd::SetWndHandle(HWND hWnd)
{
    ASSERT(hWnd != NULL);
    m_hWnd = hWnd;

    //再向其父父窗口setwndhandle (dlg)
    CWnd *pParent = GetParent()->GetParent();
    ASSERT(pParent != NULL);

    ((CMsgOptionDlg *)pParent)->SetWndHandle(hWnd);
}

void CMsgOpt_Wnd::SetInfo()
{   
    ASSERT(m_hWnd != 0);
    
    CString str;
    CInfo obj(m_hWnd, str);

    obj.GetWndHandle();
    SetDlgItemText(IDC_MSG_WND, str);

    obj.GetWindowText();
    SetDlgItemText(IDC_MSG_WND_TEXT, str);

    obj.GetClassName();
    SetDlgItemText(IDC_MSG_WNDCLASS, str);

    //哪个style
    obj.GetClassStyle();
    SetDlgItemText(IDC_MSG_STYLE, str);

    obj.GetWndRect();
    SetDlgItemText(IDC_MSG_RECT, str);

    obj.GetPID();
    SetDlgItemText(IDC_MSG_PID, str);

    obj.GetTID();
    SetDlgItemText(IDC_MSG_TID, str);
}

void CMsgOpt_Wnd::OnMsgFindHide() 
{
	// TODO: Add your control notification handler code here
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
