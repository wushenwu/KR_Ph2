#if !defined(AFX_PROCESSTHREADLIST_H__4E5594C4_C9DD_42B6_BD8B_56B6CBA75DB6__INCLUDED_)
#define AFX_PROCESSTHREADLIST_H__4E5594C4_C9DD_42B6_BD8B_56B6CBA75DB6__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// ProcessThreadList.h : header file
//

#include "mylistctrl.h"

/////////////////////////////////////////////////////////////////////////////
// CProcessThreadList window

class CProcessThreadList : public CMyListCtrl
{
// Construction
public:
	CProcessThreadList();

// Attributes
public:

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CProcessThreadList)
	//}}AFX_VIRTUAL

// Implementation
public:
	void Walk();
	virtual ~CProcessThreadList();

    void SetPID(DWORD dwPID)
    {
        m_dwPID = dwPID;
    }

protected:
    DWORD m_dwPID;
    int m_nTotal;

	// Generated message map functions
protected:
	//{{AFX_MSG(CProcessThreadList)
	afx_msg void OnRButtonDown(UINT nFlags, CPoint point);
	//}}AFX_MSG

	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_PROCESSTHREADLIST_H__4E5594C4_C9DD_42B6_BD8B_56B6CBA75DB6__INCLUDED_)
