// Page1.cpp : implementation file
//

#include "stdafx.h"
#include "PropertySheet.h"
#include "Page1.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CPage1 property page

IMPLEMENT_DYNCREATE(CPage1, CPropertyPage)

CPage1::CPage1() : CPropertyPage(CPage1::IDD)
{
	//{{AFX_DATA_INIT(CPage1)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
}

CPage1::~CPage1()
{
}

void CPage1::DoDataExchange(CDataExchange* pDX)
{
	CPropertyPage::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CPage1)
		// NOTE: the ClassWizard will add DDX and DDV calls here
	//}}AFX_DATA_MAP
}


BEGIN_MESSAGE_MAP(CPage1, CPropertyPage)
	//{{AFX_MSG_MAP(CPage1)
		// NOTE: the ClassWizard will add message map macros here
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CPage1 message handlers

BOOL CPage1::OnApply() 
{
	// TODO: Add your specialized code here and/or call the base class
	AfxMessageBox("CPage1::OnApply()");

	return CPropertyPage::OnApply();
}

BOOL CPage1::OnSetActive() 
{
	// TODO: Add your specialized code here and/or call the base class

    //下一步生效
    ((CPropertySheet*)GetParent())->SetWizardButtons(PSWIZB_NEXT);
	
	return CPropertyPage::OnSetActive();
}
