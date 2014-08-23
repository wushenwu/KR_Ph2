// ServerDlg.h : header file
//

#if !defined(AFX_SERVERDLG_H__ADA4F67E_D7CC_4B68_980C_3128FDF628A5__INCLUDED_)
#define AFX_SERVERDLG_H__ADA4F67E_D7CC_4B68_980C_3128FDF628A5__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#pragma warning(disable: 4786)

#include <afxtempl.h>
#include "MySocket.h"
#include "struct.h"

#include "..\\ThreadPool\\MyThreadPool.h"
#include "..\\ThreadPool\\IWorkItemBase.h"

#include <map>
using namespace std;

/////////////////////////////////////////////////////////////////////////////
// CServerDlg dialog

class CServerDlg : public CDialog
{
// Construction
public:
	CServerDlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CServerDlg)
	enum { IDD = IDD_SERVER_DIALOG };
	CListBox	m_OnlineClients;
	CButton	m_BTNStop;
	CButton	m_BTNStart;
	CEdit	m_HistoryEdit;
	CEdit	m_TalkEdit;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CServerDlg)
	public:
	virtual BOOL PreTranslateMessage(MSG* pMsg);
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
public:
	LRESULT OnRecv(WPARAM wParam, LPARAM lParam);
	LRESULT OnAccept(WPARAM wParam, LPARAM lParam);
	LRESULT OnNetEvents(WPARAM wParam, LPARAM lParam);
	void TransmitTalk(u_int nInfoType, char *pData, int nLen, SOCKET csocket);
	BOOL ProcessRequestChat(char *pRequest, int nLen, SOCKET csocket);
	void SetOffline(SOCKET client);
	void ClassifyInfo(char *szBuf, SOCKET csocket);
	void SetOnline(SOCKET client);
    CMySocket m_MySocket; 
    //在线客户端
    CList<SOCKET, SOCKET> m_lstOnline;

    //在线客户端与昵称或者ip:port的关系
    map<CString, SOCKET> m_map_Info_SOCKET;

    //聊天双方的关系
    map<SOCKET, SOCKET> m_map_Req_Resp;
protected:
	HICON m_hIcon;

    BOOL m_IsStart;

    //Thread Pool
    CMyThreadPool m_ThreadPool;


	// Generated message map functions
	//{{AFX_MSG(CServerDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnStartserver();
	afx_msg void OnStopserver();
	afx_msg void OnClose();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_SERVERDLG_H__ADA4F67E_D7CC_4B68_980C_3128FDF628A5__INCLUDED_)
