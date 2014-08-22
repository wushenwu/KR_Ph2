// WindowDoc.cpp : implementation file
//

#include "stdafx.h"
#include "MySpy.h"
#include "WindowDoc.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CWindowDoc

IMPLEMENT_DYNCREATE(CWindowDoc, CDocument)

CWindowDoc::CWindowDoc()
{
}

BOOL CWindowDoc::OnNewDocument()
{
	if (!CDocument::OnNewDocument())
		return FALSE;
	return TRUE;
}

CWindowDoc::~CWindowDoc()
{
}


BEGIN_MESSAGE_MAP(CWindowDoc, CDocument)
	//{{AFX_MSG_MAP(CWindowDoc)
		// NOTE - the ClassWizard will add and remove mapping macros here.
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CWindowDoc diagnostics

#ifdef _DEBUG
void CWindowDoc::AssertValid() const
{
	CDocument::AssertValid();
}

void CWindowDoc::Dump(CDumpContext& dc) const
{
	CDocument::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CWindowDoc serialization

void CWindowDoc::Serialize(CArchive& ar)
{
	if (ar.IsStoring())
	{
		// TODO: add storing code here
	}
	else
	{
		// TODO: add loading code here
	}
}

/////////////////////////////////////////////////////////////////////////////
// CWindowDoc commands
