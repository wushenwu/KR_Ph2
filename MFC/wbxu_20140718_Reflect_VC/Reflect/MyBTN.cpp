// MyBTN.cpp : implementation file
//

#include "stdafx.h"
#include "Reflect.h"
#include "mybtn.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CMyBTN

CMyBTN::CMyBTN()
{
}

CMyBTN::~CMyBTN()
{
}


BEGIN_MESSAGE_MAP(CMyBTN, CButton)
	//{{AFX_MSG_MAP(CMyBTN)
	ON_CONTROL_REFLECT(BN_CLICKED, OnClicked)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMyBTN message handlers

void CMyBTN::OnClicked() 
{
	// TODO: Add your control notification handler code here
	AfxMessageBox("CMyBTN::OnClicked");
}
