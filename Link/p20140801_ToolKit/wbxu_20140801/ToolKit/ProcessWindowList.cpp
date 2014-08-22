// ProcessWindowList.cpp : implementation file
//

#include "stdafx.h"
#include "ToolKit.h"
#include "ProcessWindowList.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CProcessWindowList

CProcessWindowList::CProcessWindowList()
{
    m_dwPID = 0;
    m_nTotal = 0;
}

CProcessWindowList::~CProcessWindowList()
{
}


BEGIN_MESSAGE_MAP(CProcessWindowList, CListCtrl)
	//{{AFX_MSG_MAP(CProcessWindowList)
	ON_WM_RBUTTONDOWN()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CProcessWindowList message handlers

void CProcessWindowList::OnRButtonDown(UINT nFlags, CPoint point) 
{
	// TODO: Add your message handler code here and/or call default
	
	CListCtrl::OnRButtonDown(nFlags, point);
}

BOOL CALLBACK EnumWindowsProc(HWND hwnd,     
                              LPARAM lParam
)
{
    CProcessWindowList *pList = (CProcessWindowList *)lParam;
    if (NULL == lParam)
    {
        return TRUE;
    }

    DWORD dwPID = 0;
    GetWindowThreadProcessId(hwnd, &dwPID);
    if (pList->m_dwPID != dwPID)
    {
        return TRUE;
    }

    CString str;
    str.Format("%p", hwnd);

    char szCaption[MAX_PATH];
    ::GetWindowText(hwnd, szCaption, MAX_PATH);
    str += "|";
    str += szCaption;

    ::GetClassName(hwnd, szCaption, MAX_PATH);
    str += "|";
    str += szCaption;

    //visual
    str += '|';
    str += '-';
    
    str += '|';
    
    GetWindowThreadProcessId(hwnd, &dwPID);

    CString strID;
    strID.Format("%d|", dwPID);
    str += strID;

    DWORD dwTID = ::GetWindowThreadProcessId(hwnd, NULL);
    strID.Format("%d|", dwTID);
    str += strID;

    pList->InsertRecord(str);

    pList->m_nTotal++;

    return TRUE;
}

void CProcessWindowList::Walk()
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

    EnumWindows(EnumWindowsProc,
                (LPARAM)this);

    SetRedraw(TRUE);
}
