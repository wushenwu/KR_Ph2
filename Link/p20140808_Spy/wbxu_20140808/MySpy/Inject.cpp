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
                                        PAGE_READWRITE, //内存保护属性
                                        0,      //高32位
                                        0x1000, //低32位
                                        "Inj3ct");
    if (NULL == hMap)
    {
        return;
    }
    
    g_hMap = hMap;

    //映射内存
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

    //拷贝数据
    memcpy(lpBuff, &hWnd, sizeof(HWND));
    
    //取消映射
    //需等待dll处理完毕再关闭句柄
    //Inject中等待线程结束时完成
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
    
    
    //2.写入路径
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
    
    //创建远程线程
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
    
    //等待LoadLibrary执行完
    ::WaitForSingleObject(hThread, -1);
    
    //释放内存
    ::VirtualFreeEx(hProcess, lpBuff, nSize, MEM_DECOMMIT);
    
    //获取LoadLibrary的返回值
    DWORD hDll;
    ::GetExitCodeThread(hThread, &hDll);
    if (NULL == hDll)
    {
        ::MessageBox(NULL, "LoadLibrary失败", NULL, MB_OK);
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
