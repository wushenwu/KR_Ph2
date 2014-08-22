// ServerDlg.cpp : implementation file
//

#include "stdafx.h"
#include "Server.h"
#include "ServerDlg.h"

#include "MyPacket.h"

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
// CServerDlg dialog

static CServerDlg *g_pDlg;

CServerDlg::CServerDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CServerDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CServerDlg)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);

    m_IsStart = FALSE;

    g_pDlg = this;
}

void CServerDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CServerDlg)
	DDX_Control(pDX, IDC_ONLINE, m_OnlineClients);
	DDX_Control(pDX, ID_STOPSERVER, m_BTNStop);
	DDX_Control(pDX, ID_STARTSERVER, m_BTNStart);
	DDX_Control(pDX, IDC_HISTORY, m_HistoryEdit);
	DDX_Control(pDX, IDC_TALK, m_TalkEdit);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CServerDlg, CDialog)
	//{{AFX_MSG_MAP(CServerDlg)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_BN_CLICKED(ID_STARTSERVER, OnStartserver)
	ON_BN_CLICKED(ID_STOPSERVER, OnStopserver)
	ON_WM_CLOSE()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CServerDlg message handlers

BOOL CServerDlg::OnInitDialog()
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

void CServerDlg::OnSysCommand(UINT nID, LPARAM lParam)
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

void CServerDlg::OnPaint() 
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
HCURSOR CServerDlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

UINT WaitThread( LPVOID pParam );
UINT ProcessClientThread( LPVOID pParam );
void UpdateHistory(char * pszwho, TCHAR *pszInfo);

/*
服务端的处理流程：
1. 初始化WSAStartup
2. 创建socket
3. bind
4. listen
5. accept
6. send/recv
7. 关闭
*/
void CServerDlg::OnStartserver() 
{
    BOOL bRet = m_MySocket.Create();
    if (!bRet)
    {
        m_MySocket.GetError();
        return;
    }

    bRet = m_MySocket.Bind(HOST, PORT);
    if (!bRet)
    {
        m_MySocket.GetError();
        return;
    }

    bRet = m_MySocket.Listen();
    if (!bRet)
    {
        m_MySocket.GetError();
        return;
    }

    //关于Enter的处理
    m_IsStart = TRUE;

    //关于UI的处理
    m_BTNStart.EnableWindow(FALSE);
    m_BTNStop.EnableWindow(TRUE);
    
    //新建线程以等待客户端的连接
    AfxBeginThread(WaitThread, this);  
}

UINT WaitThread( LPVOID pParam )
{
    CServerDlg *pDlg = (CServerDlg *)pParam;
    ASSERT( pDlg != NULL);

    BOOL bRet;
    
    while (TRUE)
    {
        tagClientSocket *pClient = NULL;
        pClient = new tagClientSocket;
        if (NULL == pClient)
        {
            return 0;
        }

        bRet = pDlg->m_MySocket.Accept(pClient);
        if (!bRet)
        {
            //err
            pDlg->m_MySocket.GetError();

            delete pClient;
            pClient = NULL;
            return 0;
        }

        //在线客户端列表更新,  或者通告主线程消息进行处理
        pDlg->SetOnline(pClient->m_Socket);

        //
        pClient->m_pDlg = pDlg;

        //创建新的线程对建立的连接进行处理
        AfxBeginThread(ProcessClientThread, pClient);
    }

    return 0;
}

UINT ProcessClientThread( LPVOID pParam )
{
    tagClientSocket *pClient = (tagClientSocket *)pParam;
    ASSERT(pClient != NULL);

    //从pParam中解析参数，并删除相关资源
    SOCKET cSocket = pClient->m_Socket;
    CServerDlg *pDlg = (CServerDlg *)pClient->m_pDlg;
    delete pClient;

    TCHAR szBuf[MAXBYTE];
    BOOL bRet = TRUE;

    while (TRUE)
    {
        memset(szBuf, 0, MAXBYTE);
        bRet = CMySocket::Recv(cSocket,
                              szBuf,
                                MAXBYTE,
                                0);
        if (!bRet)
        {
            pDlg->SetOffline(cSocket);

            closesocket(cSocket);
            break;
        }
        
        //应根据通信数据类型进行处理
        pDlg->ClassifyInfo(szBuf, cSocket);
    }

    return 0;
}

void CServerDlg::OnStopserver() 
{
    //server socket清理
    m_MySocket.Close();   
    
    m_IsStart = FALSE;

    //关于UI处理
    m_BTNStart.EnableWindow(TRUE);
    m_BTNStop.EnableWindow(FALSE);
    m_OnlineClients.ResetContent();

    //对各客户端进行清理
    POSITION pos = m_lstOnline.GetHeadPosition();
    while (pos != NULL )
    {
        SOCKET client = m_lstOnline.GetNext(pos);

        closesocket(client);
    }

    m_lstOnline.RemoveAll();
}

BOOL CServerDlg::PreTranslateMessage(MSG* pMsg) 
{
#if 0   //作为服务端，它的意义已经不存在

    if (WM_KEYDOWN == pMsg->message
        && VK_RETURN == pMsg->wParam)
    {
        //获取当前焦点所在控件的ID
        int nCtrlID = GetFocus()->GetDlgCtrlID();

        if (IDC_TALK == nCtrlID
            && m_IsStart)
        {
            //获取控件中的信息，并向客户端发送
            TCHAR szLine[MAXBYTE] = {0};
            int nLen = m_TalkEdit.GetLine(0, szLine, MAXBYTE);
            
            int nRet = ::send(g_pClient->m_Socket, szLine, nLen, 0);
            if (SOCKET_ERROR == nRet)
            {
                //do sth
            }

            //清空输入
            m_TalkEdit.SetSel(0, -1);
            m_TalkEdit.Clear();

            //更新自己的history
            UpdateHistory("S", szLine);

            return TRUE;    //已经处理完毕，不再由系统实现
        }      
    }
	
#endif
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
    AppendString(pszInfo);
    AppendString("\r\n");
}

void CServerDlg::SetOnline(SOCKET client)
{
    //先更新自己的在线客户端列表
    sockaddr_in addrin;
    CString strIPPort;
    CMySocket::GetAddress(client, &addrin, strIPPort);
    m_OnlineClients.InsertString(-1, strIPPort);

    //再向各已在线的客户端广播新的上线客户端。
    //同时，也将所有之前已上线的客户列表发到client上
    SOCKET onSoc;
    POSITION pos = m_lstOnline.GetHeadPosition();
    while (pos)
    {
        onSoc = m_lstOnline.GetNext(pos);
        CMyPacket::NotifyOnline(onSoc, client);  
        CMyPacket::NotifyOnline(client, onSoc);
    }

    //客户端socket也要保存起来，后续进行资源清理
    m_lstOnline.AddTail(client);

    //同时维护其对应关系key:value = info : socket
    m_map_Info_SOCKET[strIPPort] = client;
}

void CServerDlg::ClassifyInfo(char *szBuff, SOCKET csocket)
{
    char *pData;
    u_int nLen = 0;
    u_int infoType = CMyPacket::GetType(szBuff, &pData, &nLen);
    
    switch (infoType)
    {
    case INFO_TYPE_REQUEST:
        {
            //建立私聊场景
            ProcessRequestChat(pData, nLen, csocket);
            break;
        }
    case INFO_TYPE_MULTI:
        {
            
        }
    case INFO_TYPE_CHAT:        //对私聊，广播进行类似的处理       
    case INFO_TYPE_BROADCAST:
        {
            TransmitTalk(infoType, pData, nLen, csocket);
            break;
        }
    default:
        {
            AfxMessageBox("Server Classify Unknown !!");
        }
    }
}

void CServerDlg::SetOffline(SOCKET client)
{
    //先更新自己的在线客户端列表
    sockaddr_in addrin;
    CString strIPPort;
    CMySocket::GetAddress(client, &addrin, strIPPort);
    
    int nIndex = m_OnlineClients.FindString(-1, strIPPort);
    if (LB_ERR == nIndex)
    {
        return;
    }
    m_OnlineClients.DeleteString(nIndex);

    //client从列表中清除
    POSITION pos = m_lstOnline.Find(client);
    if (NULL == pos)
    {
        return;
    }
    
    m_lstOnline.RemoveAt(pos);

    //再向各已在线的客户端广播下线客户端。
    SOCKET onSoc;
    pos = m_lstOnline.GetHeadPosition();
    while (pos != NULL)
    {
        onSoc = m_lstOnline.GetNext(pos);
        CMyPacket::NotifyOffline(onSoc, client);  
    }
}

BOOL CServerDlg::ProcessRequestChat(char *pRequest, int nLen, SOCKET csocket)
{
    //sockaddr_in request;
    //memcpy(&request, pRequest, sizeof(sockaddr_in));

    //昵称或者IP:Port，或者其他
    //key:value = info:socket
    m_map_Req_Resp[csocket] = m_map_Info_SOCKET[pRequest];

    sockaddr_in addrin;
    CString strIPPort;
    CMySocket::GetAddress(csocket, &addrin, strIPPort);
    
    CString str;
    str.Format("%s ---> %s", strIPPort, pRequest);
    UpdateHistory("", str.GetBuffer(0));
   
    return TRUE;
}

void CServerDlg::OnClose() 
{
	// TODO: Add your message handler code here and/or call default

    WSACleanup();
	
	CDialog::OnClose();
}

/*
将csocket所发送的信息转发给目的
目的的确定：
1）可通过服务器维护的聊天对象表
2）可通过pData中包含的相关信息
*/
void CServerDlg::TransmitTalk(u_int nInfoType, char *pData, int nLen, SOCKET csocket)
{
    //先来解析数据
    char *pszTalk = pData;
    char *pszFriend = &pData[_tcslen(pData) + sizeof(TCHAR)];
    
    //日志用
#ifdef LOG
    sockaddr_in addrin;
    CString strIPPort;
    CMySocket::GetAddress(csocket, &addrin, strIPPort);
    UpdateHistory(strIPPort.GetBuffer(0), pszTalk);
    UpdateHistory(" : ", "");
    UpdateHistory("\t--->", pszFriend);
#endif

    if (INFO_TYPE_CHAT == nInfoType)
    {
        //找到聊天对象
        SOCKET dstSock = m_map_Req_Resp[csocket];
        CMyPacket::NotifyChat(FALSE, pszTalk, dstSock, pszFriend);

        return;
    }

    ASSERT(INFO_TYPE_BROADCAST == nInfoType);
    map<CString, SOCKET>::iterator it;
    SOCKET dstSock;

    //I'm talking
    CMySocket::GetAddress(csocket, &addrin, strIPPort);
    
    for (it = m_map_Info_SOCKET.begin(); 
        it != m_map_Info_SOCKET.end(); it++)
    {
        dstSock = it->second;
        CMyPacket::NotifyChat(TRUE, pszTalk, dstSock, strIPPort.GetBuffer(0));
    }

      
}
