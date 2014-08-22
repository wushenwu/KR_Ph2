// EnumWindow_GUIDoc.h : interface of the CEnumWindow_GUIDoc class
//
/////////////////////////////////////////////////////////////////////////////

#if !defined(AFX_ENUMWINDOW_GUIDOC_H__62BDDCA6_18F0_446D_8BF1_C67016683567__INCLUDED_)
#define AFX_ENUMWINDOW_GUIDOC_H__62BDDCA6_18F0_446D_8BF1_C67016683567__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000


class CEnumWindow_GUIDoc : public CDocument
{
protected: // create from serialization only
	CEnumWindow_GUIDoc();
	DECLARE_DYNCREATE(CEnumWindow_GUIDoc)

// Attributes
public:

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CEnumWindow_GUIDoc)
	public:
	virtual BOOL OnNewDocument();
	virtual void Serialize(CArchive& ar);
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual ~CEnumWindow_GUIDoc();
#ifdef _DEBUG
	virtual void AssertValid() const;
	virtual void Dump(CDumpContext& dc) const;
#endif

protected:

// Generated message map functions
protected:
	//{{AFX_MSG(CEnumWindow_GUIDoc)
		// NOTE - the ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_ENUMWINDOW_GUIDOC_H__62BDDCA6_18F0_446D_8BF1_C67016683567__INCLUDED_)
