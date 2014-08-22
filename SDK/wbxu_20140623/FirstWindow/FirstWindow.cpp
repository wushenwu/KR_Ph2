/*
窗口程序设计流程：
1.WinMain函数
2.设计、注册窗口类
3.创建并显示窗口
4.消息循环
5.编写过程函数
*/

#include <windows.h>
#include <tchar.h>

#include "resource.h"

#define MAX_LOADSTRING 100

HINSTANCE g_hInstance = NULL;
static int g_nCount = 0;

TCHAR szTitle[MAX_LOADSTRING]       = TEXT("MyFirstWindow");								// The title bar text
TCHAR szWindowClass[MAX_LOADSTRING] = TEXT("MyWndClass");								// The title bar text

ATOM MyRegisterClass(HINSTANCE hInstance, TCHAR *pszWindowClass);

BOOL InitInstance(HINSTANCE hInstance, int nCmdShow, TCHAR *pszWindowClass, TCHAR *pszTitle);

LRESULT CALLBACK MyWndProc(HWND hwnd, UINT uMsg,  WPARAM wParam, LPARAM lParam);

void CreateNewWindow(void);


int WINAPI
_tWinMain( HINSTANCE hInstance, 
          HINSTANCE hPrevInstance, 
          TCHAR *lpCmdLine,          //使用TCHAR *为了获得A/W自适应处理
          int nShowCmd )
{
    g_hInstance = hInstance;

    //设计、注册窗口类
    if (0 == MyRegisterClass(hInstance, szWindowClass))
    {
        DWORD dwError = GetLastError();
        MessageBox(NULL, TEXT("MyRegisterClass Error"), TEXT("Error"), MB_OK);
        return -1;
    }

    //创建并显示窗口
    if (FALSE == InitInstance(hInstance, nShowCmd, szWindowClass, szTitle))
    {
        DWORD dwError = GetLastError();
        MessageBox(NULL, TEXT("InitInstance Error"), TEXT("Error"), MB_OK);
        return -1;
    }

    //消息循环
    MSG msg;
    BOOL bRet;
    while ((bRet = GetMessage(&msg, NULL, 0, 0)) != 0)  //not WM_QUIT
    {
        if (-1 == bRet) //error
        {
            break;
        }
        else    
        {
            DispatchMessage(&msg);
        }
    }

    return 0;
}

/*
Function: registers a window class for subsequent use in calls to the CreateWindow or CreateWindowEx function. 
          by filling WNDCLASS and call RegisterClass
Return  : 0 for fails, otherwise a ATOM
*/
ATOM MyRegisterClass(HINSTANCE hInstance, TCHAR *pszWindowClass)
{
    WNDCLASS wc = {0};

    wc.style            = CS_VREDRAW | CS_HREDRAW; 
    wc.lpfnWndProc      = MyWndProc;                //窗口过程函数, a pointer to your WindowProc callback function
    wc.cbClsExtra       = 0;
    wc.cbWndExtra       = 0;
    wc.hInstance        = hInstance;                //Handle to the instance that contains the window procedure for the class
    wc.hIcon            = LoadIcon(NULL, IDI_WINLOGO);  //图标
    wc.hCursor          = LoadCursor(NULL, IDC_ARROW);  //光标
    wc.hbrBackground    = (HBRUSH)(COLOR_WINDOW + 1);         //背景颜色
    wc.lpszMenuName     = MAKEINTRESOURCE(IDR_MENU1); 
    wc.lpszClassName    = pszWindowClass;
    
    return RegisterClass(&wc);
}

/*
Function: 创建，并显示窗口

Return  : TRUE for success, FALSE for failed
*/
BOOL InitInstance(HINSTANCE hInstance, int nCmdShow, TCHAR *pszWindowClass, TCHAR *pszTitle)
{
    HWND hWnd;
    
    hWnd = CreateWindow(pszWindowClass,            //registered class name
                        pszTitle,                  //window title
                        WS_OVERLAPPEDWINDOW,
                        CW_USEDEFAULT, 
                        0, 
                        CW_USEDEFAULT, 
                        0, 
                        NULL, 
                        NULL, 
                        hInstance, 
                        NULL);
    
    if (NULL == hWnd)
    {
        return FALSE;
    }
    
    ShowWindow(hWnd, nCmdShow);
    UpdateWindow(hWnd);
    
    return TRUE;
}

/*
Function: Application-defined function that processes messages sent to a window
*/
LRESULT CALLBACK MyWndProc(
                            HWND hwnd,      // handle to window
                            UINT uMsg,      // message identifier
                            WPARAM wParam,  // first message parameter
                            LPARAM lParam   // second message parameter
)
{
    switch(uMsg)
    {
    case WM_CREATE:
        {
            //MessageBox(NULL, _T("WM_CREATE"), NULL, MB_OK);
            g_nCount++;
            break;       
        }
        
    case WM_CLOSE:
        {
            if (IDNO == MessageBox(NULL, _T("是否退出程序"), NULL, MB_YESNO) 
                )
            {
                return TRUE;
            }

            break;
        }
        
    case WM_DESTROY:
        {
            //MessageBox(NULL, _T("WM_DESTROY"), NULL, MB_OK);
            if (0 == --g_nCount)
            {
                 PostQuitMessage(0); //往线程队列投递WM_QUIT消息
            }
            break;
        } 

    case WM_COMMAND:
        {
            WORD wNotifyCode = HIWORD(wParam); 
            WORD wID = LOWORD(wParam); 
            HWND hwndCtl = (HWND) lParam;
            //MessageBox(NULL, _T("WM_COMMAND"), NULL, MB_OK);
            if (IDM_Exit == wID)
            {
                SendMessage(hwnd, WM_CLOSE, NULL, NULL);
            }
            else if (IDM_New == wID)
            {
                CreateNewWindow();    
            }

            break;
        }
    }
    
    return DefWindowProc(hwnd, uMsg, wParam, lParam);
}

void
CreateNewWindow(void)
{    
    //创建并显示窗口
    if (FALSE == InitInstance(g_hInstance, SW_SHOWNORMAL, szWindowClass, szTitle))
    {
        DWORD dwError = GetLastError();
        MessageBox(NULL, TEXT("InitInstance Error"), TEXT("Error"), MB_OK);
        return;
    }
}


