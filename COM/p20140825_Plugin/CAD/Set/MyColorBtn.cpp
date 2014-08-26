// MyColorBtn.cpp : implementation file
//

#include "stdafx.h"
#include "MyColorBtn.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CMyColorBtn

CMyColorBtn::CMyColorBtn()
{
  m_BgColor = RGB(0, 0, 0);
  m_FontColor = RGB(0, 0, 0);
}

CMyColorBtn::~CMyColorBtn()
{
}


BEGIN_MESSAGE_MAP(CMyColorBtn, CButton)
	//{{AFX_MSG_MAP(CMyColorBtn)
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMyColorBtn message handlers

void CMyColorBtn::DrawButton(LPDRAWITEMSTRUCT lpDrawItemStruct)
{
  UINT uStyle = DFCS_BUTTONPUSH;
  
  // This code only works with buttons.
  ASSERT(lpDrawItemStruct->CtlType == ODT_BUTTON);
  
  // If drawing selected, add the pushed style to DrawFrameControl.
  if (lpDrawItemStruct->itemState & ODS_SELECTED)
    uStyle |= DFCS_PUSHED;
  
  // Draw the button frame.
  ::DrawFrameControl(lpDrawItemStruct->hDC, &lpDrawItemStruct->rcItem, 
    DFC_BUTTON, uStyle);
  
  // Get the button's text.
  CString strText;
  GetWindowText(strText);
  
  // Draw the button text using the text color red.
  COLORREF crOldColor = ::SetTextColor(lpDrawItemStruct->hDC, RGB(255,0,0));
  ::DrawText(lpDrawItemStruct->hDC, strText, strText.GetLength(), 
    &lpDrawItemStruct->rcItem, DT_SINGLELINE|DT_VCENTER|DT_CENTER);
  ::SetTextColor(lpDrawItemStruct->hDC, crOldColor);
}


void CMyColorBtn::DrawItem(LPDRAWITEMSTRUCT lpDrawItemStruct) 
{
  //DC从参数拿
  CDC dc;
  dc.m_hDC = lpDrawItemStruct->hDC;

  //获取客户区域
  CRect rc;
  GetClientRect(&rc);


  //填充区域颜色
  CBrush brush;
  brush.CreateSolidBrush(m_FontColor);
  dc.FillRect(rc, &brush);

  //选中状态
  CBrush bgBrush;
  if (lpDrawItemStruct->itemState & ODS_SELECTED)
  {
    bgBrush.CreateSolidBrush(m_BgColor + 10);
  }
  else
  {
    bgBrush.CreateSolidBrush(m_BgColor);
  }

  rc.DeflateRect(1, 1);
  dc.FillRect(rc, &bgBrush);

  // Get the button's text.
  CString strText;
  GetWindowText(strText);
  
  //设置字体背景色透明
  dc.SetBkMode(TRANSPARENT);

  COLORREF crOldColor = ::SetTextColor(lpDrawItemStruct->hDC, m_FontColor);
  ::DrawText(lpDrawItemStruct->hDC, strText, strText.GetLength(), 
    &lpDrawItemStruct->rcItem, DT_SINGLELINE|DT_VCENTER|DT_CENTER);
  ::SetTextColor(lpDrawItemStruct->hDC, crOldColor);
}
