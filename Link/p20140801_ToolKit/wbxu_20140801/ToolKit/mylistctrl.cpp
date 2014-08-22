// mylistctrl.cpp : implementation file
//

#include "stdafx.h"
#include "ToolKit.h"
#include "mylistctrl.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CMyListCtrl

CMyListCtrl::CMyListCtrl()
{
}

CMyListCtrl::~CMyListCtrl()
{
}


BEGIN_MESSAGE_MAP(CMyListCtrl, CListCtrl)
	//{{AFX_MSG_MAP(CMyListCtrl)
	ON_WM_RBUTTONDOWN()
	ON_NOTIFY_REFLECT(HDN_ITEMCLICK, OnItemSort)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMyListCtrl message handlers

void CMyListCtrl::InitCtrl(CRect &rect, CWnd* pParentWnd, UINT nID)
{    
    Create(
            WS_CHILDWINDOW|WS_VISIBLE|WS_BORDER|WS_VSCROLL|WS_HSCROLL|WS_TABSTOP
            |LVS_REPORT,
            rect, 
            pParentWnd, 
            nID);
    
    //no old ext style yet
    SetExtendedStyle(WS_EX_LEFT|WS_EX_LTRREADING|WS_EX_RIGHTSCROLLBAR|WS_EX_CLIENTEDGE
        |LVS_EX_FULLROWSELECT | LVS_EX_GRIDLINES);


    m_ImgLst.Create(16, 16, ILC_COLOR32 | ILC_MASK, 0, 1);
    SetImageList(&m_ImgLst, LVSIL_SMALL);    
}

void CMyListCtrl::AutoSize()
{
    int nColumn = GetHeaderCtrl()->GetItemCount();
    for (int i = 0; i < nColumn; i++)
    {
        SetColumnWidth(i, LVSCW_AUTOSIZE_USEHEADER);
    }
}

void CMyListCtrl::InsertHeader(CString &strHeader)
{
    CString strSub;    
    for (int i = 0; ; i++)
    {
        if (!AfxExtractSubString(strSub, strHeader, i, '|'))
        {
            break;
        }
        InsertColumn(i, strSub);
    }

    AutoSize();
}

void CMyListCtrl::InsertRecord(CString &strRecord)
{    
    int nItems = 0;
    nItems = GetHeaderCtrl()->GetItemCount();
    
#define  USE_AFXSUB
#ifdef USE_AFXSUB
    
    CString strSub;
    AfxExtractSubString(strSub, strRecord, 0, '|');
    int nItem = InsertItem(nItems, strSub);
    
    for (int i = 1; ; i++)
    {
        if (!AfxExtractSubString(strSub, strRecord, i, '|'))
        {
            break;
        }
        SetItemText(nItem, i, strSub);
    }
    
#else
    
    TCHAR *pszTaskInfo = strRecord.GetBuffer(0);
    TCHAR seps[] = TEXT("|");
    TCHAR *token = NULL;
    
    // 插入第1列
    token = _tcstok(pszTaskInfo, seps);
    if (token != NULL)
    {
        InsertItem(nItems, token);
        token = _tcstok(NULL, seps);
    }
    
    //后续各列插入
    int nSub = 1;
    while (token != NULL)
    {
        SetItemText(nItems, nSub++, token);        
        token = _tcstok( NULL, seps );
    } 
#endif
}

void CMyListCtrl::InsertRecord(CString &strRecord, TCHAR *pszFullPath)
{
    //从exe中提取图标, 并加载
    HICON hIcon = ExtractIcon(NULL, pszFullPath, 0);

    if (NULL == hIcon)
    {
        hIcon = LoadIcon(NULL, IDI_WINLOGO);
    }

    int nIndex = m_ImgLst.Add(hIcon);

    int nItems = 0;
    nItems = GetHeaderCtrl()->GetItemCount();
    
#define  USE_AFXSUB
#ifdef USE_AFXSUB
    
    CString strSub;
    AfxExtractSubString(strSub, strRecord, 0, '|');
    int nItem = InsertItem(nItems, strSub, nIndex);
    
    for (int i = 1; ; i++)
    {
        if (!AfxExtractSubString(strSub, strRecord, i, '|'))
        {
            break;
        }
        SetItemText(nItem, i, strSub);
    }
    
#else
    
    TCHAR *pszTaskInfo = strRecord.GetBuffer(0);
    TCHAR seps[] = TEXT("|");
    TCHAR *token = NULL;
    
    // 插入第1列
    token = _tcstok(pszTaskInfo, seps);
    if (token != NULL)
    {
        InsertItem(nItems, token, nIndex);
        token = _tcstok(NULL, seps);
    }
    
    //后续各列插入
    int nSub = 1;
    while (token != NULL)
    {
        SetItemText(nItems, nSub++, token);        
        token = _tcstok( NULL, seps );
    } 
#endif
}

void CMyListCtrl::Walk()
{
    ASSERT(FALSE);
}

void CMyListCtrl::OnRButtonDown(UINT nFlags, CPoint point) 
{
	// TODO: Add your message handler code here and/or call default
	
	CListCtrl::OnRButtonDown(nFlags, point);
}

static int CALLBACK 
MyCompareProc(LPARAM lParam1, LPARAM lParam2, LPARAM lParamSort)
{
    // lParamSort contains a pointer to the list view control.
    // The lParam of an item is just its index.
    CListCtrl* pListCtrl = (CListCtrl*) lParamSort;
    CString    strItem1 = pListCtrl->GetItemText(lParam1, 0);
    CString    strItem2 = pListCtrl->GetItemText(lParam2, 0);
    
    return strcmp(strItem2, strItem1);
}



void CMyListCtrl::OnItemSort(NMHDR* pNMHDR, LRESULT* pResult) 
{
	HD_NOTIFY *phdn = (HD_NOTIFY *) pNMHDR;
	// TODO: Add your control notification handler code here

    SortItems(MyCompareProc, (DWORD)this);
	
	*pResult = 0;
}
