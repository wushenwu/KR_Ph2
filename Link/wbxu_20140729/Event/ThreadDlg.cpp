// ThreadDlg.cpp : implementation file
//

#include "stdafx.h"
#include "Thread.h"
#include "ThreadDlg.h"

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
// CThreadDlg dialog

CThreadDlg::CThreadDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CThreadDlg::IDD, pParent)
{
  m_nNum1 = 0;
  m_nNum2 = 0;
  m_IsStop = FALSE;
  m_hEvent = NULL;
	//{{AFX_DATA_INIT(CThreadDlg)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CThreadDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CThreadDlg)
		// NOTE: the ClassWizard will add DDX and DDV calls here
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CThreadDlg, CDialog)
	//{{AFX_MSG_MAP(CThreadDlg)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_BN_CLICKED(IDC_BTN_CREATE_THREAD, OnBtnCreateThread)
	ON_WM_TIMER()
	ON_BN_CLICKED(IDC_BTN_EXIT_THREAD, OnBtnExitThread)
	ON_BN_CLICKED(IDC_BTN_PAUSE_THREAD, OnBtnPauseThread)
	ON_BN_CLICKED(IDC_BTN_RESUME_THREAD2, OnBtnResumeThread)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CThreadDlg message handlers

BOOL CThreadDlg::OnInitDialog()
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

void CThreadDlg::OnSysCommand(UINT nID, LPARAM lParam)
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

void CThreadDlg::OnPaint() 
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
HCURSOR CThreadDlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}


DWORD WINAPI CThreadDlg::ThreadProc(LPVOID lpParameter)
{
  CThreadDlg *pDlg = (CThreadDlg*)lpParameter;
  
  DWORD dwThreadID = ::GetCurrentThreadId();
  
  while(!pDlg->m_IsStop)
  {
    ::WaitForSingleObject(pDlg->m_hPause, INFINITE/*无限等待*/);

    //1.利用事件对象完成同步的功能
    ::WaitForSingleObject(pDlg->m_hEvent, INFINITE/*无限等待*/);
    pDlg->m_nNum1++;
    pDlg->m_nNum2++;
    SetEvent(pDlg->m_hEvent);
  }
  return 5;
}

void CThreadDlg::OnBtnCreateThread() 
{
  m_nNum1 = 0;
  m_nNum2 = 0;
  m_IsStop = FALSE;

  SetTimer(1, 200, NULL);
  
#ifndef USE_MYSYNFUN
  //创建事件对象
  m_hPause = ::CreateEvent(NULL, TRUE, TRUE, NULL);
  m_hEvent = ::CreateEvent(NULL, FALSE, TRUE, NULL);

#else
    m_pPause = new CMyEvent;
    m_pEvent = new CMyEvent(FALSE);
#endif


  for (int i = 0; i < sizeof(m_hThread) / sizeof(m_hThread[0]);
       i++)
 {
         m_hThread[i] = ::CreateThread(NULL, 
                                         0,
                                         CThreadDlg::ThreadProc,
                                         this, 
                                         0, 
                                         NULL);
         if (m_hThread[i] == NULL)
         {
           AfxMessageBox("创建线程失败");

           //停止并且关闭已经创建的线程
           m_IsStop = TRUE;
           for (int j = 0; j < i; j++)
           {
             CloseHandle(m_hThread[j]);
             m_hThread[j] = NULL;
           }
           return;
         }
 }


}

void CThreadDlg::OnTimer(UINT nIDEvent) 
{
	// TODO: Add your message handler code here and/or call default
  if (nIDEvent == 1)
  {
    SetDlgItemInt(IDC_EDIT_NUMBER1, m_nNum1);
    SetDlgItemInt(IDC_EDIT_NUMBER2, m_nNum2);
  }

	CDialog::OnTimer(nIDEvent);
}

void CThreadDlg::OnBtnExitThread() 
{
  m_IsStop = TRUE;
  for (int i = 0; i < sizeof(m_hThread) / sizeof(m_hThread[0]);
       i++)
   {
     CloseHandle(m_hThread[i]);
     m_hThread[i] = NULL;
   }
}

void CThreadDlg::OnBtnPauseThread() 
{
   ResetEvent(m_hPause);
}

void CThreadDlg::OnBtnResumeThread() 
{
    SetEvent(m_hPause);
}
