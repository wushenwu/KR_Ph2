// MyStatic.cpp : implementation file
//

#include "stdafx.h"
#include "MySpy.h"
#include "MyStatic.h"
#include "FindWndDlg.h"
#include "MsgOpt_Wnd.h"

#include "Info.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CMyStatic

CMyStatic::CMyStatic()
{
    m_hCursor = NULL;
    m_hOldCursor = NULL;

    m_hCursor = ::LoadCursor(AfxGetInstanceHandle(), 
                            MAKEINTRESOURCE(IDC_FIND_CUR));
    ASSERT(m_hCursor != NULL);

    m_IsFinding = FALSE;

    m_pWnd = NULL;

    m_pParentWnd = NULL;
}

CMyStatic::~CMyStatic()
{
}


BEGIN_MESSAGE_MAP(CMyStatic, CStatic)
	//{{AFX_MSG_MAP(CMyStatic)
	ON_WM_LBUTTONDOWN()
	ON_WM_LBUTTONUP()
	ON_WM_MOUSEMOVE()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMyStatic message handlers

void CMyStatic::OnLButtonDown(UINT nFlags, CPoint point) 
{
    m_hOldCursor = ::SetCursor(m_hCursor);
    SetCapture();

    m_IsFinding = TRUE;

	CStatic::OnLButtonDown(nFlags, point);
}

void CMyStatic::OnLButtonUp(UINT nFlags, CPoint point) 
{
	ASSERT(m_hOldCursor != NULL);
    ::SetCursor(m_hOldCursor);
    ReleaseCapture();

    //��Ҫ�����ѡ�еĽ��б߽����
    DrawBorder();

    m_IsFinding = FALSE;
    m_pWnd = NULL;

	CStatic::OnLButtonUp(nFlags, point);
}

void CMyStatic::OnMouseMove(UINT nFlags, CPoint point) 
{
    CWnd *pParent = NULL;
    HWND hWnd = NULL;

    if (!m_IsFinding)
    {
        goto ERROR_CLEAN;
    }

    //��ԭ��ѡ�еĴ��ڱ߽�����������
    DrawBorder();

    //����point���д��ڵĲ�׽, �Ƚ�������ת��
    ClientToScreen(&point);
    m_pWnd = WindowFromPoint(point);
    if (NULL == m_pWnd)
    {
        goto ERROR_CLEAN;
    }

    //���������Ϣ
    pParent = m_pParentWnd; //GetParent();
    ASSERT(pParent != 0);
    
    hWnd = m_pWnd->GetSafeHwnd();
    if (hWnd == (HWND)0x70302)
    {
        int n = 0;
    }

    //Hack 
    if (m_pParentWnd->IsKindOf(RUNTIME_CLASS(CFindWndDlg)))
    {
        ((CFindWndDlg *)pParent)->SetWndHandle(hWnd);
        ((CFindWndDlg *)pParent)->SetInfo();
    }
    else if (m_pParentWnd->IsKindOf(RUNTIME_CLASS(CMsgOpt_Wnd)))
    {
        ((CMsgOpt_Wnd *)pParent)->SetWndHandle(hWnd);
        ((CMsgOpt_Wnd *)pParent)->SetInfo();
    }
//     else
//     {
//         AfxMessageBox("Get Parent Hack Error");
//     }

    //��ѡ�еĴ��ڻ��߿� 
    DrawBorder();
	
ERROR_CLEAN:
	CStatic::OnMouseMove(nFlags, point);
}

void CMyStatic::DrawBorder()
{
    if (NULL == m_pWnd
        || !m_IsFinding)
    {
        return;
    }

    CClientDC dc(m_pWnd);

    CRect rect;
    m_pWnd->GetClientRect(&rect);

    CPen pen(PS_SOLID, 10, RGB(255, 255, 255));
    dc.SelectObject(pen);

    //�ʵ���ɫ����Ϊ��ǰ����ɫ�ͱ��������
    //Pixel is a combination of the colors that are in the pen or in the screen, but not in both (final pixel = pen XOR screen pixel).
    dc.SetROP2(R2_XORPEN);

    dc.SelectObject(::GetStockObject(NULL_BRUSH));

    dc.Rectangle(rect);
}


void CMyStatic::SetParentWnd(CWnd *pParentWnd)
{
    ASSERT(pParentWnd != NULL);
    m_pParentWnd = pParentWnd;
}
