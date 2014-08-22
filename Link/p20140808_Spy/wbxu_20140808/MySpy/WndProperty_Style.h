#if !defined(AFX_WNDPROPERTY_STYLE_H__FFE7CF09_6F87_4FBC_B1DA_D10FB6E59179__INCLUDED_)
#define AFX_WNDPROPERTY_STYLE_H__FFE7CF09_6F87_4FBC_B1DA_D10FB6E59179__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// WndProperty_Style.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CWndProperty_Style dialog

class CWndProperty_Style : public CDialog
{
// Construction
public:
	void SetStyleInfo();
	CWndProperty_Style(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CWndProperty_Style)
	enum { IDD = IDD_WNDPROPERTY_STYLE };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CWndProperty_Style)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CWndProperty_Style)
	virtual BOOL OnInitDialog();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_WNDPROPERTY_STYLE_H__FFE7CF09_6F87_4FBC_B1DA_D10FB6E59179__INCLUDED_)
