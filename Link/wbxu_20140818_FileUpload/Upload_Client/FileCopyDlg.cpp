// FileCopyDlg.cpp : implementation file
//

#include "stdafx.h"
#include "FileCopy.h"
#include "FileCopyDlg.h"

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
// CFileCopyDlg dialog

CFileCopyDlg::CFileCopyDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CFileCopyDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CFileCopyDlg)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);

    m_SRCFile[0] = '\0';
    m_DSTFile[0] = '\0';

    m_dwFileLen = 0;
    m_dwCopyedLen = 0;

    m_IsPaused = FALSE;

    memset(&m_hThread[0], 0, sizeof(m_hThread));
    m_hPauseEvent = NULL;
}

void CFileCopyDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CFileCopyDlg)
	DDX_Control(pDX, IDC_COPY, m_BTNUpload);
	DDX_Control(pDX, IDC_PROGRESS_FILE, m_progessctrl);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CFileCopyDlg, CDialog)
	//{{AFX_MSG_MAP(CFileCopyDlg)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_BN_CLICKED(IDC_SELSRC, OnSelSRC)
	ON_BN_CLICKED(IDC_SELDST, OnSelDst)
	ON_BN_CLICKED(IDC_COPY, OnCopy)
	ON_WM_TIMER()
	ON_BN_CLICKED(IDC_PAUSE_CONTINUE, OnPauseContinue)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CFileCopyDlg message handlers

BOOL CFileCopyDlg::OnInitDialog()
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

void CFileCopyDlg::OnSysCommand(UINT nID, LPARAM lParam)
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

void CFileCopyDlg::OnPaint() 
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
HCURSOR CFileCopyDlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

DWORD 
WINAPI 
MyCopyProc(
            LPVOID lpParameter   // thread data
            );

DWORD 
WINAPI 
ExitThreadProc(
           LPVOID lpParameter   // thread data
            );

void CFileCopyDlg::OnSelSRC() 
{
	// TODO: Add your control notification handler code here
    CFileDialog *pDlgSRCFile = new CFileDialog(TRUE);
    if (NULL == pDlgSRCFile)
    {
        return;
    }
    
    if (pDlgSRCFile->DoModal() != IDOK)
    {
        return;
    }  
    
    //显示文件路径
    CString csPath = pDlgSRCFile->GetPathName();
    GetDlgItem(IDC_EDIT_SRC)->SetWindowText(csPath);

    //保存文件路径
    strcpy(m_SRCFile, csPath.GetBuffer(0));

    //获取文件大小
    CFile myFile;
    CFileException myFileException;
    BOOL bRet = myFile.Open(csPath, CFile::modeRead, &myFileException);
    if (!bRet)
    {
        TRACE( "Can't open file %s, error = %u\n",
            csPath, myFileException.m_cause );
        
    }
  
    m_dwFileLen = myFile.GetLength();

    m_SRCFileName = myFile.GetFileName();

    myFile.Close();
}

void CFileCopyDlg::OnSelDst() 
{
	// TODO: Add your control notification handler code here
     CFileDialog *pDlgDSTFile = new CFileDialog(TRUE);
    if (NULL == pDlgDSTFile)
    {
        return;
    }
    
    if (pDlgDSTFile->DoModal() != IDOK)
    {
        return;
    }  
    
    //显示文件路径
    CString csPath = pDlgDSTFile->GetPathName();
    GetDlgItem(IDC_EDIT_DST)->SetWindowText(csPath);
    
    //保存文件路径
    strcpy(m_DSTFile, csPath.GetBuffer(0));
}

void CFileCopyDlg::OnCopy() 
{
    if (0 == strlen(m_SRCFile)
        /*|| 0 == strlen(m_DSTFile)*/)
    {
        AfxMessageBox("请选定文件");
        return;
    }

    //////////////////////////////////////////////////////////////////////////
    //网络处理相关
    BOOL bRet = m_MySocket.Create_TCP();
    if (!bRet)
    {
        return;
    }

    bRet = m_MySocket.Connect(HOST, PORT);
    if (!bRet)
    {
        return;
    }

    //先将文件名发送过去
    bRet = m_MySocket.Send(m_SRCFileName, m_SRCFileName.GetLength(), 0);
    if (!bRet)
    {
        return;
    }

    //等待服务端准备接受，可以上传的信号
    TCHAR szBuff[MAXBYTE] = {0};
    bRet = CMySocket::RecvRaw(m_MySocket.m_Socket, szBuff, MAXBYTE, 0, NULL);
    if (!bRet)
    {
        return;
    }

    m_BTNUpload.EnableWindow(FALSE);
    m_dwCopyedLen = 0;

    //进度条初始化
    HWND hWnd = GetDlgItem(IDC_PROGRESS_FILE)->GetSafeHwnd();
    LONG lOld = GetWindowLong(hWnd, GWL_STYLE);
    SetWindowLong(hWnd, 
                GWL_STYLE, lOld | WS_CHILD|WS_VISIBLE|PBS_SMOOTH
                );

    m_progessctrl.SetPos(0);
    m_progessctrl.SetRange32(0, m_dwFileLen);

    //设置定时器
    SetTimer(1, 50, NULL);  
    
    //创建事件，用于Pause/Continue
    m_hPauseEvent = CreateEvent(NULL,    // no security attributes
                           TRUE,    // manual-reset event
                           TRUE,    // initial state is signaled
                           NULL     // no object name
                           );
    if (NULL == m_hPauseEvent)
    {
        AfxMessageBox("Create Event Failed");
        return;
    }

    //创建临界区
    ::InitializeCriticalSection(&m_CriSection);

    //创建新的线程拷贝文件
    DWORD dwThreadID;
    for (int i = 0; i < THREADCOUNT; i++)
    {
        m_hThread[i] = CreateThread(NULL,          // no security attributes 
                                    0,             // use default stack size
                                    MyCopyProc,    // thread function 
                                    this,          // argument to thread function
                                    CREATE_SUSPENDED ,             // use default creation flags
                                    &dwThreadID     // returns the thread identifier 
                                    );
        if (m_hThread[i] != NULL)
        {
            continue; 
        }
    
        //创建失败，关闭已新建的线程, 退出
        for (int j = 0; j < i; j++)
        {
            CloseHandle(m_hThread[j]);
            m_hThread[j] = NULL;
        }
        return;

    }//end for(int i = 0; //新建线程

    //创建线程对读写线程进行等待
    HANDLE hThread = CreateThread(NULL,
                                    0,
                                    ExitThreadProc,
                                    this,
                                    0,
                                    &dwThreadID);
    if (NULL == hThread)
    {
        AfxMessageBox("创建监控线程失败");
    }

    //对读写线程进行Resume
    for (int j = 0; j < sizeof(m_hThread) / sizeof(m_hThread[0]); j++)
    {
        ResumeThread(m_hThread[j]);
    }
}

DWORD 
WINAPI 
ExitThreadProc(
                LPVOID lpParameter   // thread data
                )
{
    CFileCopyDlg *pDlg = (CFileCopyDlg *)lpParameter;
    if (NULL == pDlg)
    {
        return -1;
    }

    ::WaitForMultipleObjects(THREADCOUNT, pDlg->m_hThread, TRUE, INFINITE);
    for (int i = 0; i < THREADCOUNT; i++)
    {
        CloseHandle(pDlg->m_hThread[i]);
        pDlg->m_hThread[i] = NULL;
    }
    AfxMessageBox("拷贝完成");

    pDlg->m_MySocket.Close();
    pDlg->m_BTNUpload.EnableWindow(TRUE);

    return 0;
}

#define SUCCESS     0
#define FAIL        1
#define STEP        4096

DWORD 
WINAPI 
MyCopyProc(
           LPVOID lpParameter   // thread data
            )
{
    OutputDebugString("Thread Start\r\n");

    CFileCopyDlg *pDlg = (CFileCopyDlg *)lpParameter;
    if (NULL == pDlg)
    {
        return 0;
    }

    //
    const char *pfilesrc = pDlg->m_SRCFile;
    int result       = SUCCESS;
    FILE *fpsrc      = NULL;
    long lnfsize    =  0;
    unsigned ncount  = 0;
    unsigned nremain = 0;
    char buf[STEP]      = {0};
    unsigned i       = 0;
    BOOL bRet;
    
    fpsrc = fopen(pfilesrc, "rb");
    if (NULL == fpsrc)
    {
        result = FAIL;
        goto V2_ERROR_PROCESS;
    }
    
    lnfsize = pDlg->m_dwFileLen;
    
    //read STEP bytes every time.
    ncount  = lnfsize / STEP;     
    nremain = lnfsize % STEP;  
    
    //read and write now every 4 bytes
    for ( i = 0; i < ncount; i++)
    {
        //根据暂停/继续事件进行
        WaitForSingleObject(pDlg->m_hPauseEvent, INFINITE);

        //每STEP字节的读取、写入作为一个临界区
        ::EnterCriticalSection(&pDlg->m_CriSection);

        //根据已读取/拷贝的大小来调整文件指针
        fseek(fpsrc, pDlg->m_dwCopyedLen, SEEK_SET);

        unsigned j = pDlg->m_dwCopyedLen / STEP;    
        unsigned k = pDlg->m_dwCopyedLen % STEP;
        if (0 == k
            && j < ncount)
        {
            i = j;

        }
        else
        {
            //这些都会跳出临界区，所以要注意释放
            if (pDlg->m_dwCopyedLen == pDlg->m_dwFileLen)
            {
                ::LeaveCriticalSection(&pDlg->m_CriSection);
                goto V2_ERROR_PROCESS;
            }

            ::LeaveCriticalSection(&pDlg->m_CriSection);
            break;
        }

        fread(buf, STEP, 1, fpsrc);
        if (ferror(fpsrc))
        {
            perror("Read Error When Copy STEP bytes");

            result = FAIL;
            goto V2_ERROR_PROCESS;
        }
        
       //这里应该是upload, 向网络中发送数据
        bRet = CMySocket::Send(pDlg->m_MySocket.m_Socket,
                                buf, 
                                STEP,
                                0);
        if (!bRet)
        {
            goto V2_ERROR_PROCESS;
        }

        //更新已拷贝的字节数
        pDlg->m_dwCopyedLen += STEP;

        ::LeaveCriticalSection(&pDlg->m_CriSection);

    }//end for copy 4bytes everytime
    
    //deal with the remaining
    if (0 == nremain)
    {
        goto V2_ERROR_PROCESS;
    }

    //对剩余字节的读取、写入作为一个临界区
    ::EnterCriticalSection(&pDlg->m_CriSection);
    
    fread(buf, nremain, 1, fpsrc);
    if (ferror(fpsrc))
    {
        perror("Read Error When Copy remained bytes");

        result = FAIL;
        goto V2_ERROR_PROCESS;
    }

    //这里应该是upload, 向网络中发送数据
    bRet = CMySocket::Send(pDlg->m_MySocket.m_Socket,
                            buf, 
                            nremain,
                            0);
    if (!bRet)
    {
        goto V2_ERROR_PROCESS;
        }

    //更新已拷贝的字节数
    pDlg->m_dwCopyedLen += nremain;


    //
    ::LeaveCriticalSection(&pDlg->m_CriSection);
    
V2_ERROR_PROCESS:
    if (fpsrc)
    {
        fclose(fpsrc);
        fpsrc = NULL;
    }
   
    return result;
}

void CFileCopyDlg::OnTimer(UINT nIDEvent) 
{
	// TODO: Add your message handler code here and/or call default

    m_progessctrl.SetPos(m_dwCopyedLen);
	
	CDialog::OnTimer(nIDEvent);
}

void CFileCopyDlg::OnPauseContinue() 
{
	// TODO: Add your control notification handler code here
    if (NULL == m_hPauseEvent)
    {
        return;
    }

    if (m_IsPaused)
    {
        SetEvent(m_hPauseEvent);
    }
    else
    {
        ResetEvent(m_hPauseEvent);
    }
    m_IsPaused = !m_IsPaused;
}
