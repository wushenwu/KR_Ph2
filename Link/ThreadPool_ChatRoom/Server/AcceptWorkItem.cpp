// AcceptWorkItem.cpp: implementation of the CAcceptWorkItem class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "Server.h"
#include "AcceptWorkItem.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CAcceptWorkItem::CAcceptWorkItem(CServerDlg *pDlg)
{
    m_ServerDlg = pDlg;
}

CAcceptWorkItem::~CAcceptWorkItem()
{

}

void CAcceptWorkItem::Execute()
{
    SOCKET sClient;
    sockaddr_in addrin;
    
    BOOL bRet = m_ServerDlg->m_MySocket.Accept((sockaddr *)&addrin, &sClient);
    if (!bRet)
    {
        return;
    }
    
    //在线客户端列表更新,  或者通告主线程消息进行处理
    m_ServerDlg->SetOnline(sClient);   
}

void CAcceptWorkItem::Abort()
{

}
