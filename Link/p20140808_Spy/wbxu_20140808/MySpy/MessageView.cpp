// MessageView.cpp : implementation of the CMessageView class
//

#include "stdafx.h"
#include "MySpy.h"

#include "MessageDoc.h"
#include "MessageView.h"

#include "msg.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CMessageView

IMPLEMENT_DYNCREATE(CMessageView, CListView)

BEGIN_MESSAGE_MAP(CMessageView, CListView)
	//{{AFX_MSG_MAP(CMessageView)
		// NOTE - the ClassWizard will add and remove mapping macros here.
		//    DO NOT EDIT what you see in these blocks of generated code!
	//}}AFX_MSG_MAP
	// Standard printing commands
    ON_COMMAND(IDM_MSG_START_STOP, OnStartStop)
	ON_COMMAND(ID_FILE_PRINT, CListView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_DIRECT, CListView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_PREVIEW, CListView::OnFilePrintPreview)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CMessageView construction/destruction

CMessageView::CMessageView()
{
	// TODO: add construction code here
    m_hMap = NULL;
    m_lpBuff = NULL;

    m_hWriteEvent = NULL;
    m_hReadEvent  = NULL;

    m_IsStop = FALSE;
}

CMessageView::~CMessageView()
{
}

BOOL CMessageView::PreCreateWindow(CREATESTRUCT& cs)
{
	// TODO: Modify the Window class or styles here by modifying
	//  the CREATESTRUCT cs

	return CListView::PreCreateWindow(cs);
}

/////////////////////////////////////////////////////////////////////////////
// CMessageView drawing

void CMessageView::OnDraw(CDC* pDC)
{
	CMessageDoc* pDoc = GetDocument();
	ASSERT_VALID(pDoc);
	// TODO: add draw code for native data here

    CRect rect;
    CString tmpStr = "HELLO";
    
    pDC->SetTextColor(RGB(255,0,0));
    pDC->SetBkColor(::GetSysColor(COLOR_WINDOW));
    GetClientRect(rect);
    pDC->DrawText(tmpStr, -1, rect,
		DT_SINGLELINE | DT_CENTER | DT_VCENTER);
}

/////////////////////////////////////////////////////////////////////////////
// CMessageView printing

BOOL CMessageView::OnPreparePrinting(CPrintInfo* pInfo)
{
	// default preparation
	return DoPreparePrinting(pInfo);
}

void CMessageView::OnBeginPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
{
	// TODO: add extra initialization before printing
}

void CMessageView::OnEndPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
{
	// TODO: add cleanup after printing
}

/////////////////////////////////////////////////////////////////////////////
// CMessageView diagnostics

#ifdef _DEBUG
void CMessageView::AssertValid() const
{
	CListView::AssertValid();
}

void CMessageView::Dump(CDumpContext& dc) const
{
	CListView::Dump(dc);
}

CMessageDoc* CMessageView::GetDocument() // non-debug version is inline
{
	ASSERT(m_pDocument->IsKindOf(RUNTIME_CLASS(CMessageDoc)));
	return (CMessageDoc*)m_pDocument;
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CMessageView message handlers
UINT LogMsgProc(LPVOID pParam);

void CMessageView::OnInitialUpdate() 
{
	CListView::OnInitialUpdate();

    LONG lOld = GetWindowLong(GetSafeHwnd(), GWL_STYLE);
    SetWindowLong(GetSafeHwnd(),
                    GWL_STYLE, 
                    lOld 
                    | WS_CHILDWINDOW| WS_VISIBLE | WS_CLIPCHILDREN | WS_HSCROLL | WS_VSCROLL |WS_TABSTOP 
                    | LVS_REPORT| LVS_EDITLABELS | LVS_SHAREIMAGELISTS | LVS_ALIGNLEFT 
                    | LVS_NOSORTHEADER
        );

    CListCtrl &ctrl = GetListCtrl();

    //设置header
    LVCOLUMN lvcol;
    lvcol.mask = LVCF_TEXT | LVCF_WIDTH;    
    lvcol.cx = 100;

    char *szCol[] = {"序号", "时间", "窗口", "消息", "wParam", "lParam"};
    for (int i = 0; i < sizeof(szCol) / sizeof(szCol[0]); i++ )
    {
        lvcol.pszText = szCol[i];
        ctrl.InsertColumn(i, &lvcol);
    }

    //映射缓冲区
    PrepareBuffer();

    //创建线程以进行读取
    AfxBeginThread(LogMsgProc, this);

    ShowWindow(SW_MAXIMIZE);
}

void CMessageView::PrepareBuffer()
{
    HANDLE hMap = ::OpenFileMapping(FILE_MAP_ALL_ACCESS, 
                                    FALSE, 
                                    "Inj3ct_M3G_BUFFER");
    if (NULL == hMap)
    {
        return;
    }
    
    //映射内存
    LPVOID lpBuff = MapViewOfFile(hMap, 
                                FILE_MAP_ALL_ACCESS, 
                                0, 
                                0, 
                                0x1000);
    if (NULL == lpBuff)
    {
        return;
    }
    
    m_hMap = hMap;
    m_lpBuff = lpBuff;
}

void AutoSize(CListCtrl &ctrl)
{
    int nColumn = ctrl.GetHeaderCtrl()->GetItemCount();
    for (int i = 0; i < nColumn; i++)
    {
        ctrl.SetColumnWidth(i, LVSCW_AUTOSIZE_USEHEADER);
    }
}

UINT LogMsgProc(LPVOID pParam)
{
    CMessageView *pView = (CMessageView *)pParam;
    ASSERT(pView != NULL);

    CListCtrl &ctrl = pView->GetListCtrl();

    //获取事件
    pView->m_hWriteEvent = OpenEvent(EVENT_ALL_ACCESS, FALSE, "Inj3ct_WRITE");
    if (NULL == pView->m_hWriteEvent)
    {
        return 0;
    }
    
    pView->m_hReadEvent = OpenEvent(EVENT_ALL_ACCESS, FALSE, "Inj3ct_READ");
    if (NULL == pView->m_hReadEvent)
    {
        return 0;
    }
    
    HANDLE hEvents[2] = {pView->m_hWriteEvent, pView->m_hReadEvent};
    DWORD dwRet = 0;
    MSG info;  
    
    int nCount = 0;
    size_t index = 0;
    BOOL bRet;
    CString str;
    int i = 0;
    
    while (!pView->m_IsStop)
    {
        dwRet = WaitForMultipleObjects(2,
                                    &hEvents[0],
                                    TRUE,
                                    INFINITE);
//         if (dwRet != WAIT_OBJECT_0)
//         {
//             //error
//             return 0;
//         }
        
        //read from buffer
        memcpy(&info, pView->m_lpBuff, sizeof(MSG));

        //向视图中插入数据
        bRet = GetIndex(info.message, &index);
        if (bRet)
        {
            i = 1;
            str.Format("%d", nCount);
            ctrl.InsertItem(nCount, str);

            str.Format("%d", info.time);
            ctrl.SetItemText(nCount, i++, str);

            str.Format("0x%08p", info.hwnd);
            ctrl.SetItemText(nCount, i++, str);

            ctrl.SetItemText(nCount, i++, g_pMSGAry[index].pszInfo);

            str.Format("0x%08p", info.wParam);
            ctrl.SetItemText(nCount, i++, str);

            str.Format("0x%08p", info.lParam);
            ctrl.SetItemText(nCount, i++, str);

            nCount++;
            
            //AutoSize(ctrl);   
        }
        
        //event
        SetEvent(pView->m_hReadEvent);
    }

    return 0;
}

void CMessageView::OnStartStop()
{
    m_IsStop = !m_IsStop;
}
