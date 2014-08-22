#if !defined(AFX_PAGE3_H__1CE009A5_0F85_4FF6_97D0_312427629A5E__INCLUDED_)
#define AFX_PAGE3_H__1CE009A5_0F85_4FF6_97D0_312427629A5E__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// Page3.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CPage3 dialog

class CPage3 : public CPropertyPage
{
	DECLARE_DYNCREATE(CPage3)

// Construction
public:
	CPage3();
	~CPage3();

// Dialog Data
	//{{AFX_DATA(CPage3)
	enum { IDD = IDD_DIALOG3 };
		// NOTE - ClassWizard will add data members here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_DATA


// Overrides
	// ClassWizard generate virtual function overrides
	//{{AFX_VIRTUAL(CPage3)
	public:
	virtual BOOL OnApply();
	virtual BOOL OnSetActive();
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	// Generated message map functions
	//{{AFX_MSG(CPage3)
		// NOTE: the ClassWizard will add member functions here
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()

};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_PAGE3_H__1CE009A5_0F85_4FF6_97D0_312427629A5E__INCLUDED_)
