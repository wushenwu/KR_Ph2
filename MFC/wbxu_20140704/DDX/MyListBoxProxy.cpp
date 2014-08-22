// MyListBoxProxy.cpp : implementation file
//

#include "stdafx.h"
#include "DDX.h"
#include "MyListBoxProxy.h"

//for proxy
#include "DDXDlg.h"
extern CDDXDlg *g_pDLG;

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CMyListBoxProxy

CMyListBoxProxy::CMyListBoxProxy()
{
}

CMyListBoxProxy::~CMyListBoxProxy()
{
}


BEGIN_MESSAGE_MAP(CMyListBoxProxy, CListBox)
	//{{AFX_MSG_MAP(CMyListBoxProxy)
	ON_WM_KEYDOWN()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMyListBoxProxy message handlers

void CMyListBoxProxy::OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags) 
{
	// TODO: Add your message handler code here and/or call default
	
    //List Box controls in Dialog --->ListBox Proxy ---> Dialog KeyDown
    g_pDLG->KeyDownProxy(nChar, nRepCnt, nFlags);

	CListBox::OnKeyDown(nChar, nRepCnt, nFlags);
}
