// RCT_ClientDoc.cpp : implementation of the CRCT_ClientDoc class
//

#include "stdafx.h"
#include "RCT_Client.h"

#include "RCT_ClientDoc.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CRCT_ClientDoc

IMPLEMENT_DYNCREATE(CRCT_ClientDoc, CDocument)

BEGIN_MESSAGE_MAP(CRCT_ClientDoc, CDocument)
	//{{AFX_MSG_MAP(CRCT_ClientDoc)
		// NOTE - the ClassWizard will add and remove mapping macros here.
		//    DO NOT EDIT what you see in these blocks of generated code!
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CRCT_ClientDoc construction/destruction

CRCT_ClientDoc::CRCT_ClientDoc()
{
	// TODO: add one-time construction code here

}

CRCT_ClientDoc::~CRCT_ClientDoc()
{
}

BOOL CRCT_ClientDoc::OnNewDocument()
{
	if (!CDocument::OnNewDocument())
		return FALSE;

	// TODO: add reinitialization code here
	// (SDI documents will reuse this document)

	return TRUE;
}



/////////////////////////////////////////////////////////////////////////////
// CRCT_ClientDoc serialization

void CRCT_ClientDoc::Serialize(CArchive& ar)
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
// CRCT_ClientDoc diagnostics

#ifdef _DEBUG
void CRCT_ClientDoc::AssertValid() const
{
	CDocument::AssertValid();
}

void CRCT_ClientDoc::Dump(CDumpContext& dc) const
{
	CDocument::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CRCT_ClientDoc commands
