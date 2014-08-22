// VCDoc.h : interface of the CVCDoc class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_VCDOC_H__F95BA5F9_6B6F_48E9_9848_B437FE8E4932__INCLUDED_)
#define AFX_VCDOC_H__F95BA5F9_6B6F_48E9_9848_B437FE8E4932__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000


class CVCDoc : public CDocument
{
protected: // create from serialization only
	CVCDoc();
	DECLARE_DYNCREATE(CVCDoc)

// Attributes
public:

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CVCDoc)
	public:
	virtual BOOL OnNewDocument();
	virtual void Serialize(CArchive& ar);
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CVCDoc();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// Generated message map functions
protected:
	//{{AFX_MSG(CVCDoc)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_VCDOC_H__F95BA5F9_6B6F_48E9_9848_B437FE8E4932__INCLUDED_)
