// InjectDll.cpp : Defines the entry point for the DLL application.
//

#include "StdAfx.h"
#include <assert.h>

//////////////////////////////////////////////////////////////////////////
//定义共享数据段
#pragma data_seg("SHARE_WNDPROC")
    //所有窗口句柄及过程函
    WNDPROC g_OldProc[1024] = {NULL};
    int g_nCount = 0;
    HWND g_hWnd[1024] = {NULL};

    MSG g_MSG = {0};
#pragma data_seg()

//设置数据段焓粜
#pragma comment(linker, "/SECTION:SHARE_WNDPROC,RWS")

//////////////////////////////////////////////////////////////////////////
static HMODULE g_hModule = NULL;
static HWND g_hMainWnd = NULL;
static BOOL g_bUnicode = FALSE;
static HANDLE g_hMsgReadEvent = NULL;
static HANDLE g_hMsgWriteEvent = NULL;
static HANDLE g_hMsgEvent[2] = {0};

CRITICAL_SECTION g_cs;

static DWORD dwTime;

//新的窗口过程函数
LRESULT CALLBACK WindowProc(  HWND hwnd,      // handle to window
                                UINT uMsg,      // message identifier
                                WPARAM wParam,  // first message parameter
                                LPARAM lParam   // second message parameter
                            )
{
    EnterCriticalSection(&g_cs);

    //对Msg进行监控, 并利用事件，进行读写同步
    //首先block 新的reader, 并等待原reader结束读
    ResetEvent(g_hMsgWriteEvent);
    WaitForSingleObject(g_hMsgReadEvent, INFINITE);

    dwTime = GetTickCount();
    MSG info = {hwnd, uMsg, wParam, lParam, dwTime, NULL};
    memcpy(&g_MSG, &info, sizeof(MSG));

    SetEvent(g_hMsgReadEvent);
    SetEvent(g_hMsgWriteEvent);
    
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
}

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

/*
从内存映射中获取窗口句柄
*/
void GetInjectWindow()
{
    //已由注入方创建，并写入共享数据——窗口句柄
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

    HWND hWnd = NULL;
    if (lpBuff != NULL)
    {   
        memcpy(&hWnd, lpBuff, sizeof(HWND));

        UnmapViewOfFile(lpBuff);
    }       
    //ASSERT(hWnd != NULL);
    g_hMainWnd = hWnd;

    CloseHandle(hMap);
}

void ProcessDetach()
{
    //要进行clean up, 对窗口过程函数进行还原
    if (g_bUnicode)
    {
        CleanUP_Unicode();
    }
    else
    {
        CleanUP();
    }

    if (g_hMsgReadEvent != NULL)
    {
        CloseHandle(g_hMsgReadEvent);
        g_hMsgReadEvent = NULL;
    }
    
    DeleteCriticalSection(&g_cs);
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

BOOL ProcessAttach()
{
    GetInjectWindow();
    if (NULL == g_hMainWnd)
    {
        return FALSE;
    }
    
    //检查窗口口是否UNICODE
    g_bUnicode = IsWindowUnicode(g_hMainWnd);

    //dll中只打开exe所创建的事件等，轻处理
    g_hMsgReadEvent = OpenEvent(EVENT_ALL_ACCESS,
                            FALSE,
                            "Inj3ct_MSGREAD");
    if (NULL == g_hMsgReadEvent)
    {
        ::MessageBox(NULL, "Inj3ct_MSGREAD NOT Exist", NULL, MB_OK);
    }

    g_hMsgWriteEvent = OpenEvent(EVENT_ALL_ACCESS,
                                    FALSE,
                                    "Inj3ct_MSGWRITE");
    if (NULL == g_hMsgWriteEvent)
    {
        ::MessageBox(NULL, "Inj3ct_MSGWRITE NOT Exist", NULL, MB_OK);
    }

    g_hMsgEvent[0] = g_hMsgReadEvent;
    g_hMsgEvent[1] = g_hMsgWriteEvent;
    
    //////////////////////////////////////////////////////////////////////////
    //对该窗口所有子窗口进行遍历，并更改消息过程函数。
    
    //消息过程函数需要临界区同步
    InitializeCriticalSection(&g_cs);
    
    g_nCount = 0;   //just for sure
    if (g_bUnicode)
    {
        //不要忘记主窗口的消息过程函数的替换
        g_hWnd[g_nCount] = g_hMainWnd;
        g_OldProc[g_nCount] = (WNDPROC)::SetWindowLongW(g_hMainWnd, 
                                                        GWL_WNDPROC, 
                                                        (LONG)WindowProc);
        g_nCount++;
        
        EnumChildWindows(g_hMainWnd,  
                        EnumChildProc_Unicode, 
                        g_bUnicode); 

        //也可考虑增加对父窗口的拦截
    }
    else
    {
        g_hWnd[g_nCount] = g_hMainWnd;
        g_OldProc[g_nCount] = (WNDPROC)::SetWindowLongA(g_hMainWnd, 
                                                        GWL_WNDPROC, 
                                                        (LONG)WindowProc);
        g_nCount++;
        
        EnumChildWindows(g_hMainWnd,  
                            EnumChildProc, 
                            g_bUnicode); 

        //也可考虑增加对父窗口的拦截
    }
    
    return TRUE;
}

BOOL APIENTRY DllMain( HANDLE hModule, 
                       DWORD  ul_reason_for_call, 
                       LPVOID lpReserved
					 )
{
    g_hModule = (HMODULE)hModule;

    if (ul_reason_for_call == DLL_PROCESS_ATTACH)
    {
        if (!ProcessAttach())
        {
            //::MessageBox(NULL, "ProcessAttach 错误", NULL, MB_OK);

            //但也可能是MySpy自己主动调用
            return TRUE;
        }

        ::MessageBox(NULL, "我来了", NULL, MB_OK);
    }
    else if (ul_reason_for_call == DLL_PROCESS_DETACH)
    {
        ProcessDetach();
    }

    return TRUE;
}

