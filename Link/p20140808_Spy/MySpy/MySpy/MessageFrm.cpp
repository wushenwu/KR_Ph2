// ChildFrm.cpp : implementation of the CMessageFrame class
//

#include "stdafx.h"
#include "MySpy.h"

#include "MessageFrm.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CMessageFrame

IMPLEMENT_DYNCREATE(CMessageFrame, CMDIChildWnd)

BEGIN_MESSAGE_MAP(CMessageFrame, CMDIChildWnd)
	//{{AFX_MSG_MAP(CMessageFrame)
		// NOTE - the ClassWizard will add and remove mapping macros here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMessageFrame construction/destruction

CMessageFrame::CMessageFrame()
{
	// TODO: add member initialization code here
	
}

CMessageFrame::~CMessageFrame()
{
}

BOOL CMessageFrame::PreCreateWindow(CREATESTRUCT& cs)
{
	// TODO: Modify the Window class or styles here by modifying
	//  the CREATESTRUCT cs

	if( !CMDIChildWnd::PreCreateWindow(cs) )
		return FALSE;

	return TRUE;
}



/////////////////////////////////////////////////////////////////////////////
// CMessageFrame diagnostics

#ifdef _DEBUG
void CMessageFrame::AssertValid() const
{
	CMDIChildWnd::AssertValid();
}

void CMessageFrame::Dump(CDumpContext& dc) const
{
	CMDIChildWnd::Dump(dc);
}

#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CMessageFrame message handlers
