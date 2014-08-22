// DDXDlg.cpp : implementation file
//

#include "stdafx.h"
#include "DDX.h"
#include "DDXDlg.h"

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
// CDDXDlg dialog

CDDXDlg::CDDXDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CDDXDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CDDXDlg)
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CDDXDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CDDXDlg)
	DDX_Control(pDX, IDC_LIST1, m_ListBoxProxy);
	DDX_Control(pDX, IDOK, m_ButtonProxy_OK);
	DDX_Control(pDX, IDCANCEL, m_ButtonProxy_CANCEL);
	DDX_Control(pDX, IDC_EDIT1, m_EditProxy);
	DDX_Control(pDX, IDC_BUTTON1, m_ButtonProxy);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CDDXDlg, CDialog)
	//{{AFX_MSG_MAP(CDDXDlg)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_BN_CLICKED(IDC_BUTTON1, OnEditSubClass)
	ON_WM_KEYDOWN()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CDDXDlg message handlers

BOOL CDDXDlg::OnInitDialog()
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

    //make the edit only accept number
    EnableNumberEdit();
	
	return TRUE;  // return TRUE  unless you set the focus to a control
}

void CDDXDlg::OnSysCommand(UINT nID, LPARAM lParam)
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

void CDDXDlg::OnPaint() 
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
HCURSOR CDDXDlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

LONG g_nOldStyle;
BOOL g_IsHooked = FALSE;
void CDDXDlg::EnableNumberEdit() 
{
    HWND hEdit = GetDlgItem(IDC_EDIT1)->GetSafeHwnd();    //
    
    g_nOldStyle = ::GetWindowLong(hEdit, GWL_STYLE);

    if (!g_IsHooked)
    {
        ::SetWindowLong(hEdit, GWL_STYLE, g_nOldStyle | ES_NUMBER);     //开启Number限制

    }
    else
    {
        ::SetWindowLong(hEdit, GWL_STYLE, g_nOldStyle & ~ES_NUMBER);    //去除Number限制
    }   

    g_IsHooked = !g_IsHooked;
}

void CDDXDlg::OnEditSubClass() 
{
	// TODO: Add your control notification handler code here
    EnableNumberEdit();	
}

//////////////////////////////////////////////////////////////////////////
//响应Dialog WM_KEYDOWN消息
//为每类控件设置一个代理，让代理来触发Dialog的KEYDOWN消息

void CDDXDlg::OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags) 
{
	// TODO: Add your message handler code here and/or call default

    OutputDebugString(TEXT("CDDXDlg::OnKeyDown"));
	
	CDialog::OnKeyDown(nChar, nRepCnt, nFlags);
}

void CDDXDlg::KeyDownProxy(UINT nChar, UINT nRepCnt, UINT nFlags)
{
    //仅是为了解决protected::afx_msg void OnKeyDown(UINT nChar, UINT nRepCnt, UINT nFlags);
    //的访问问题
    OnKeyDown(nChar, nRepCnt, nFlags);
}
