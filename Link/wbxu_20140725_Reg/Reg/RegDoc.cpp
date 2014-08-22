// RegDoc.cpp : implementation of the CRegDoc class
//

#include "stdafx.h"
#include "Reg.h"

#include "RegDoc.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CRegDoc

IMPLEMENT_DYNCREATE(CRegDoc, CDocument)

BEGIN_MESSAGE_MAP(CRegDoc, CDocument)
	//{{AFX_MSG_MAP(CRegDoc)
		// NOTE - the ClassWizard will add and remove mapping macros here.
		//    DO NOT EDIT what you see in these blocks of generated code!
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CRegDoc construction/destruction

CRegDoc::CRegDoc()
{
	// TODO: add one-time construction code here

}

CRegDoc::~CRegDoc()
{
}

BOOL CRegDoc::OnNewDocument()
{
	if (!CDocument::OnNewDocument())
		return FALSE;

	// TODO: add reinitialization code here
	// (SDI documents will reuse this document)

	return TRUE;
}



/////////////////////////////////////////////////////////////////////////////
// CRegDoc serialization

void CRegDoc::Serialize(CArchive& ar)
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
// CRegDoc diagnostics

#ifdef _DEBUG
void CRegDoc::AssertValid() const
{
	CDocument::AssertValid();
}

void CRegDoc::Dump(CDumpContext& dc) const
{
	CDocument::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CRegDoc commands
