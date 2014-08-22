// MyListCtrl.cpp : implementation file
//

#include "stdafx.h"
#include "process.h"
#include "MyListCtrl.h"

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
		// NOTE - the ClassWizard will add and remove mapping macros here.
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMyListCtrl message handlers

void CMyListCtrl::Init(CString strColumn)
{
  //设置网格线和选中全行
  SetExtendedStyle(GetExtendedStyle()
    |LVS_EX_GRIDLINES | LVS_EX_FULLROWSELECT);
  
  //设置文本颜色
  SetTextColor(RGB(0, 0, 255));
  
  //分割字符串
  for (int i = 0;;i++)
  {
    CString strSub;
    if (!AfxExtractSubString(strSub, strColumn, i, '|'))
    {
      break;
    }
    InsertColumn(i, strSub);
  }

  //自动调整大小
  AutoSize();
  
}

CMyListCtrl::AutoSize()
{
  int nColumn = GetHeaderCtrl()->GetItemCount();
  for (int j = 0; j < nColumn; j++)
  {
    SetColumnWidth(j, LVSCW_AUTOSIZE_USEHEADER);
  }
}

void CMyListCtrl::Insert(CString strItem)
{
  CString strSub;
  AfxExtractSubString(strSub, strItem, 0, '|');
  int nItem = InsertItem(0, strSub);

  //分割字符串
  for (int i = 1;;i++)
  {
    if (!AfxExtractSubString(strSub, strItem, i, '|'))
    {
      break;
    }
    SetItemText(nItem, i, strSub);
  }
}
