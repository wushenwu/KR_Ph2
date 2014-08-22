// MySocket.h: interface for the CMySocket class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_MYSOCKET_H__E4574608_E4F7_4387_8F37_7082F8B3EE3E__INCLUDED_)
#define AFX_MYSOCKET_H__E4574608_E4F7_4387_8F37_7082F8B3EE3E__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include <Winsock2.h>
#pragma  comment(lib, "Ws2_32.lib")

#define  HOST "127.0.0.1"
#define  PORT   (htons(3412))   //别忘记大端

#define SERVER  0
#define CLIENT  1

typedef struct _tagClientSocket
{
    sockaddr m_addr;
    SOCKET m_Socket;
    
}tagClientSocket;

class CMySocket  
{
public:
    CMySocket(BYTE low = 2, BYTE high = 2);
	virtual ~CMySocket();

public:
	BOOL Close();
	int Send(const char *buf, int len, int flags);
	int Recv(char *buf, int len, int flags);
	BOOL Connect(const char *IP, u_short Port);
	BOOL Accept(tagClientSocket *client);
	BOOL Accept(struct sockaddr *addr, SOCKET *clientsocket);
	BOOL Listen(int backlog = SOMAXCONN);
	BOOL Bind(const char *IP, u_short Port);
	TCHAR * GetError();
	BOOL Create(int af = AF_INET, 
                int type = SOCK_STREAM,     //SOCK_DGRAM
                int  proto = IPPROTO_TCP);

protected:
    WSAData m_wsaData;
    SOCKET m_Socket;

    CString m_strErr;   //记录错误信息
    BOOL m_IsErr;

};

#endif // !defined(AFX_MYSOCKET_H__E4574608_E4F7_4387_8F37_7082F8B3EE3E__INCLUDED_)
