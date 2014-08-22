// processDlg.cpp : implementation file
//

#include "stdafx.h"
#include "process.h"
#include "processDlg.h"

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
// CProcessDlg dialog

CProcessDlg::CProcessDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CProcessDlg::IDD, pParent)
{
	//{{AFX_DATA_INIT(CProcessDlg)
	m_dwPID = 0;
	m_strPath = _T("");
	//}}AFX_DATA_INIT
	// Note that LoadIcon does not require a subsequent DestroyIcon in Win32
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);

    m_hModule = NULL;
}

void CProcessDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	//{{AFX_DATA_MAP(CProcessDlg)
	DDX_Control(pDX, IDC_LIST_PROCESS, m_ctlProcess);
	DDX_Text(pDX, IDC_EDIT_PID, m_dwPID);
	DDX_Text(pDX, IDC_EDIT_PATH, m_strPath);
	//}}AFX_DATA_MAP
}

BEGIN_MESSAGE_MAP(CProcessDlg, CDialog)
	//{{AFX_MSG_MAP(CProcessDlg)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_BN_CLICKED(IDC_BTN_UPDATE, OnBtnUpdate)
	ON_BN_CLICKED(IDC_BTN_ENUM_WINDOW, OnBtnEnumWindow)
	ON_BN_CLICKED(IDC_BTN_ENUM_WINDOW2, OnBtnEnumWindow2)
	ON_NOTIFY(NM_DBLCLK, IDC_LIST_PROCESS, OnDblclkListProcess)
	ON_BN_CLICKED(IDC_BTN_PATH, OnBtnPath)
	ON_BN_CLICKED(IDC_BTN_INJECT, OnBtnInject)
	ON_BN_CLICKED(IDC_BTN_UNLOAD, OnBtnUnload)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CProcessDlg message handlers

BOOL CProcessDlg::OnInitDialog()
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
	

  InitListCtrl();

	return TRUE;  // return TRUE  unless you set the focus to a control
}

void CProcessDlg::OnSysCommand(UINT nID, LPARAM lParam)
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

void CProcessDlg::OnPaint() 
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
HCURSOR CProcessDlg::OnQueryDragIcon()
{
	return (HCURSOR) m_hIcon;
}

//初始化控件
void CProcessDlg::InitListCtrl()
{
  m_ctlProcess.Init("映像名称|进程ID|进程路径");
  m_ctlProcess.AutoSize();
  m_ImageList.Create(32, 32, ILC_COLOR32 | ILC_MASK, 0, 1);
  m_ctlProcess.SetImageList(&m_ImageList, LVSIL_SMALL);
}

#include <Tlhelp32.h>
#include <Psapi.h>
#pragma comment(lib, "Psapi.lib")
void CProcessDlg::OnBtnUpdate() 
{
  m_ctlProcess.DeleteAllItems();

  //禁止重绘
  m_ctlProcess.SetRedraw(FALSE);

  //进程快照
  HANDLE hSnap = CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  if (hSnap == INVALID_HANDLE_VALUE)
  {
    return;
  }

  PROCESSENTRY32 pe = {0};
  pe.dwSize = sizeof(pe);

  //获取第一个进程
  if (!Process32First(hSnap, &pe))
  {
    CloseHandle(hSnap);
    return;
  }

  do 
  {
    CString strFmt;
    char szPath[MAX_PATH] = {0};
    HICON hIcon = NULL;

    //获取进程路径
    HANDLE hProcess = OpenProcess(PROCESS_ALL_ACCESS, FALSE, pe.th32ProcessID);
    if (hProcess != NULL)
    {
      GetModuleFileNameEx(hProcess, NULL, szPath, sizeof(szPath));
      CloseHandle(hProcess);

      //提取图标
      hIcon = ExtractIcon(NULL, szPath, 0);
    }

    //默认图标
    if (hIcon == NULL)
    {
      hIcon = LoadIcon(NULL, IDI_WINLOGO);
    }

    //进程名称
    int nIndex = m_ImageList.Add(hIcon);
    int nItem = m_ctlProcess.InsertItem(m_ctlProcess.GetItemCount(), 
                                        pe.szExeFile, 
                                        nIndex);
    
    //进程ID
    strFmt.Format("%d", pe.th32ProcessID);
    m_ctlProcess.SetItemText(nItem, 1, strFmt);

    //进程路径
    m_ctlProcess.SetItemText(nItem, 2, szPath);

    DestroyIcon(hIcon);
  }
  while (Process32Next(hSnap, &pe));

  //自动调整大小
  m_ctlProcess.AutoSize();

  //开启重绘
  m_ctlProcess.SetRedraw(TRUE);

  CloseHandle(hSnap);
}


BOOL CALLBACK EnumWindowsProc(HWND hwnd,     
                              LPARAM lParam
)
{
  CProcessDlg *pDlg = (CProcessDlg*)lParam;

  //GetWindowThreadProcessId();

  CString strFmt;
  strFmt.Format("%p", hwnd);
  char szBuff[MAX_PATH];
  ::GetWindowText(hwnd, szBuff, sizeof(szBuff));
  strFmt += "|";
  strFmt += szBuff;

  pDlg->m_ctlProcess.Insert(strFmt);
  pDlg->m_ctlProcess.AutoSize();
  //return FALSE;  //返回false结束遍历
  return TRUE;
}

void CProcessDlg::OnBtnEnumWindow() 
{
  //遍历窗口
  m_ctlProcess.DeleteAllItems();
  EnumWindows(EnumWindowsProc, (LPARAM)this);
}

void CProcessDlg::OnBtnEnumWindow2() 
{
  //Z-order遍历
  CString strFmt;
  
  //从桌面开始遍历
  HWND hDesktop = ::GetDesktopWindow();
  strFmt.Format("%p", hDesktop);
  OutputDebugString(strFmt);
  
  HWND hChild = ::GetWindow(hDesktop, GW_CHILD);
  HWND hParent = hChild;
  
  while(hChild != NULL)
  {
    strFmt.Format("%p", hChild);
    OutputDebugString(strFmt);
    
    hChild = ::GetWindow(hParent, GW_HWNDNEXT);
    hParent = hChild;
  }
}

void CProcessDlg::OnDblclkListProcess(NMHDR* pNMHDR, LRESULT* pResult) 
{
    int nItem = m_ctlProcess.GetSelectionMark();
    if (nItem != LB_ERR)
    {
        char szBuff[MAXBYTE];
        m_ctlProcess.GetItemText(nItem, 1, szBuff, sizeof(szBuff));
        SetDlgItemText(IDC_EDIT_PID, szBuff);
    }

	*pResult = 0;
}


void CProcessDlg::ShowErrorMessage()
{
    LPVOID lpMsgBuf;
    FormatMessage( 
        FORMAT_MESSAGE_ALLOCATE_BUFFER | 
        FORMAT_MESSAGE_FROM_SYSTEM | 
        FORMAT_MESSAGE_IGNORE_INSERTS,
        NULL,
        ::GetLastError(),
        MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT), // Default language
        (LPTSTR) &lpMsgBuf,
        0,
        NULL 
        );
    // Process any inserts in lpMsgBuf.
    // ...
    // Display the string.
    ::MessageBox( NULL, (LPCTSTR)lpMsgBuf, "Error", MB_OK | MB_ICONINFORMATION );
    // Free the buffer
}

void CProcessDlg::OnBtnPath() 
{
    static char BASED_CODE szFilter[] = "dll Files (*.dll)|*.dll|All Files (*.*)|*.*||";

    CFileDialog dlg(TRUE, NULL, NULL, OFN_HIDEREADONLY | OFN_OVERWRITEPROMPT, szFilter);
    if (dlg.DoModal() == IDOK)
    {
        SetDlgItemText(IDC_EDIT_PATH, dlg.GetPathName());
    }
}

void CProcessDlg::OnBtnInject() 
{
    UpdateData(TRUE);
    if (m_dwPID == 0)
    {
        ShowErrorMessage();
        return;
    }
    if (m_strPath.IsEmpty())
    {
        ShowErrorMessage();
        return;
    }

    //打开进程
    //HANDLE hProcess = ::OpenProcess(PROCESS_ALL_ACCESS, FALSE, m_dwPID);
    HANDLE hProcess = ::OpenProcess(PROCESS_CREATE_THREAD | PROCESS_QUERY_INFORMATION 
                                    | PROCESS_VM_OPERATION | PROCESS_VM_READ | PROCESS_VM_WRITE,
                                    FALSE,
                                    m_dwPID);
    if (hProcess == NULL)
    {
        ShowErrorMessage();
        return;
    }

    //写入参数
    //1. 远程申请内存空间
    int nSize = m_strPath.GetLength() + 1;
    LPVOID lpBuff = ::VirtualAllocEx(hProcess, NULL, nSize, 
                                     MEM_COMMIT, PAGE_READWRITE);
    if (lpBuff == NULL)
    {
        CloseHandle(hProcess);
        ShowErrorMessage();
        return;
    }


    //2.写入路径
    if (!::WriteProcessMemory(hProcess, lpBuff, m_strPath.GetBuffer(0), nSize, NULL))
    {
        ::VirtualFreeEx(hProcess, lpBuff, nSize, MEM_DECOMMIT);
        CloseHandle(hProcess);
        ShowErrorMessage();
        return;
    }

    //创建远程线程
    HMODULE hModule = GetModuleHandle("kernel32.dll");
    LPTHREAD_START_ROUTINE pfnLoadLibrary =  (LPTHREAD_START_ROUTINE)GetProcAddress(hModule, "LoadLibraryA");
    HANDLE hThread = ::CreateRemoteThread(hProcess, NULL, 0, pfnLoadLibrary, 
                                          lpBuff, 0, NULL); 
    if (hThread == NULL)
    {
        ::VirtualFreeEx(hProcess, lpBuff, nSize, MEM_DECOMMIT);
        CloseHandle(hProcess);
        ShowErrorMessage();
        return;
    }

    //等待LoadLibrary执行完
    ::WaitForSingleObject(hThread, -1);

    //释放内存
    ::VirtualFreeEx(hProcess, lpBuff, nSize, MEM_DECOMMIT);

    //获取LoadLibrary的返回值
    DWORD hDll;
    ::GetExitCodeThread(hThread, &hDll);
    if (hDll == NULL)
    {
        AfxMessageBox("LoadLibrary失败");
    }
   
    m_hModule = (HMODULE)hDll;

    CloseHandle(hProcess);
    CloseHandle(hThread);
}

void CProcessDlg::OnBtnUnload() 
{
    //No need to UpdateData

    if (0 == m_dwPID
        || NULL == m_hModule)
    {
        AfxMessageBox("尚未进行注入");
        return;
    }
    
    //打开进程
    HANDLE hProcess = ::OpenProcess(PROCESS_ALL_ACCESS, FALSE, m_dwPID);
    if (NULL == hProcess)
    {
        ShowErrorMessage();
        return;
    }
    
    //创建远程线程
    HMODULE hModule = GetModuleHandle("kernel32.dll");
    LPTHREAD_START_ROUTINE pfnFreeLibrary =  (LPTHREAD_START_ROUTINE)
                                                GetProcAddress(hModule,
                                                              "FreeLibrary");
    HANDLE hThread = ::CreateRemoteThread(hProcess, 
                                            NULL, 
                                            0, 
                                            pfnFreeLibrary, 
                                            m_hModule, 
                                            0, 
                                            NULL); 
    if (NULL == hThread)
    {
        CloseHandle(hProcess);
        ShowErrorMessage();
        return;
    }
    
    //等待FreeLibrary执行完
    ::WaitForSingleObject(hThread, INFINITE);
    
    //获取FreeLibrary的返回值
    BOOL bRet;
    ::GetExitCodeThread(hThread, (LPDWORD)&bRet);
    if (!bRet)
    {
        AfxMessageBox("FreeLibrary失败");
    }
    
    CloseHandle(hProcess);
    CloseHandle(hThread);
}
