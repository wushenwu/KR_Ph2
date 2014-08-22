// InjectDll.cpp : Defines the entry point for the DLL application.
//

#include "StdAfx.h"
#include <assert.h>

//////////////////////////////////////////////////////////////////////////
//���干�����ݶ�
#pragma data_seg("SHARE_WNDPROC")
    //���д��ھ�������̺�
    WNDPROC g_OldProc[1024] = {NULL};
    int g_nCount = 0;
    HWND g_hWnd[1024] = {NULL};

    MSG g_MSG = {0};
#pragma data_seg()

//�������ݶ�����
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

//�µĴ��ڹ��̺���
LRESULT CALLBACK WindowProc(  HWND hwnd,      // handle to window
                                UINT uMsg,      // message identifier
                                WPARAM wParam,  // first message parameter
                                LPARAM lParam   // second message parameter
                            )
{
    EnterCriticalSection(&g_cs);

    //��Msg���м��, �������¼������ж�дͬ��
    //����block �µ�reader, ���ȴ�ԭreader������
    ResetEvent(g_hMsgWriteEvent);
    WaitForSingleObject(g_hMsgReadEvent, INFINITE);

    dwTime = GetTickCount();
    MSG info = {hwnd, uMsg, wParam, lParam, dwTime, NULL};
    memcpy(&g_MSG, &info, sizeof(MSG));

    SetEvent(g_hMsgReadEvent);
    SetEvent(g_hMsgWriteEvent);
    
    //����hWnd����Ӧ����Ϣ������
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
���ڴ�ӳ���л�ȡ���ھ��
*/
void GetInjectWindow()
{
    //����ע�뷽��������д�빲�����ݡ������ھ��
    HANDLE hMap = ::OpenFileMapping(FILE_MAP_ALL_ACCESS, 
                                    FALSE, 
                                    "Inj3ct");
    if (NULL == hMap)
    {
        return;
    }

    //ӳ���ڴ�
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
    //Ҫ����clean up, �Դ��ڹ��̺������л�ԭ
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
    //�������"Զ��ע���߳�", ������ж�dll����ж��
    assert(g_hModule != NULL);
    
    //����"Զ��"�߳�
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
    //û��Ҫ�ٽ�����ؼ�飬������رղ���
}

BOOL ProcessAttach()
{
    GetInjectWindow();
    if (NULL == g_hMainWnd)
    {
        return FALSE;
    }
    
    //��鴰�ڿ��Ƿ�UNICODE
    g_bUnicode = IsWindowUnicode(g_hMainWnd);

    //dll��ֻ��exe���������¼��ȣ��ᴦ��
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
    //�Ըô��������Ӵ��ڽ��б�������������Ϣ���̺�����
    
    //��Ϣ���̺�����Ҫ�ٽ���ͬ��
    InitializeCriticalSection(&g_cs);
    
    g_nCount = 0;   //just for sure
    if (g_bUnicode)
    {
        //��Ҫ���������ڵ���Ϣ���̺������滻
        g_hWnd[g_nCount] = g_hMainWnd;
        g_OldProc[g_nCount] = (WNDPROC)::SetWindowLongW(g_hMainWnd, 
                                                        GWL_WNDPROC, 
                                                        (LONG)WindowProc);
        g_nCount++;
        
        EnumChildWindows(g_hMainWnd,  
                        EnumChildProc_Unicode, 
                        g_bUnicode); 

        //Ҳ�ɿ������ӶԸ����ڵ�����
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

        //Ҳ�ɿ������ӶԸ����ڵ�����
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
            //::MessageBox(NULL, "ProcessAttach ����", NULL, MB_OK);

            //��Ҳ������MySpy�Լ���������
            return TRUE;
        }

        ::MessageBox(NULL, "������", NULL, MB_OK);
    }
    else if (ul_reason_for_call == DLL_PROCESS_DETACH)
    {
        ProcessDetach();
    }

    return TRUE;
}

