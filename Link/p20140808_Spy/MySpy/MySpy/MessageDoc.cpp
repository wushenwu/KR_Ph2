// MessageDoc.cpp : implementation of the CMessageDoc class
//

#include "stdafx.h"
#include "MySpy.h"

#include "MessageDoc.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CMessageDoc

IMPLEMENT_DYNCREATE(CMessageDoc, CDocument)

BEGIN_MESSAGE_MAP(CMessageDoc, CDocument)
	//{{AFX_MSG_MAP(CMessageDoc)
		// NOTE - the ClassWizard will add and remove mapping macros here.
		//    DO NOT EDIT what you see in these blocks of generated code!
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMessageDoc construction/destruction

CMessageDoc::CMessageDoc()
{
	// TODO: add one-time construction code here

}

CMessageDoc::~CMessageDoc()
{
}

BOOL CMessageDoc::OnNewDocument()
{
	if (!CDocument::OnNewDocument())
		return FALSE;

	

	return TRUE;
}



/////////////////////////////////////////////////////////////////////////////
// CMessageDoc serialization

void CMessageDoc::Serialize(CArchive& ar)
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
// CMessageDoc diagnostics

#ifdef _DEBUG
void CMessageDoc::AssertValid() const
{
	CDocument::AssertValid();
}

void CMessageDoc::Dump(CDumpContext& dc) const
{
	CDocument::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CMessageDoc commands
