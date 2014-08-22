// InjectDll.cpp : Defines the entry point for the DLL application.
//

#include "stdafx.h"

WNDPROC g_pfnOld = NULL;
HWND g_hCalc = NULL;
BOOL g_bUnicode = FALSE;

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
         }
    }
    else if (WM_KEYDOWN == uMsg)
    {
        //::MessageBox(NULL, "WM_KEYUP", NULL, MB_OK); 

        //#define VK_HOME           0x24
        if (VK_HOME == wParam)
        {
            ::MessageBox(NULL, "Home", NULL, MB_OK);
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

BOOL APIENTRY DllMain( HANDLE hModule, 
                       DWORD  ul_reason_for_call, 
                       LPVOID lpReserved
					 )
{
    if (ul_reason_for_call == DLL_PROCESS_ATTACH)
    {
        HWND hParent = ::FindWindow(NULL, "计算器");
        g_hCalc = hParent;

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

            EnumChildWindows(hParent,  
                            EnumChildProc_Unicode, 
                            g_bUnicode); 
        }
        else
        {
            g_hWnd[g_nCount] = g_hCalc;
            g_OldProc[g_nCount] = (WNDPROC)::SetWindowLongA(g_hCalc, GWL_WNDPROC, (LONG)WindowProc);
            g_nCount++;

            EnumChildWindows(hParent,  
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
            g_pfnOld = (WNDPROC)::SetWindowLongW(g_hCalc, GWL_WNDPROC, (LONG)WindowProc);
        }
        else
        {
            //修改窗口过程函数
            g_pfnOld = (WNDPROC)::SetWindowLongA(g_hCalc, GWL_WNDPROC, (LONG)WindowProc);
        }
#endif  //end for HOOK_HOME
        
        ::MessageBox(NULL, "我来了", NULL, MB_OK);
    }
    else if (ul_reason_for_call == DLL_PROCESS_DETACH)
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

        ::MessageBox(NULL, "我走了", NULL, MB_OK);
    }

    return TRUE;
}

