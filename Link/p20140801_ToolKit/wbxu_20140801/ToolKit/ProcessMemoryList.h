#if !defined(AFX_PROCESSMEMORYLIST_H__F574A6E2_E4A3_4B27_A00E_DCA7DB3ADA94__INCLUDED_)
#define AFX_PROCESSMEMORYLIST_H__F574A6E2_E4A3_4B27_A00E_DCA7DB3ADA94__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// ProcessMemoryList.h : header file
//
#include "mylistctrl.h"

/////////////////////////////////////////////////////////////////////////////
// CProcessMemoryList window

class CProcessMemoryList : public CMyListCtrl
{
// Construction
public:
	CProcessMemoryList();

    void SetPID(DWORD dwPID)
    {
        m_dwPID = dwPID;
    }

// Attributes
public:
    DWORD m_dwPID;
    int m_nTotal;

// Operations
public:


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CProcessMemoryList)
	//}}AFX_VIRTUAL

// Implementation
public:
	void Walk();
	virtual ~CProcessMemoryList();

	// Generated message map functions
protected:
	//{{AFX_MSG(CProcessMemoryList)
	afx_msg void OnRButtonDown(UINT nFlags, CPoint point);
	//}}AFX_MSG

	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_PROCESSMEMORYLIST_H__F574A6E2_E4A3_4B27_A00E_DCA7DB3ADA94__INCLUDED_)
