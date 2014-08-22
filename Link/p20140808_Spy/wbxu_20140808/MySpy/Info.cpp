// ClassInfo.cpp: implementation of the CInfo class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "MySpy.h"
#include "Info.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CInfo::CInfo(HWND hWnd, CString &str)
:m_str(str)
{ 
    m_str.GetBufferSetLength(MAXBYTE);
    m_str.ReleaseBuffer();
    
    m_hWnd = hWnd;
}

CInfo::~CInfo()
{
    
}

void CInfo::GetClassName()
{
    ::GetClassName(m_hWnd, m_str.GetBuffer(0), MAXBYTE);
}

void CInfo::GetClassStyle()
{
    DWORD dwStyle = ::GetWindowLong(m_hWnd, GWL_STYLE);
    m_str.Format("%p",  dwStyle);   
}

void CInfo::GetClassAtom()
{
    DWORD dwAtom = ::GetClassLong(m_hWnd, GCW_ATOM);
    m_str.Format("%p",  dwAtom);    
}

void CInfo::GetWndHandle()
{
    m_str.Format("%p", m_hWnd);
}

void CInfo::GetWindowText()
{
    ::GetWindowText(m_hWnd, m_str.GetBuffer(0), MAXBYTE);
}

void CInfo::GetWndRect()
{
    CRect rect;
    ::GetWindowRect(m_hWnd, &rect);
    m_str.Format("(%d, %d)-(%d, %d) %d*%d", rect.left, rect.top, rect.right, rect.bottom,
                    rect.Width(), rect.Height());
}

void CInfo::GetClassBytes()
{
    DWORD dwBytes = ::GetClassLong(m_hWnd, GCL_CBCLSEXTRA);
    m_str.Format("%d", dwBytes);
}

void CInfo::GetWndBytes()
{
    DWORD dwBytes = ::GetClassLong(m_hWnd, GCL_CBWNDEXTRA);
    m_str.Format("%d", dwBytes);
}

void CInfo::GetMenuName()
{
    m_str.Format("%s", ::GetClassLong(m_hWnd, GCL_MENUNAME));
}

void CInfo::GetIconHandle()
{
    DWORD dwRet = ::GetClassLong(m_hWnd, GCL_HICON);
    m_str.Format("%p", dwRet);
}

void CInfo::GetCursorHandle()
{
    DWORD dwRet = ::GetClassLong(m_hWnd, GCL_HCURSOR);
    m_str.Format("%p", dwRet);
}


void CInfo::GetBkgBrush()
{
    DWORD dwRet = ::GetClassLong(m_hWnd, GCL_HBRBACKGROUND);
    m_str.Format("%p", dwRet);
}

void CInfo::GetInstanceHandle()
{
    DWORD dwRet = ::GetClassLong(m_hWnd, GCL_HMODULE);
    m_str.Format("%p", dwRet);
}

void CInfo::GetWndProc()
{
    DWORD dwRet = ::GetClassLong(m_hWnd, GCL_WNDPROC);
    m_str.Format("%p", dwRet);
}

void CInfo::GetClientRect()
{
    CRect rect;
    ::GetClientRect(m_hWnd, &rect);
    m_str.Format("(%d, %d)-(%d, %d) %d*%d", rect.left, rect.top, rect.right, rect.bottom,
                    rect.Width(), rect.Height());

}

void CInfo::GetWndStyle()
{
    LONG lRet = GetWindowLong(m_hWnd, GWL_STYLE);
    m_str.Format("%p", lRet);
}

void CInfo::GetWndExStyle()
{
    LONG lRet = ::GetWindowLong(m_hWnd, GWL_EXSTYLE);
    m_str.Format("%p", lRet);  
}

void CInfo::GetNextWnd()
{
    HWND hWnd = ::GetNextWindow(m_hWnd, GW_HWNDNEXT);
    m_str.Format("%p", hWnd);
}

void CInfo::GetPreWnd()
{
    HWND hWnd = ::GetNextWindow(m_hWnd, GW_HWNDPREV);
    m_str.Format("%p", hWnd);
}

void CInfo::GetParentWnd()
{
    HWND hWnd = ::GetParent(m_hWnd);
    m_str.Format("%p", hWnd);
}

BOOL CALLBACK EnumChildProc(
                            HWND hwnd,      // handle to child window
                            LPARAM lParam   // application-defined value
)
{
    CInfo *pobj = (CInfo *)lParam;
    pobj->m_hWnd = hwnd;
    return FALSE;   //1ST
}

void CInfo::Get1stChildWnd()
{
    ::EnumChildWindows(m_hWnd, EnumChildProc, (LPARAM)this);

   m_str.Format("%p", m_hWnd);
}

void CInfo::GetPID()
{
    DWORD dwPID;
    ::GetWindowThreadProcessId(m_hWnd, &dwPID);
    m_str.Format("%p", dwPID);
}

void CInfo::GetTID()
{
    DWORD dwTID = ::GetWindowThreadProcessId(m_hWnd, NULL);
    m_str.Format("%p", dwTID);
}
