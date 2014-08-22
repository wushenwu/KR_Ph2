// regtreeview.cpp : implementation file
//

#include "stdafx.h"
#include "Reg.h"
#include "regtreeview.h"

#include "MainFrm.h"
#include "RegDoc.h"
#include "reglistview.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CRegTreeView
HKEY g_HKEY[] = {
    HKEY_CLASSES_ROOT,
    HKEY_CURRENT_CONFIG,
    HKEY_CURRENT_USER,
    HKEY_LOCAL_MACHINE,
    HKEY_USERS
};

TCHAR g_szKEY[][32] = {
    "HKEY_CLASSES_ROOT",
    "HKEY_CURRENT_CONFIG",
    "HKEY_CURRENT_USER",
    "HKEY_LOCAL_MACHINE",
    "HKEY_USERS"
};

TCHAR g_szSubKey[MAXBYTE];

IMPLEMENT_DYNCREATE(CRegTreeView, CTreeView)

CRegTreeView *g_pRegTreeView;

CRegTreeView::CRegTreeView()
{
    g_pRegTreeView = this;
}

CRegTreeView::~CRegTreeView()
{
}


BEGIN_MESSAGE_MAP(CRegTreeView, CTreeView)
	//{{AFX_MSG_MAP(CRegTreeView)
	ON_NOTIFY_REFLECT(TVN_SELCHANGED, OnSelchanged)
	ON_WM_RBUTTONDOWN()
	ON_COMMAND(IDM_NEWSZ, OnNewSZValue)
	ON_COMMAND(IDM_NEWBI, OnNewBIValue)
	ON_COMMAND(IDM_NEWDWORD, OnNewdword)
	ON_COMMAND(IDM_NEWKEY, OnNewkey)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CRegTreeView drawing

void CRegTreeView::OnDraw(CDC* pDC)
{
	CDocument* pDoc = GetDocument();
	// TODO: add draw code here
}

/////////////////////////////////////////////////////////////////////////////
// CRegTreeView diagnostics

#ifdef _DEBUG
void CRegTreeView::AssertValid() const
{
	CTreeView::AssertValid();
}

void CRegTreeView::Dump(CDumpContext& dc) const
{
	CTreeView::Dump(dc);
}

CRegDoc* CRegTreeView::GetDocument() // non-debug version is inline
{
    ASSERT(m_pDocument->IsKindOf(RUNTIME_CLASS(CRegDoc)));
    return (CRegDoc*)m_pDocument;
}
#endif //_DEBUG

//////////////////////////////////////////////////////////////////////////
// Reg相关
/*
LONG RegOpenKey(
    HKEY hKey,        // handle to open key
    LPCTSTR lpSubKey, // name of subkey to open
    PHKEY phkResult   // handle to open key
    );

  LONG RegQueryInfoKey ( 
      HKEY hKey, 
      LPWSTR lpClass, 
      LPDWORD lpcbClass, 
      LPDWORD lpReserved, 
      LPDWORDlpcSubKeys, 
      LPDWORD lpcbMaxSubKeyLen, 
      LPDWORD lpcbMaxClassLen, 
      LPDWORD lpcValues, 
      LPDWORD lpcbMaxValueNameLen, 
      LPDWORD lpcbMaxValueLen, 
      LPDWORD lpcbSecurityDescriptor, 
      PFILETIME lpftLastWriteTime ); 

  LONG RegEnumKeyEx(
      HKEY hKey,                  // handle to key to enumerate
      DWORD dwIndex,              // subkey index
      LPTSTR lpName,              // subkey name
      LPDWORD lpcName,            // size of subkey buffer
      LPDWORD lpReserved,         // reserved
      LPTSTR lpClass,             // class string buffer
      LPDWORD lpcClass,           // size of class string buffer
      PFILETIME lpftLastWriteTime // last write time
      );

*/
static int g_nCount = 0;

void 
CRegTreeView::EnumKey(HKEY hKey, LPCTSTR lpSubKey, HTREEITEM hParent, CTreeCtrl& treeCtrl,
                      BOOL IsActive)
{
    if (treeCtrl.ItemHasChildren(hParent))
    {
        return;
    }

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
    
#if 0
    //先将视图中的SubKeys删除
    if (treeCtrl.ItemHasChildren(hParent))
    {
        HTREEITEM hNextItem;
        HTREEITEM hChildItem = treeCtrl.GetChildItem(hParent);
        
        while (hChildItem != NULL)
        {
            hNextItem = treeCtrl.GetNextItem(hChildItem, TVGN_NEXT);
            treeCtrl.DeleteItem(hChildItem);
            hChildItem = hNextItem;
        }
    }
#endif

    //遍历Key
    for (DWORD i = 0; i < dwKeys /*&& i < 100*/; i++)   //100为调试所用，应该去除
    {
        char szKeyName[MAXBYTE];
        DWORD dwKeyLen = MAXBYTE;
        FILETIME ftime;

        RegEnumKeyEx(hKeyResult, 
                     i, 
                     szKeyName,
                     &dwKeyLen, 
                     NULL, NULL, NULL, 
                     &ftime);    

        HTREEITEM hSub = treeCtrl.InsertItem(szKeyName, 1, 2, hParent);
        
        //是否进行预取操作，预取的深度
        if (g_nCount < 2)
        {
            g_nCount++;
            EnumKey(hKeyResult, szKeyName, hSub, treeCtrl, FALSE);
            g_nCount = 0;
        }
    }
   
  RegCloseKey(hKeyResult);
}

/////////////////////////////////////////////////////////////////////////////
// CRegTreeView message handlers

void CRegTreeView::OnInitialUpdate() 
{
	CTreeView::OnInitialUpdate();
	
	// TODO: Add your specialized code here and/or call the base class
	
    if (m_ImageList != NULL)    //这样避免图片的重复加载
    {
        return;
    }
    
    //设置TreeView Style
    LONG lOld = GetWindowLong(GetSafeHwnd(), GWL_STYLE);
    SetWindowLong(GetSafeHwnd(), 
        GWL_STYLE, lOld | TVS_HASBUTTONS | TVS_HASLINES | TVS_LINESATROOT
        );
    
    //加载图片列表
    m_ImageList.Create(16, 16, ILC_COLOR32 | ILC_MASK, 0, 3);
    m_ImageList.Add(LoadIcon(AfxGetInstanceHandle(), 
        MAKEINTRESOURCE(IDI_ROOT)));
    m_ImageList.Add(LoadIcon(AfxGetInstanceHandle(), 
        MAKEINTRESOURCE(IDI_CLOSE)));
    m_ImageList.Add(LoadIcon(AfxGetInstanceHandle(), 
        MAKEINTRESOURCE(IDI_OPEN)));
    
    //设置图片列表
    CTreeCtrl& ctrl = GetTreeCtrl();
    ctrl.SetImageList(&m_ImageList, TVSIL_NORMAL);

    //添加item
    HTREEITEM hParent = ctrl.InsertItem("我的电脑", 0);
    HTREEITEM hSub;
    
    for (int i = 0; i < sizeof(g_HKEY) / sizeof(g_HKEY[0]); i++)
    {
        //插入主item
        hSub = ctrl.InsertItem(g_szKEY[i], 1, 2, hParent);

        //不进行全部的加载，延迟加载
        EnumKey(g_HKEY[i], "", hSub, ctrl, TRUE);
    }  
}

void
CRegTreeView::EnumValue(CString &fullpath, HTREEITEM hCurSel)
{
    TCHAR *pszFullPath = fullpath.GetBuffer(0);
    TCHAR *p1 = pszFullPath + _tcslen("我的电脑\\");
    if (NULL == p1)
    {
        return;
    }

    TCHAR *p2 = _tcsstr(p1, "\\");
    if (NULL == p2)
    {
        return;
    }

    CUpdateInfo updateInfo;

    //获取要遍历的Key/Value
    for (int i = 0; i < sizeof(g_szKEY) / sizeof(g_szKEY[0]); i++)
    {
        if (0 == _tcsncmp(g_szKEY[i], p1, p2 - p1))
        {
            //这里用于UpdateAllView时没有问题，临时变量还存在
            updateInfo.hKey = g_HKEY[i];
            updateInfo.lpSubKey = p2 + 1;
            updateInfo.hTreeItem = hCurSel;

            //Perhaps bug here. 临时变量等
            m_UpdateInfo.hKey = updateInfo.hKey;
            //m_UpdateInfo.lpSubKey = updateInfo.lpSubKey;
            //HACKER here
            _tcscpy(g_szSubKey, updateInfo.lpSubKey);
            m_UpdateInfo.lpSubKey = g_szSubKey;
            m_UpdateInfo.hTreeItem = updateInfo.hTreeItem;

            //展开SubKey
            EnumKey(updateInfo.hKey, updateInfo.lpSubKey,
                    hCurSel, GetTreeCtrl(),
                    TRUE);

            break;
        }
    }
    
    //由各试图自己负责更新
    GetDocument()->UpdateAllViews(this, NULL, &updateInfo);
}

void CRegTreeView::OnSelchanged(NMHDR* pNMHDR, LRESULT* pResult) 
{
	NM_TREEVIEW* pNMTreeView = (NM_TREEVIEW*)pNMHDR;
	// TODO: Add your control notification handler code here

    CTreeCtrl& ctrl = GetTreeCtrl();    

    // 获取已选择item的全路径
    HTREEITEM hCurSel = pNMTreeView->itemNew.hItem; 
    CString fullpath;
    CString text;

    while (hCurSel != NULL)
    {
        text = ctrl.GetItemText(hCurSel);
        fullpath = text + "\\" + fullpath;
        hCurSel = ctrl.GetParentItem(hCurSel);
    }

    //并设置状态栏显示
    CStatusBar &StatusBar = ((CMainFrame *)AfxGetMainWnd())->GetStatusBar();    
    StatusBar.SetPaneText(0, fullpath, TRUE);

    //展开SubKey，遍历Value
    hCurSel = pNMTreeView->itemNew.hItem;
    EnumValue(fullpath, hCurSel);

	*pResult = 0;
}

void CRegTreeView::OnRButtonDown(UINT nFlags, CPoint point) 
{
	// TODO: Add your message handler code here and/or call default
    CTreeCtrl &ctrl = GetTreeCtrl();

    // Select the item that is at the point myPoint.
    UINT uFlags;
    HTREEITEM hItem = ctrl.HitTest(point, &uFlags);
    
    if ((hItem != NULL) /*&& (TVHT_ONITEM & uFlags)*/)
    {
        ctrl.SelectItem(hItem);
    }

    
    //加载菜单
    CMenu menu;
    menu.LoadMenu(IDR_KEYMENU);
    
    //处理弹出菜单的坐标问题
    CMenu *pSubMenu = menu.GetSubMenu(0);
    GetCursorPos(&point);   //或者ClientToScreen(&point); 
    pSubMenu->TrackPopupMenu(TPM_LEFTALIGN, 
                            point.x, point.y, 
                            this);

	
	CTreeView::OnRButtonDown(nFlags, point);
}

void CRegTreeView::OnUpdate(CView* pSender, LPARAM lHint, CObject* pHint) 
{
	// TODO: Add your specialized code here and/or call the base class

    //Force Refresh for Subkeys and Values
    if (NULL == pHint)
    {
        return;
    }

    CTreeCtrl &ctrl = GetTreeCtrl();
    HTREEITEM hItem = ((CUpdateInfo *)pHint)->hTreeItem;
    ctrl.SelectItem(hItem);   	
}

void CRegTreeView::OnNewSZValue() 
{
	// TODO: Add your command handler code here
    if (NULL == g_pRegLstView)
    {
    }

    g_pRegLstView->OnNewSZValue();
}

void CRegTreeView::OnNewBIValue() 
{
	// TODO: Add your command handler code here
    if (NULL == g_pRegLstView)
    {
    }
    
    g_pRegLstView->OnNewbi();
}

void CRegTreeView::OnNewdword() 
{
	// TODO: Add your command handler code here
    if (NULL == g_pRegLstView)
    {
    }
    
    g_pRegLstView->OnNewdword();
	
}

void CRegTreeView::OnNewkey() 
{
	// TODO: Add your command handler code here
    if (NULL == m_UpdateInfo.hKey)
    {
        return;
    }

    CTreeCtrl &ctrl = GetTreeCtrl();
    
    //更新注册表的数据
    HKEY hResultKey;
    CString str, szKey;
    str.Format("%s\\", m_UpdateInfo.lpSubKey);
    
    for (int i = 1; ; i++)
    {
        szKey.Format("新项 #%d", i);
        
        DWORD dwDisposition;
        LONG lRet = RegCreateKeyEx(
                            m_UpdateInfo.hKey,         // handle to open key
                            str + szKey,               // subkey name
                            0,                         // reserved
                            NULL,                      // class string
                            REG_OPTION_NON_VOLATILE,   // special options
                            KEY_ALL_ACCESS,            // desired security access
                            NULL,                      // inheritance
                            &hResultKey,                            // key handle 
                            &dwDisposition                     // disposition value buffer
            );

        if (lRet != ERROR_SUCCESS)
        {
            continue;
        }
        else if (REG_OPENED_EXISTING_KEY == dwDisposition)
        {
            RegCloseKey(hResultKey);
            continue;
        }
        else
        {
            break;
        }
    }

    //更新Tree View
    ctrl.InsertItem(szKey, 1, 2, m_UpdateInfo.hTreeItem);
    
    //ForceUpdate();	
}
