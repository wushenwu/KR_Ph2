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
#include <commctrl.h>   //对控件的处理

#include "resource.h"
#include "FirstWindow_Notify.h"

#define MAX_LOADSTRING 100

HINSTANCE g_hInstance = NULL;
HWND g_hwndParent = NULL;
static int g_nCount = 0;

TCHAR szTitle[MAX_LOADSTRING]       = TEXT("MyFirstWindow");								// The title bar text
TCHAR szWindowClass[MAX_LOADSTRING] = TEXT("MyWndClass");								// The title bar text

//for List-View Control
int g_nColName = 10;
TCHAR g_szColName[10][16];
//int nflg = 0x0A;
tagInfoSet g_InfoFlg = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}; //(tagInfoSet &)nflg;//

int WINAPI
_tWinMain( HINSTANCE hInstance, 
          HINSTANCE hPrevInstance, 
          LPSTR lpCmdLine,          //使用TCHAR *为了获得A/W自适应处理
          int nShowCmd )
{
    g_hInstance = hInstance;

    //高级控件处理，同时要有comctl32.lib
    InitCommonControls();

    // Initialize global strings
    //LoadAllStrings();

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

    //加载快捷键
    HACCEL hAccel = LoadAccelerators(hInstance, MAKEINTRESOURCE(IDR_ACCELERATOR1));

    while ((bRet = GetMessage(&msg, NULL, 0, 0)) != 0)  //not WM_QUIT
    {
        if (-1 == bRet) //error
        {
            break;
        }
        
        //if translated, already processed, should not process again by TranslateMessage
        if (TranslateAccelerator(msg.hwnd, hAccel, &msg))
        {
            continue;
        }

        //translate virtual-key messages into character messages
        TranslateMessage(&msg);
        DispatchMessage(&msg);
        
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
                        hInstance,  //On XP, is ignored
                        NULL);

    if (1 == g_nCount)
    {
        g_hwndParent = hWnd;
    }
    
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
    //基本消息的处理: WM_CREATE, WM_CLOSE, WM_DESTROY
    case WM_CREATE:
        {
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
            if (0 == --g_nCount || g_hwndParent == hwnd)
            {
                 PostQuitMessage(0); //往线程队列投递WM_QUIT消息
            }
            break;
        } 

    case WM_PAINT:
        {
            PAINTSTRUCT ps;
            HDC hdc = BeginPaint(hwnd, &ps);
            if (NULL == hdc)
            {
                //do sth
                break;
            }

            RECT rc;
            GetClientRect(hwnd, &rc);   //获取客户端区域大小
            SetTextColor(ps.hdc, RGB(255, 0, 0));
            DrawText(ps.hdc,
                    TEXT("Hello World"),
                    _tcsclen(TEXT("Hello World")),
                    &rc,
                    DT_SINGLELINE | DT_CENTER | DT_VCENTER
                );

            EndPaint(hwnd, &ps);  

            break;
        }

    //对鼠标消息的处理: WM_LBUTTONDOWN, WM_LBUTTONUP等
    case WM_LBUTTONDOWN:
        {
            OutputDebugString(TEXT("WM_LBUTTONDOWN"));
            InitInstance(g_hInstance, SW_SHOWNORMAL, szWindowClass, szTitle);
            break;
        }

    case WM_LBUTTONUP:
        {
            OutputDebugString(TEXT("WM_LBUTTONUP"));
            break;
        }

    //处理Virtual-key Message
    case WM_KEYDOWN:
        {
            WPARAM VirtualKey = wParam;
            if (VK_F2 == VirtualKey)
            {
                OutputDebugString(TEXT("F2 Down"));

                CalcF2();
            }
            else if (VK_F3 == VirtualKey)
            {
                CalcF3();
            }
            else
            {
                VK2ASCII(hwnd, uMsg, wParam, lParam);
            }

            break;
        }

    case WM_CHAR:
        {
            TCHAR lpszBuff[MAXBYTE] = {0};
            wsprintf(lpszBuff, "WM_CHAR %c", wParam);
            OutputDebugString(lpszBuff); 
            break;
        }


    case WM_COMMAND:
        {
            OnCommand(hwnd, uMsg, wParam, lParam);
            break;
        }
    }
    
    return DefWindowProc(hwnd, uMsg, wParam, lParam);
}

INT_PTR CALLBACK MyDialogProc(
                            HWND hwndDlg,  // handle to dialog box
                            UINT uMsg,     // message
                            WPARAM wParam, // first message parameter
                            LPARAM lParam  // second message parameter
)
{
    switch (uMsg)
    {
    case WM_INITDIALOG:
        {
            //OutputDebugString(TEXT("WM_INITDIALG"));

            //初始化控件
            InitListBox(hwndDlg);
            InitListCtrl(hwndDlg);

            break;
        }

    case WM_COMMAND:
        if (lParam != NULL)
        {
            WORD wID            = LOWORD(wParam);
            WORD wNotifyCode    = HIWORD(wParam);

            if (IDOK == wID || IDCANCEL == wID)
            {
                EndDialog(hwndDlg, 0);
                break;
            }
            
            //处理来自控件的消息，
            //The Parent window of the List Box receives notification message through WM_COMMAND
            if (LBN_DBLCLK == wNotifyCode)
            {
                char szBuff[MAXBYTE];
                int nIndex = SendMessage((HWND)lParam, LB_GETCURSEL, 0, 0);
                SendMessage((HWND)lParam, LB_GETTEXT, (WPARAM)nIndex, (LPARAM)szBuff);
                MessageBox(NULL, szBuff, "ListBox", MB_OK); 
                break;
            }

            break;
        }

    //处理通告消息
    case WM_NOTIFY:
        {
            int idCtrl = (int) wParam; 
            LPNMHDR pnmh = (LPNMHDR) lParam;

            //List Box的消息传递不是通过WM_NOTIFY,所以没有效果
            if (LBN_DBLCLK == pnmh->code)
            {
                char szBuff[MAXBYTE];
                int nIndex = SendMessage((HWND)lParam, LB_GETCURSEL, 0, 0);
                SendMessage((HWND)lParam, LB_GETTEXT, (WPARAM)nIndex, (LPARAM)szBuff);
                MessageBox(NULL, szBuff, "ListBox", MB_OK); 
                break;
            }
            else if (LVN_ITEMCHANGED == pnmh->code )
            {
                LPNMLISTVIEW plv = (LPNMLISTVIEW)lParam;
                if (plv->uNewState)
                {
                    TCHAR szBuff[MAXBYTE];
                    wsprintf(szBuff, "Changed to %d", plv->iItem);
                    MessageBox(NULL, szBuff, NULL, MB_OK);
                }
                break;
            }
            
            break;
        }

    default:
        return FALSE;   //如果没有处理，则返回FALSE
    }

    return TRUE;
}

void
OnCommand(HWND hwnd, UINT uMsg,  WPARAM wParam, LPARAM lParam)
{
    WORD wNotifyCode = HIWORD(wParam); 
    WORD wID = LOWORD(wParam);          //identifier for menu, control, accelerator
    HWND hwndCtl = (HWND) lParam;

    //对菜单的处理：IDM_Exit, IDM_New, IDM_About
    if (IDM_Exit == wID)
    {
        SendMessage(hwnd, WM_CLOSE, NULL, NULL);
        //DestroyWindow(hwnd);
    }
    else if (IDM_New == wID)
    {
        CreateNewWindow();    
    }
    else if (IDM_About == wID)
    {
        DialogBox(g_hInstance,
                 MAKEINTRESOURCE(IDD_DIALOG1),
                 hwnd,
                 (DLGPROC)MyDialogProc
                 );
    }
   
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

void 
VK2ASCII(HWND hwnd, UINT uMsg,  WPARAM wParam, LPARAM lParam)
{
    UINT nVirtualKey = wParam;

    //获取键盘状态
    BYTE KeyState[256];
    if (0 == GetKeyboardState(KeyState))
    {
        //do sth
    }                
    
    //虚拟键转换Ascii
    UINT uScanCode = lParam >> 16 & 0xFF;//键盘扫描码
    
    WORD wChar;
    ToAscii(nVirtualKey, uScanCode, KeyState, &wChar, 0);
    
    CHAR lpszBuff[MAXBYTE] = {0};
    wsprintf(lpszBuff, "WM_KEYDOWN %c", wChar);
                OutputDebugString(lpszBuff);    

}

/*
lParam: 控件句柄， 不是控件为NULL
wParam: 
　　高16位：快捷键为1， 菜单为0， 也可能为控件通告码
　　低16位：快捷键的ID， 菜单的ID，也可能为控件的ID
*/
void 
CalcF2(void)
{
    //往计算器投递消息, 计算10 + 10 = ?  , 需处理控件
    HWND hWnd = FindWindow(NULL, "计算器");
    UINT aryCtrlID[] = {0x7D,   //  1
                        0x7C,   //  0
                        0x5C,   //  +
                        0x7D,   //  1
                        0x7C,   //  0
                        0x70    //  =
                        };

    if (NULL == hWnd)
    {
        return;
    }
    
    WPARAM wParam = NULL;
    LPARAM lParam = NULL;
    int nCount = sizeof(aryCtrlID) / sizeof(aryCtrlID[0]);
    for (int i = 0; i < nCount; i++)
    {
        wParam = BN_CLICKED << 16;   //控件通告码
        wParam += aryCtrlID[i];                     //控件ID
        PostMessage(hWnd, WM_COMMAND, wParam, lParam);
    }
}

/*
lParam: 控件句柄， 不是控件为NULL
wParam: 
　　高16位：快捷键为1， 菜单为0， 也可能为控件通告码
　　低16位：快捷键的ID， 菜单的ID，也可能为控件的ID

  WORD wNotifyCode = HIWORD(wParam); 
  WORD wID = LOWORD(wParam);          //identifier for menu, control, accelerator
  HWND hwndCtl = (HWND) lParam;
  
    //对菜单的处理：IDM_Exit, IDM_New, IDM_About
    if (IDM_Exit == wID)
*/
void 
CalcF3(void)
{
    //往计算器投递消息, 弹出关于信息， 需处理menu
    HWND hWnd = FindWindow(NULL, "计算器");

    WORD wNotifyCode = 0;       
    WORD wID = 302;             //identifier for menu, important
    HWND hwndCtl = (HWND)(~0);     //非控件

    LPARAM lParam = (LPARAM)hwndCtl;
    WPARAM wParam = (WPARAM)((wNotifyCode << 16) + wID);   
  
    PostMessage(hWnd, WM_COMMAND, wParam, lParam);
}

void InitListBox(HWND hwndDlg)
{
    //根据父窗口句柄，获取具体ID的控件句柄
    HWND hWnd = GetDlgItem(hwndDlg, IDC_LIST1);

    //向控件发送消息，让预封装的消息处理函数完成相应的功能。
    SendMessage(hWnd, LB_ADDSTRING, (WPARAM)0, (LPARAM)"武汉");
    SendMessage(hWnd, LB_ADDSTRING, (WPARAM)0, (LPARAM)"北京");
    SendMessage(hWnd, LB_ADDSTRING, (WPARAM)0, (LPARAM)"上海");
}

void InitListCtrl(HWND hwndDlg)
{
    HWND hChild = GetDlgItem(hwndDlg, IDC_LIST2);
    
    //选中全行 
    SendMessage(hChild, LVM_SETEXTENDEDLISTVIEWSTYLE, 
        (WPARAM)LVS_EX_FULLROWSELECT, 
        (LPARAM)LVS_EX_FULLROWSELECT);

    //根据显示字段，从资源中加载字符串
    LoadAllStrings();
    
    //根据显示字段，动态的添加字段
    LVCOLUMN lvc;
    lvc.mask = LVCF_TEXT | LVCF_WIDTH;
    lvc.cx   = 100;
    for (int i = 0; i < g_nColName; i++)
    {
        lvc.pszText = g_szColName[i];
        SendMessage(hChild, LVM_INSERTCOLUMN, (WPARAM)i, (LPARAM)&lvc);
    }

    TCHAR (*pszTaskInfo)[MAXBYTE] = NULL;
    int nCount = 0;
    GetTaskInfo(&pszTaskInfo, &nCount);

    //添加内容
    LVITEM lv;
    lv.mask = LVIF_TEXT;
    
    for (int j = 0; j < nCount; j++)    //插入的行数
    {
        //对pszTaskInfo[j] 进行字段分割，分别插入到列中
        TCHAR seps[] = TEXT(" ");
        TCHAR *token;
        int k = 0;

        lv.iItem = j; 

        token = _tcstok(pszTaskInfo[j], seps);
        while (token != NULL)
        {
            lv.pszText = token;
            lv.iSubItem = k;
            if (0 == k)
            {
                SendMessage(hChild, LVM_INSERTITEM, (WPARAM)0, (LPARAM)&lv);
            }
            else
            {
                SendMessage(hChild, LVM_SETITEMTEXT, (WPARAM)j, (LPARAM)&lv);
            }
            
            k++;

            token = _tcstok( NULL, seps );
        } //end for 插入列 
    }//end for 插入行

    if (pszTaskInfo != NULL)
    {
        delete[] pszTaskInfo;
        pszTaskInfo = NULL;
    }
}

void
LoadAllStrings(void)
{
    //Just a hack, do not do like this

    g_nColName = 0;
    for (int i = 0; i < 10; i++)
    {
        if ((int &)g_InfoFlg & (1 << i))
        {
            //LoadString(hInstance, IDS_STR_PID, szTitle, MAX_LOADSTRING);
            LoadString(g_hInstance, i + 1, g_szColName[i], 16);
            g_nColName++;
        }
    }
}

/*
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
*/
void
GetTaskInfo(TCHAR (**ppszTaskInfo)[MAXBYTE], int *pnCount)
{
    //Just for fun,
    tagTaskInfo tmp[10] = {
        {TEXT("System"), 4, TEXT("Admin"), 0, 50, 2048, 100, 50, 0, 0},
        {TEXT("explorer"), 1380, TEXT("Admin"), 0, 50, 2048, 100, 50, 0, 0},
        {TEXT("calc"), 1489, TEXT("Admin"), 0, 50, 2048, 100, 50, 0, 0},
        {TEXT("Notepad"), 1590, TEXT("Admin"), 0, 50, 2048, 100, 50, 0, 0},
        {TEXT("QQ"), 4989, TEXT("Admin"), 0, 50, 2048, 100, 50, 0, 0},
        {TEXT("WPS"), 5891, TEXT("Admin"), 0, 50, 2048, 100, 50, 0, 0},
        {TEXT("taskmgr"), 3767, TEXT("Admin"), 0, 50, 2048, 100, 50, 0, 0},
        {TEXT("wiz"), 1889, TEXT("Admin"), 0, 50, 2048, 100, 50, 0, 0},
        {TEXT("cmd"), 2389, TEXT("Admin"), 0, 50, 2048, 100, 50, 0, 0},
        {TEXT("tasklist"), 7896, TEXT("Admin"), 0, 50, 2048, 100, 50, 0, 0}
    };

    *pnCount = 10;

    TCHAR (*pszTaskInfo)[MAXBYTE] = new TCHAR[10][MAXBYTE];

    //根据g_InfoFlg填充相应的字段
    for (int i = 0; i < 10; i++)
    {
        pszTaskInfo[i][0] = '\0';
        if (g_InfoFlg.m_flgImage)
        {
            wsprintf(pszTaskInfo[i], "%s ", tmp[i].m_pszImageName);
        }

        if (g_InfoFlg.m_flgPID)
        {
            wsprintf(pszTaskInfo[i], "%s %d", pszTaskInfo[i], tmp[i].m_dwPID);
        }

        if (g_InfoFlg.m_flgUser)
        {
            wsprintf(pszTaskInfo[i], "%s %s", pszTaskInfo[i], tmp[i].m_pszUserName);
        }

        if (g_InfoFlg.m_flgSession)
        {
            wsprintf(pszTaskInfo[i], "%s %d", pszTaskInfo[i], tmp[i].m_dwSessionID);
        }

        if (g_InfoFlg.m_flgCPU)
        {
            wsprintf(pszTaskInfo[i], "%s %d", pszTaskInfo[i], tmp[i].m_dwCPU);
        }

        if (g_InfoFlg.m_flgMemory)
        {
            wsprintf(pszTaskInfo[i], "%s %dK", pszTaskInfo[i], tmp[i].m_dwMemory);
        }

        if (g_InfoFlg.m_flgHandle)
        {
            wsprintf(pszTaskInfo[i], "%s %d", pszTaskInfo[i], tmp[i].m_dwHandleCount);
        }

        if (g_InfoFlg.m_flgThread)
        {
            wsprintf(pszTaskInfo[i], "%s %d", pszTaskInfo[i], tmp[i].m_dwThreadCount);
        }

        if (g_InfoFlg.m_flgUsrObj)
        {
            wsprintf(pszTaskInfo[i], "%s %d", pszTaskInfo[i], tmp[i].m_dwUserObjects);
        }

        if (g_InfoFlg.m_flgGDIObj)
        {
            wsprintf(pszTaskInfo[i], "%s %d", pszTaskInfo[i], tmp[i].m_dwGDIObjects);
        }
    } 

    *ppszTaskInfo = pszTaskInfo;
}


