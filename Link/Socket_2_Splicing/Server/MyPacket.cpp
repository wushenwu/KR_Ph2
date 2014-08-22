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
向老上线用户recvSK通告新用户newSK的上线
*/
BOOL CMyPacket::NotifyOnline(SOCKET recvSK, SOCKET newSK)
{
    sockaddr_in addrin;
    int nDataLen = sizeof(sockaddr_in);
    getpeername(newSK, (sockaddr *)&addrin, &nDataLen);

    int nLen = sizeof(tagHDR) + nDataLen;    //总长度
    char *pTmpBuf = new char[nLen];
    if (NULL == pTmpBuf)
    {
        return FALSE;
    }

    tagInfo *pInfo = (tagInfo *)pTmpBuf;
    pInfo->m_hdr.m_nLen = nDataLen;             //实际的数据长度
    pInfo->m_hdr.m_nType = INFO_TYPE_ONLINE;

    //先发送长度和类型
    ::send(recvSK, (char *)pInfo, sizeof(tagHDR), 0);

    //再发送实际的数据
    ::send(recvSK, (char *)&addrin, nDataLen, 0);

    delete[] pTmpBuf;
    
    return TRUE;
}

BOOL CMyPacket::NotifyOffline(SOCKET recvSK, SOCKET newSK)
{
    sockaddr_in addrin;
    int nDataLen = sizeof(sockaddr_in);
    getpeername(newSK, (sockaddr *)&addrin, &nDataLen);
    
    int nLen = sizeof(tagHDR) + nDataLen;    //总长度
    char *pTmpBuf = new char[nLen];
    if (NULL == pTmpBuf)
    {
        return FALSE;
    }
    
    tagInfo *pInfo = (tagInfo *)pTmpBuf;
    pInfo->m_hdr.m_nLen = nDataLen;             //实际的数据长度
    pInfo->m_hdr.m_nType = INFO_TYPE_OFFLINE;
    
    //先发送长度和类型
    ::send(recvSK, (char *)pInfo, sizeof(tagHDR), 0);
    
    //再发送实际的数据
    ::send(recvSK, (char *)&addrin, nDataLen, 0);
    
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

BOOL CMyPacket::NotifyRequest(BOOL bSingle, SOCKET csocket,  //尽可能使用引用，避免相关问题
                                CString &str)
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

    //先发送长度及类型
    CMySocket::Send(csocket, (char *)pInfo, sizeof(tagHDR), 0);

    //再发送实际数据
    memcpy(&pInfo->m_pInfo, str, nDataLen);
    
    //可包含ip:port, 或者昵称，由服务器定义
    CMySocket::Send(csocket, (char *)(&pInfo->m_pInfo), pInfo->m_hdr.m_nLen, 0);

    return TRUE;
}

/*
skSend 发向str（ip:port或者昵称或者其他）消息
*/
BOOL CMyPacket::NotifyChat(BOOL bBroadCast, char *szText, SOCKET skSend, char *pDst)
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

    //先发送长度
    CMySocket::Send(skSend, (char *)pInfo, sizeof(tagHDR), 0);

    //再发送实际数据
    strcpy((char *)&(pInfo->m_pInfo), szText);
    char *pTmp = (char *)&(pInfo->m_pInfo) + nLen;
    memcpy(pTmp, pDst, nDstLen + 1);
    
    //可包含ip:port, 或者昵称，由服务器定义
    CMySocket::Send(skSend, (char *)&(pInfo->m_pInfo), pInfo->m_hdr.m_nLen, 0);

    return TRUE;   
}
