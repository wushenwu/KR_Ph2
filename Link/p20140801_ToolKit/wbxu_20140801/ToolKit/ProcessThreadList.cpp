// ProcessThreadList.cpp : implementation file
//

#include "stdafx.h"
#include "ToolKit.h"
#include "ProcessThreadList.h"

#include <Tlhelp32.h>

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CProcessThreadList

CProcessThreadList::CProcessThreadList()
{
    m_dwPID = 0;
    m_nTotal = 0;
}

CProcessThreadList::~CProcessThreadList()
{
}


BEGIN_MESSAGE_MAP(CProcessThreadList, CListCtrl)
	//{{AFX_MSG_MAP(CProcessThreadList)
	ON_WM_RBUTTONDOWN()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CProcessThreadList message handlers

void CProcessThreadList::Walk()
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
    m_nTotal     = 0;
    //////////////////////////////////////////////////////////////////////////
    
    
    //对进程进行遍历，并插入到list view中
    HANDLE         hProcessSnap = NULL; 
    BOOL           bRet         = FALSE; 
    THREADENTRY32 te32         = {0}; 
    CString str;
   
    /*
    th32ProcessID 
    [in] Specifies the process identifier. 
    This parameter can be zero to indicate the current process.
    This parameter is used when the TH32CS_SNAPHEAPLIST or TH32CS_SNAPMODULE 
            value is specified. 
     Otherwise, it is ignored. 
    */
    hProcessSnap = CreateToolhelp32Snapshot(TH32CS_SNAPTHREAD, 0);     
    if (INVALID_HANDLE_VALUE == hProcessSnap) 
    {
        return;
    }
    
    te32.dwSize = sizeof(THREADENTRY32); 
    
    bRet = Thread32First(hProcessSnap, &te32);
    if (!bRet)
    {
        //不要忘记对句柄的处理
        goto ERROR_CLEAN;
    }
    
    do 
    {
        if (te32.th32OwnerProcessID != m_dwPID)
        {
            continue;
        }

        str.Format("%d|-|-|-|", te32.th32ThreadID,
                                 te32.tpBasePri);

        InsertRecord(str);

        m_nTotal++;
        
    } while (Thread32Next(hProcessSnap, &te32));
    
ERROR_CLEAN:
    CloseHandle(hProcessSnap);
    hProcessSnap = NULL;
    
    //开启重绘
    SetRedraw(TRUE);
    
    AutoSize();
}

void CProcessThreadList::OnRButtonDown(UINT nFlags, CPoint point) 
{
	// TODO: Add your message handler code here and/or call default
	
	CListCtrl::OnRButtonDown(nFlags, point);
}
