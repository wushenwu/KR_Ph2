//  MyPacket.cpp: implementation of the CMyPacket class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "Server.h"
#include "MyPacket.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CMyPacket::CMyPacket()
{

}

CMyPacket::~CMyPacket()
{

}

/*
���������û�recvSKͨ�����û�newSK������
*/
BOOL CMyPacket::NotifyOnline(SOCKET recvSK, SOCKET newSK)
{
    sockaddr_in addrin;
    int nDataLen = sizeof(sockaddr_in);
    getpeername(newSK, (sockaddr *)&addrin, &nDataLen);

    int nLen = sizeof(tagHDR) + nDataLen;    //�ܳ���
    char *pTmpBuf = new char[nLen];
    if (NULL == pTmpBuf)
    {
        return FALSE;
    }

    tagInfo *pInfo = (tagInfo *)pTmpBuf;
    pInfo->m_hdr.m_nLen = nDataLen;             //ʵ�ʵ����ݳ���
    pInfo->m_hdr.m_nType = INFO_TYPE_ONLINE;

    //�ȷ��ͳ��Ⱥ�����
    ::send(recvSK, (char *)pInfo, sizeof(tagHDR), 0);

    //�ٷ���ʵ�ʵ�����
    ::send(recvSK, (char *)&addrin, nDataLen, 0);

    delete[] pTmpBuf;
    
    return TRUE;
}

/*
��oldAddr������Ŀͻ���ͨ���¿ͻ���newAddr������
*/
BOOL CMyPacket::NotifyOnline(SOCKET s, sockaddr_in oldAddr, sockaddr_in newAddr)
{
    int nDataLen = sizeof(sockaddr_in);    
    int nLen = sizeof(tagHDR) + nDataLen;    //�ܳ���
    char *pTmpBuf = new char[nLen];
    if (NULL == pTmpBuf)
    {
        return FALSE;
    }
    
    tagInfo *pInfo = (tagInfo *)pTmpBuf;
    pInfo->m_hdr.m_nLen = nDataLen;             //ʵ�ʵ����ݳ���
    pInfo->m_hdr.m_nType = INFO_TYPE_ONLINE;
    memcpy(&pInfo->m_pInfo, &newAddr, nDataLen);   
    
    CMySocket::SendTo(s, (char *)pInfo, sizeof(tagHDR) + nDataLen, 0,
                    (sockaddr *)&oldAddr, 
                    sizeof(sockaddr)
                    );
    
    delete[] pTmpBuf;
    
    return TRUE;
}

BOOL CMyPacket::NotifyOffline(SOCKET recvSK, SOCKET newSK)
{
    sockaddr_in addrin;
    int nDataLen = sizeof(sockaddr_in);
    getpeername(newSK, (sockaddr *)&addrin, &nDataLen);
    
    int nLen = sizeof(tagHDR) + nDataLen;    //�ܳ���
    char *pTmpBuf = new char[nLen];
    if (NULL == pTmpBuf)
    {
        return FALSE;
    }
    
    tagInfo *pInfo = (tagInfo *)pTmpBuf;
    pInfo->m_hdr.m_nLen = nDataLen;             //ʵ�ʵ����ݳ���
    pInfo->m_hdr.m_nType = INFO_TYPE_OFFLINE;
    
    //�ȷ��ͳ��Ⱥ�����
    ::send(recvSK, (char *)pInfo, sizeof(tagHDR), 0);
    
    //�ٷ���ʵ�ʵ�����
    ::send(recvSK, (char *)&addrin, nDataLen, 0);
    
    delete[] pTmpBuf;
    
    return TRUE;
}

BOOL CMyPacket::NotifyOffline(SOCKET s, sockaddr_in oldAddr, sockaddr_in newAddr)
{
    int nDataLen = sizeof(sockaddr_in); 
    int nLen = sizeof(tagHDR) + nDataLen;    //�ܳ���
    char *pTmpBuf = new char[nLen];
    if (NULL == pTmpBuf)
    {
        return FALSE;
    }
    
    tagInfo *pInfo = (tagInfo *)pTmpBuf;
    pInfo->m_hdr.m_nLen = nDataLen;             //ʵ�ʵ����ݳ���
    pInfo->m_hdr.m_nType = INFO_TYPE_OFFLINE;
    memcpy(&pInfo->m_pInfo, &newAddr, nDataLen);
    
    CMySocket::SendTo(s, (char *)pInfo, sizeof(tagHDR) + nDataLen, 0,
                      (sockaddr *)&oldAddr,
                      sizeof(sockaddr)
                      );
    
    
    delete[] pTmpBuf;
    
    return TRUE;
}

void DumpData(char *pData, int nLen)
{
    CString str;
    for (int i = 0; i < nLen; i++)
    {
        str.Format("%c", pData[i]);
        OutputDebugString(str);
    }
}

u_int CMyPacket::GetType(char *szBuff, char **pData, u_int *nLen)
{
    tagInfo *pInfo = (tagInfo *)szBuff;

    *pData = &szBuff[sizeof(tagHDR)];
    *nLen = *(u_int *)szBuff/* - sizeof(tagHDR)*/;
    
    //DumpData(*pData, *nLen);

    return pInfo->m_hdr.m_nType;    
}

BOOL CMyPacket::NotifyRequest(BOOL bSingle, SOCKET csocket,  //������ʹ�����ã������������
                                CString &str,
                                BOOL bTCP,
                                struct sockaddr_in *toaddr,
                                int nToLen)
{
    int nDataLen = str.GetLength() + 1;
    int nLen = sizeof(tagHDR) + nDataLen;
    char *pTmpBuf = new char[nLen];
    if (NULL == pTmpBuf)
    {
        return FALSE;
    }
    
    tagInfo *pInfo = (tagInfo *)pTmpBuf;
    pInfo->m_hdr.m_nLen = nDataLen;
    pInfo->m_hdr.m_nType = bSingle ? INFO_TYPE_REQUEST : INFO_TYPE_MULTI;
    memcpy(&pInfo->m_pInfo, str, nDataLen);

    if (bTCP)
    {
        //�ȷ��ͳ��ȼ�����
        CMySocket::Send(csocket, (char *)pInfo, sizeof(tagHDR), 0);    
        
        //�ɰ���ip:port, �����ǳƣ��ɷ���������
        CMySocket::Send(csocket, (char *)(&pInfo->m_pInfo), pInfo->m_hdr.m_nLen, 0);
    }
    else
    {
        CMySocket::SendTo(csocket, (char *)pInfo, sizeof(tagHDR) + nDataLen, 0,
                          (sockaddr *)toaddr,
                          nToLen);
    }

    return TRUE;
}

/*
skSend ����str��ip:port�����ǳƻ�����������Ϣ
*/
BOOL CMyPacket::NotifyChat(BOOL bBroadCast, char *szText, SOCKET skSend, char *pDst,
                           BOOL bTCP,
                           struct sockaddr *toaddr,
                           int nToLen)
{
    int nLen = _tcslen(szText) + sizeof(TCHAR);
    int nDstLen = _tcslen(pDst) + sizeof(TCHAR);
    int nDataLen = nLen + nDstLen;
    int nTotalLen = sizeof(tagHDR) + nDataLen;
    char *pTmpBuf = new char[nTotalLen];
    if (NULL == pTmpBuf)
    {
        return FALSE;
    }
    
    tagInfo *pInfo = (tagInfo *)pTmpBuf;
    pInfo->m_hdr.m_nLen = nDataLen;
    pInfo->m_hdr.m_nType = bBroadCast ? INFO_TYPE_BROADCAST : INFO_TYPE_CHAT;
    strcpy((char *)&(pInfo->m_pInfo), szText);
    char *pTmp = (char *)&(pInfo->m_pInfo) + nLen;
    memcpy(pTmp, pDst, nDstLen + 1);

    if (bTCP)
    {
        //�ȷ��ͳ���
        CMySocket::Send(skSend, (char *)pInfo, sizeof(tagHDR), 0);

        //�ٷ���ʵ������
        CMySocket::Send(skSend, (char *)&(pInfo->m_pInfo), pInfo->m_hdr.m_nLen, 0);
    }
    else
    {
        CMySocket::SendTo(skSend, (char *)pInfo, sizeof(tagHDR) + nDataLen, 0, 
                        toaddr, nToLen);
    }

    return TRUE;   
}

/*
skSend ����str��ip:port�����ǳƻ�����������Ϣ
*/
BOOL CMyPacket::NotifyUDPInit(char *szText, SOCKET skSend,
                           struct sockaddr *toaddr,
                           int nToLen)
{
    int nLen = _tcslen(szText) + sizeof(TCHAR);
    int nDataLen = nLen;
    int nTotalLen = sizeof(tagHDR) + nDataLen;
    char *pTmpBuf = new char[nTotalLen];
    if (NULL == pTmpBuf)
    {
        return FALSE;
    }
    
    tagInfo *pInfo = (tagInfo *)pTmpBuf;
    pInfo->m_hdr.m_nLen = nDataLen;
    pInfo->m_hdr.m_nType = INFO_TYPE_UDP_INIT;
    strcpy((char *)&(pInfo->m_pInfo), szText);
    
    CMySocket::SendTo(skSend, (char *)pInfo, sizeof(tagHDR) + pInfo->m_hdr.m_nLen, 0, 
                    toaddr, nToLen);

    return TRUE;   
}
