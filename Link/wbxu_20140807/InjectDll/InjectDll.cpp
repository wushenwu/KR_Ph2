// InjectDll.cpp : Defines the entry point for the DLL application.
//

#include "stdafx.h"
#include <assert.h>

#include "resource.h"

//////////////////////////////////////////////////////////////////////////
WNDPROC g_pfnOld = NULL;
HWND g_hCalc = NULL;
BOOL g_bUnicode = FALSE;
HMODULE g_hModule = NULL;

#ifdef WIN7
    #define VK_FOR_8    0x8A
#else
    #define VK_FOR_8    0x84
#endif

#define  HOOK_HOME
#ifdef HOOK_HOME
    WNDPROC g_OldProc[1024] = {NULL};
    HWND g_hWnd[1024] = {NULL};
    int g_nCount = 0;

    CRITICAL_SECTION g_cs;
#endif

//菜单相关
#define MYMSG_FEATURE   (WM_USER + 1)
#define MYMSG_ABOUT     (WM_USER + 2)

int g_nMenus = 0;
HMENU g_hMenu = NULL;

void UnloadDLL();
void ProcessWalk();

INT_PTR CALLBACK DlgProc(
                            HWND hwndDlg,  // handle to dialog box
                            UINT uMsg,     // message
                            WPARAM wParam, // first message parameter
                            LPARAM lParam  // second message parameter
                            )
{
    if (WM_COMMAND == uMsg)
    {
        if (IDOK == wParam
            || IDCANCEL == wParam)
        {
            EndDialog(hwndDlg, -1);
            return TRUE;
        }
    }

    return FALSE;
}


//新的计算器过程函数
LRESULT CALLBACK WindowProc(  HWND hwnd,      // handle to window
                                UINT uMsg,      // message identifier
                                WPARAM wParam,  // first message parameter
                                LPARAM lParam   // second message parameter
                            )
{
#ifdef HOOK_HOME
    EnterCriticalSection(&g_cs);
#endif

    //0x84
    if (uMsg == WM_COMMAND)
    {
         WORD wNotifyCode = HIWORD(wParam); 
         WORD wID = LOWORD(wParam); 
         HWND hwndCtl = (HWND) lParam;
         if (hwndCtl != NULL)
         {
            if (VK_FOR_8 == wID 
                && BN_CLICKED == wNotifyCode)
            {
                ::MessageBox(NULL, "8 Clicked", "Inject", MB_OK);
            }
         }//控件
         else if (0 == wNotifyCode)
         {
            if (MYMSG_FEATURE == wID)
            {
                MessageBox(NULL, "FEATURE", NULL, MB_OK);
                DialogBox(g_hModule, 
                            MAKEINTRESOURCE(IDD_DIALOG1),
                            g_hCalc,
                            DLGPROC(DlgProc)
                            );
            }
            else if (MYMSG_ABOUT == wID)
            {
                MessageBox(NULL, "ABOUT", NULL, MB_OK);
            }
        }//menu
    }
    else if (WM_KEYDOWN == uMsg)
    {
        //::MessageBox(NULL, "WM_KEYUP", NULL, MB_OK); 

        //#define VK_HOME           0x24
        if (VK_HOME == wParam)
        {
            ::MessageBox(NULL, "Home", NULL, MB_OK);

            ProcessWalk();
        }
        else if ('8' == wParam)
        {
            UnloadDLL();
        }
    }    

#ifdef HOOK_HOME
    //查找hWnd所对应的消息处理函数
    for (int i = 0; i < g_nCount; i++)
    {
        if (hwnd == g_hWnd[i])
        {
            break;
        }
    }

    LRESULT lRet = g_OldProc[i](hwnd, uMsg, wParam, lParam);

    LeaveCriticalSection(&g_cs);
    return lRet;
#else
    return g_pfnOld(hwnd, uMsg, wParam, lParam);
#endif
}

#ifdef HOOK_HOME
//
BOOL CALLBACK EnumChildProc_Unicode(
                                    HWND hwnd,      // handle to child window
                                    LPARAM lParam   // application-defined value
                                    )
{
    g_hWnd[g_nCount] = hwnd;
    g_OldProc[g_nCount] = (WNDPROC)::SetWindowLongW(hwnd, GWL_WNDPROC, (LONG)WindowProc);
    g_nCount++;

    return TRUE;
}

BOOL CALLBACK EnumChildProc(
                            HWND hwnd,      // handle to child window
                            LPARAM lParam   // application-defined value
                            )
{
    g_hWnd[g_nCount] = hwnd;
    g_OldProc[g_nCount] = (WNDPROC)::SetWindowLongA(hwnd, GWL_WNDPROC, (LONG)WindowProc);
    g_nCount++;

    return TRUE;
}

void CleanUP_Unicode()
{
    for (int i = 0; i < g_nCount; i++)
    {
        ::SetWindowLongW(g_hWnd[i], GWL_WNDPROC, (LONG)g_OldProc[i]);
    }
}

void CleanUP()
{
    for (int i = 0; i < g_nCount; i++)
    {
        ::SetWindowLongA(g_hWnd[i], GWL_WNDPROC, (LONG)g_OldProc[i]);
    }
}
#endif  //end for HOOK_HOME

void GetInjectWindow()
{
    HANDLE hMap = ::OpenFileMapping(FILE_MAP_ALL_ACCESS, 
                                    FALSE, 
                                    "Inj3ct");
    if (NULL == hMap)
    {
        return;
    }

    //映射内存
    LPVOID lpBuff = MapViewOfFile(hMap, 
                                    FILE_MAP_ALL_ACCESS, 
                                    0, 
                                    0, 
                                    0x1000);

    TCHAR szWndName[MAXBYTE] = {0};

    if (lpBuff != NULL)
    {   
        strcpy(szWndName, (char*)lpBuff);

        UnmapViewOfFile(lpBuff);
    }
       
    CloseHandle(hMap);

    g_hCalc = ::FindWindow(NULL, szWndName);
    if (NULL == g_hCalc)
    {
        MessageBox(NULL, "FindWindow Error", NULL, MB_OK);
    }
}

void ProcessAttach()
{
#define FOR_COMMON
#ifdef FOR_COMMON

    GetInjectWindow();
    if (NULL == g_hCalc)
    {
        return;
    }

#else
    HWND hParent = ::FindWindow(NULL, "计算器");
    g_hCalc = hParent;
#endif
    
    ////检查窗口口是否UNICODE
    g_bUnicode = IsWindowUnicode(g_hCalc);
    
#ifdef HOOK_HOME
    //对进程所有窗口进行遍历，并更改消息过程函数。
    
    //消息过程函数需要临界区同步
    InitializeCriticalSection(&g_cs);
    
    if (g_bUnicode)
    {
        //不要忘记主窗口的消息过程函数的替换
        g_hWnd[g_nCount] = g_hCalc;
        g_OldProc[g_nCount] = (WNDPROC)::SetWindowLongW(g_hCalc, 
                                                        GWL_WNDPROC, 
                                                        (LONG)WindowProc);
        g_nCount++;
        
        EnumChildWindows(g_hCalc,  
                        EnumChildProc_Unicode, 
                        g_bUnicode); 
    }
    else
    {
        g_hWnd[g_nCount] = g_hCalc;
        g_OldProc[g_nCount] = (WNDPROC)::SetWindowLongA(g_hCalc, 
                                                        GWL_WNDPROC, 
                                                        (LONG)WindowProc);
        g_nCount++;
        
        EnumChildWindows(g_hCalc,  
                        EnumChildProc, 
                        g_bUnicode); 
    }       
    
#else 
    
    #ifdef WIN7
    g_hCalc = ::GetWindow(hParent, GW_CHILD);
    if (g_hCalc == NULL)
    {
        ::MessageBox(NULL, "没找到计算器", NULL, MB_OK);
        return TRUE;
    }
    
    #endif
    
    if (g_bUnicode)
    {
        //修改窗口过程函数
        g_pfnOld = (WNDPROC)::SetWindowLongW(g_hCalc, 
                                            GWL_WNDPROC, 
                                            (LONG)WindowProc);
    }
    else
    {
        //修改窗口过程函数
        g_pfnOld = (WNDPROC)::SetWindowLongA(g_hCalc,
                                            GWL_WNDPROC, 
                                            (LONG)WindowProc);
    }
#endif  //end for HOOK_HOME
}

void ProcessDetach()
{
    //要进行clean up
#ifdef HOOK_HOME
    if (g_bUnicode)
    {
        CleanUP_Unicode();
    }
    else
    {
        CleanUP();
    }
    
    DeleteCriticalSection(&g_cs);
#else
    if (g_bUnicode)
    {
        SetWindowLongW(g_hCalc, GWL_WNDPROC, (LONG)g_pfnOld);
    }
    else
    {
        SetWindowLongA(g_hCalc, GWL_WNDPROC, (LONG)g_pfnOld);
    }
    
#endif//end for Hook_Home
}

/*
向被注入进程添加额外的菜单
*/
void AddMenu()
{
    assert(g_hCalc != NULL);
    
    int nCount = 0;
    HMENU hMenu = NULL;
    HMENU hSubMenu = NULL;
    hMenu = GetMenu(g_hCalc);
    if (NULL == hMenu)
    {
        return;
    }

    if (g_bUnicode)
    {
        #define AppendMenu  AppendMenuW
        #define TEXT(quote) __TEXT(quote)   // r_winnt
    }
    else
    {
        #define AppendMenu  AppendMenuA
        #define __TEXT(quote) quote         
    }

    BOOL bRet = AppendMenu(hMenu,   
                            MF_POPUP | MF_STRING,
                            (UINT)hMenu,
                            TEXT("插件")
                            );
    if (!bRet)
    {
        goto ERROR_CLEAN;
    }

    nCount = GetMenuItemCount(hMenu);
    if (-1 == nCount)
    {
        goto ERROR_CLEAN;
    }

    //SAVE
    g_nMenus = nCount;
    g_hMenu = hMenu;

    hSubMenu = GetSubMenu(hMenu, nCount - 1);
    if (NULL == hSubMenu)
    {
        goto ERROR_CLEAN;
    }

    bRet = AppendMenu(hSubMenu, MF_STRING, MYMSG_FEATURE, TEXT("功能"));
    if (!bRet)
    {
        CloseHandle(hSubMenu);
        hSubMenu = NULL;
        goto ERROR_CLEAN;
    }

    bRet = AppendMenu(hSubMenu, MF_STRING, MYMSG_ABOUT, TEXT("关于"));
    if (!bRet)
    {
        CloseHandle(hSubMenu);
        hSubMenu = NULL;
        goto ERROR_CLEAN;
    }


    DrawMenuBar(g_hCalc);

    CloseHandle(hSubMenu);
    hSubMenu = NULL;

ERROR_CLEAN:
    CloseHandle(hMenu);
    hMenu = NULL;
    return;
}

void UnloadDLL()
{
    //向进程中"远程注入线程", 让其进行对dll进行卸载
    assert(g_hModule != NULL);
    
    //创建"远程"线程
    HMODULE hModule = GetModuleHandle("kernel32.dll");
    LPTHREAD_START_ROUTINE pfnFreeLibrary =  (LPTHREAD_START_ROUTINE)
                                             GetProcAddress(hModule,
                                                            "FreeLibrary");
    HANDLE hThread = ::CreateRemoteThread(GetCurrentProcess(), 
                                        NULL, 
                                        0, 
                                        pfnFreeLibrary, 
                                        g_hModule, 
                                        0, 
                                        NULL); 
    //没必要再进行相关检查，及句柄关闭操作
}

BOOL APIENTRY DllMain( HANDLE hModule, 
                       DWORD  ul_reason_for_call, 
                       LPVOID lpReserved
					 )
{
    g_hModule = (HMODULE)hModule;

    if (ul_reason_for_call == DLL_PROCESS_ATTACH)
    {
        ProcessAttach();

        AddMenu();

        ::MessageBox(NULL, "我来了", NULL, MB_OK);
    }
    else if (ul_reason_for_call == DLL_PROCESS_DETACH)
    {
        ProcessDetach();

        assert(g_hMenu != NULL);
        BOOL bRet = DeleteMenu(g_hMenu, g_nMenus - 1, MF_BYPOSITION);
        if (!bRet)
        {
            MessageBox(NULL, "DeleteMenu Failed!!", NULL, MB_OK);
        }

        ::MessageBox(NULL, "我走了", NULL, MB_OK);
    }

    return TRUE;
}

