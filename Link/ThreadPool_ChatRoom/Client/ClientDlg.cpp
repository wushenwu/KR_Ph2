// ClientDlg.cpp : implementation file
//

#include "stdafx.h"
#include "Client.h"
#include "ClientDlg.h"

#include "..\Server\MyPacket.h"

#include <afxtempl.h>

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

#define  LOG

/////////////////////////////////////////////////////////////////////////////
// CAboutDlg dialog used for App About

class CAboutDlg : public CDialog
{
public:
	CAboutDlg();

// Dialog Data
	//{{AFX_DATA(CAboutDlg)
	enum { IDD = IDD_ABOUTBOX };
	//}}AFX_DATA

	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CAboutDlg)
	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support
	//}}AFX_VIRTUAL

// Implementation
protected:
	//{{AFX_MSG(CAboutDlg)
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()
};

CAboutDlg::CAboutDlg() : CDialog(CAboutDlg::IDD)
{
	//{{AFX_DATA_INIT(CAboutDlg)
	//}}AFX_DATA_INIT
}

void CAboutDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CAboutDlg)
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CAboutDlg, CDialog)
	//{{AFX_MSG_MAP(CAboutDlg)
		// No message handlers
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CClientDlg dialog

typedef struct _tagSocket
{
    CMySocket m_Socket;
    CWnd *m_pDlg;
}tagSocket;

CClientDlg *g_pDlg;

CClientDlg::CClientDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CClientDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CClientDlg)
	m_bMulti = FALSE;
	m_bBroadCast = FALSE;
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);

    m_IsStart = FALSE;
    
    //获取自己的信息
    m_strReq = "BroadCast";

    g_pDlg = this;

    m_bChoose = FALSE;
}

void CClientDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CClientDlg)
	DDX_Control(pDX, IDC_ONLINECLIENTS, m_OnlineClients);
	DDX_Control(pDX, ID_STOPCLIENT, m_BTNStop);
	DDX_Control(pDX, ID_STARTCLIENT, m_BTNStart);
	DDX_Control(pDX, IDC_TALK, m_TalkEdit);
	DDX_Control(pDX, IDC_HISTORY, m_HistoryEdit);
	DDX_Check(pDX, IDC_CHATMULTI, m_bMulti);
	DDX_Check(pDX, IDC_BROADCAST, m_bBroadCast);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CClientDlg, CDialog)
	//{{AFX_MSG_MAP(CClientDlg)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_BN_CLICKED(ID_STARTCLIENT, OnStartclient)
	ON_BN_CLICKED(ID_STOPCLIENT, OnStopclient)
	ON_LBN_DBLCLK(IDC_ONLINECLIENTS, OnDblclkOnlineclients)
	ON_WM_CLOSE()
	ON_WM_COPYDATA()
	ON_BN_CLICKED(IDC_CHATMULTI, OnChatmulti)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CClientDlg message handlers

BOOL CClientDlg::OnInitDialog()
{
	CDialog::OnInitDialog();

	// Add "About..." menu item to system menu.

	// IDM_ABOUTBOX must be in the system command range.
	ASSERT((IDM_ABOUTBOX & 0xFFF0) == IDM_ABOUTBOX);
	ASSERT(IDM_ABOUTBOX < 0xF000);

	CMenu* pSysMenu = GetSystemMenu(FALSE);
	if (pSysMenu != NULL)
	{
		CString strAboutMenu;
		strAboutMenu.LoadString(IDS_ABOUTBOX);
		if (!strAboutMenu.IsEmpty())
		{
			pSysMenu->AppendMenu(MF_SEPARATOR);
			pSysMenu->AppendMenu(MF_STRING, IDM_ABOUTBOX, strAboutMenu);
		}
	}

	// Set the icon for this dialog.  The framework does this automatically
	//  when the application's main window is not a dialog
	SetIcon(m_hIcon, TRUE);			// Set big icon
	SetIcon(m_hIcon, FALSE);		// Set small icon
	
	// TODO: Add extra initialization here

    //关于UI处理
    m_BTNStart.EnableWindow(TRUE);
    m_BTNStop.EnableWindow(FALSE);
	
	return TRUE;  // return TRUE  unless you set the focus to a control
}

void CClientDlg::OnSysCommand(UINT nID, LPARAM lParam)
{
	if ((nID & 0xFFF0) == IDM_ABOUTBOX)
	{
		CAboutDlg dlgAbout;
		dlgAbout.DoModal();
	}
	else
	{
		CDialog::OnSysCommand(nID, lParam);
	}
}

// If you add a minimize button to your dialog, you will need the code below
//  to draw the icon.  For MFC applications using the document/view model,
//  this is automatically done for you by the framework.

void CClientDlg::OnPaint() 
{
	if (IsIconic())
	{
		CPaintDC dc(this); // device context for painting

		SendMessage(WM_ICONERASEBKGND, (WPARAM) dc.GetSafeHdc(), 0);

		// Center icon in client rectangle
		int cxIcon = GetSystemMetrics(SM_CXICON);
		int cyIcon = GetSystemMetrics(SM_CYICON);
		CRect rect;
		GetClientRect(&rect);
		int x = (rect.Width() - cxIcon + 1) / 2;
		int y = (rect.Height() - cyIcon + 1) / 2;

		// Draw the icon
		dc.DrawIcon(x, y, m_hIcon);
	}
	else
	{
		CDialog::OnPaint();
	}
}

// The system calls this to obtain the cursor to display while the user drags
//  the minimized window.
HCURSOR CClientDlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

UINT ProcessServerThread( LPVOID pParam );
void UpdateHistory(char *pszwho, TCHAR *pszInfo);

/*
客户端的处理流程
1. WSAStartup
2. socket
3. connect
4. send/recv
*/
void CClientDlg::OnStartclient() 
{
    BOOL bRet = m_MySocket.Create_TCP();
    if (!bRet)
    {
        m_MySocket.GetError();
        return;
    }

    bRet = m_MySocket.Connect(HOST, PORT);
    if (!bRet)
    {
        m_MySocket.GetError();
        return;
    }

    //关于Enter处理
    m_IsStart = TRUE;

    //关于UI处理
    m_BTNStart.EnableWindow(FALSE);
    m_BTNStop.EnableWindow(TRUE);

    //创建线程处理recv
    tagSocket *pClient = NULL;
    pClient = new tagSocket;
    if (NULL == pClient)
    {
        return;
    }

    pClient->m_pDlg = this;
    pClient->m_Socket = m_MySocket;
    AfxBeginThread(ProcessServerThread, pClient);
}

UINT ProcessServerThread( LPVOID pParam )
{
    tagSocket *pClient = (tagSocket *)pParam;
    ASSERT(pClient != NULL);

    //获取传递的参数
    CMySocket *pSocket = &(pClient->m_Socket);
    CClientDlg *pDlg = (CClientDlg *)pClient->m_pDlg;

    TCHAR szBuf[MAXBYTE];
    BOOL bRet = 0;

    while (TRUE)
    {
        memset(szBuf, 0, MAXBYTE);
        bRet = CMySocket::Recv(pSocket->m_Socket, szBuf, MAXBYTE, 0);
        if (!bRet)
        {
            goto ERROR_CLEAN;
        }
       
        //根据通信类型进行处理
        pDlg->ClassifyInfo(szBuf);   
    }

ERROR_CLEAN:
    //AfxMessageBox("链接关闭");
    pDlg->OnStopclient();
    delete pClient;
    pClient = NULL;

    return 0;
}

void CClientDlg::OnStopclient() 
{
    m_MySocket.Close();	

    m_IsStart = FALSE;
    m_bChoose = FALSE;

    //关于UI处理
    m_BTNStart.EnableWindow(TRUE);
    m_BTNStop.EnableWindow(FALSE);

    m_OnlineClients.ResetContent();
}

BOOL CClientDlg::PreTranslateMessage(MSG* pMsg) 
{
    if (WM_KEYDOWN == pMsg->message
        && VK_RETURN == pMsg->wParam)
    {
        //获取当前焦点所在控件的ID
        int nCtrlID = GetFocus()->GetDlgCtrlID();
        
        if (IDC_TALK == nCtrlID
            && m_IsStart)
        {
            UpdateData(TRUE);

            //私聊情况
            if (!m_bChoose      
                &&!m_bBroadCast)
            {
                AfxMessageBox("请先选择聊天对象");
                return TRUE;
            }

            //获取控件中的信息，并向客户端发送
            TCHAR szLine[MAXBYTE] = {0};
            int nLen = m_TalkEdit.GetLine(0, szLine, MAXBYTE);

            CMyPacket::NotifyChat(m_bBroadCast, szLine, m_MySocket.m_Socket, m_strReq.GetBuffer(0));
            
            //清空输入
            m_TalkEdit.SetSel(0, -1);
            m_TalkEdit.Clear();
            
            //更新自己的history
            UpdateHistory("C", szLine);
            
            return TRUE;    //已经处理完毕，不再由系统实现
        }      
    }
	
	return CDialog::PreTranslateMessage(pMsg);
}

void AppendString(TCHAR *pszInfo)
{
    int nHistory = g_pDlg->m_HistoryEdit.GetWindowTextLength();
    g_pDlg->m_HistoryEdit.SetSel(nHistory, nHistory);  
    g_pDlg->m_HistoryEdit.ReplaceSel(pszInfo);
}

void UpdateHistory(char *pszwho, TCHAR *pszInfo)
{
    AppendString(pszwho);
    AppendString(" : ");
    AppendString(pszInfo);
    AppendString("\r\n");
}

void CClientDlg::ClassifyInfo(char *szBuff)
{
    char *pData;
    u_int nLen;
    u_int infoType = CMyPacket::GetType(szBuff, &pData, &nLen);

    switch (infoType)
    {
    case INFO_TYPE_ONLINE:
    case INFO_TYPE_OFFLINE:
        {
            ProcessOnOffline(infoType, pData);
            break;
        }
    case INFO_TYPE_CHAT:
    case INFO_TYPE_BROADCAST:
        {
            UpdateHistory(&pData[_tcslen(pData) + sizeof(TCHAR)], pData);
            break;
        }
    default:
        {
            AfxMessageBox("Client ClassifyInfo Err!!");
            break;
        }
    }
}

void CClientDlg::OnDblclkOnlineclients() 
{
    UpdateData(TRUE);
    if (m_bMulti)
    {
    }
    else
    {
        ReqSingleChat();
    }
}

void CClientDlg::ProcessOnOffline(u_int infoType, char *pData)
{
    //更新在线用户列表
    sockaddr_in addrin;
    memcpy(&addrin, pData, sizeof(sockaddr_in));
    char *cIP = inet_ntoa(addrin.sin_addr);
    
    CString str;
    str.Format("%s: %d", cIP, ntohs(addrin.sin_port));
    
    if (INFO_TYPE_ONLINE == infoType)
    {
        m_OnlineClients.InsertString(-1, str);
    }
    else
    {
        int nIndex = m_OnlineClients.FindString(-1, str);
        if (LB_ERR == nIndex)
        {
            return;
        }
        m_OnlineClients.DeleteString(nIndex);
    }
}

void CClientDlg::OnClose() 
{
	// TODO: Add your message handler code here and/or call default
    
    //其他清理性操作已由类对象的析构自动完成
    WSACleanup();
	
	CDialog::OnClose();
}

void CClientDlg::ReqSingleChat()
{
    int nIndex = m_OnlineClients.GetCurSel();
    if (LB_ERR == nIndex)
    {
        return;
    }

    CString str;
    m_OnlineClients.GetText(nIndex, str);
    m_strReq = str;
    m_bChoose = TRUE;

    CMyPacket::NotifyRequest(TRUE, m_MySocket.m_Socket, str);

#ifdef LOG
    str.Format("Talking to %s", m_strReq);
    UpdateHistory(str.GetBuffer(0), "");
#endif
}

void CClientDlg::OnChatmulti() 
{
	UpdateData(TRUE);
    if (!m_bMulti)
    {
        return;
    }

    AfxMessageBox("TO DO");
    return;

    int nCount = m_OnlineClients.GetSelCount();
    if (0 == nCount )
    {
        AfxMessageBox("请先选择多人");
        return;
    }

    CArray<int,int> aryListBoxSel;    
    aryListBoxSel.SetSize(nCount);
    m_OnlineClients.GetSelItems(nCount, aryListBoxSel.GetData()); 

    CString strMembers;
    CString str;
    for (int i = 0; i < nCount; i++)
    {
        m_OnlineClients.GetText(aryListBoxSel[i], str);
        strMembers += str;
        strMembers += "|";
    }

    CMyPacket::NotifyRequest(FALSE, m_MySocket.m_Socket, strMembers);
	
}
