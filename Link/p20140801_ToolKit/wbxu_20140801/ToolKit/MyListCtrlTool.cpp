// MyListCtrlTool.cpp: implementation of the CMyListCtrlTool class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "ToolKit.h"
#include "MyListCtrlTool.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CMyListCtrlTool::CMyListCtrlTool()
{

}

CMyListCtrlTool::~CMyListCtrlTool()
{

}

void CMyListCtrlTool::AutoSize(CListCtrl &ctrl)
{
    int nColumn = ctrl.GetHeaderCtrl()->GetItemCount();
    for (int i = 0; i < nColumn; i++)
    {
        ctrl.SetColumnWidth(i, LVSCW_AUTOSIZE_USEHEADER);
    }
}

void CMyListCtrlTool::InitCtrl(CListCtrl &ctrl, CRect &rect, CWnd *pParentWnd, UINT nID)
{
    ctrl.Create(
                WS_CHILDWINDOW|WS_VISIBLE|WS_BORDER|WS_VSCROLL|WS_HSCROLL|WS_TABSTOP
                |LVS_REPORT,
                rect, 
                pParentWnd, 
                nID);
    
    //no old ext style yet
    ctrl.SetExtendedStyle(WS_EX_LEFT|WS_EX_LTRREADING|WS_EX_RIGHTSCROLLBAR|WS_EX_CLIENTEDGE
                            |LVS_EX_FULLROWSELECT | LVS_EX_GRIDLINES);
}

void CMyListCtrlTool::InsertHeader(CListCtrl &ctrl, CString &strHeader)
{
    CString strSub;    
    for (int i = 0; ; i++)
    {
        if (!AfxExtractSubString(strSub, strHeader, i, '|'))
        {
            break;
        }
        ctrl.InsertColumn(i, strSub);
    }
    
    AutoSize(ctrl);
}

void CMyListCtrlTool::InsertRecord(CListCtrl &ctrl, CString &strRecord)
{
    int nItems = 0;
    /*nItems = m_ProcessListCtrl.GetHeaderCtrl()->GetItemCount();*/
    
#define  USE_AFXSUB
#ifdef USE_AFXSUB
    
    CString strSub;
    AfxExtractSubString(strSub, strRecord, 0, '|');
    int nItem = ctrl.InsertItem(nItems, strSub);
    
    for (int i = 1; ; i++)
    {
        if (!AfxExtractSubString(strSub, strRecord, i, '|'))
        {
            break;
        }
        ctrl.SetItemText(nItem, i, strSub);
    }
    
#else
    
    TCHAR *pszTaskInfo = strRecord.GetBuffer(0);
    TCHAR seps[] = TEXT("|");
    TCHAR *token = NULL;
    
    // 插入第1列
    token = _tcstok(pszTaskInfo, seps);
    if (token != NULL)
    {
        ctrl.InsertItem(nItems, token);
        token = _tcstok(NULL, seps);
    }
    
    //后续各列插入
    int nSub = 1;
    while (token != NULL)
    {
        ctrl.SetItemText(nItems, nSub++, token);        
        token = _tcstok( NULL, seps );
    } 
#endif
}
