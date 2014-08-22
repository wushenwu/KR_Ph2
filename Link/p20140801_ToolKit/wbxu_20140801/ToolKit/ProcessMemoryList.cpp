// ProcessMemoryList.cpp : implementation file
//

#include "stdafx.h"
#include "ToolKit.h"
#include "ProcessMemoryList.h"

#include <Tlhelp32.h>

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CProcessMemoryList

CProcessMemoryList::CProcessMemoryList()
{
}

CProcessMemoryList::~CProcessMemoryList()
{
}


BEGIN_MESSAGE_MAP(CProcessMemoryList, CListCtrl)
	//{{AFX_MSG_MAP(CProcessMemoryList)
	ON_WM_RBUTTONDOWN()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CProcessMemoryList message handlers

void CProcessMemoryList::OnRButtonDown(UINT nFlags, CPoint point) 
{
	// TODO: Add your message handler code here and/or call default
	
	CListCtrl::OnRButtonDown(nFlags, point);
}

void CProcessMemoryList::Walk()
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
    
    
    HANDLE         hProcessSnap = NULL; 
    BOOL           bRet         = FALSE; 
    HEAPLIST32 hle32        = {0}; 
    HEAPENTRY32 he32        = {0};
    CString str;
    
    hProcessSnap = CreateToolhelp32Snapshot(TH32CS_SNAPHEAPLIST, m_dwPID);     
    if (INVALID_HANDLE_VALUE == hProcessSnap) 
    {
        return;
    }
    
    hle32.dwSize = sizeof(HEAPLIST32); 
    
    bRet = Heap32ListFirst(hProcessSnap, &hle32);
    if (!bRet)
    {
        //不要忘记对句柄的处理
        goto ERROR_CLEAN;
    }
    
    do 
    {
       he32.dwSize = sizeof(HEAPENTRY32);

       bRet = Heap32First(&he32, hle32.th32ProcessID, hle32.th32HeapID);
       if (!bRet)
       {
           continue;
       }

       do 
       {
            str.Format("0x%p|0x%p", he32.dwAddress, he32.dwBlockSize);

            InsertRecord(str);
       } while (Heap32Next(&he32));
        
    } while (Heap32ListNext(hProcessSnap, &hle32));
    
ERROR_CLEAN:
    CloseHandle(hProcessSnap);
    hProcessSnap = NULL;
    
    //开启重绘
    SetRedraw(TRUE);
    
    AutoSize();  
}
