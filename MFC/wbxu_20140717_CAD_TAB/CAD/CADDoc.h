// CADDoc.h : interface of the CCADDoc class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_CADDOC_H__9B09FB96_2B6E_47CB_9C18_1A5259741984__INCLUDED_)
#define AFX_CADDOC_H__9B09FB96_2B6E_47CB_9C18_1A5259741984__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "MyList.h"
#include "Shape\MyShape.h"


class CCADDoc : public CDocument
{
protected: // create from serialization only
	CCADDoc();
	DECLARE_DYNCREATE(CCADDoc)

    //´æ´¢CMyShape *
    CMyList<CMyShape> m_ShapeList;

// Attributes
public:

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CCADDoc)
	public:
	virtual BOOL OnNewDocument();
	virtual void Serialize(CArchive& ar);
	//}}AFX_VIRTUAL

// Implementation
public:
	void OnUpdate(CView* pSender, LPARAM lHint, CObject* pHint);
	virtual ~CCADDoc();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// Generated message map functions
protected:
	//{{AFX_MSG(CCADDoc)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CADDOC_H__9B09FB96_2B6E_47CB_9C18_1A5259741984__INCLUDED_)
