// MyEditProxy.cpp : implementation file
//

#include "stdafx.h"
#include "DDX.h"
#include "MyEditProxy.h"

//for proxy
#include "DDXDlg.h"
extern CDDXDlg *g_pDLG;

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CMyEditProxy

CMyEditProxy::CMyEditProxy()
{
}

CMyEditProxy::~CMyEditProxy()
{
}


BEGIN_MESSAGE_MAP(CMyEditProxy, CEdit)
	//{{AFX_MSG_MAP(CMyEditProxy)
	ON_WM_KEYDOWN()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMyEditProxy message handlers

void CMyEditProxy::OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags) 
{
	// TODO: Add your message handler code here and/or call default

    //Edit controls in dialog ---> EditProxy--->Dialog Keydown
    g_pDLG->KeyDownProxy(nChar, nRepCnt, nFlags);
	
	CEdit::OnKeyDown(nChar, nRepCnt, nFlags);
}
