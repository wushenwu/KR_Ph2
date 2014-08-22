// Upload_ServerDlg.h : header file
//

#if !defined(AFX_UPLOAD_SERVERDLG_H__17B15D66_4BB6_4B6D_AF9C_7D2B6212C2A9__INCLUDED_)
#define AFX_UPLOAD_SERVERDLG_H__17B15D66_4BB6_4B6D_AF9C_7D2B6212C2A9__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include <map>
using namespace std;

#include "..\\Upload_Client\MySocket.h"

/////////////////////////////////////////////////////////////////////////////
// CUpload_ServerDlg dialog

class CUpload_ServerDlg : public CDialog
{
// Construction
public:
	LRESULT OnFinish(WPARAM wParam, LPARAM lParam);
	LRESULT OnSaveFile(WPARAM wParam, LPARAM lParam);
	LRESULT OnAccept(WPARAM wParam, LPARAM lParam);
	afx_msg LRESULT OnNetEvents (WPARAM, LPARAM);
	CUpload_ServerDlg(CWnd* pParent = NULL);	// standard constructor

// Dialog Data
	//{{AFX_DATA(CUpload_ServerDlg)
	enum { IDD = IDD_UPLOAD_SERVER_DIALOG };
	CButton	m_BTNStop;
	CButton	m_BTNStart;
	CEdit	m_EditUploadInfo;
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CUpload_ServerDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	HICON m_hIcon;

    CMySocket m_MySocket;

    //客户端上传的文件对应关系
    map<SOCKET, CString> m_map_SOCKET_FILENAME;
    map<SOCKET, CFile *> m_map_SOCKET_FD;

	// Generated message map functions
	//{{AFX_MSG(CUpload_ServerDlg)
	virtual BOOL OnInitDialog();
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	afx_msg void OnStart();
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_UPLOAD_SERVERDLG_H__17B15D66_4BB6_4B6D_AF9C_7D2B6212C2A9__INCLUDED_)
