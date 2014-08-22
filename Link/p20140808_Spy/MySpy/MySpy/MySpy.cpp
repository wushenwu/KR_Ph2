// MySpy.cpp : Defines the class behaviors for the application.
//

#include "stdafx.h"
#include "MySpy.h"

#include "MainFrm.h"
#include "MessageFrm.h"
#include "MessageDoc.h"
#include "MessageView.h"

#include "WindowDoc.h"
#include "WindowFrame.h"
#include "WindowView.h"

#include "Info.h"


#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CMySpyApp

BEGIN_MESSAGE_MAP(CMySpyApp, CWinApp)
	//{{AFX_MSG_MAP(CMySpyApp)
	ON_COMMAND(ID_APP_ABOUT, OnAppAbout)
	//ON_COMMAND(IDM_WND, OnNewWnd)
	//}}AFX_MSG_MAP
	// Standard file based document commands
	ON_COMMAND(ID_FILE_NEW, CWinApp::OnFileNew)
	ON_COMMAND(ID_FILE_OPEN, CWinApp::OnFileOpen)
	// Standard print setup command
	ON_COMMAND(ID_FILE_PRINT_SETUP, CWinApp::OnFilePrintSetup)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMySpyApp construction

CMySpyApp::CMySpyApp()
{
	// TODO: add construction code here,
	// Place all significant initialization in InitInstance
    
    m_pghWnd = NULL;
    m_pgMSG = NULL;
    m_pgnCount = NULL;
    m_pgOldProc = NULL;

    m_hMsgReadEvent = NULL;
    m_hMsgWriteEvent = NULL;

#if 1   //ugly， 但是比较通用，可容纳GetCurrentDirectory所得不含exe的情况
    CString strExePath;
    GetModuleFileName(NULL, strExePath.GetBuffer(0), MAX_PATH);
    int i = strExePath.ReverseFind('\\');
    
    strncpy(m_szDllPath, strExePath.GetBuffer(0), i + 1);
    m_szDllPath[i + 1] = '\0';
    strcat(m_szDllPath, "InjectDll.dll");
#else

    GetCurrentDirectory(MAX_PATH, m_szDllPath);
    _tcscat(m_szDllPath, "\\InjectDll.dll");
#endif
}

/////////////////////////////////////////////////////////////////////////////
// The one and only CMySpyApp object

CMySpyApp theApp;

/////////////////////////////////////////////////////////////////////////////
// CMySpyApp initialization

BOOL CMySpyApp::InitInstance()
{
	AfxEnableControlContainer();

	// Standard initialization
	// If you are not using these features and wish to reduce the size
	//  of your final executable, you should remove from the following
	//  the specific initialization routines you do not need.

#ifdef _AFXDLL
	Enable3dControls();			// Call this when using MFC in a shared DLL
#else
	Enable3dControlsStatic();	// Call this when linking to MFC statically
#endif

	// Change the registry key under which our settings are stored.
	// TODO: You should modify this string to be something appropriate
	// such as the name of your company or organization.
	SetRegistryKey(_T("Local AppWizard-Generated Applications"));

	LoadStdProfileSettings();  // Load standard INI file options (including MRU)

	// Register the application's document templates.  Document templates
	//  serve as the connection between documents, frame windows and views.

	CMultiDocTemplate* pDocTemplate;
	pDocTemplate = new CMultiDocTemplate(
		IDR_MYSPYTYPE,
		RUNTIME_CLASS(CMessageDoc),
		RUNTIME_CLASS(CMessageFrame), // custom MDI child frame
		RUNTIME_CLASS(CMessageView));
	AddDocTemplate(pDocTemplate);

#if 0
    CMultiDocTemplate* pWindowTemplate;
    pWindowTemplate = new CMultiDocTemplate(
        IDR_WINDOW,
        RUNTIME_CLASS(CWindowDoc),
        RUNTIME_CLASS(CWindowFrame), // custom MDI child frame
        RUNTIME_CLASS(CWindowView));
	AddDocTemplate(pWindowTemplate);
#endif

	// create main MDI Frame window
	CMainFrame* pMainFrame = new CMainFrame;
	if (!pMainFrame->LoadFrame(IDR_MAINFRAME))
		return FALSE;
	m_pMainWnd = pMainFrame;

#if 0
	// Parse command line for standard shell commands, DDE, file open
	CCommandLineInfo cmdInfo;
	ParseCommandLine(cmdInfo);

	// Dispatch commands specified on the command line
	if (!ProcessShellCommand(cmdInfo))
		return FALSE;
#endif

	// The main window has been initialized, so show and update it.
	pMainFrame->ShowWindow(m_nCmdShow);
	pMainFrame->UpdateWindow();

    //可以在一开始就为dll创建事件等所需资源, 并获取相关数据地址
    Prepare4Dll();
    
	return TRUE;
}


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
		// No message handlers
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

// App command to run the dialog
void CMySpyApp::OnAppAbout()
{
	CAboutDlg aboutDlg;
	aboutDlg.DoModal();
}

/////////////////////////////////////////////////////////////////////////////
// CMySpyApp message handlers
void CMySpyApp::NewMsgWnd()
{
    // Searches template list for a document type
    // containing the "Hello" string
    
    POSITION curTemplatePos = GetFirstDocTemplatePosition();
    
    while(curTemplatePos != NULL)
    {
        CDocTemplate* curTemplate =
            GetNextDocTemplate(curTemplatePos);
        CString str;
        curTemplate->GetDocString(str, CDocTemplate::docName);
        if(str == _T("MySpy"))
        {
            curTemplate->OpenDocumentFile(NULL);
            return;
        }
    }
}

#if 0
void CMySpyApp::OnNewWnd() 
{
    POSITION curTemplatePos = GetFirstDocTemplatePosition();
    
    while(curTemplatePos != NULL)
    {
        CDocTemplate* curTemplate =
            GetNextDocTemplate(curTemplatePos);
        CString str;
        curTemplate->GetDocString(str, CDocTemplate::docName);
        if(str == _T("Window"))
        {
            curTemplate->OpenDocumentFile(NULL);
            return;
        }
    }
}
#endif

void CMySpyApp::Prepare4Dll()
{
#pragma comment(lib, "..\\InjectDll\\Debug\\InjectDll.lib")
__declspec(dllimport) WNDPROC g_OldProc[1024];
__declspec(dllimport) HWND g_hWnd[1024];
__declspec(dllimport) int g_nCount;
__declspec(dllimport) MSG g_MSG;

    m_pghWnd = &g_hWnd[0];
    m_pgMSG = &g_MSG;
    m_pgnCount = &g_nCount;
    m_pgOldProc = &g_OldProc[0];

    //为MSG的读写创建事件
    m_hMsgReadEvent = CreateEvent(NULL, 
                                FALSE, //自动
                                FALSE,   //Nonsignal
                                "Inj3ct_MSGREAD");

    if (NULL == m_hMsgReadEvent)
    {
        CInfo::ShowErrorMessage();
    }

    m_hMsgWriteEvent = CreateEvent(NULL, 
                                FALSE, //自动
                                FALSE,   //Nonsignal
                                "Inj3ct_MSGWRITE");

    if (NULL == m_hMsgWriteEvent)
    {
        CInfo::ShowErrorMessage();
    }
}
