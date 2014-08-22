#if !defined(AFX_PROCESSWINDOWLIST_H__CEA2538A_88E0_4B53_A8C0_0C06EEA4EA2F__INCLUDED_)
#define AFX_PROCESSWINDOWLIST_H__CEA2538A_88E0_4B53_A8C0_0C06EEA4EA2F__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// ProcessWindowList.h : header file
//

#include "mylistctrl.h"

/////////////////////////////////////////////////////////////////////////////
// CProcessWindowList window

class CProcessWindowList : public CMyListCtrl
{
// Construction
public:
	CProcessWindowList();

// Attributes
public:

// Operations
public:
    void SetPID(DWORD dwPID)
    {
        m_dwPID = dwPID;
    }

public:
    DWORD m_dwPID;
    int m_nTotal;

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CProcessWindowList)
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual void Walk();
	virtual ~CProcessWindowList();

	// Generated message map functions
protected:
	//{{AFX_MSG(CProcessWindowList)
	afx_msg void OnRButtonDown(UINT nFlags, CPoint point);
	//}}AFX_MSG

	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_PROCESSWINDOWLIST_H__CEA2538A_88E0_4B53_A8C0_0C06EEA4EA2F__INCLUDED_)
