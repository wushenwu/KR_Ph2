#include <windows.h>
#include "StdAfx.h"

HANDLE g_hMap = NULL;
LPVOID g_lBuff = NULL;

void ShowErrorMessage()
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
    
    ::MessageBox( NULL, (LPCTSTR)lpMsgBuf, "Error", MB_OK | MB_ICONINFORMATION );
    
    LocalFree(lpMsgBuf);
}

void Say2Dll(HWND hWnd)
{
    HANDLE hMap  = ::CreateFileMapping(NULL, 
                                        NULL, 
                                        PAGE_READWRITE, //�ڴ汣������
                                        0,      //��32λ
                                        0x1000, //��32λ
                                        "Inj3ct");
    if (NULL == hMap)
    {
        return;
    }
    
    g_hMap = hMap;

    //ӳ���ڴ�
    LPVOID lpBuff = MapViewOfFile(hMap, 
                                FILE_MAP_ALL_ACCESS, 
                                0, 
                                0, 
                                0);
    
    if (NULL == lpBuff)
    {
        CloseHandle(hMap);
        hMap = NULL;
        return;
    }
    
    g_lBuff = lpBuff;

    //��������
    memcpy(lpBuff, &hWnd, sizeof(HWND));
    
    //ȡ��ӳ��
    //��ȴ�dll��������ٹرվ��
    //Inject�еȴ��߳̽���ʱ���
    //UnmapViewOfFile(lpBuff);
    //CloseHandle(hMap);

}


void Inject(DWORD dwPID, char *pszDLLPath, HWND hWnd)
{
    ASSERT(dwPID != 0);

    Say2Dll(hWnd);
    
    HANDLE hProcess = ::OpenProcess(PROCESS_CREATE_THREAD | PROCESS_QUERY_INFORMATION 
                                    | PROCESS_VM_OPERATION | PROCESS_VM_READ | PROCESS_VM_WRITE,
                                    FALSE,
                                    dwPID);
    
    int nSize = strlen(pszDLLPath) + 1;
    LPVOID lpBuff = ::VirtualAllocEx(hProcess, NULL, nSize, 
                                    MEM_COMMIT, 
                                    PAGE_READWRITE);
    if (NULL == lpBuff)
    {
        CloseHandle(hProcess);
        ShowErrorMessage();
        return;
    }
    
    
    //2.д��·��
    if (!::WriteProcessMemory(hProcess, 
        lpBuff, 
        pszDLLPath, 
        nSize, 
        NULL))
    {
        ::VirtualFreeEx(hProcess, lpBuff, nSize, MEM_DECOMMIT);
        CloseHandle(hProcess);
        ShowErrorMessage();
        return;
    }
    
    //����Զ���߳�
    HMODULE hModule = GetModuleHandle("kernel32.dll");
    LPTHREAD_START_ROUTINE pfnLoadLibrary =  (LPTHREAD_START_ROUTINE)
                                            GetProcAddress(hModule, "LoadLibraryA");
    HANDLE hThread = ::CreateRemoteThread(hProcess, NULL, 0, pfnLoadLibrary, 
                                    lpBuff, 0, NULL); 
    if (NULL == hThread)
    {
        ::VirtualFreeEx(hProcess, lpBuff, nSize, MEM_DECOMMIT);
        CloseHandle(hProcess);
        ShowErrorMessage();
        return;
    }
    
    //�ȴ�LoadLibraryִ����
    ::WaitForSingleObject(hThread, -1);
    
    //�ͷ��ڴ�
    ::VirtualFreeEx(hProcess, lpBuff, nSize, MEM_DECOMMIT);
    
    //��ȡLoadLibrary�ķ���ֵ
    DWORD hDll;
    ::GetExitCodeThread(hThread, &hDll);
    if (NULL == hDll)
    {
        ::MessageBox(NULL, "LoadLibraryʧ��", NULL, MB_OK);
    }
    
    if (g_hMap != NULL)
    {
        CloseHandle(g_hMap);
        g_hMap = NULL;
    }

    if (g_lBuff != NULL)
    {
        ::UnmapViewOfFile(g_lBuff);
        g_lBuff = NULL;

    }
    
    CloseHandle(hProcess);
    CloseHandle(hThread);
}
