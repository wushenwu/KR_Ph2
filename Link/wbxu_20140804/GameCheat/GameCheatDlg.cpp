// GameCheatDlg.cpp : implementation file
//

#include "stdafx.h"
#include "GameCheat.h"
#include "GameCheatDlg.h"

#include <math.h>
#include <time.h>

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
// CGameCheatDlg dialog

CGameCheatDlg::CGameCheatDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CGameCheatDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CGameCheatDlg)
	m_bNoDie = FALSE;
	m_dwBulletsInit = 0;
	m_dwBulletsTotal = 0;
	m_bAuto = FALSE;
	m_dwSpeed = 0;
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);

    memset(m_hEvents, 0, sizeof(m_hEvents));

    m_dwPID = 0;
    m_hProcess = NULL;

    m_pCheatThread = NULL;
    m_bCheatStart = FALSE;

    m_pAutoThread = NULL;
}

void CGameCheatDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CGameCheatDlg)
	DDX_Check(pDX, IDC_CHECK_NODIE, m_bNoDie);
	DDX_Text(pDX, IDC_BULLETS_INIT, m_dwBulletsInit);
	DDX_Text(pDX, IDC_BULLETS_TOTAL, m_dwBulletsTotal);
	DDX_Check(pDX, IDC_CHECK_AUTO, m_bAuto);
	DDX_Text(pDX, IDC_BULLETS_SPEED, m_dwSpeed);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CGameCheatDlg, CDialog)
	//{{AFX_MSG_MAP(CGameCheatDlg)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_BN_CLICKED(IDC_BTN_GAMESTART, OnBtnGamestart)
	ON_BN_CLICKED(IDC_CHECK_NODIE, OnCheckNodie)
	ON_EN_CHANGE(IDC_BULLETS_INIT, OnChangeBulletsInit)
	ON_EN_CHANGE(IDC_BULLETS_TOTAL, OnChangeBulletsTotal)
	ON_EN_CHANGE(IDC_BULLETS_SPEED, OnChangeBulletsSpeed)
	ON_BN_CLICKED(IDC_CHECK_AUTO, OnCheckAuto)
	ON_BN_CLICKED(IDC_BTN_GAMECHEAT, OnBtnGamecheat)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CGameCheatDlg message handlers

BOOL CGameCheatDlg::OnInitDialog()
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
    InitGameCheat();
	
	return TRUE;  // return TRUE  unless you set the focus to a control
}

void CGameCheatDlg::OnSysCommand(UINT nID, LPARAM lParam)
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

void CGameCheatDlg::OnPaint() 
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
HCURSOR CGameCheatDlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

void CGameCheatDlg::OnBtnGamestart() 
{
	// TODO: Add your control notification handler code here
	UINT nRet = WinExec("Game.exe", SW_SHOWNORMAL);
    if (nRet <= 31)
    {
        ShowErrMsg();
    }
}

void CGameCheatDlg::ShowErrMsg()
{
    LPVOID lpMsgBuf;
    FormatMessage( 
                FORMAT_MESSAGE_ALLOCATE_BUFFER | 
                FORMAT_MESSAGE_FROM_SYSTEM | 
                FORMAT_MESSAGE_IGNORE_INSERTS,
                NULL,
                GetLastError(),
                MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT), // Default language
                (LPTSTR) &lpMsgBuf,
                0,
                NULL 
                );

    ::MessageBox( NULL, (LPCTSTR)lpMsgBuf, "Error", MB_OK | MB_ICONINFORMATION );
    
    //free the buffer
    LocalFree(lpMsgBuf);
}

void CGameCheatDlg::InitGameCheat()
{
    //创建事件，对子弹初始值、子弹总数、速度、无敌模式、自动躲避等进行监控
    for (int i = 0; i < EVENT_COUNT; i++)
    {
        m_hEvents[i] = CreateEvent(NULL,
            FALSE,   //auto reset
            FALSE,   //non-signaled
            NULL);
        if (NULL == m_hEvents[i])
        {
            ShowErrMsg();
            for (int j = 0; j < i; j++)
            {
                CloseHandle(m_hEvents[j]);
                m_hEvents[j] = 0;
            }
        }
    }
}

void CGameCheatDlg::OnChangeBulletsInit() 
{
	// TODO: If this is a RICHEDIT control, the control will not
	// send this notification unless you override the CDialog::OnInitDialog()
	// function and call CRichEditCtrl().SetEventMask()
	// with the ENM_CHANGE flag ORed into the mask.
	
	// TODO: Add your control notification handler code here
    if (!m_bCheatStart)
    {
        return;
    }

    BOOL bRet = UpdateData();
    if (!bRet)
    {
        //设置失败
        return;
    }

	SetEvent(m_hEvents[0]);
}

void CGameCheatDlg::OnChangeBulletsTotal() 
{
	// TODO: If this is a RICHEDIT control, the control will not
	// send this notification unless you override the CDialog::OnInitDialog()
	// function and call CRichEditCtrl().SetEventMask()
	// with the ENM_CHANGE flag ORed into the mask.
	
	// TODO: Add your control notification handler code here
    if (!m_bCheatStart)
    {
        return;
    }

    BOOL bRet = UpdateData();
    if (!bRet)
    {
        //设置失败
        return;
    }

    SetEvent(m_hEvents[1]);
	
}

void CGameCheatDlg::OnChangeBulletsSpeed() 
{
    // TODO: If this is a RICHEDIT control, the control will not
    // send this notification unless you override the CDialog::OnInitDialog()
    // function and call CRichEditCtrl().SetEventMask()
    // with the ENM_CHANGE flag ORed into the mask.
    
    // TODO: Add your control notification handler code here
    if (!m_bCheatStart)
    {
        return;
    }

    BOOL bRet = UpdateData();
    if (!bRet)
    {
        //设置失败
        return;
    }
    
    SetEvent(m_hEvents[2]);  
}

void CGameCheatDlg::OnCheckNodie() 
{
    // TODO: Add your control notification handler code here
    if (!m_bCheatStart)
    {
        return;
    }

    m_bNoDie = !m_bNoDie;
        
    SetEvent(m_hEvents[3]);
}


void CGameCheatDlg::OnCheckAuto() 
{
	// TODO: Add your control notification handler code here
    if (!m_bCheatStart)
    {
        return;
    }

	m_bAuto = !m_bAuto;

    SetEvent(m_hEvents[4]);
}

UINT CheatProc( LPVOID pParam )
{
    CGameCheatDlg *pDlg = (CGameCheatDlg *)pParam;
    if (NULL == pDlg)
    {
        return -1;
    }
    
    //对进程内存进行更改
    pDlg->ChangeAccess(TRUE);

    DWORD dwWaitResult;   
    while (TRUE)
    {
        dwWaitResult = WaitForMultipleObjects(EVENT_COUNT,
                                      pDlg->m_hEvents,
                                      FALSE,
                                      INFINITE);
        switch (dwWaitResult)
        {
        case WAIT_OBJECT_0:
            {
                //子弹初始值
                pDlg->SetBulletsInit();
                break;
            }
        case WAIT_OBJECT_0 + 1:
            {
                //子弹总值
                pDlg->SetBulletsTotal();
                break;
            }

        case WAIT_OBJECT_0 + 2:
            {
                //速度
                pDlg->SetSpeed();
                break;
            }

        case WAIT_OBJECT_0 + 3:
            {
                //无敌模式
                pDlg->SetNoDie();
                break;
            }

        case WAIT_OBJECT_0 + 4:
            {
                //自动躲避
                pDlg->SetAutoEscape();
                break;
            }

        default:
            AfxMessageBox("Switch ERROR!!");
        }
    }

    //对进程内存进行还原
    pDlg->ChangeAccess(FALSE);

    return 0;
}

void CGameCheatDlg::OnBtnGamecheat() 
{
    //确认游戏进程已开启
    HWND hGame = ::FindWindow(NULL, "摿孭");
    if (NULL == hGame)
    {
        AfxMessageBox("游戏尚未启动!!");
        return;
    }

    if (m_dwPID != 0)
    {
        int nRet = ::MessageBox(NULL, TEXT("已经开启作弊，是否重新开启？"), NULL, MB_YESNO);
        if (IDNO == nRet)
        {
            return;
        }
    }

    m_bCheatStart = TRUE;

    GetWindowThreadProcessId(hGame, &m_dwPID);

    //需要开启线程，对m_dwPID所示的进程内存进行操作
    if (m_pCheatThread != NULL)
    {
        delete m_pCheatThread;
        m_pCheatThread = NULL;
    }

    m_pCheatThread = AfxBeginThread(CheatProc, this);
	
}

#define BULLETS_INIT_ADDR   (0x0040469E)    //子弹初始值地址
#define BULLETS_TOTAL_ADDR   (0x00406DA8)   //当前子弹值地址
#define BULLETS_ARY_ADDR    (0x00406E10)    //子弹数组首值

#define SPEED_ADDR          (0x004020F5)    //速度地址

#define NODIE_ADDR          (0x00403616)    //无敌模式地址
#define DIE_FLAG_ADDR       (0x00406D80)   //死亡标志地址

#define PLANE_X_ADDR        (0x00406D6C)    //飞机当前X值地址
#define PLANE_Y_ADDR        (0x00406D70)   

#define  COUNT  7
int g_Addr[COUNT]  = {
        (int)BULLETS_INIT_ADDR,
        (int)BULLETS_TOTAL_ADDR,
        (int)BULLETS_ARY_ADDR,
        (int)SPEED_ADDR,
        (int)NODIE_ADDR,
        //(int)DIE_FLAG_ADDR,
        (int)PLANE_X_ADDR,
        (int)PLANE_Y_ADDR
};

size_t g_Size[COUNT] = {
    4,  //0x0040469E   4    初始子弹个数
    4,  //0x00406DA8   4   当前子弹的个数
    4,  //0x00406E10   4   子弹数组首地址
    1,  //0x004020F5   1   速度
    1,  //0x00403616   0xeb  __asm jmp    无敌模式
        //     0x74  __asm je     普通模式
    //4,  //0x00406D80   4   死亡标志
    4,  //0x00406D6C   4   nplanX,  当前飞机位置
    4  //0x00406D70   4   nplanY,
};

void CGameCheatDlg::ChangeAccess(BOOL bChange)
{
    //对内存保护属性进行更改或者还原
    if (0 == m_dwPID)
    {
        return;
    }

    HANDLE hProcess = OpenProcess(PROCESS_ALL_ACCESS, 
                                    FALSE,
                                    m_dwPID);
    if (NULL == hProcess)
    {
        ShowErrMsg();
        return;
    }

    static DWORD dwOld[COUNT];
    DWORD dwTMP[COUNT];
    BOOL bRet;

    if (bChange)    //更改
    {
        for (int i = 0; i < COUNT; i++)
        {
            bRet = VirtualProtectEx(hProcess, 
                                    (PVOID)g_Addr[i], 
                                    g_Size[i], 
                                    PAGE_READWRITE, 
                                    &dwOld[i]);
            if (!bRet)
            {
                ShowErrMsg();
            }
        }
    }
    else
    {
        //还原
        for (int i = 0; i < COUNT; i++)
        {
            bRet = VirtualProtectEx(hProcess, 
                                    (PVOID)g_Addr[i], 
                                    g_Size[i], 
                                    dwOld[i], 
                                    &dwTMP[i]);
            if (!bRet)
            {
                ShowErrMsg();
            }
        }
    }

    CloseHandle(hProcess);       
}

void CGameCheatDlg::SetNoDie()
{
    //设置无敌或者普通模式
    HANDLE hProcess = OpenProcess(PROCESS_ALL_ACCESS, 
                                    FALSE,
                                    m_dwPID);
    if (NULL == hProcess)
    {
        ShowErrMsg();
        return;
    }

    BYTE btBuff[1] = {0x74};
    if (m_bNoDie)
    {
        btBuff[0] = 0xeb;
    }

    DWORD dwWrittenBytes;
    DWORD dwLen = 1;
    if (!::WriteProcessMemory(hProcess, 
                            (PVOID)NODIE_ADDR, 
                            btBuff,
                            dwLen,
                            &dwWrittenBytes) 
        || dwWrittenBytes != dwLen)
    {
        ShowErrMsg();
    }

    CloseHandle(hProcess);
}

void CGameCheatDlg::SetBulletsInit()
{
    //设定子弹初始值
    HANDLE hProcess = OpenProcess(PROCESS_ALL_ACCESS, 
                                FALSE,
                                m_dwPID);
    if (NULL == hProcess)
    {
        ShowErrMsg();
        return;
    }
    
    BYTE btBuff[4];
    BYTE *pByte = (BYTE *)&m_dwBulletsInit;
    for (int i = 0; i < 4; i++)
    {
        btBuff[i] = pByte[i];
    }
    
    DWORD dwWrittenBytes;
    DWORD dwLen = 4;
    if (!::WriteProcessMemory(hProcess, 
                                (PVOID)BULLETS_INIT_ADDR, 
                                btBuff,
                                dwLen,
                                &dwWrittenBytes) 
        || dwWrittenBytes != dwLen
        )
    {
        ShowErrMsg();
    }
    
    CloseHandle(hProcess);
}

void CGameCheatDlg::SetBulletsTotal()
{
    //设定当前子弹总值
    HANDLE hProcess = OpenProcess(PROCESS_ALL_ACCESS, 
                                FALSE,
                                m_dwPID);
    if (NULL == hProcess)
    {
        ShowErrMsg();
        return;
    }
    
    BYTE btBuff[4];
    BYTE *pByte = (BYTE *)&m_dwBulletsTotal;
    for (int i = 0; i < 4; i++)
    {
        btBuff[i] = pByte[i];
    }
    
    DWORD dwWrittenBytes;
    DWORD dwLen = 4;
    if (!::WriteProcessMemory(hProcess, 
                                (PVOID)BULLETS_TOTAL_ADDR, 
                                btBuff,
                                dwLen,
                                &dwWrittenBytes) 
        || dwWrittenBytes != dwLen
        )
    {
        ShowErrMsg();
    }
    
    CloseHandle(hProcess);
}

void CGameCheatDlg::SetSpeed()
{
    //设定速度
    HANDLE hProcess = OpenProcess(PROCESS_ALL_ACCESS, 
                                FALSE,
                                m_dwPID);
    if (NULL == hProcess)
    {
        ShowErrMsg();
        return;
    }

    //猜测其速度最大值为127
    BYTE btBuff[1];
    btBuff[0] = (BYTE)m_dwSpeed;
    
    DWORD dwWrittenBytes;
    DWORD dwLen = 1;
    if (!::WriteProcessMemory(hProcess, 
                            (PVOID)SPEED_ADDR, 
                            btBuff,
                            dwLen,
                            &dwWrittenBytes) 
        || dwWrittenBytes != dwLen
        )
    {
        ShowErrMsg();
    }
    
    CloseHandle(hProcess);
}

UINT AutoProc( LPVOID pParam )
{
    CGameCheatDlg *pDlg = (CGameCheatDlg *)pParam;
    if (NULL == pDlg)
    {
        return -1;
    }

    HANDLE hProcess = OpenProcess(PROCESS_ALL_ACCESS, 
                                    FALSE,
                                    pDlg->m_dwPID);
    if (NULL == hProcess)
    {
        pDlg->ShowErrMsg();
        return -1;
    }

    DWORD dwCount;

    DWORD dwBulletX;
    DWORD dwBulletY;
    DWORD dwReadBytes;   

    DWORD dwWrittenBytes;
    BYTE btXBuff[4];
    BYTE btYBuff[4];

    DWORD dwLen = 4;
    BOOL bRet;
    int i;
    
    int j = 0;

    DWORD dwAddr;

    CRgn rgn;
    DWORD dwTMPBulletX;
    DWORD dwTMPBulletY;
    DWORD dwTMPReadBytes;  

    double pi = 3.1415926535 / 2 / 3;

    srand((unsigned)time( NULL));


    while (TRUE)
    {
        //读取子弹的个数
        bRet = ReadProcessMemory(hProcess, 
                                (PVOID)BULLETS_TOTAL_ADDR,
                                &dwCount, 
                                dwLen, 
                                &dwReadBytes);
        if (!bRet
            || dwReadBytes != dwLen)
        {
            pDlg->ShowErrMsg();
            
        }

        bRet = ::WriteProcessMemory(hProcess, 
                                (PVOID)BULLETS_TOTAL_ADDR, 
                                &dwCount,
                                dwLen,
                                &dwWrittenBytes);
        if (!bRet
            || dwWrittenBytes != dwLen)
        {
            pDlg->ShowErrMsg();
        }

        //读取最后一个子弹的坐标
        dwAddr = BULLETS_ARY_ADDR + (dwCount - 1) * 0xF;
        bRet = ReadProcessMemory(hProcess, 
                                (PVOID)dwAddr,
                                &dwBulletX, 
                                dwLen, 
                                &dwReadBytes);
        if (!bRet
            || dwReadBytes != dwLen)
        {
            pDlg->ShowErrMsg();
            
        }
        
        bRet = ReadProcessMemory(hProcess, 
                                (PVOID)(dwAddr + 4), 
                                &dwBulletY, 
                                dwLen, 
                                &dwReadBytes);
        if (!bRet
            || dwReadBytes != dwLen)
        {
            pDlg->ShowErrMsg();
        }

        //进行坐标转换
        dwBulletX >>= 6;
        dwBulletX -= 4;
        dwBulletY >>= 6;
        dwBulletY -= 4;

        //再次转换
        if (dwBulletX < 0)
        {
            dwBulletX = 0;
        }

        if (dwBulletY < 0)
        {
            dwBulletY = 0;
        }

        //将飞机的坐标设为子弹的坐标
        memcpy(btXBuff, &dwBulletX, dwLen);
        memcpy(btYBuff, &dwBulletY, dwLen);

        //写入新的坐标
        bRet = WriteProcessMemory(hProcess, 
                                    (PVOID)PLANE_X_ADDR, 
                                    btXBuff,
                                   dwLen,
                                    &dwWrittenBytes);
        
        if (!bRet
            || dwWrittenBytes != dwLen
            )
        {
            pDlg->ShowErrMsg();
        }

        bRet = WriteProcessMemory(hProcess, 
                                (PVOID)PLANE_Y_ADDR, 
                                btYBuff,
                                dwLen,
                                &dwWrittenBytes);
            
        if (!bRet
            || dwWrittenBytes != dwLen
            )
        {
            pDlg->ShowErrMsg();
        }

//         bRet = ::WriteProcessMemory(hProcess, 
//                                     (PVOID)BULLETS_TOTAL_ADDR, 
//                                     &dwCount,
//                                     dwLen,
//                                     &dwWrittenBytes);
//         if (!bRet
//             || dwWrittenBytes != dwLen)
//         {
//             pDlg->ShowErrMsg();
//         }
    }

    CloseHandle(hProcess);

    return 0;
}

void CGameCheatDlg::SetAutoEscape()
{
    //关闭自动躲避，销毁线程
    if (!m_bAuto
        && m_pAutoThread != NULL)
    {
        delete m_pAutoThread;
        m_pAutoThread = NULL;
        return;
    }
    
    //应该开启线程来自动的移动位置
    m_pAutoThread = AfxBeginThread(AutoProc, this);

}
