// LoadDLLDlg.cpp : implementation file
//

#include "stdafx.h"
#include "LoadDLL.h"
#include "LoadDLLDlg.h"

#include "..\\DLL_DEF\DLL_DEF.h"

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
// CLoadDLLDlg dialog

CLoadDLLDlg::CLoadDLLDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CLoadDLLDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CLoadDLLDlg)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CLoadDLLDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CLoadDLLDlg)
		// NOTE: the ClassWizard will add DDX and DDV calls here
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CLoadDLLDlg, CDialog)
	//{{AFX_MSG_MAP(CLoadDLLDlg)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_BN_CLICKED(IDC_BUTTON1, OnButton1)
	ON_BN_CLICKED(IDC_BUTTON2, OnButton2)
	ON_BN_CLICKED(IDC_BUTTON3, OnButton3)
	ON_BN_CLICKED(IDC_BUTTON4, OnButton4)
	ON_BN_CLICKED(IDC_BUTTON5, OnButton5)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CLoadDLLDlg message handlers

BOOL CLoadDLLDlg::OnInitDialog()
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

void CLoadDLLDlg::OnSysCommand(UINT nID, LPARAM lParam)
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

void CLoadDLLDlg::OnPaint() 
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
HCURSOR CLoadDLLDlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

HMODULE g_hModule;

void
LoadOriDLL(void)
{
    if (g_hModule != NULL)
    {
        return;
    }
    
    g_hModule = ::LoadLibrary("DLL_DEF.dll");
    if (NULL == g_hModule)
    {
        return;   
    }
}

//函数指针
// typedef void (CALL *PFNSayHello)(void);
// typedef int * (CALL *PFNGetAddr)(void);

void CLoadDLLDlg::OnButton1() 
{
	// TODO: Add your control notification handler code here
	
    //按函数名称调用
    LoadOriDLL();
    PFNSayHello pfnSayHello = (PFNSayHello)::GetProcAddress(g_hModule, "SayHello");
    if (pfnSayHello != NULL)
    {
        (*pfnSayHello)();
    } 
}

void CLoadDLLDlg::OnButton2() 
{
	// TODO: Add your control notification handler code here
	
    //按序列号调用
    LoadOriDLL();
    PFNSayHello pfnSayHello = (PFNSayHello)::GetProcAddress(g_hModule, (LPCTSTR)4);
    if (pfnSayHello != NULL)
    {
        (*pfnSayHello)();
    } 
}

void CLoadDLLDlg::OnButton3() 
{
	// TODO: Add your control notification handler code here
	
    //按基址调用
    LoadOriDLL();

    PFNSayHello pfnSayHello = (PFNSayHello)((int)g_hModule + 0x100F);
    if (pfnSayHello != NULL)
    {
        (*pfnSayHello)();
    }
}



void CLoadDLLDlg::OnButton4() 
{
	// TODO: Add your control notification handler code here
	
    //写数据
    LoadOriDLL();
    PFNGetAddr pfnGetAddr = (PFNGetAddr)::GetProcAddress(g_hModule, "GetAddr");
    if (pfnGetAddr != NULL)
    {
        int *pAddr = (*pfnGetAddr)();
        (*pAddr)++;
    } 
}

void CLoadDLLDlg::OnButton5() 
{
	// TODO: Add your control notification handler code here
	
    //读数据
    LoadOriDLL();
    PFNGetAddr pfnGetAddr = (PFNGetAddr)::GetProcAddress(g_hModule, "GetAddr");
    if (pfnGetAddr != NULL)
    {
        int *pAddr = (*pfnGetAddr)();
        CString str;
        str.Format("%x", *pAddr);
        ::MessageBox(NULL, str, NULL, MB_OK);
    } 
}
