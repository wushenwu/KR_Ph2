// ClientDlg.h : header file
//

#if !defined(AFX_CLIENTDLG_H__89B6C354_72D4_4DD3_A6A8_ED0389D1D483__INCLUDED_)
#define AFX_CLIENTDLG_H__89B6C354_72D4_4DD3_A6A8_ED0389D1D483__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "..\\Server\\MySocket.h"

/////////////////////////////////////////////////////////////////////////////
// CClientDlg dialog

class CClientDlg : public CDialog
{
// Construction
public:
	CClientDlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CClientDlg)
	enum { IDD = IDD_CLIENT_DIALOG };
	CListBox	m_OnlineClients;
	CButton	m_BTNStop;
	CButton	m_BTNStart;
	CEdit	m_TalkEdit;
	CEdit	m_HistoryEdit;
	BOOL	m_bMulti;
	BOOL	m_bBroadCast;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CClientDlg)
	public:
	virtual BOOL PreTranslateMessage(MSG* pMsg);
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
public:
	void ProcessOnOffline(u_int infoType, char *pData);
	void ClassifyInfo(char *szBuff);
    CMySocket m_MySocket;

public:
	void ReqSingleChat();
	HICON m_hIcon;

    BOOL m_IsStart;

    CString m_strReq;   //请求聊天的远韵

    BOOL m_bChoose; //是否选择了liaotianduixiang

	// Generated message map functions
	//{{AFX_MSG(CClientDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnStartclient();
	afx_msg void OnStopclient();
	afx_msg void OnDblclkOnlineclients();
	afx_msg void OnClose();
	afx_msg void OnChatmulti();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_CLIENTDLG_H__89B6C354_72D4_4DD3_A6A8_ED0389D1D483__INCLUDED_)
