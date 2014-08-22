#if !defined(AFX_FILEVIEW_H__F8777BB8_E1BC_48BC_A01D_5B7E8B47AE20__INCLUDED_)
#define AFX_FILEVIEW_H__F8777BB8_E1BC_48BC_A01D_5B7E8B47AE20__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// FileView.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CFileView dialog

class CFileView : public CDialog
{
// Construction
public:
	CFileView(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CFileView)
	enum { IDD = IDD_FILEVIEW };
	CTreeCtrl	m_FileTreeCtrl;
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CFileView)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
    CImageList m_ImgList;

	// Generated message map functions
	//{{AFX_MSG(CFileView)
	virtual BOOL OnInitDialog();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_FILEVIEW_H__F8777BB8_E1BC_48BC_A01D_5B7E8B47AE20__INCLUDED_)
