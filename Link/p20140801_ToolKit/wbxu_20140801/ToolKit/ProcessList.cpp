// ProcessList.cpp : implementation file
//

#include "stdafx.h"
#include "ToolKit.h"
#include "ProcessList.h"
#include "ProcessModuleDlg.h"
#include "ProcessThreadDlg.h"
#include "ProcessWindowDlg.h"
#include "ProcessMemoryDlg.h"
#include "InjectDlg.h"

#include <Tlhelp32.h>
#include <Psapi.h>
#pragma comment(lib, "psapi.lib")

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CProcessList

CProcessList::CProcessList()
{
    m_nNonAccess = 0;
    m_nTotal = 0;

    m_dwPID = 0;
}

CProcessList::~CProcessList()
{
}

BEGIN_MESSAGE_MAP(CProcessList, CListCtrl)
	//{{AFX_MSG_MAP(CProcessList)
	ON_WM_RBUTTONDOWN()
	ON_COMMAND(IDM_PROCESS_REFRESH, OnProcessRefresh)
	ON_COMMAND(IDM_PROCESS_MODULE, OnProcessModule)
	ON_COMMAND(IDM_PROCESS_THREAD, OnProcessThread)
	ON_COMMAND(IDM_PROCESS_WINDOW, OnProcessWindow)
	ON_COMMAND(IDM_PROCESS_TERMINATE, OnProcessTerminate)
	ON_COMMAND(IDM_RROCESS_MEM, OnRrocessMem)
	ON_COMMAND(IDM_INJECT, OnInject)
	ON_NOTIFY_REFLECT(NM_CLICK, OnClickSelect)
	ON_NOTIFY_REFLECT(NM_RCLICK, OnRclick)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CProcessList message handlers

void CProcessList::OnRButtonDown(UINT nFlags, CPoint point) 
{
	// TODO: Add your message handler code here and/or call default
    CMenu menu;
    int nCount = GetSelectedCount();
    if (0 == nCount)
    {
        //右键弹出新建菜单
        menu.LoadMenu(IDR_MENU_PROCESS);
    }
    else
    {
        menu.LoadMenu(IDR_MENU_PROCESS);
    }
    
    //处理弹出菜单的坐标问题
    CMenu *pSubMenu = menu.GetSubMenu(0);
    GetCursorPos(&point);   //或者ClientToScreen(&point); 
    pSubMenu->TrackPopupMenu(TPM_LEFTALIGN, 
                            point.x, point.y, 
                            this);

	CListCtrl::OnRButtonDown(nFlags, point);
}

void CProcessList::Walk()
{
    //禁止重绘
    SetRedraw(FALSE);
    
    //////////////////////////////////////////////////////////////////////////
    //清理性工作
    DeleteAllItems();
    m_nNonAccess = 0;
    m_nTotal     = 0;
    //////////////////////////////////////////////////////////////////////////
    
    
    //对进程进行遍历，并插入到list view中
    HANDLE         hProcessSnap = NULL; 
    BOOL           bRet         = FALSE; 
    PROCESSENTRY32 pe32         = {0}; 
    CString str;
    TCHAR   szFullPath[MAX_PATH];
    HANDLE hProcess = NULL;
    
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
        //仅需最少、最必须的权限即可，否则可能失败
        hProcess = OpenProcess(PROCESS_QUERY_INFORMATION | PROCESS_VM_READ,
                                FALSE, 
                                pe32.th32ProcessID);
        if (NULL == hProcess)
        {
            m_nNonAccess++;
            //_tcscpy(szFullPath, "-");S
            _tcscpy(szFullPath, "Non-Process");
        }
        else
        {
            if (0 == GetModuleFileNameEx(hProcess, 
                                        NULL, 
                                        szFullPath, 
                                        MAX_PATH)
                )
            {
                m_nNonAccess++;
                _tcscpy(szFullPath, "Non-Process");
            }
            
            CloseHandle(hProcess);
        }
        
        str.Format("%s|%d|%d|%s", pe32.szExeFile,
            pe32.th32ProcessID,
            pe32.th32ParentProcessID,
            szFullPath
            );
        
        InsertRecord(str, szFullPath);
        
        m_nTotal++;
        
    } while (Process32Next(hProcessSnap, &pe32));
    
ERROR_CLEAN:
    CloseHandle(hProcessSnap);
    hProcessSnap = NULL;
    
    //开启重绘
    SetRedraw(TRUE);
    
    AutoSize();
    SetStatus();
}

void CProcessList::SetStatus()
{
    CWnd *pWnd = AfxGetMainWnd()->GetDlgItem(IDC_STATIC);
    if (NULL == pWnd)
    {
        return;
    }
    
    CString str;
    str.Format("进程: %d, 应用层不可访问进程: %d", m_nTotal, m_nNonAccess);
    pWnd->SetWindowText(str);
}

void CProcessList::OnProcessRefresh() 
{
	// TODO: Add your command handler code here
	Walk();
    SetStatus();
}

void CProcessList::OnProcessModule() 
{   
    //ASSERT(m_dwPID != 0);
    
    //dialog
    CProcessModuleDlg dlg;
    dlg.SetPID(m_dwPID);

    dlg.DoModal();
}

void CProcessList::OnProcessThread() 
{
    //ASSERT(m_dwPID != 0);
    
    //dialog
    CProcessThreadDlg dlg;
    dlg.SetPID(m_dwPID);
    
    dlg.DoModal();	
}

void CProcessList::OnProcessWindow() 
{
    //ASSERT(m_dwPID != 0);
    
    //dialog
    CProcessWindowDlg dlg;
    dlg.SetPID(m_dwPID);
    
    dlg.DoModal();	
	
}

void CProcessList::OnProcessTerminate() 
{
    //ASSERT(m_dwPID != 0);

    HANDLE hProcess = OpenProcess(PROCESS_ALL_ACCESS,
                                 FALSE,
                                 m_dwPID);
    if (NULL == hProcess)
    {
        return;
    }
    
    TerminateProcess(hProcess, 0);
    CloseHandle(hProcess);
    hProcess = NULL;

    //
    Walk();	
}

void CProcessList::OnRrocessMem() 
{   
    //ASSERT(m_dwPID != 0);

    //dialog
    CProcessMemoryDlg dlg;
    dlg.SetPID(m_dwPID);
    
    dlg.DoModal();
}

void CProcessList::OnInject() 
{
	// TODO: Add your command handler code here
	CInjectDlg dlg;

    dlg.DoModal();

}

void CProcessList::OnClickSelect(NMHDR* pNMHDR, LRESULT* pResult) 
{	
    GetSelectInfo();
    
	*pResult = 0;
}

void CProcessList::GetSelectInfo()
{
    //获取选中的信息
    int nCount = GetSelectedCount();
    if (nCount > 1)
    {
        return;
    }
    
    int nItem = GetNextItem(-1, LVNI_SELECTED);
    ASSERT(nItem != -1);
    
    TCHAR szPID[8];
    GetItemText(nItem, 1, szPID, 8);
    
    DWORD dwPID;
    dwPID = atoi(szPID);
    
    m_dwPID = dwPID;
}

void CProcessList::OnRclick(NMHDR* pNMHDR, LRESULT* pResult) 
{
	// TODO: Add your control notification handler code here
	GetSelectInfo();
	*pResult = 0;
}
