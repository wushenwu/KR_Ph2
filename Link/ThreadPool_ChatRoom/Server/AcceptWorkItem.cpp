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
    
    //���߿ͻ����б����,  ����ͨ�����߳���Ϣ���д���
    m_ServerDlg->SetOnline(sClient);   
}

void CAcceptWorkItem::Abort()
{

}
