#if !defined(AFX_PROCESSMODULELIST_H__53E4B3B1_60EC_48D3_A9EE_B3C27A5F0A33__INCLUDED_)
#define AFX_PROCESSMODULELIST_H__53E4B3B1_60EC_48D3_A9EE_B3C27A5F0A33__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// ProcessModuleList.h : header file
//
#include "mylistctrl.h"

/////////////////////////////////////////////////////////////////////////////
// CProcessModuleList window

class CProcessModuleList : public CMyListCtrl
{
// Construction
public:
	CProcessModuleList();

// Attributes
public:

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CProcessModuleList)
	//}}AFX_VIRTUAL

// Implementation
public:
	virtual void Walk();
	virtual ~CProcessModuleList();

    void SetPID(DWORD dwPID)
    {
        m_dwPID = dwPID;
    }

protected:
    DWORD m_dwPID;
    int m_nTotal;

	// Generated message map functions
protected:
	//{{AFX_MSG(CProcessModuleList)
	afx_msg void OnRButtonDown(UINT nFlags, CPoint point);
	//}}AFX_MSG

	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_PROCESSMODULELIST_H__53E4B3B1_60EC_48D3_A9EE_B3C27A5F0A33__INCLUDED_)
