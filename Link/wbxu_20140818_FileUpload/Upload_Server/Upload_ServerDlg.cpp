// Upload_ServerDlg.cpp : implementation file
//

#include "stdafx.h"
#include "Upload_Server.h"
#include "Upload_ServerDlg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

#define WM_SOCKET (WM_USER + 1)

#define LOG

#define BLOCKSIZE   (4096)

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
// CUpload_ServerDlg dialog
static CUpload_ServerDlg *g_pDlg;

CUpload_ServerDlg::CUpload_ServerDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CUpload_ServerDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CUpload_ServerDlg)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);

    g_pDlg = this;
}

void CUpload_ServerDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CUpload_ServerDlg)
	DDX_Control(pDX, ID_STOP, m_BTNStop);
	DDX_Control(pDX, ID_START, m_BTNStart);
	DDX_Control(pDX, IDC_UPLOADINFO, m_EditUploadInfo);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CUpload_ServerDlg, CDialog)
	//{{AFX_MSG_MAP(CUpload_ServerDlg)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_BN_CLICKED(ID_START, OnStart)
    ON_MESSAGE(WM_SOCKET, OnNetEvents)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CUpload_ServerDlg message handlers

BOOL CUpload_ServerDlg::OnInitDialog()
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

void CUpload_ServerDlg::OnSysCommand(UINT nID, LPARAM lParam)
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

void CUpload_ServerDlg::OnPaint() 
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
HCURSOR CUpload_ServerDlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

/*
TCP服务端的处理流程：
1) WSAStartup 初始化
2) 创建socket
3) bind
4) listen
5) accept
6) recv/send
7) close
*/
void CUpload_ServerDlg::OnStart() 
{
    BOOL bRet = m_MySocket.Create_TCP();
    if (!bRet)
    {
        return;
    }

    bRet = m_MySocket.Bind(HOST, PORT);
    if (!bRet)
    {
        return;
    }

    bRet = m_MySocket.Listen();
    if (!bRet)
    {
        return;
    }

    //
    m_BTNStart.EnableWindow(FALSE);
    m_BTNStop.EnableWindow(TRUE);

    //注册异步选择, accept产生的client socket会“继承”相关属性
    WSAAsyncSelect(m_MySocket.m_Socket, 
                    GetSafeHwnd(), 
                    WM_SOCKET, 
                    FD_ACCEPT | FD_CLOSE);

}

/*
The wParam parameter identifies the socket on which a network event has occurred. 
The low word of lParam specifies the network event that has occurred. 
The high word of lParam contains any error code. The error code be any error as defined in Winsock2.h.

Note  Upon receipt of an event notification message, the WSAGetLastError function cannot be used to check the error value because the error value returned can differ from the value in the high word of lParam.
  
The error and event codes can be extracted from the lParam using the macros WSAGETSELECTERROR and WSAGETSELECTEVENT, defined in Winsock2.h as:
    
#define WSAGETSELECTERROR(lParam)       HIWORD(lParam)
#define WSAGETSELECTEVENT(lParam)       LOWORD(lParam)

*/
LRESULT CUpload_ServerDlg::OnNetEvents(WPARAM wParam, LPARAM lParam)
{
    switch (WSAGETSELECTEVENT(lParam))
    {
    case FD_ACCEPT:
        {
            OnAccept(wParam, lParam);
            break;
        }
    case FD_READ:
        {
            OnSaveFile(wParam, lParam);
            break;
        }
    case FD_CLOSE:
        {
            OnFinish(wParam, lParam);
            break;
        }
    }  
    
    return TRUE;
}

void AppendString(TCHAR *pszInfo)
{
    int nHistory = g_pDlg->m_EditUploadInfo.GetWindowTextLength();
    g_pDlg->m_EditUploadInfo.SetSel(nHistory, nHistory);  
    g_pDlg->m_EditUploadInfo.ReplaceSel(pszInfo);
}

LRESULT CUpload_ServerDlg::OnAccept(WPARAM wParam, LPARAM lParam)
{
    SOCKET cSocket;
    sockaddr_in addrin;

    BOOL bRet = m_MySocket.Accept((sockaddr *)&addrin, &cSocket);
    if (!bRet)
    {
        return FALSE;
    }
    
#ifdef LOG
    CString strIPPort;
    CMySocket::GetAddress(cSocket, &addrin, strIPPort);
    AppendString(strIPPort.GetBuffer(0));
    AppendString(" connected\r\n");
#endif

    //先等待client将文件名发送过来
    TCHAR szFileName[MAX_PATH] = {0};

    bRet = FALSE;
    while (!bRet)
    {
        bRet = CMySocket::RecvRaw(cSocket, szFileName, MAX_PATH, 0, NULL);
    }

#ifdef LOG
    AppendString("FileName: ");
    AppendString(szFileName);
    AppendString("\r\n");
#endif

    //建立socket与文件的对应关系，并创建文件
    m_map_SOCKET_FILENAME[cSocket] = szFileName; 
    CFile *pdstFile = new CFile(szFileName, CFile::modeCreate | CFile::modeReadWrite | CFile::shareDenyWrite);
    if (NULL == pdstFile)
    {
        return FALSE;
    }

    m_map_SOCKET_FD[cSocket] = pdstFile;

    //通告对方可以上传文件数据了
    bRet = CMySocket::Send(cSocket, "Ready to Upload", strlen("Ready to Upload"), 0);
    if (!bRet)
    {
        return FALSE;
    }

    //给客户端socket设置异步选择
    WSAAsyncSelect(cSocket, 
                    GetSafeHwnd(),
                    WM_SOCKET,
                    FD_READ | FD_CLOSE);

    return TRUE;
}

LRESULT CUpload_ServerDlg::OnSaveFile(WPARAM wParam, LPARAM lParam)
{   
    //接收数据
    TCHAR szText[BLOCKSIZE] = {0};
    int nLen;
    BOOL bRet = CMySocket::RecvRaw(wParam, szText, BLOCKSIZE, 0, &nLen);
    if (!bRet)
    {
        return FALSE;
    }

    DWORD dwWritten;
    HANDLE hFile = (HANDLE)(m_map_SOCKET_FD[wParam]->m_hFile);
    bRet = WriteFile(hFile,
                    szText,
                    nLen,
                    &dwWritten,
                      NULL);

    if (!bRet
        || dwWritten != nLen)
    {
        int n = 0;
    }

#if 0
    //每次进行打开、seek、关闭，会耗费大量的时间
    CString strFileName = m_map_SOCKET_FILENAME[wParam];
    CFile dstFile(strFileName, CFile::modeReadWrite | CFile::shareDenyWrite);

    try 
    {
        dstFile.SeekToEnd();
        dstFile.Write(szText, nLen);
    }
    catch(...)
    {
        //do sth
    }

    dstFile.Close();
#endif

    return TRUE;
}

LRESULT CUpload_ServerDlg::OnFinish(WPARAM wParam, LPARAM lParam)
{
    //关闭文件
    m_map_SOCKET_FD[wParam]->Close();
    closesocket(wParam);

    AppendString("Upload Finished!!");
    AppendString("\r\n");

    return TRUE;
}
