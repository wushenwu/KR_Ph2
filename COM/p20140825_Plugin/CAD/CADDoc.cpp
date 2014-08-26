// CADDoc.cpp : implementation of the CCADDoc class
//
#pragma warning(disable: 4786)

#include "stdafx.h"
#include "CAD.h"

#include "CADDoc.h"

#include <map>
using namespace std;

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CCADDoc

IMPLEMENT_DYNCREATE(CCADDoc, CDocument)

BEGIN_MESSAGE_MAP(CCADDoc, CDocument)
	//{{AFX_MSG_MAP(CCADDoc)
		// NOTE - the ClassWizard will add and remove mapping macros here.
		//    DO NOT EDIT what you see in these blocks of generated code!
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CCADDoc construction/destruction

CCADDoc::CCADDoc()
{
	// TODO: add one-time construction code here

}

CCADDoc::~CCADDoc()
{
}

BOOL CCADDoc::OnNewDocument()
{
	if (!CDocument::OnNewDocument())
		return FALSE;

	// TODO: add reinitialization code here
	// (SDI documents will reuse this document)

	return TRUE;
}



/////////////////////////////////////////////////////////////////////////////
// CCADDoc serialization

void CCADDoc::Serialize(CArchive& ar)
{
    CDocument::Serialize(ar);   //call the base's

	if (ar.IsStoring())
	{
		// TODO: add storing code here
        
        //Ԫ�ظ���
        ar.WriteCount(m_ShapeList.GetCount());

        //��ShapeList�и�Ԫ�ؽ��б����洢
        POSITION pos = m_ShapeList.GetHeadPosition();
        while (pos)
        {
        #ifdef USE_ISHAPE
            IShape *pobj  = m_ShapeList.GetNext(pos);
            ar << pobj; //todo

        #else
            CMyShape *pobj = m_ShapeList.GetNext(pos);
            ar << pobj;
        #endif

        }
	}
	else
	{
		// TODO: add loading code here
        
        //���Ƚ�����ShapeList���������
        m_ShapeList.RemoveAll();

        //��ShapeList�������¹���
        DWORD nCount = ar.ReadCount();
        while (nCount)
        {
        #ifdef USE_ISHAPE
            
            //What to do??
            CObject *pobj = NULL;
            ar >> pobj;
            
        #else
            CObject *pobj = NULL;
            ar >> pobj;
        #endif

        #ifdef USE_ISHAPE
            m_ShapeList.AddTail((IShape *)pobj);
        #else
            m_ShapeList.AddTail((CMyShape *)pobj);
        #endif

            nCount--;
        }
	}
}

/////////////////////////////////////////////////////////////////////////////
// CCADDoc diagnostics

#ifdef _DEBUG
void CCADDoc::AssertValid() const
{
	CDocument::AssertValid();
}

void CCADDoc::Dump(CDumpContext& dc) const
{
	CDocument::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CCADDoc commands

void CCADDoc::OnUpdate(CView *pSender, LPARAM lHint, CObject *pHint)
{
//     POSITION pos = GetFirstViewPosition();
//     while(pos)
//     {
//         CView *pView = GetNextView(pos);
//         pView->OnUpdate(pSender, lHint, pHint);
//    }
}
