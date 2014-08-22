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

UINT WaitThread( LPVOID pParam );
UINT ProcessClientThread( LPVOID pParam );
void UpdateHistory(char * pszwho, TCHAR *pszInfo);

/*
����˵Ĵ������̣�
1. ��ʼ��WSAStartup
2. ����socket
3. bind
4. listen
5. accept
6. send/recv
7. �ر�
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

    //����Enter�Ĵ���
    m_IsStart = TRUE;

    //����UI�Ĵ���
    m_BTNStart.EnableWindow(FALSE);
    m_BTNStop.EnableWindow(TRUE);
    
    //�½��߳��Եȴ��ͻ��˵�����
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

        //���߿ͻ����б����,  ����ͨ�����߳���Ϣ���д���
        pDlg->SetOnline(pClient->m_Socket);

        //
        pClient->m_pDlg = pDlg;

        //�����µ��̶߳Խ��������ӽ��д���
        AfxBeginThread(ProcessClientThread, pClient);
    }

    return 0;
}

UINT ProcessClientThread( LPVOID pParam )
{
    tagClientSocket *pClient = (tagClientSocket *)pParam;
    ASSERT(pClient != NULL);

    //��pParam�н�����������ɾ�������Դ
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
        
        //Ӧ����ͨ���������ͽ��д���
        pDlg->ClassifyInfo(szBuf, cSocket);
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

    //�Ը��ͻ��˽�������
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
            
            int nRet = ::send(g_pClient->m_Socket, szLine, nLen, 0);
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

void CServerDlg::SetOnline(SOCKET client)
{
    //�ȸ����Լ������߿ͻ����б�
    sockaddr_in addrin;
    CString strIPPort;
    CMySocket::GetAddress(client, &addrin, strIPPort);
    m_OnlineClients.InsertString(-1, strIPPort);

    //����������ߵĿͻ��˹㲥�µ����߿ͻ��ˡ�
    //ͬʱ��Ҳ������֮ǰ�����ߵĿͻ��б���client��
    SOCKET onSoc;
    POSITION pos = m_lstOnline.GetHeadPosition();
    while (pos)
    {
        onSoc = m_lstOnline.GetNext(pos);
        CMyPacket::NotifyOnline(onSoc, client);  
        CMyPacket::NotifyOnline(client, onSoc);
    }

    //�ͻ���socketҲҪ��������������������Դ����
    m_lstOnline.AddTail(client);

    //ͬʱά�����Ӧ��ϵkey:value = info : socket
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
            //����˽�ĳ���
            ProcessRequestChat(pData, nLen, csocket);
            break;
        }
    case INFO_TYPE_MULTI:
        {
            
        }
    case INFO_TYPE_CHAT:        //��˽�ģ��㲥�������ƵĴ���       
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
    //�ȸ����Լ������߿ͻ����б�
    sockaddr_in addrin;
    CString strIPPort;
    CMySocket::GetAddress(client, &addrin, strIPPort);
    
    int nIndex = m_OnlineClients.FindString(-1, strIPPort);
    if (LB_ERR == nIndex)
    {
        return;
    }
    m_OnlineClients.DeleteString(nIndex);

    //client���б������
    POSITION pos = m_lstOnline.Find(client);
    if (NULL == pos)
    {
        return;
    }
    
    m_lstOnline.RemoveAt(pos);

    //����������ߵĿͻ��˹㲥���߿ͻ��ˡ�
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

    //�ǳƻ���IP:Port����������
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
��csocket�����͵���Ϣת����Ŀ��
Ŀ�ĵ�ȷ����
1����ͨ��������ά������������
2����ͨ��pData�а����������Ϣ
*/
void CServerDlg::TransmitTalk(u_int nInfoType, char *pData, int nLen, SOCKET csocket)
{
    //������������
    char *pszTalk = pData;
    char *pszFriend = &pData[_tcslen(pData) + sizeof(TCHAR)];
    
    //��־��
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
        //�ҵ��������
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
