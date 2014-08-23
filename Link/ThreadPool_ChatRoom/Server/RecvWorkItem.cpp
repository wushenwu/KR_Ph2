// RecvWorkItem.cpp: implementation of the CRecvWorkItem class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "Server.h"
#include "RecvWorkItem.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CRecvWorkItem::CRecvWorkItem(CServerDlg *pDlg, SOCKET sClient)
{
    m_pServerDlg = pDlg;
    m_sClient =  sClient;
}

CRecvWorkItem::~CRecvWorkItem()
{

}

void CRecvWorkItem::Execute()
{
    //接收数据
    TCHAR szText[MAXBYTE] = {0};
    int nLen;
    BOOL bRet = CMySocket::RecvRaw(m_sClient, szText, MAXBYTE, 0, &nLen);
    if (!bRet)
    {
        m_pServerDlg->SetOffline(m_sClient);
        closesocket(m_sClient);
        return;
    }

     m_pServerDlg->ClassifyInfo(szText, m_sClient);
}

void CRecvWorkItem::Abort()
{

}