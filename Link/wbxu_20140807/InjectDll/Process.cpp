#include "StdAfx.h"

#include <string.h>
#include <tchar.h>
#include <commctrl.h>   //对控件的处理
#include <Tlhelp32.h>
#include <Psapi.h>
#pragma comment(lib, "psapi.lib")

#include "resource.h"

extern HMODULE g_hModule;
extern HWND g_hCalc;

int g_nRecords = 0;

void InsertHeader(HWND hChild)
{
    TCHAR szHeaderInfo[] = TEXT("映像名称|进程ID|父进程ID|映像路径|");
    TCHAR seps[] = TEXT("|");
    TCHAR *token = NULL;

    int i = 0;
    LVCOLUMN lvc;
    lvc.mask = LVCF_TEXT | LVCF_WIDTH;
    lvc.cx   = 100;

    token =  _tcstok(szHeaderInfo, seps);
    while ( token != NULL)
    {
        lvc.pszText = token;
        SendMessage(hChild, LVM_INSERTCOLUMN, (WPARAM)i, (LPARAM)&lvc);

        token = _tcstok(NULL, seps);
        i++;
    }
}

void InsertRecord(TCHAR *pszRecord, HWND hChild)
{
    int i = 0;
    TCHAR *pszTaskInfo = pszRecord;
    TCHAR seps[] = TEXT("|");
    TCHAR *token = NULL;

    LVITEM lv;
    lv.mask = LVIF_TEXT;      
    lv.iItem = g_nRecords++; 
    
    token = _tcstok(pszTaskInfo, seps);
    while (token != NULL)
    {
        lv.pszText = token;
        lv.iSubItem = i;
        if (0 == i)
        {
            SendMessage(hChild, LVM_INSERTITEM, (WPARAM)0, (LPARAM)&lv);
        }
        else
        {
            SendMessage(hChild, LVM_SETITEMTEXT, (WPARAM)lv.iItem, (LPARAM)&lv);
        }
        
        i++;
        
        token = _tcstok( NULL, seps );
    } 
}

void Walk(HWND hChild)
{
    //对进程进行遍历，并插入到list view中
    HANDLE         hProcessSnap = NULL; 
    BOOL           bRet         = FALSE; 
    PROCESSENTRY32 pe32         = {0}; 
    TCHAR szRecord[MAX_PATH * 2]      = {0};
    TCHAR   szFullPath[MAX_PATH] = {0};
    HANDLE hProcess = NULL;

    g_nRecords = 0;
    
    hProcessSnap = CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);     
    if (INVALID_HANDLE_VALUE == hProcessSnap) 
    {
        return;
    }
    
    pe32.dwSize = sizeof(PROCESSENTRY32); 
    
    bRet = Process32First(hProcessSnap, &pe32);
    if (!bRet)
    {
        //不要忘记对句柄的处理
        goto ERROR_CLEAN;
    }
    
    do 
    {
        hProcess = OpenProcess(PROCESS_QUERY_INFORMATION | PROCESS_VM_READ, 
                                        FALSE,
                                        pe32.th32ProcessID);
        if (NULL == hProcess)
        {
            _tcscpy(szFullPath, "OpenProcess Error");
        }
        else
        {
            if (0 == GetModuleFileNameEx(hProcess, 
                                        NULL, 
                                        szFullPath, 
                                        MAX_PATH)
                )
            {
                _tcscpy(szFullPath, "GetPath Error");
            }
            
            CloseHandle(hProcess);
            hProcess = NULL;
        }
        
        wsprintf(szRecord, "%s|%d|%d|%s|", pe32.szExeFile,
                                pe32.th32ProcessID,
                                pe32.th32ParentProcessID,
                                szFullPath
                                );
        
        InsertRecord(szRecord, hChild);
        
    } while (Process32Next(hProcessSnap, &pe32));
    
ERROR_CLEAN:
    CloseHandle(hProcessSnap);
    hProcessSnap = NULL;
}

void InitListCtrl(HWND hwndDlg)
{
    HWND hChild = GetDlgItem(hwndDlg, IDC_PROCLST);
    
    //选中全行 
    SendMessage(hChild,
                LVM_SETEXTENDEDLISTVIEWSTYLE, 
                (WPARAM)LVS_EX_FULLROWSELECT, 
                (LPARAM)LVS_EX_FULLROWSELECT
                );

    //设置Coloum
    InsertHeader(hChild);

    //遍历进程，插入
    Walk(hChild);
}

INT_PTR CALLBACK ProcessWalkProc(
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
            //初始化控件，并插入数据
            InitListCtrl(hwndDlg);          
            break;
        }

    case WM_CLOSE:
        {
            EndDialog(hwndDlg, -1);
            break;
        }
        
    default:
        return FALSE;   //如果没有处理，则返回FALSE
    }
    
    return TRUE;
}

void ProcessWalk()
{
    DialogBox(g_hModule,
             MAKEINTRESOURCE(IDD_DIG_PROCLST),
             g_hCalc,
            (DLGPROC)ProcessWalkProc
            );
}
