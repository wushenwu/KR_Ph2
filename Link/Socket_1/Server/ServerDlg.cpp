// ServerDlg.cpp : implementation file
//

#include "stdafx.h"
#include "Server.h"
#include "ServerDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

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

    m_IsStart = TRUE;
    
    //新建线程以等待客户端的连接
    UINT WaitThread( LPVOID pParam );
    AfxBeginThread(WaitThread, this);
    
}

void UpdateHistory(int who, TCHAR *pszInfo);

tagClientSocket *g_pClient;
UINT WaitThread( LPVOID pParam )
{
    CServerDlg *pDlg = (CServerDlg *)pParam;
    ASSERT( pDlg != NULL);

    BOOL bRet;
    
    //现在仅处理单客户端连接的情况
    //while (TRUE)
    if (TRUE)
    {
        tagClientSocket *pClient = NULL;
        pClient = new tagClientSocket;
        if (NULL == pClient)
        {
            return 0;
        }

        g_pClient = pClient;

        bRet = pDlg->m_MySocket.Accept(pClient);
        if (!bRet)
        {
            //err
            pDlg->m_MySocket.GetError();

            delete pClient;
            pClient = NULL;
            //continue;
        }

        char *cIP = inet_ntoa(((sockaddr_in *)&pClient->m_addr)->sin_addr);
        UpdateHistory(SERVER, cIP);

        //创建新的线程对建立的连接进行处理
        UINT ProcessClientThread( LPVOID pParam );
        AfxBeginThread(ProcessClientThread, pClient);
    }

    return 0;
}

UINT ProcessClientThread( LPVOID pParam )
{
    tagClientSocket *pClient = (tagClientSocket *)pParam;
    ASSERT(pClient != NULL);

    TCHAR szBuf[MAXBYTE];
    int nRet = 0;

    while (TRUE)
    {
        memset(szBuf, 0, MAXBYTE);
        nRet = ::recv(pClient->m_Socket,
                        szBuf,
                        MAXBYTE,
                        0);
        if (0 == nRet)
        {
            //socket has been closed gracefully
            return 0;
        }
        else if (SOCKET_ERROR == nRet)
        {
            //do sth to check
            continue;
        }
        else
        {
            //AfxMessageBox(szBuf);
            UpdateHistory(CLIENT, szBuf);
        }   
    }

    return 0;
}

void CServerDlg::OnStopserver() 
{
    m_MySocket.Send("Bye", strlen("Bye"), 0);
    m_MySocket.Close();   
    
    m_IsStart = FALSE;
}

BOOL CServerDlg::PreTranslateMessage(MSG* pMsg) 
{
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
            UpdateHistory(SERVER, szLine);

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

void UpdateHistory(int who, TCHAR *pszInfo)
{
    TCHAR szWho[8] = {0};
    if (SERVER == who)
    {
        _tcscpy(szWho, "S: ");
    }
    else
    {
        _tcscpy(szWho, "C: ");
    }

    AppendString(szWho);
    AppendString(pszInfo);
    AppendString("\r\n");
}
