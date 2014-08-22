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

    m_hThread = NULL;
    m_hEvent = NULL;
}

void CFileCopyDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CFileCopyDlg)
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
	ON_NOTIFY(NM_OUTOFMEMORY, IDC_PROGRESS_FILE, OnOutofmemoryProgressFile)
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
CopyProc(
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
	// TODO: Add your control notification handler code here

    if (0 == strlen(m_SRCFile)
        || 0 == strlen(m_DSTFile))
    {
        AfxMessageBox("请选定文件");
        return;
    }

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
    m_hEvent = CreateEvent(NULL,    // no security attributes
                           TRUE,    // manual-reset event
                           TRUE,    // initial state is signaled
                           NULL     // no object name
                           );
    if (NULL == m_hEvent)
    {
        AfxMessageBox("Create Event Failed");
        return;
    }

    
    //创建新的线程拷贝文件
    DWORD dwThreadID;

#define USE_MYCOPY
#ifdef USE_MYCOPY
    m_hThread = CreateThread(NULL,          // no security attributes 
                             0,             // use default stack size
                             MyCopyProc,    // thread function 
                             this,          // argument to thread function
                             0,             // use default creation flags
                             &dwThreadID     // returns the thread identifier 
                            );
#else
    m_hThread = CreateThread(NULL,
                            0,
                            CopyProc,
                            this,
                            0,     //suspend or not
                            &dwThreadID
                           );

    if (NULL == m_hThread)
    {
        AfxMessageBox("Create Thread Failed");
        return;
    }
#endif   	
}

void CFileCopyDlg::OnOutofmemoryProgressFile(NMHDR* pNMHDR, LRESULT* pResult) 
{
	// TODO: Add your control notification handler code here
    
	
	*pResult = 0;
}

DWORD 
WINAPI 
CopyProc(
       LPVOID lpParameter   // thread data
        )
{
    CFileCopyDlg *pDlg = (CFileCopyDlg *)lpParameter;
    if (NULL == pDlg)
    {
        return 1;
    }

    CString command;
    command.Format("copy %s %s /Y", 
                    pDlg->m_SRCFile, 
                    pDlg->m_DSTFile);

    system(command.GetBuffer(0));

    return 0;
}

#define SUCCESS 0
#define FAIL   1
#define STEP    1024
DWORD 
WINAPI 
MyCopyProc(
           LPVOID lpParameter   // thread data
            )
{
    CFileCopyDlg *pDlg = (CFileCopyDlg *)lpParameter;
    if (NULL == pDlg)
    {
        return 0;
    }

    const char *pfilesrc = pDlg->m_SRCFile;
    const char *pfiledst = pDlg->m_DSTFile;

    int result       = SUCCESS;
    FILE *fpsrc      = NULL;
    FILE *fpdst      = NULL;
    long lnfsize    =  0;
    unsigned ncount  = 0;
    unsigned nremain = 0;
    char buf[STEP]      = {0};
    unsigned i       = 0;
    
    fpsrc = fopen(pfilesrc, "rb");
    if (NULL == fpsrc)
    {
        result = FAIL;
        goto V2_ERROR_PROCESS;
    }
    
    fpdst = fopen(pfiledst, "wb");
    if (NULL == fpdst)
    {
        result = FAIL;
        goto V2_ERROR_PROCESS;
    }
    
    //get file size, 
    fseek(fpsrc, 0, SEEK_END);
    if (ferror(fpsrc))
    {
        perror("mycopy_v2 fseek error");
        
        result = FAIL;
        goto V2_ERROR_PROCESS;
    }

    lnfsize = ftell(fpsrc);
    if (-1L == lnfsize)
    {
        result = 0;
        goto V2_ERROR_PROCESS;
    }
    
    //restore to the beginning
    fseek(fpsrc, 0, SEEK_SET);
    
    //read STEP bytes every time.
    ncount  = lnfsize / STEP;     
    nremain = lnfsize % STEP;      
    
    //read and write now every 4 bytes
    for (i = 0; i < ncount; i++)
    {
        //根据暂停/继续事件进行
        WaitForSingleObject(pDlg->m_hEvent, INFINITE);

        fread(buf, STEP, 1, fpsrc);
        if (ferror(fpsrc))
        {
            perror("Read Error When Copy STEP bytes");

            result = FAIL;
            goto V2_ERROR_PROCESS;
        }
        
        fwrite(buf, STEP, 1, fpdst);
        if (ferror(fpdst))
        {
            perror("Write Error When Copy STEP bytes");

            result = FAIL;
            goto V2_ERROR_PROCESS;
        }

        //更新已拷贝的字节数
        pDlg->m_dwCopyedLen += STEP;

    }//end for copy 4bytes everytime
    
    //deal with the remaining
    if (0 == nremain)
    {
        goto V2_ERROR_PROCESS;
    }
    
    fread(buf, nremain, 1, fpsrc);
    if (ferror(fpsrc))
    {
        perror("Read Error When Copy remained bytes");

        result = FAIL;
        goto V2_ERROR_PROCESS;
    }
    
    fwrite(buf, nremain, 1, fpdst);
    if (ferror(fpdst))
    {
        perror("Write Error When Write remained bytes");

        result = FAIL;
        goto V2_ERROR_PROCESS;
    }

    //更新已拷贝的字节数
    pDlg->m_dwCopyedLen += nremain;
    
V2_ERROR_PROCESS:
    if (fpsrc)
    {
        fclose(fpsrc);
        fpsrc = NULL;
    }
    
    if (fpdst)
    {
        fclose(fpdst);
        fpdst = NULL;
    }
    
    return result;
}

void CFileCopyDlg::OnTimer(UINT nIDEvent) 
{
	// TODO: Add your message handler code here and/or call default

#ifndef USE_MYCOPY
    //需要获取已拷贝的文件大小
    CFile myFile;
    CFileException myFileException;
    BOOL bRet = myFile.Open(m_DSTFile, CFile::modeRead, &myFileException);
    if (!bRet)
    {
        TRACE( "Can't open file %s, error = %u\n",
            m_DSTFile, myFileException.m_cause );
        
    }
    
    if (myFile.m_hFile != (UINT)-1)
    {
        m_dwCopyedLen = myFile.GetLength();
        myFile.Close();
    }
    
#endif
    if (m_dwCopyedLen == m_dwFileLen)
    {
        AfxMessageBox("Done!");
        CloseHandle(m_hThread);
        KillTimer(1);
    }

    m_progessctrl.SetPos(m_dwCopyedLen);
	
	CDialog::OnTimer(nIDEvent);
}

void CFileCopyDlg::OnPauseContinue() 
{
	// TODO: Add your control notification handler code here
    if (NULL == m_hEvent)
    {
        return;
    }

    if (m_IsPaused)
    {
        SetEvent(m_hEvent);
    }
    else
    {
        ResetEvent(m_hEvent);
    }
    m_IsPaused = !m_IsPaused;
}
