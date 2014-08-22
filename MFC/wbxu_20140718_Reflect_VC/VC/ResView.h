#if !defined(AFX_RESVIEW_H__0D40F4A0_A208_4788_8E9A_6A9323E80F6F__INCLUDED_)
#define AFX_RESVIEW_H__0D40F4A0_A208_4788_8E9A_6A9323E80F6F__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// ResView.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CResView dialog

class CResView : public CDialog
{
// Construction
public:
	CResView(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CResView)
	enum { IDD = IDD_RESVIEW };
	CTreeCtrl	m_ResTreeCtrl;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CResView)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
    CImageList m_ImgList;

	// Generated message map functions
	//{{AFX_MSG(CResView)
	virtual BOOL OnInitDialog();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_RESVIEW_H__0D40F4A0_A208_4788_8E9A_6A9323E80F6F__INCLUDED_)
