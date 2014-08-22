#if !defined(AFX_MYLISTCTRL_H__73BE5F07_2173_415B_8FBC_AC7C1C911054__INCLUDED_)
#define AFX_MYLISTCTRL_H__73BE5F07_2173_415B_8FBC_AC7C1C911054__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// mylistctrl.h : header file
//

/////////////////////////////////////////////////////////////////////////////
// CMyListCtrl window
class CMyListCtrl : public CListCtrl
{
// Construction
public:
	CMyListCtrl();

// Attributes
public:
    CImageList m_ImgLst;

// Operations
public:

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CMyListCtrl)
	//}}AFX_VIRTUAL

// Implementation
public:
    void InsertRecord(CString &strRecord);
	void InsertRecord(CString &strRecord, TCHAR *pszFullPath);  //”–Õº±Í
	void InsertHeader(CString &strHeader);
	void AutoSize();
	void InitCtrl(CRect &rect, CWnd* pParentWnd, UINT nID); //…Ë÷√position, style
	virtual ~CMyListCtrl();

    //
    virtual void Walk();
    //virtual void Refresh() = 0;
    //virtual void SetStatus() = 0;

protected:
	// Generated message map functions
protected:
	//{{AFX_MSG(CMyListCtrl)		
	afx_msg void OnRButtonDown(UINT nFlags, CPoint point);
	afx_msg void OnItemSort(NMHDR* pNMHDR, LRESULT* pResult);
	//}}AFX_MSG

	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_MYLISTCTRL_H__73BE5F07_2173_415B_8FBC_AC7C1C911054__INCLUDED_)
