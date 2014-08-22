// WindowFrame.cpp : implementation file
//

#include "stdafx.h"
#include "MySpy.h"
#include "WindowFrame.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CWindowFrame

IMPLEMENT_DYNCREATE(CWindowFrame, CMDIChildWnd)

CWindowFrame::CWindowFrame()
{
}

CWindowFrame::~CWindowFrame()
{
}


BEGIN_MESSAGE_MAP(CWindowFrame, CMDIChildWnd)
	//{{AFX_MSG_MAP(CWindowFrame)
		// NOTE - the ClassWizard will add and remove mapping macros here.
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CWindowFrame message handlers
