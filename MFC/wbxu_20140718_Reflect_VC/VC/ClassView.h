#if !defined(AFX_CLASSVIEW_H__A9B27A54_89D8_4844_BD15_24E9AA2A063E__INCLUDED_)
#define AFX_CLASSVIEW_H__A9B27A54_89D8_4844_BD15_24E9AA2A063E__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// ClassView.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CClassView dialog

class CClassView : public CDialog
{
// Construction
public:
	CClassView(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CClassView)
	enum { IDD = IDD_CLASSVIEW };
	CTreeCtrl	m_ClsTreeCtrl;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CClassView)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

    CImageList m_ImgList;

	// Generated message map functions
	//{{AFX_MSG(CClassView)
	virtual BOOL OnInitDialog();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CLASSVIEW_H__A9B27A54_89D8_4844_BD15_24E9AA2A063E__INCLUDED_)
