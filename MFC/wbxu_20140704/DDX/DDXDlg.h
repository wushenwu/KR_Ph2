// DDXDlg.h : header file
//

#if !defined(AFX_DDXDLG_H__7908DCF4_22E8_44C9_B6AB_81BC8816B1AD__INCLUDED_)
#define AFX_DDXDLG_H__7908DCF4_22E8_44C9_B6AB_81BC8816B1AD__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "MyButtonProxy.h"
#include "MyEditProxy.h"
#include "MyListBoxProxy.h"

/////////////////////////////////////////////////////////////////////////////
// CDDXDlg dialog

class CDDXDlg : public CDialog
{
// Construction
public:
	CDDXDlg(CWnd* pParent = NULL);	// standard constructor

public:
    void EnableNumberEdit(void);
    void KeyDownProxy(UINT nChar, UINT nRepCnt, UINT nFlags);


// Dialog Data
	//{{AFX_DATA(CDDXDlg)
	enum { IDD = IDD_DDX_DIALOG };
	CMyListBoxProxy	m_ListBoxProxy;
	CMyButtonProxy	m_ButtonProxy_OK;
	CMyButtonProxy	m_ButtonProxy_CANCEL;
	CMyEditProxy	m_EditProxy;
	CMyButtonProxy	m_ButtonProxy;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CDDXDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

	// Generated message map functions
	//{{AFX_MSG(CDDXDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnEditSubClass();
	afx_msg void OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_DDXDLG_H__7908DCF4_22E8_44C9_B6AB_81BC8816B1AD__INCLUDED_)
