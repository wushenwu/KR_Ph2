#if !defined(AFX_DEBUGVIEW_H__844AAE0F_EEC6_44F5_B293_05EC65DE2277__INCLUDED_)
#define AFX_DEBUGVIEW_H__844AAE0F_EEC6_44F5_B293_05EC65DE2277__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// DebugView.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CDebugView dialog

class CDebugView : public CDialog
{
// Construction
public:
	CDebugView(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CDebugView)
	enum { IDD = IDD_DEBUG };
		// NOTE: the ClassWizard will add data members here
	//}}AFX_DATA


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CDebugView)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CDebugView)
	virtual BOOL OnInitDialog();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DEBUGVIEW_H__844AAE0F_EEC6_44F5_B293_05EC65DE2277__INCLUDED_)
