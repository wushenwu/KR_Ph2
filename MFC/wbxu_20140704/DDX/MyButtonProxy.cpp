// MyButtonProxy.cpp : implementation file
//

#include "stdafx.h"
#include "DDX.h"
#include "MyButtonProxy.h"

//for proxy
#include "DDXDlg.h"
extern CDDXDlg *g_pDLG;

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CMyButtonProxy

CMyButtonProxy::CMyButtonProxy()
{
}

CMyButtonProxy::~CMyButtonProxy()
{
}


BEGIN_MESSAGE_MAP(CMyButtonProxy, CButton)
	//{{AFX_MSG_MAP(CMyButtonProxy)
	ON_WM_KEYDOWN()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMyButtonProxy message handlers

void CMyButtonProxy::OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags) 
{
	// TODO: Add your message handler code here and/or call default

    //Buttons in Dialog -----> ButtonProxy---->Dialog
    g_pDLG->KeyDownProxy(nChar, nRepCnt, nFlags);
	
	CButton::OnKeyDown(nChar, nRepCnt, nFlags);
}
