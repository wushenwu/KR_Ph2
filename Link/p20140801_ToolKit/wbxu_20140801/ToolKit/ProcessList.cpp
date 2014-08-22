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
        //�Ҽ������½��˵�
        menu.LoadMenu(IDR_MENU_PROCESS);
    }
    else
    {
        menu.LoadMenu(IDR_MENU_PROCESS);
    }
    
    //�������˵�����������
    CMenu *pSubMenu = menu.GetSubMenu(0);
    GetCursorPos(&point);   //����ClientToScreen(&point); 
    pSubMenu->TrackPopupMenu(TPM_LEFTALIGN, 
                            point.x, point.y, 
                            this);

	CListCtrl::OnRButtonDown(nFlags, point);
}

void CProcessList::Walk()
{
    //��ֹ�ػ�
    SetRedraw(FALSE);
    
    //////////////////////////////////////////////////////////////////////////
    //�����Թ���
    DeleteAllItems();
    m_nNonAccess = 0;
    m_nTotal     = 0;
    //////////////////////////////////////////////////////////////////////////
    
    
    //�Խ��̽��б����������뵽list view��
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
        //��Ҫ���ǶԾ���Ĵ���
        goto ERROR_CLEAN;
    }
    
    do 
    {
        //�������١�������Ȩ�޼��ɣ��������ʧ��
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
    
    //�����ػ�
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
    str.Format("����: %d, Ӧ�ò㲻�ɷ��ʽ���: %d", m_nTotal, m_nNonAccess);
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
    //��ȡѡ�е���Ϣ
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
