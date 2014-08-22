// RCT_ServerDlg.cpp : implementation file
//

#include "stdafx.h"
#include "RCT_Server.h"
#include "RCT_ServerDlg.h"

#include "zlib128-dll\\include\\zlib.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

#define WM_SOCKET   (WM_USER + 1)

#define LOG

#define TIMER_CAPTURE 1

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
// CRCT_ServerDlg dialog

CRCT_ServerDlg::CRCT_ServerDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CRCT_ServerDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CRCT_ServerDlg)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
    
    m_bOnline = FALSE;
}

void CRCT_ServerDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CRCT_ServerDlg)
		// NOTE: the ClassWizard will add DDX and DDV calls here
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CRCT_ServerDlg, CDialog)
	//{{AFX_MSG_MAP(CRCT_ServerDlg)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
    ON_MESSAGE(WM_SOCKET, OnNetEvents)
	ON_WM_TIMER()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CRCT_ServerDlg message handlers

BOOL CRCT_ServerDlg::OnInitDialog()
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
    StartService();
	
	return TRUE;  // return TRUE  unless you set the focus to a control
}

void CRCT_ServerDlg::OnSysCommand(UINT nID, LPARAM lParam)
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

void CRCT_ServerDlg::OnPaint() 
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
HCURSOR CRCT_ServerDlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

void CRCT_ServerDlg::StartService()
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
    
    //注册异步选择, accept产生的client socket会“继承”相关属性
    WSAAsyncSelect(m_MySocket.m_Socket, 
                    GetSafeHwnd(), 
                    WM_SOCKET,              //自定义消息
                    FD_ACCEPT | FD_READ | FD_CLOSE);

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
LRESULT CRCT_ServerDlg::OnNetEvents(WPARAM wParam, LPARAM lParam)
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
            OnProcessCommand(wParam, lParam);
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

LRESULT CRCT_ServerDlg::OnAccept(WPARAM wParam, LPARAM lParam)
{
    SOCKET cSocket;
    sockaddr_in addrin;
    
    BOOL bRet = m_MySocket.Accept((sockaddr *)&addrin, &cSocket);
    if (!bRet)
    {
        return FALSE;
    }

    m_bOnline = TRUE;

#ifdef LOG
    CString strIPPort;
    CMySocket::GetAddress(cSocket, &addrin, strIPPort);
    OutputDebugString(strIPPort);
#endif
    
    return TRUE;
}

typedef struct _tagParam
{
    SOCKET m_sClient;
    CRCT_ServerDlg *m_pDlg;
}tagParam;

LRESULT CRCT_ServerDlg::OnProcessCommand(WPARAM wParam, LPARAM lParam)
{
    TCHAR szCommand[MAXBYTE] = {0};
    BOOL bRet = CMySocket::RecvRaw(wParam,
                                   szCommand,
                                   sizeof(szCommand),
                                   0
                                   );
    if (!bRet)
    {
        return FALSE;
    }

    tagRCTCommand *pCommand = (tagRCTCommand *)szCommand;
    if (RCT_CAPTURE == pCommand->m_Command)
    {
        UINT CaptureProc( LPVOID pParam);
        tagParam *pParam = new tagParam;
        if (NULL != pParam)
        {
            pParam->m_sClient = wParam;
            pParam->m_pDlg = this;
        }
        AfxBeginThread(CaptureProc, pParam);
    }

    return TRUE;
}

#pragma comment(lib, "zlib128-dll\\lib\\zdll.lib")

UINT CaptureProc(LPVOID pParam )
{
    tagParam *pTmp = (tagParam *)pParam;
    ASSERT(pTmp != NULL);

    SOCKET sClient = pTmp->m_sClient;
    CRCT_ServerDlg *pDlg = pTmp->m_pDlg;

    delete pTmp;

    //获取屏幕分辨率
    int nWidth = GetSystemMetrics(SM_CXSCREEN);
    int nHeight = GetSystemMetrics(SM_CYSCREEN);

    //获取像素数据, 并分配相应大小空间
    int nCount = nWidth * nHeight * sizeof(COLORREF);

#define USE_STATIC
#ifdef USE_STATIC
    static 
#endif
    char *pBuff = new char[nCount];
    if (NULL == pBuff)
    {
        return FALSE;
    }

    //屏幕大小信息相关空间
    TCHAR szBuff[MAXBYTE] = {0};
    tagRCTCommand *pCommand;
    tagScreenData infoData = {nWidth, nHeight};   //后续更新

LOOP:
    if (!pDlg->m_bOnline)
    {
        return FALSE;
    }

    //截图
    CDC DisplayDC;
    DisplayDC.CreateDC("DISPLAY", NULL, NULL, NULL);

    //创建兼容DC及兼容位图, 将DisplayDC中的数据拷贝至内存
    CDC memDC;
    memDC.CreateCompatibleDC(&DisplayDC);

    CBitmap bitmap;
    bitmap.CreateCompatibleBitmap(&DisplayDC, nWidth, nHeight);
    memDC.SelectObject(bitmap);

    memDC.BitBlt(0, 0, nWidth, nHeight, &DisplayDC, 0, 0, SRCCOPY);

    BOOL bRet;
    int nRet = bitmap.GetBitmapBits(nCount, pBuff);
    if (nRet != nCount)
    {
        delete[] pBuff;
        pBuff = NULL;
        return FALSE;
    }

#ifdef COMPRESS
    //对屏幕数据进行压缩
    unsigned long  dstLen = compressBound(nCount);
    unsigned long compressLen = dstLen;
    char *pdstBuf = new char[dstLen];
    nRet = compress((unsigned char *)pdstBuf, 
                    &compressLen,
                    (unsigned char *)pBuff, 
                    nCount);
    if (nRet != Z_OK)
    {
        AfxMessageBox("Compress Error");
        goto ERROR_CLEAN;
    }
#endif
    
    //屏幕信息: nWidth, nHeight, dstLen, compressLen
    pCommand = (tagRCTCommand *)szBuff;
    pCommand->m_Command = RCT_SCREEN_INFO;
    pCommand->m_nLen = sizeof(infoData);
    
#ifdef COMPRESS
    infoData.m_nDstLen = dstLen;
    infoData.m_nCompressLen = compressLen;
#endif
    memcpy(&pCommand->m_pCommand, &infoData, sizeof(infoData));

    //发送屏幕信息，及压缩后的数据大小
    bRet = CMySocket::Send(sClient,
                            szBuff,
                            sizeof(szBuff),
                            0);
    if (!bRet)
    {
        goto ERROR_CLEAN;
    }

    //发送屏幕数据，
#ifdef COMPRESS
    bRet = CMySocket::Send(sClient, pdstBuf, compressLen, 0);
#else
    bRet = CMySocket::Send(sClient, pBuff, nCount, 0);
#endif
    if (!bRet)
    {
        goto ERROR_CLEAN;
    }
   
ERROR_CLEAN:
#ifndef USE_STATIC
    if (pBuff != NULL)
    {
        delete[] pBuff;
        pBuff = NULL; 
    } 
#endif

#ifdef COMPRESS
    if (pdstBuf != NULL)
    {
        delete[] pdstBuf;
        pdstBuf = NULL;
    }
#endif
    
    Sleep(1000);
    goto LOOP;
}

void CRCT_ServerDlg::OnTimer(UINT nIDEvent) 
{
	
	CDialog::OnTimer(nIDEvent);
}

LRESULT CRCT_ServerDlg::OnFinish(WPARAM wParam, LPARAM lParam)
{
    closesocket(wParam);

    m_bOnline = FALSE;

    return TRUE;
}