// RCT_ClientView.cpp : implementation of the CRCT_ClientView class
//

#include "stdafx.h"
#include "RCT_Client.h"

#include "RCT_ClientDoc.h"
#include "RCT_ClientView.h"

#include "zlib.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CRCT_ClientView

IMPLEMENT_DYNCREATE(CRCT_ClientView, CView)

BEGIN_MESSAGE_MAP(CRCT_ClientView, CView)
	//{{AFX_MSG_MAP(CRCT_ClientView)
	ON_COMMAND(IDM_RCTSTART, OnRCTStart)
	ON_COMMAND(IDM_CAPTURE, OnCapture)
	//}}AFX_MSG_MAP
	// Standard printing commands
	ON_COMMAND(ID_FILE_PRINT, CView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_DIRECT, CView::OnFilePrint)
	ON_COMMAND(ID_FILE_PRINT_PREVIEW, CView::OnFilePrintPreview)
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CRCT_ClientView construction/destruction

CRCT_ClientView::CRCT_ClientView()
{
	// TODO: add construction code here

}

CRCT_ClientView::~CRCT_ClientView()
{
}

BOOL CRCT_ClientView::PreCreateWindow(CREATESTRUCT& cs)
{
	// TODO: Modify the Window class or styles here by modifying
	//  the CREATESTRUCT cs

	return CView::PreCreateWindow(cs);
}

/////////////////////////////////////////////////////////////////////////////
// CRCT_ClientView drawing

void CRCT_ClientView::OnDraw(CDC* pDC)
{
	CRCT_ClientDoc* pDoc = GetDocument();
	ASSERT_VALID(pDoc);
	// TODO: add draw code for native data here
}

/////////////////////////////////////////////////////////////////////////////
// CRCT_ClientView printing

BOOL CRCT_ClientView::OnPreparePrinting(CPrintInfo* pInfo)
{
	// default preparation
	return DoPreparePrinting(pInfo);
}

void CRCT_ClientView::OnBeginPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
{
	// TODO: add extra initialization before printing
}

void CRCT_ClientView::OnEndPrinting(CDC* /*pDC*/, CPrintInfo* /*pInfo*/)
{
	// TODO: add cleanup after printing
}

/////////////////////////////////////////////////////////////////////////////
// CRCT_ClientView diagnostics

#ifdef _DEBUG
void CRCT_ClientView::AssertValid() const
{
	CView::AssertValid();
}

void CRCT_ClientView::Dump(CDumpContext& dc) const
{
	CView::Dump(dc);
}

CRCT_ClientDoc* CRCT_ClientView::GetDocument() // non-debug version is inline
{
	ASSERT(m_pDocument->IsKindOf(RUNTIME_CLASS(CRCT_ClientDoc)));
	return (CRCT_ClientDoc*)m_pDocument;
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
// CRCT_ClientView message handlers

void CRCT_ClientView::OnRCTStart() 
{
    BOOL bRet = m_MySocket.Create_TCP();
    if (!bRet)
    {
        AfxMessageBox("远控功能开启失败!");
        return;
    }

    bRet = m_MySocket.Connect(HOST, PORT);
    if (!bRet)
    {
        return;
    }

    //客户端会接收大量的数据，不使用异步选择模型
    UINT RecvProc(LPVOID);
    AfxBeginThread(RecvProc, this);
}

void CRCT_ClientView::OnCapture() 
{
    //向服务端请求开启截屏功能, 利用定长解决粘包问题
    TCHAR szCommand[MAXBYTE] = {0};
    tagRCTCommand *pCommand = (tagRCTCommand *)szCommand;
    pCommand->m_Command = RCT_CAPTURE;
    
    BOOL bRet = CMySocket::Send(m_MySocket.m_Socket,
                                szCommand, 
                                sizeof(szCommand), 
                                0);
    if (!bRet)
    {
        AfxMessageBox("请求截屏失败");
        return;
    }
}

UINT RecvProc( LPVOID pParam )
{
    //仅是接收最基本的command, 具体的后续操作、数据的接收，由各动作自己负责

    CRCT_ClientView *pView = (CRCT_ClientView *)pParam;
    ASSERT(pView != NULL);

    CMySocket &mySocket = pView->m_MySocket;
    TCHAR szBuff[MAXBYTE] = {0};
    tagRCTCommand *pCommand = (tagRCTCommand *)szBuff;

    BOOL bRet;
    while (TRUE)
    {
        bRet = CMySocket::RecvRaw(mySocket.m_Socket,
                                  szBuff,
                                  sizeof(szBuff),
                                  0);
        if (!bRet)
        {
            break;
        }

        //或许需要另开线程对其进行操作。Nope, recv cannot determine which thread
        if (RCT_SCREEN_INFO == pCommand->m_Command)
        {
            pView->ProcessCapture(szBuff);
        }
    }

    mySocket.Close();

    return TRUE;
}

#pragma comment(lib, "zdll.lib")

void CRCT_ClientView::ProcessCapture(char *szBuff)
{
    tagRCTCommand *pCommand = (tagRCTCommand *)szBuff;
    ASSERT(pCommand != NULL);

    //从刚才接受的数据中解析出屏幕分辩率
    tagScreenData *pinfoData = (tagScreenData *)&pCommand->m_pCommand;
    int nWidth = pinfoData->m_nWidth;
    int nHeight = pinfoData->m_nHeight; 
    
#ifdef COMPRESS
    unsigned long srcLen = pinfoData->m_nDstLen;
    unsigned long compressLen = pinfoData->m_nCompressLen;
#endif

    //接收屏幕数据
#ifdef COMPRESS
    int nCount = compressLen; 
#else
    int nCount = nWidth * nHeight * 4;
#endif

#define USE_STATIC
#ifdef USE_STATIC
    static 
#endif          //nCount每次变化，但是static仅申请一次，改为nWidth * nHeight * 4 足以容纳即可
    char *pBuff = new char[nWidth * nHeight * 4]; 
    if (NULL == pBuff)
    {
        return;
    }
    
    int nRecvBytes = 0;
    int nRet = 0;
    BOOL bRet;
    while(nRecvBytes < compressLen)
    {
        bRet = CMySocket::RecvRaw(m_MySocket.m_Socket,
                            pBuff + nRecvBytes, 
                            nCount - nRecvBytes, 
                            0,
                            &nRet);
        if (!bRet)
        {
            delete[] pBuff;
            pBuff = NULL;
            return;
        }

        nRecvBytes += nRet;
    }
        
    CClientDC cDC(this);
    CRect rc;
    GetClientRect(rc);
    
    //创建兼容DC及兼容位图, 拷贝到内存
    CDC memDC;
    memDC.CreateCompatibleDC(&cDC);

    CBitmap bitmap;
    bitmap.CreateCompatibleBitmap(&cDC, nWidth, nHeight);
    memDC.SelectObject(bitmap);

#ifdef COMPRESS
    char *pdstBuff = new char[srcLen];
    if (NULL == pdstBuff)
    {
        goto ERROR_CLEAN;
    }

    nRet = uncompress((unsigned char*)pdstBuff,   
                      &srcLen,
                      (unsigned char*)pBuff,
                      compressLen);
    if (nRet != Z_OK)
    {
        AfxMessageBox("Uncompress Error");
        goto ERROR_CLEAN;
    }

    bitmap.SetBitmapBits(srcLen, pdstBuff);
#else
    bitmap.SetBitmapBits(nCount, pBuff);
#endif
    
    //缩放绘图
    cDC.StretchBlt(0, 0, rc.Width(), rc.Height(), 
                    &memDC, 0, 0, nWidth, nHeight, SRCCOPY);

ERROR_CLEAN:
#ifndef USE_STATIC
    if (pBuff != NULL)
    {
        delete[] pBuff;
        pBuff = NULL;
    } 
#endif

#ifdef COMPRESS
    if (pdstBuff != NULL)
    {
        delete[] pdstBuff;
        pdstBuff = NULL;
    }
#endif
    ;  
}

/*
//  完全绘图
//  cDC->BitBlt(0, 0, nWidth, nHeight, &memDC, 0, 0, SRCCOPY);
//     CWnd *pWnd = GetDlgItem(IDC_BUTTON2);
//     HDC hdc = ::GetDC(pWnd->GetSafeHwnd());
//    
//     for (int i = 0; i < nWidth; i++)
//     {
//         for (int j = 0; j < nHeight; j++)
//         {
//             COLORREF color = *(COLORREF*)(pBuff + j * nWidth * 4 + i * 4);
//             color = RGB(GetBValue(color), 
//                         GetGValue(color),
//                         GetRValue(color));
//             ::SetPixel(hdc, i, j, color);
//         }
    //     }
*/
