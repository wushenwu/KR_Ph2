// MyPacket.h: interface for the CMyPacket class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_MYPACKET_H__24A6D46B_6070_4CB1_8BDC_8FFCBBDC11F9__INCLUDED_)
#define AFX_MYPACKET_H__24A6D46B_6070_4CB1_8BDC_8FFCBBDC11F9__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include <Winsock2.h>
#include "MySocket.h"

/*
不同的通信数据：
1. 普通聊天消息： 长度 + (type + 内容)
2. 客户上线消息： 长度 + (type + sockaddr_in)
3. 客户下线消息： 长度 + (type + sockaddr_in)
*/

#define INFO_TYPE_CHAT      0x00000000  //正常聊天
#define INFO_TYPE_ONLINE    0x00000001
#define INFO_TYPE_OFFLINE   0x00000002
#define INFO_TYPE_REQUEST   0x00000003  //私聊
#define INFO_TYPE_MULTI     0x00000004  //多人聊天
#define INFO_TYPE_BROADCAST 0x00000005  //广播
#define INFO_TYPE_UDP_INIT  0x00000006  //UDP中客户端请求建立连接

typedef struct _tagHDR
{
    u_int       m_nLen;     //+0
    u_int       m_nType;    //+4
}tagHDR;

typedef struct _tagInfo
{
    tagHDR     m_hdr;  
    char       *m_pInfo;   //+8
}tagInfo;

class CMyPacket  
{
public:
    static BOOL NotifyUDPInit(char *szText, SOCKET skSend,
                            struct sockaddr *toaddr,
                           int nToLen);
	static BOOL NotifyChat(BOOL bBroadCast, char *szText, SOCKET skSend,  char *pDst,
                            BOOL bTCP = TRUE,
                            struct sockaddr *toaddr = NULL,
                            int nToLen = 0);
	static BOOL NotifyRequest(BOOL bSingle, SOCKET socket, CString &str,
                             BOOL bTCP = TRUE,
                             struct sockaddr_in *toaddr = NULL,
                             int nToLen = 0);
	static u_int GetType(char *szBuff, char **pData, u_int *nLen);
	static BOOL NotifyOnline(SOCKET onSOC, SOCKET newSOC);
    static BOOL NotifyOnline(SOCKET s, sockaddr_in oldAddr, sockaddr_in newAddr); 
    static BOOL NotifyOffline(SOCKET onSOC, SOCKET newSOC);
    static BOOL NotifyOffline(SOCKET s, sockaddr_in oldAddr, sockaddr_in newAddr);
	CMyPacket();
	virtual ~CMyPacket();

};

#endif // !defined(AFX_MYPACKET_H__24A6D46B_6070_4CB1_8BDC_8FFCBBDC11F9__INCLUDED_)
