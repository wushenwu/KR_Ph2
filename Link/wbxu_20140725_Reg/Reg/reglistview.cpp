// reglistview.cpp : implementation file
//

#include "stdafx.h"
#include "Reg.h"
#include "reglistview.h"
#include "RegDoc.h"
#include "regtreeview.h"

#include "ModifyValueDLG.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

TCHAR g_szREG[][32] = {
    "REG_NONE",
    "REG_SZ",
    "REG_EXPAND_SZ",
    "REG_BINARY",
    "REG_DWORD",
    "REG_DWORD_LITTLE_ENDIAN",
    "REG_DWORD_BIG_ENDIAN",
    "REG_LINK",
    "REG_MULTI_SZ"
};

CRegListView *g_pRegLstView;

/////////////////////////////////////////////////////////////////////////////
// CRegListView

IMPLEMENT_DYNCREATE(CRegListView, CListView)

CRegListView::CRegListView()
{
    //加载图片列表
    m_ImgList.Create(16, 16, ILC_COLOR32 | ILC_MASK, 0, 2);
    m_ImgList.Add(LoadIcon(AfxGetInstanceHandle(), 
                    MAKEINTRESOURCE(IDI_REG_SZ)));
    m_ImgList.Add(LoadIcon(AfxGetInstanceHandle(), 
                    MAKEINTRESOURCE(IDI_REG_DWORD)));

    memset(&m_UpdateInfo, 0, sizeof(m_UpdateInfo));

    g_pRegLstView = this;

}

CRegListView::~CRegListView()
{
}


BEGIN_MESSAGE_MAP(CRegListView, CListView)
	//{{AFX_MSG_MAP(CRegListView)
	ON_WM_RBUTTONDOWN()
	ON_COMMAND(IDM_NEWSZ, OnNewSZValue)
	ON_COMMAND(IDM_DELVALUE, OnDelValue)
	ON_COMMAND(IDM_NEWBI, OnNewbi)
	ON_COMMAND(IDM_NEWDWORD, OnNewdword)
	ON_COMMAND(IDM_MODIFYVALUE, OnModifyValue)
	ON_NOTIFY_REFLECT(NM_DBLCLK, OnDblclk)
	ON_COMMAND(IDM_NEWKEY, OnNewkey)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CRegListView drawing

void CRegListView::OnDraw(CDC* pDC)
{
	CDocument* pDoc = GetDocument();
	// TODO: add draw code here
}

/////////////////////////////////////////////////////////////////////////////
// CRegListView diagnostics

#ifdef _DEBUG
void CRegListView::AssertValid() const
{
	CListView::AssertValid();
}

void CRegListView::Dump(CDumpContext& dc) const
{
	CListView::Dump(dc);
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CRegListView message handlers

void CRegListView::OnInitialUpdate() 
{
	CListView::OnInitialUpdate();
	
	// TODO: Add your specialized code here and/or call the base class
    LONG lOld = GetWindowLong(GetSafeHwnd(), GWL_STYLE);
    SetWindowLong(GetSafeHwnd(),
        GWL_STYLE, 
        lOld 
        | WS_CHILDWINDOW| WS_VISIBLE | WS_CLIPCHILDREN | WS_HSCROLL | WS_VSCROLL |WS_TABSTOP 
        | LVS_REPORT| LVS_EDITLABELS | LVS_SHAREIMAGELISTS | LVS_ALIGNLEFT 
        | LVS_NOSORTHEADER
        );

    CListCtrl &ctrl = GetListCtrl();

    //设置extended style
    //ctrl.SetExtendedStyle(ctrl.GetExtendedStyle() | LVS_EX_TRACKSELECT);
   
    //设置header
    LVCOLUMN lvcol;
    lvcol.mask = LVCF_TEXT | LVCF_WIDTH;    
    lvcol.cx = 100;

    // Insert 4 columns in the header control.
    CString str;
    for (int i = 0; i < 3; i++)
    {   
        str.LoadString(IDS_LIST_HEAD_NAME + i);

        lvcol.pszText = str.GetBuffer(0);

        ctrl.InsertColumn(i, &lvcol);
    } 
}

void CRegListView::OnUpdate(CView* pSender, LPARAM lHint, CObject* pHint) 
{
	// TODO: Add your specialized code here and/or call the base class
    if (NULL == pHint)
    {
        return;
    }

    //获取所传递的信息
    CUpdateInfo *pUpdateInfo = (CUpdateInfo *)pHint;
    HKEY hKey = pUpdateInfo->hKey;
    LPCSTR lpSubKey = pUpdateInfo->lpSubKey;

    //记录当前选中的key
    m_UpdateInfo.hKey = pUpdateInfo->hKey;
    m_UpdateInfo.lpSubKey = pUpdateInfo->lpSubKey;

    HKEY hKeyResult;
    LONG lRet = RegOpenKey(hKey, lpSubKey, &hKeyResult);
    if (lRet != ERROR_SUCCESS)
    {
        return;
    }
    
    //获取SubKey, Value数量
    DWORD dwValues;
    DWORD dwKeys;
    lRet = RegQueryInfoKey(hKeyResult, 
                        NULL, NULL, NULL, 
                        &dwKeys, 
                        NULL, NULL,
                        &dwValues, 
                        NULL, NULL, NULL, NULL);
    if (lRet != ERROR_SUCCESS)
    {
        return;
    }
    
    //遍历值, 并设置List View
    CListCtrl &ctrl = GetListCtrl();
    ctrl.DeleteAllItems();

    ctrl.SetImageList(&m_ImgList, LVSIL_SMALL); //Style
    CString strFmt;

    for (DWORD i = 0; i < dwValues; i++)
    {
        char szValueName[MAXBYTE] = "\0";
        DWORD dwNameLen = MAXBYTE;
        DWORD dwType;
        BYTE szBuff[MAXBYTE] = "\0";
        DWORD dwLen = MAXBYTE;

        lRet = RegEnumValue(hKeyResult, 
                    i, 
                    szValueName,
                    &dwNameLen, 
                    NULL, 
                    &dwType, 
                    szBuff, 
                    &dwLen);

        if (lRet != ERROR_SUCCESS)
        {
            return;
        }

        LVITEM lv;
        lv.mask = LVIF_TEXT | LVIF_IMAGE;
        lv.iItem = i;

        lv.iSubItem = 0;  
        if (0 == _tcslen(szValueName))
        {
            lv.pszText = "(默认)";
        }
        else
        {
            lv.pszText = szValueName;
        }

        if (REG_BINARY == dwType
            || REG_DWORD == dwType)
        {
            //lst
            lv.iImage = 1;
            ctrl.InsertItem(&lv);

            //2nd
            lv.pszText = g_szREG[dwType];
            lv.iSubItem++;
            ctrl.SetItem(&lv);

            //3rd
            TCHAR sztext[MAXBYTE] = "0x";
            for (int i = dwLen - 1; i >= 0; i-- )
            {
                wsprintf(sztext, "%s%02x", sztext, szBuff[i]);
            }
            lv.pszText = sztext;
            lv.iSubItem++;
            ctrl.SetItem(&lv);
        }
        else
        {
            //1st
            lv.iImage = 0;
            ctrl.InsertItem(&lv);

            //2nd
            lv.pszText = g_szREG[dwType];
            lv.iSubItem++;
            ctrl.SetItem(&lv);

            //3rd
            lv.pszText = (char *)szBuff;
            lv.iSubItem++;
            ctrl.SetItem(&lv);
        }
    }

    //处理默认问题
    LVFINDINFO info;
    info.flags = LVFI_PARTIAL|LVFI_STRING;
    info.psz = "(默认)";
    if (-1 == ctrl.FindItem(&info))
    {
        LVITEM lv;
        lv.mask = LVIF_TEXT;
        lv.iItem = 0;

        lv.iSubItem = 0;
        lv.pszText = "(默认)";        
        ctrl.InsertItem(&lv);
        

        lv.iSubItem++;
        lv.pszText = "REG_SZ";
        ctrl.SetItem(&lv);

        lv.iSubItem++;
        lv.pszText = "(数值未设置)";
        ctrl.SetItem(&lv);
    }

    RegCloseKey(hKeyResult);	
}

void CRegListView::OnRButtonDown(UINT nFlags, CPoint point) 
{
	// TODO: Add your message handler code here and/or call default

    CListCtrl &ctrl = GetListCtrl();
    
    //根据选中的情况,动态的加载菜单
    CMenu menu;
    int nCount = ctrl.GetSelectedCount();
    if (0 == nCount)
    {
        //右键弹出新建菜单
        menu.LoadMenu(IDR_NONSEL);
    }
    else
    {
        menu.LoadMenu(IDR_SEL);
    }
    
    //处理弹出菜单的坐标问题
    CMenu *pSubMenu = menu.GetSubMenu(0);
    GetCursorPos(&point);   //或者ClientToScreen(&point); 
    pSubMenu->TrackPopupMenu(TPM_LEFTALIGN, 
                            point.x, point.y, 
                            this);
	
	CListView::OnRButtonDown(nFlags, point);
}

void CRegListView::OnNewSZValue() 
{
	// TODO: Add your command handler code here
    if (NULL == m_UpdateInfo.hKey)
    {
        return;
    }

    CListCtrl &ctrl = GetListCtrl();
    int nItems = ctrl.GetItemCount();

    //找到合适的“新值 #i”
    LVFINDINFO info;
    info.flags = LVFI_PARTIAL|LVFI_STRING;
    CString str;

    for (int i = 1; ; i++)
    {
        str.Format("新值 #%d", i);
        info.psz = str.GetBuffer(0);

        if (-1 == ctrl.FindItem(&info))
        {
            break;
        }
    }

    //这里是本view自己更新，有重复之嫌，也可以让CTreeView更新
    LVITEM lv;
    lv.mask = LVIF_TEXT;
    lv.iItem = nItems;
    
    lv.iSubItem = 0;
    lv.pszText = str.GetBuffer(0);        
    ctrl.InsertItem(&lv);
    
    lv.iSubItem++;
    lv.pszText = "REG_SZ";
    ctrl.SetItem(&lv);
    
    lv.iSubItem++;
    lv.pszText = "";
    ctrl.SetItem(&lv);

    //然后更新注册表的数据
    LONG lRet = RegSetValueEx(m_UpdateInfo.hKey,
                              str.GetBuffer(0),
                              0,
                              REG_SZ,
                              (BYTE *)"",
                              1
                              ); 

    if (lRet != ERROR_SUCCESS)
    {
        //do sth else
        return;
    }

    //ForceUpdate();
}

void CRegListView::OnDelValue() 
{
	// TODO: Add your command handler code here
	
    //可删除多个
    CListCtrl &ctrl = GetListCtrl();
    UINT uCount = ctrl.GetSelectedCount();
    int nItem = -1;

    TCHAR szValueName[MAXBYTE];

    //从试图中获取数据，更新注册表，再更新试图
    for (UINT i = 0; i < uCount; i++)
    {
        nItem = ctrl.GetNextItem(-1, LVNI_SELECTED);
        ASSERT(nItem != -1);

        ctrl.GetItemText(nItem, 0, szValueName, MAXBYTE);
        LONG lRet = RegDeleteValue(m_UpdateInfo.hKey,
                                    szValueName);
        if (lRet != ERROR_SUCCESS)
        {
            //do sth;
            AfxMessageBox("Delete Value Error");
            return;
        }  
        
        //ForceUpdate();

        ctrl.DeleteItem(nItem);
    }
    
}

void CRegListView::OnNewbi() 
{
	// TODO: Add your command handler code here
    AfxMessageBox("TBD");
	
}

void CRegListView::OnNewdword() 
{
	// TODO: Add your command handler code here
    AfxMessageBox("TBD");
}

void CRegListView::OnModifyValue() 
{
	// TODO: Add your command handler code here
	CListCtrl &ctrl = GetListCtrl();
    UINT nCount = ctrl.GetSelectedCount();
    if (nCount > 1)
    {
        return;
    }

    //获取选中的item的ValueName
    int nItem = ctrl.GetNextItem(-1, LVNI_SELECTED);
    ASSERT(nItem != -1);
    
    TCHAR szValueNAME[MAXBYTE];
    ctrl.GetItemText(nItem, 0, szValueNAME, MAXBYTE);

    TCHAR szValue[MAXBYTE];
    ctrl.GetItemText(nItem, 2, szValue, MAXBYTE);

    //Dialog处理
    CModifyValueDLG dlg;
    dlg.SetName(CString(szValueNAME));
    dlg.SetValue(CString(szValue));

    if (dlg.DoModal() != IDOK)
    {
        return;
    }

    CString str = dlg.GetValue(); 
    
    LONG lRet = RegSetValueEx(m_UpdateInfo.hKey,
                            szValueNAME,
                            0,
                            REG_SZ,  //TBD,
                            (BYTE *)str.GetBuffer(0),
                            str.GetLength()
                            );
    if (lRet != ERROR_SUCCESS)
    {
        AfxMessageBox("Modify Error");
        return;
    }
    
    //随后应该触发View的更新，没必要进行手动的视图数据插入。
    //ForceUpdate();

    LVITEM lv;
    lv.mask = LVIF_TEXT;
    lv.iItem = nItem;
    lv.iSubItem = 2;
    lv.pszText = str.GetBuffer(0);

    ctrl.SetItem(&lv);
}

void CRegListView::ForceUpdate()
{
    /*
    关于ForceUpdate, 其出发点是谁负责
    比如通过List View 添加Value, 或者Del Value, 或者Modify Value时，
    1) 注册表的更改是肯定的，Regxxx 操作
    2) 但是List View的显示更新，却有两种方案：
        a) List View中自己负责更新，有重复的嫌疑。
        b) 通知Tree View重新加载数据，这不会重复，但是涉及通信

     a), b)两种方案？
    */

    //通知TreeView进行视图的更新
    ((CRegDoc *)GetDocument())->UpdateAllViews(this, 0, &m_UpdateInfo);
}

void CRegListView::OnDblclk(NMHDR* pNMHDR, LRESULT* pResult) 
{
	// TODO: Add your control notification handler code here
    CListCtrl &ctrl = GetListCtrl();
    int nCount = ctrl.GetSelectedCount();
    if (0 == nCount)
    {
        return;
    }
    
    OnModifyValue();

	*pResult = 0;
}

void CRegListView::OnNewkey() 
{
	// TODO: Add your command handler code here
    if (NULL == g_pRegTreeView)
    {
        return;
    }

    g_pRegTreeView->OnNewkey();	
}
