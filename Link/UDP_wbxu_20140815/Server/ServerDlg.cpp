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

sockaddr_in g_TOaddr;

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

    //����UI����
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

UINT ProcessClientThread( LPVOID pParam );
UINT HeartBeatThread(LPVOID pParam);
void UpdateHistory(char * pszwho, TCHAR *pszInfo);

/*
TCP����˵Ĵ������̣�
1. ��ʼ��WSAStartup
2. ����socket
3. bind
4. listen
5. accept
6. send/recv
7. �ر�

UDP����˵Ĵ�������:
1.��ʼ��WSAStartup
2.����socket
3.bind
4.sendto/recvfrom
5.�ر�
*/
void CServerDlg::OnStartserver() 
{
    BOOL bRet = m_MySocket.Create_UDP();
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

    //����Enter�Ĵ���
    m_IsStart = TRUE;

    //����UI�Ĵ���
    m_BTNStart.EnableWindow(FALSE);
    m_BTNStop.EnableWindow(TRUE);
    
    //�½��߳��ԶԿͻ�����Ϣ���н���
    AfxBeginThread(ProcessClientThread, this);  
}

UINT HeartBeatThread(LPVOID pParam)
{
    SOCKET sk = *(SOCKET *)pParam;

    while (TRUE)
    {
        Sleep(3000);
    }
}

/*
int recvfrom(
        SOCKET s,                   
        char FAR* buf,              
        int len,                    
        int flags,                  
        struct sockaddr FAR *from,  
        int FAR *fromlen            
        );
*/
UINT ProcessClientThread( LPVOID pParam )
{
    CServerDlg *pDlg = (CServerDlg *)pParam;
    ASSERT( pDlg != NULL);

    SOCKET cSocket = INVALID_SOCKET;

    SOCKET servSocket = pDlg->m_MySocket.m_Socket;

    TCHAR szBuf[MAXBYTE];
    sockaddr_in addrin;
    int nLen = sizeof(sockaddr_in);
    BOOL bRet = TRUE;

    while (TRUE)
    {
        memset(szBuf, 0, MAXBYTE);
        bRet = CMySocket::RecvFrom(servSocket,
                                szBuf,
                                MAXBYTE,
                                0,
                                (sockaddr *)&addrin,
                                &nLen
                                );
        if (!bRet)
        {
            break;
        }
        
        //Ӧ����ͨ���������ͽ��д���
        pDlg->ClassifyInfo(szBuf, cSocket, addrin);
    }

    return 0;
}

void CServerDlg::OnStopserver() 
{
    //server socket����
    m_MySocket.Close();   
    
    m_IsStart = FALSE;

    //����UI����
    m_BTNStart.EnableWindow(TRUE);
    m_BTNStop.EnableWindow(FALSE);
    m_OnlineClients.ResetContent();

    //clean up
}

BOOL CServerDlg::PreTranslateMessage(MSG* pMsg) 
{
#if 0   //��Ϊ����ˣ����������Ѿ�������

    if (WM_KEYDOWN == pMsg->message
        && VK_RETURN == pMsg->wParam)
    {
        //��ȡ��ǰ�������ڿؼ���ID
        int nCtrlID = GetFocus()->GetDlgCtrlID();

        if (IDC_TALK == nCtrlID
            && m_IsStart)
        {
            //��ȡ�ؼ��е���Ϣ������ͻ��˷���
            TCHAR szLine[MAXBYTE] = {0};
            int nLen = m_TalkEdit.GetLine(0, szLine, MAXBYTE);
            
            //int nRet = ::send(g_pClient->m_Socket, szLine, nLen, 0);
            int nRet = CMySocket::SendTo(m_MySocket.m_Socket, szLine, nLen, 0,
                                        (sockaddr *)&g_TOaddr,
                                        sizeof(sockaddr)
                                        );
            if (SOCKET_ERROR == nRet)
            {
                //do sth
            }

            //�������
            m_TalkEdit.SetSel(0, -1);
            m_TalkEdit.Clear();

            //�����Լ���history
            UpdateHistory("S", szLine);

            return TRUE;    //�Ѿ�������ϣ�������ϵͳʵ��
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

void CServerDlg::ClassifyInfo(char *szBuff, SOCKET csocket, sockaddr_in addrin)
{
    char *pData;
    u_int nLen = 0;
    u_int infoType = CMyPacket::GetType(szBuff, &pData, &nLen);
    
    switch (infoType)
    {
    case INFO_TYPE_UDP_INIT:
        {
            //�ͻ�����������ϵ
            ProcessUDPInit(pData, nLen, addrin);
            break;
        }
    case INFO_TYPE_OFFLINE:
        {
            //
            SetOffline(addrin);
            break;
        }
    case INFO_TYPE_REQUEST:
        {
            //����˽�ĳ���
            ProcessRequestChat(pData, nLen, addrin);
            break;
        }
    case INFO_TYPE_MULTI:
        {
            
        }
    case INFO_TYPE_CHAT:        //��˽�ģ��㲥�������ƵĴ���       
    case INFO_TYPE_BROADCAST:
        {
            TransmitTalk(infoType, pData, nLen, addrin);
            break;
        }
    default:
        {
            AfxMessageBox("Server Classify Unknown !!");
        }
    }
}

BOOL CServerDlg::ProcessRequestChat(char *pRequest, int nLen, sockaddr_in addrin)
{
    //�ǳƻ���IP:Port����������
    //key:value = info:sockaddr_in
    CString str(pRequest);
    if (m_map_Info_SOCKADDRIN.end() == m_map_Info_SOCKADDRIN.find(str))
    {
        //������ΪUDP���ݵĶ�ʧ��û�гɹ��ĸ��£��ٴθ���
        sockaddr_in oldAddr;
        int nLen = sizeof(sockaddr_in);
        getsockname(m_MySocket.m_Socket, (sockaddr *)&oldAddr, &nLen);
        CMyPacket::NotifyOffline(m_MySocket.m_Socket,
                                  oldAddr,
                                 addrin);
    }  
    
    //ά��˽��˫��
    CString strReq;
    CMySocket::GetAddress(&addrin, strReq);
    m_map_ReqAddr_RespAddr[strReq] = m_map_Info_SOCKADDRIN[str];

#ifdef LOG
    CString strIPPort;
    CMySocket::GetAddress(&addrin, strIPPort);    
    str.Format("%s ---> %s", strIPPort, pRequest);
    UpdateHistory("", str.GetBuffer(0));
#endif
   
    return TRUE;
}

void CServerDlg::OnClose() 
{
	// TODO: Add your message handler code here and/or call default

    WSACleanup();
	
	CDialog::OnClose();
}

/*
��csocket�����͵���Ϣת����Ŀ��
Ŀ�ĵ�ȷ����
1����ͨ��������ά������������
2����ͨ��pData�а����������Ϣ
*/
void CServerDlg::TransmitTalk(u_int nInfoType, char *pData, int nLen, sockaddr_in addrin)
{
    //������������
    char *pszTalk = pData;
    char *pszFriend = &pData[_tcslen(pData) + sizeof(TCHAR)];
    
    //��־��
#ifdef LOG
    CString strIPPort;
    CMySocket::GetAddress(&addrin, strIPPort);
    UpdateHistory(strIPPort.GetBuffer(0), pszTalk);
    UpdateHistory(" : ", "");
    UpdateHistory("\t--->", pszFriend);
#endif

    //˽��
    if (INFO_TYPE_CHAT == nInfoType)
    {
        //�ҵ��������
        sockaddr_in dstAddr = m_map_ReqAddr_RespAddr[strIPPort];
        CMyPacket::NotifyChat(FALSE, pszTalk, m_MySocket.m_Socket, pszFriend,
                             FALSE, 
                             (sockaddr *)&dstAddr,
                             sizeof(sockaddr));

        return;
    }

    //�㲥���
    ASSERT(INFO_TYPE_BROADCAST == nInfoType);
    map<CString, sockaddr_in>::iterator it;    

    //I'm talking
    CMySocket::GetAddress(&addrin, strIPPort);
    sockaddr_in dstAddr;
    
    for (it = m_map_Info_SOCKADDRIN.begin(); 
        it != m_map_Info_SOCKADDRIN.end(); it++)
    {
        dstAddr = it->second;
        CMyPacket::NotifyChat(TRUE, pszTalk, m_MySocket.m_Socket, strIPPort.GetBuffer(0),
                            FALSE, 
                            (sockaddr *)&dstAddr, 
                            sizeof(sockaddr));
    }   
}

BOOL CServerDlg::ProcessUDPInit(char *pRequest, int nLen, sockaddr_in addrin)
{
    //��Ҫ�Ǵ���������Ϣ�����пͻ����б�ĸ���
    SetOnline(addrin);

#ifdef LOG
    //UI
    UpdateHistory("UDPInit: ", pRequest);
#endif

    return TRUE;
}

void CServerDlg::SetOnline(sockaddr_in addrin)
{
    //�ȸ����Լ������߿ͻ����б�
    CString strIPPort;
    CMySocket::GetAddress(&addrin, strIPPort);
    m_OnlineClients.InsertString(-1, strIPPort); 

    //ͬʱά�����Ӧ��ϵkey:value = info : sockaddr_in
    m_map_Info_SOCKADDRIN[strIPPort] = addrin;

#ifdef LOG
    UpdateHistory("UDPInit Client: ", strIPPort.GetBuffer(0));
#endif

    //����������ߵĿͻ��˹㲥�µ����߿ͻ��ˡ�
    //ͬʱ��Ҳ������֮ǰ�����ߵĿͻ��б���client��
    sockaddr_in onAddr;
    POSITION pos = m_lstOnlineAddr.GetHeadPosition();
    while (pos)
    {
        onAddr = m_lstOnlineAddr.GetNext(pos);
        CMyPacket::NotifyOnline(m_MySocket.m_Socket, onAddr, addrin);  
        CMyPacket::NotifyOnline(m_MySocket.m_Socket, addrin, onAddr);
    }

    //
    m_lstOnlineAddr.AddTail(addrin);
}

BOOL __stdcall CompareElements<sockaddr_in>(const sockaddr_in* pElement1, const sockaddr_in* pElement2)
{  
    int nLen = sizeof(sockaddr_in);
    char *p1 = (char *)pElement1;
    char *p2 = (char *)pElement2;
    
    return (0 == strncmp(p1, p2, nLen));
}

void CServerDlg::SetOffline(sockaddr_in addrin)
{
    //�ȸ����Լ������߿ͻ����б�
    CString strIPPort;
    CMySocket::GetAddress(&addrin, strIPPort);
    
    int nIndex = m_OnlineClients.FindString(-1, strIPPort);
    if (LB_ERR == nIndex)
    {
        return;
    }
    m_OnlineClients.DeleteString(nIndex);

#ifdef LOG
    UpdateHistory("UDP Fin:", strIPPort.GetBuffer(0));
#endif
    
    //client���б������
    POSITION pos = m_lstOnlineAddr.Find(addrin);
    if (NULL == pos)
    {
        return;
    }
    m_lstOnlineAddr.RemoveAt(pos);
    
    //����������ߵĿͻ��˹㲥���߿ͻ��ˡ�
    sockaddr_in onAddr;
    pos = m_lstOnlineAddr.GetHeadPosition();
    while (pos != NULL)
    {
        onAddr = m_lstOnlineAddr.GetNext(pos);
        CMyPacket::NotifyOffline(m_MySocket.m_Socket,
                                onAddr, addrin);  
    }
}
