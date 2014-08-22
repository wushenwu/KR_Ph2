// ProcessList.h: interface for the CProcessList class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_PROCESSLIST_H__150E7150_47D5_41FA_B907_773A594040BE__INCLUDED_)
#define AFX_PROCESSLIST_H__150E7150_47D5_41FA_B907_773A594040BE__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "mylistctrl.h"

#endif // !defined(AFX_PROCESSLIST_H__150E7150_47D5_41FA_B907_773A594040BE__INCLUDED_)
/////////////////////////////////////////////////////////////////////////////
// CProcessList window

class CProcessList : public CMyListCtrl
{
// Construction
public:
	CProcessList();

// Attributes
public:

protected:
    int m_nNonAccess;
    int m_nTotal;

    DWORD m_dwPID;

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CProcessList)
	//}}AFX_VIRTUAL

// Implementation
public:
	void GetSelectInfo();
	virtual void SetStatus();
	virtual void Walk();
	virtual ~CProcessList();

	// Generated message map functions
protected:
	//{{AFX_MSG(CProcessList)
	afx_msg void OnRButtonDown(UINT nFlags, CPoint point);
	afx_msg void OnProcessRefresh();
	afx_msg void OnProcessModule();
    afx_msg void OnProcessThread();
	afx_msg void OnProcessWindow();
	afx_msg void OnProcessTerminate();
	afx_msg void OnRrocessMem();
	afx_msg void OnInject();
	afx_msg void OnClickSelect(NMHDR* pNMHDR, LRESULT* pResult);
	afx_msg void OnRclick(NMHDR* pNMHDR, LRESULT* pResult);
	//}}AFX_MSG

	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////
