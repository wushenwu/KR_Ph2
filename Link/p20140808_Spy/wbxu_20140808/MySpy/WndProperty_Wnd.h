#if !defined(AFX_WNDPROPERTY_WND_H__38CCB25F_B6A3_4EB4_B643_124CA19BB72B__INCLUDED_)
#define AFX_WNDPROPERTY_WND_H__38CCB25F_B6A3_4EB4_B643_124CA19BB72B__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// WndProperty_Wnd.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CWndProperty_Wnd dialog

class CWndProperty_Wnd : public CDialog
{
// Construction
public:
	void SetWndInfo();
	CWndProperty_Wnd(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CWndProperty_Wnd)
	enum { IDD = IDD_WNDPROPERTY_WND };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CWndProperty_Wnd)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CWndProperty_Wnd)
	virtual BOOL OnInitDialog();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_WNDPROPERTY_WND_H__38CCB25F_B6A3_4EB4_B643_124CA19BB72B__INCLUDED_)
