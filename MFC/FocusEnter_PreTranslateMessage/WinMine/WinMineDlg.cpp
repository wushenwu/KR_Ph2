// WinMineDlg.cpp : implementation file
//

#include "stdafx.h"
#include "WinMine.h"
#include "WinMineDlg.h"

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
// CWinMineDlg dialog

CWinMineDlg::CWinMineDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CWinMineDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CWinMineDlg)
		// NOTE: the ClassWizard will add member initialization here
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CWinMineDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CWinMineDlg)
		// NOTE: the ClassWizard will add DDX and DDV calls here
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CWinMineDlg, CDialog)
	//{{AFX_MSG_MAP(CWinMineDlg)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_WM_LBUTTONDOWN()
	ON_WM_LBUTTONUP()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CWinMineDlg message handlers

BOOL CWinMineDlg::OnInitDialog()
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

    //////////////////////////////////////////////////////////////////////////
#if 1  //最普通的方法
    //Size
    ResizeWindow();

    //
    CreateButton();

#else
    //使用子类化的方法
    static CMyBTN 

#endif
    
	
	return TRUE;  // return TRUE  unless you set the focus to a control
}

void CWinMineDlg::OnSysCommand(UINT nID, LPARAM lParam)
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

void CWinMineDlg::OnPaint() 
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
HCURSOR CWinMineDlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

//////////////////////////////////////////////////////////////////////////

void
CWinMineDlg::ResizeWindow(void)
{
    int cxIcon = GetSystemMetrics(SM_CXICON);
    int cyIcon = GetSystemMetrics(SM_CYICON);
    SetWindowPos(this, 
                0, 0,
                COLS * BLOCK_WIDTH + 6, (ROWS + 1)* BLOCK_HEIGHT, 
                SWP_NOZORDER
                );

}
void
CWinMineDlg::CreateButton(void)
{
//     CRect rc;
//     GetClientRect(rc);
//     int cxIcon = GetSystemMetrics(SM_CXICON);
//     int cyIcon = GetSystemMetrics(SM_CYICON);

    for (int i = 0, j = 0; i < ROWS; i++)
    {
        for (j = 0; j < COLS; j++)
        {
            //strFmt.Format("按钮%d", i + 1);
            CreateWindow("BUTTON", 
                        "1", 
                        WS_VISIBLE | WS_CHILD, 
                        j * CXICON, 
                        i * CYICON, 
                        CXICON, 
                        CYICON, 
                        GetSafeHwnd(), 
                        (HMENU)(ID_START + i * COLS + j), 
                        NULL, //忽略
                        NULL);
        }
    }
}

#if 0
BOOL CWinMineDlg::OnCommand(WPARAM wParam, LPARAM lParam) 
{
	// TODO: Add your specialized code here and/or call the base class
    WORD wID = LOWORD(wParam);

    if ((wID >= ID_START)
        && (wID < ID_START + COLS * ROWS)
        )
    {
        TCHAR szText[MAXBYTE];
        wsprintf(szText, "%d", wID - ID_START);
        GetDlgItem(wID)->SetWindowText(szText);

//         CWnd *pWnd = GetDlgItem(wID);
//         pWnd->DestroyWindow();
        return FALSE;
    }
	
	return CDialog::OnCommand(wParam, lParam);
}
#endif

void CWinMineDlg::OnLButtonDown(UINT nFlags, CPoint point) 
{
	// TODO: Add your message handler code here and/or call default

	
	CDialog::OnLButtonDown(nFlags, point);
}

void CWinMineDlg::OnLButtonUp(UINT nFlags, CPoint point) 
{
	// TODO: Add your message handler code here and/or call default
	
	CDialog::OnLButtonUp(nFlags, point);
}
