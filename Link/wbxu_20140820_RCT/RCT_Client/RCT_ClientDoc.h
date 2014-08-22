// RCT_ClientDoc.h : interface of the CRCT_ClientDoc class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_RCT_CLIENTDOC_H__40597864_9017_4076_ACEB_6ADA1F27B49F__INCLUDED_)
#define AFX_RCT_CLIENTDOC_H__40597864_9017_4076_ACEB_6ADA1F27B49F__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000


class CRCT_ClientDoc : public CDocument
{
protected: // create from serialization only
	CRCT_ClientDoc();
	DECLARE_DYNCREATE(CRCT_ClientDoc)

// Attributes
public:

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CRCT_ClientDoc)
	public:
	virtual BOOL OnNewDocument();
	virtual void Serialize(CArchive& ar);
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CRCT_ClientDoc();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// Generated message map functions
protected:
	//{{AFX_MSG(CRCT_ClientDoc)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_RCT_CLIENTDOC_H__40597864_9017_4076_ACEB_6ADA1F27B49F__INCLUDED_)
