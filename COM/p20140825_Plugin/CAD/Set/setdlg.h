#if !defined(AFX_SETDLG_H__10997B82_BE55_4FBC_A309_60740BD755B8__INCLUDED_)
#define AFX_SETDLG_H__10997B82_BE55_4FBC_A309_60740BD755B8__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// SetDLG.h : header file
//

#include "MyColorBtn.h"
#include "..\Shape\MyShape.h"

/////////////////////////////////////////////////////////////////////////////
// CSetDLG dialog

class CSetDLG : public CDialog
{
// Construction
public:
	CSetDLG(CWnd* pParent = NULL);   // standard constructor

// Dialog Data
	//{{AFX_DATA(CSetDLG)
	enum { IDD = IDD_SET };
	CMyColorBtn	m_BrushColor;
	CMyColorBtn	m_PenColor;
	int		m_nPenStyle;
	int	m_nBrushStyle;
	int		m_nPenWidth;
	//}}AFX_DATA

    void SetPen(tagPen pen);
    void SetBrush(tagBrush brush);
    tagPen GetPen(void);
    tagBrush GetBrush(void);

protected:
    tagPen m_tagPen;
    tagBrush m_tagBrush;


// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CSetDLG)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:

	// Generated message map functions
	//{{AFX_MSG(CSetDLG)
	afx_msg void OnPencolor();
	afx_msg void OnBrushcolor();
	virtual BOOL OnInitDialog();
	afx_msg void OnDeltaposSpin1(NMHDR* pNMHDR, LRESULT* pResult);
	virtual void OnOK();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SETDLG_H__10997B82_BE55_4FBC_A309_60740BD755B8__INCLUDED_)
