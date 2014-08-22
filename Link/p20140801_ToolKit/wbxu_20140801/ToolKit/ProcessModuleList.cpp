// ProcessModuleList.cpp : implementation file
//

#include "stdafx.h"
#include "ToolKit.h"
#include "ProcessModuleList.h"

#include <Tlhelp32.h>

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CProcessModuleList

CProcessModuleList::CProcessModuleList()
{
    m_dwPID = 0;
    m_nTotal = 0;
}

CProcessModuleList::~CProcessModuleList()
{
}


BEGIN_MESSAGE_MAP(CProcessModuleList, CListCtrl)
	//{{AFX_MSG_MAP(CProcessModuleList)
	ON_WM_RBUTTONDOWN()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CProcessModuleList message handlers

void CProcessModuleList::Walk()
{
    if (0 == m_dwPID)
    {
        return;
    }

    //禁止重绘
    SetRedraw(FALSE);
    
    //////////////////////////////////////////////////////////////////////////
    //清理性工作
    DeleteAllItems();
    m_nTotal = 0;
    
    //////////////////////////////////////////////////////////////////////////
    
    
    //对进程模块进行遍历，并插入到list view中
    HANDLE         hProcessSnap = NULL; 
    BOOL           bRet         = FALSE; 
    MODULEENTRY32 me32        = {0}; 
    CString str;
    
    hProcessSnap = CreateToolhelp32Snapshot(TH32CS_SNAPMODULE, m_dwPID);     
    if (INVALID_HANDLE_VALUE == hProcessSnap) 
    {
        return;
    }
    
    me32.dwSize = sizeof(MODULEENTRY32); 
    
    bRet = Module32First(hProcessSnap, &me32);
    if (!bRet)
    {
        //不要忘记对句柄的处理
        goto ERROR_CLEAN;
    }
    
    do 
    {
        str.Format("%s|0x%p|0x%p", me32.szExePath,
                               me32.modBaseAddr,
                               me32.modBaseSize);
        InsertRecord(str);

        m_nTotal++;
        
    } while (Module32Next(hProcessSnap, &me32));
    
ERROR_CLEAN:
    CloseHandle(hProcessSnap);
    hProcessSnap = NULL;
    
    //开启重绘
    SetRedraw(TRUE);
    
    AutoSize();    
}

void CProcessModuleList::OnRButtonDown(UINT nFlags, CPoint point) 
{
	// TODO: Add your message handler code here and/or call default
	
	CListCtrl::OnRButtonDown(nFlags, point);
}
