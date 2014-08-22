// EnumWindow_GUIDoc.cpp : implementation of the CEnumWindow_GUIDoc class
//

#include "stdafx.h"
#include "EnumWindow_GUI.h"

#include "EnumWindow_GUIDoc.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CEnumWindow_GUIDoc

IMPLEMENT_DYNCREATE(CEnumWindow_GUIDoc, CDocument)

BEGIN_MESSAGE_MAP(CEnumWindow_GUIDoc, CDocument)
	//{{AFX_MSG_MAP(CEnumWindow_GUIDoc)
		// NOTE - the ClassWizard will add and remove mapping macros here.
		//    DO NOT EDIT what you see in these blocks of generated code!
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CEnumWindow_GUIDoc construction/destruction

CEnumWindow_GUIDoc::CEnumWindow_GUIDoc()
{
	// TODO: add one-time construction code here

}

CEnumWindow_GUIDoc::~CEnumWindow_GUIDoc()
{
}

BOOL CEnumWindow_GUIDoc::OnNewDocument()
{
	if (!CDocument::OnNewDocument())
		return FALSE;

	// TODO: add reinitialization code here
	// (SDI documents will reuse this document)

	return TRUE;
}



/////////////////////////////////////////////////////////////////////////////
// CEnumWindow_GUIDoc serialization

void CEnumWindow_GUIDoc::Serialize(CArchive& ar)
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
// CEnumWindow_GUIDoc diagnostics

#ifdef _DEBUG
void CEnumWindow_GUIDoc::AssertValid() const
{
	CDocument::AssertValid();
}

void CEnumWindow_GUIDoc::Dump(CDumpContext& dc) const
{
	CDocument::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CEnumWindow_GUIDoc commands
