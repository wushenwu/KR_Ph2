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
    //����ͼƬ�б�
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

    //����extended style
    //ctrl.SetExtendedStyle(ctrl.GetExtendedStyle() | LVS_EX_TRACKSELECT);
   
    //����header
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

    //��ȡ�����ݵ���Ϣ
    CUpdateInfo *pUpdateInfo = (CUpdateInfo *)pHint;
    HKEY hKey = pUpdateInfo->hKey;
    LPCSTR lpSubKey = pUpdateInfo->lpSubKey;

    //��¼��ǰѡ�е�key
    m_UpdateInfo.hKey = pUpdateInfo->hKey;
    m_UpdateInfo.lpSubKey = pUpdateInfo->lpSubKey;

    HKEY hKeyResult;
    LONG lRet = RegOpenKey(hKey, lpSubKey, &hKeyResult);
    if (lRet != ERROR_SUCCESS)
    {
        return;
    }
    
    //��ȡSubKey, Value����
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
    
    //����ֵ, ������List View
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
            lv.pszText = "(Ĭ��)";
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

    //����Ĭ������
    LVFINDINFO info;
    info.flags = LVFI_PARTIAL|LVFI_STRING;
    info.psz = "(Ĭ��)";
    if (-1 == ctrl.FindItem(&info))
    {
        LVITEM lv;
        lv.mask = LVIF_TEXT;
        lv.iItem = 0;

        lv.iSubItem = 0;
        lv.pszText = "(Ĭ��)";        
        ctrl.InsertItem(&lv);
        

        lv.iSubItem++;
        lv.pszText = "REG_SZ";
        ctrl.SetItem(&lv);

        lv.iSubItem++;
        lv.pszText = "(��ֵδ����)";
        ctrl.SetItem(&lv);
    }

    RegCloseKey(hKeyResult);	
}

void CRegListView::OnRButtonDown(UINT nFlags, CPoint point) 
{
	// TODO: Add your message handler code here and/or call default

    CListCtrl &ctrl = GetListCtrl();
    
    //����ѡ�е����,��̬�ļ��ز˵�
    CMenu menu;
    int nCount = ctrl.GetSelectedCount();
    if (0 == nCount)
    {
        //�Ҽ������½��˵�
        menu.LoadMenu(IDR_NONSEL);
    }
    else
    {
        menu.LoadMenu(IDR_SEL);
    }
    
    //�������˵�����������
    CMenu *pSubMenu = menu.GetSubMenu(0);
    GetCursorPos(&point);   //����ClientToScreen(&point); 
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

    //�ҵ����ʵġ���ֵ #i��
    LVFINDINFO info;
    info.flags = LVFI_PARTIAL|LVFI_STRING;
    CString str;

    for (int i = 1; ; i++)
    {
        str.Format("��ֵ #%d", i);
        info.psz = str.GetBuffer(0);

        if (-1 == ctrl.FindItem(&info))
        {
            break;
        }
    }

    //�����Ǳ�view�Լ����£����ظ�֮�ӣ�Ҳ������CTreeView����
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

    //Ȼ�����ע��������
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
	
    //��ɾ�����
    CListCtrl &ctrl = GetListCtrl();
    UINT uCount = ctrl.GetSelectedCount();
    int nItem = -1;

    TCHAR szValueName[MAXBYTE];

    //����ͼ�л�ȡ���ݣ�����ע����ٸ�����ͼ
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

    //��ȡѡ�е�item��ValueName
    int nItem = ctrl.GetNextItem(-1, LVNI_SELECTED);
    ASSERT(nItem != -1);
    
    TCHAR szValueNAME[MAXBYTE];
    ctrl.GetItemText(nItem, 0, szValueNAME, MAXBYTE);

    TCHAR szValue[MAXBYTE];
    ctrl.GetItemText(nItem, 2, szValue, MAXBYTE);

    //Dialog����
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
    
    //���Ӧ�ô���View�ĸ��£�û��Ҫ�����ֶ�����ͼ���ݲ��롣
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
    ����ForceUpdate, ���������˭����
    ����ͨ��List View ���Value, ����Del Value, ����Modify Valueʱ��
    1) ע���ĸ����ǿ϶��ģ�Regxxx ����
    2) ����List View����ʾ���£�ȴ�����ַ�����
        a) List View���Լ�������£����ظ������ɡ�
        b) ֪ͨTree View���¼������ݣ��ⲻ���ظ��������漰ͨ��

     a), b)���ַ�����
    */

    //֪ͨTreeView������ͼ�ĸ���
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
