// BuildView.cpp : implementation file
//

#include "stdafx.h"
#include "VC.h"
#include "buildview.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CBuildView dialog


CBuildView::CBuildView(CWnd* pParent /*=NULL*/)
	: CDialog(CBuildView::IDD, pParent)
{
	//{{AFX_DATA_INIT(CBuildView)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
}


void CBuildView::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CBuildView)
		// NOTE: the ClassWizard will add DDX and DDV calls here
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CBuildView, CDialog)
	//{{AFX_MSG_MAP(CBuildView)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CBuildView message handlers

BOOL CBuildView::OnInitDialog() 
{
	CDialog::OnInitDialog();
	
	// TODO: Add extra initialization here
    SetWindowText("VC.exe - 0 error(s), 0 waring(s)");
	
	return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}
