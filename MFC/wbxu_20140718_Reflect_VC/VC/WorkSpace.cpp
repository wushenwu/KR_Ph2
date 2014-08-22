// WorkSpace.cpp : implementation file
//

#include "stdafx.h"
#include "VC.h"
#include "WorkSpace.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CWorkSpace dialog


CWorkSpace::CWorkSpace(CWnd* pParent /*=NULL*/)
	: CDialog(CWorkSpace::IDD, pParent)
{
	//{{AFX_DATA_INIT(CWorkSpace)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
}


void CWorkSpace::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CWorkSpace)
	DDX_Control(pDX, IDC_TAB1, m_WorkSpace);
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CWorkSpace, CDialog)
	//{{AFX_MSG_MAP(CWorkSpace)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CWorkSpace message handlers

BOOL CWorkSpace::OnInitDialog() 
{
	CDialog::OnInitDialog();
	
	// TODO: Add extra initialization here

    //对WorkSpace的初始化
    m_WorkSpace.InsertItem(0, "ClassView");
    m_WorkSpace.InsertItem(1, "ResourceView");
    m_WorkSpace.InsertItem(2, "FileView");

	
	return TRUE;  // return TRUE unless you set the focus to a control
	              // EXCEPTION: OCX Property Pages should return FALSE
}
