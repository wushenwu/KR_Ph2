#ifndef FIRSTWINDOW_NOTIFY_H_F17A40DE_7C5D_417a_BEAA_5C1543B1613B

#define FIRSTWINDOW_NOTIFY_H_F17A40DE_7C5D_417a_BEAA_5C1543B1613B

/*
Function: registers a window class for subsequent use in calls to the CreateWindow or CreateWindowEx function. 
          by filling WNDCLASS and call RegisterClass
Return  : 0 for fails, otherwise a ATOM
*/
ATOM MyRegisterClass(HINSTANCE hInstance, TCHAR *pszWindowClass);

/*
Function: 创建，并显示窗口

Return  : TRUE for success, FALSE for failed
*/
BOOL InitInstance(HINSTANCE hInstance, int nCmdShow, TCHAR *pszWindowClass, TCHAR *pszTitle);

void CreateNewWindow(void);

/*
Function: Application-defined function that processes messages sent to a window
*/
LRESULT CALLBACK MyWndProc(HWND hwnd, UINT uMsg,  WPARAM wParam, LPARAM lParam);

//Dialog 消息处理函数
INT_PTR CALLBACK MyDialogProc(HWND hwndDlg, UINT uMsg, WPARAM wParam, LPARAM lParam);

//WM_COMMAND的处理
void OnCommand(HWND hwnd, UINT uMsg,  WPARAM wParam, LPARAM lParam);

void VK2ASCII(HWND hwnd, UINT uMsg,  WPARAM wParam, LPARAM lParam);

void CalcF2(void);
void CalcF3(void);

void InitListBox(HWND hwndDlg);
void InitListCtrl(HWND hwndDlg);

//从资源StringTable中加载字符串
void LoadAllStrings(void);

/* copy from resource
#define IDS_STR_IMAGENAME               1
#define IDS_STR_PID                     2
#define IDS_STR_USERNAME                3
#define IDS_STR_SESSIONID               4
#define IDS_STR_CPU                     5
#define IDS_STR_MEMORY                  6
#define IDS_STR_HANDLECOUNT             7
#define IDS_STR_THREADCOUNT             8
#define IDS_STR_USEROBJECTS             9
#define IDS_STR_GDIOBJECTS              10
*/
/*
List-View Control 相关
*/
typedef struct  
{
    TCHAR *m_pszImageName;
    DWORD m_dwPID;
    TCHAR *m_pszUserName;
    DWORD m_dwSessionID;
    DWORD m_dwCPU;
    DWORD m_dwMemory;
    DWORD m_dwHandleCount;
    DWORD m_dwThreadCount;
    DWORD m_dwUserObjects;
    DWORD m_dwGDIObjects;
}tagTaskInfo;

typedef struct  
{
    unsigned int m_flgImage:1;
    unsigned int m_flgPID  :1;
    unsigned int m_flgUser :1;
    unsigned int m_flgSession: 1;
    unsigned int m_flgCPU   :1;
    unsigned int m_flgMemory:1;
    unsigned int m_flgHandle:1;
    unsigned int m_flgThread:1;
    unsigned int m_flgUsrObj:1;
    unsigned int m_flgGDIObj:1;
}tagInfoSet;

void GetTaskInfo(TCHAR (**ppszTaskInfo)[MAXBYTE], int *pnCount);


#endif