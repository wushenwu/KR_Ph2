#if !defined(AFX_WNDPROPERTY_GENERAL_H__4CF1448F_570F_40A6_958A_2DE3259A41B6__INCLUDED_)
#define AFX_WNDPROPERTY_GENERAL_H__4CF1448F_570F_40A6_958A_2DE3259A41B6__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// WndProperty_General.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CWndProperty_General dialog

class CWndProperty_General : public CDialog
{
// Construction
public:
	void SetGeneralInfo();
	CWndProperty_General(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CWndProperty_General)
	enum { IDD = IDD_WNDPROPER_GENERAL };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CWndProperty_General)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CWndProperty_General)
	virtual BOOL OnInitDialog();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_WNDPROPERTY_GENERAL_H__4CF1448F_570F_40A6_958A_2DE3259A41B6__INCLUDED_)
