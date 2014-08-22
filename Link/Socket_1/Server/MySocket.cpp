// MySocket.cpp: implementation of the CMySocket class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "Server.h"
#include "MySocket.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

/*
#define MAKEWORD(low,high) \
        ((WORD)((BYTE)(low)) | (((WORD)(BYTE)(high))<<8)))

int WSAStartup(
    WORD wVersionRequested,
    LPWSADATA lpWSAData
    );

SOCKET socket(
  int af,       
  int type,     
  int protocol  
);

int bind(
  SOCKET s,                          
  const struct sockaddr FAR *name,   
  int namelen                        
  );

int listen(
  SOCKET s,    
  int backlog  
);

SOCKET accept(
  SOCKET s,
  struct sockaddr FAR *addr,
  int FAR *addrlen
);

int connect(
  SOCKET s,                          
  const struct sockaddr FAR *name,  
  int namelen                        
);

int recv(
  SOCKET s,       
  char FAR *buf,  
  int len,        
  int flags       
);

int send(
  SOCKET s,              
  const char FAR *buf,  
  int len,               
  int flags              
);

*/


//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CMySocket::CMySocket(BYTE low, BYTE high)
{   
   memset(&m_wsaData, 0, sizeof(WSADATA));
   m_IsErr = FALSE;

   //////////////////////////////////////////////////////////////////////////
   WORD wVerReq = MAKEWORD(low, high);
   int nRet = ::WSAStartup(wVerReq, &m_wsaData);
   if (nRet != 0)
   {
       //其他详细错误处理
       m_strErr = "CMySocket WSAStartup Error";
       m_IsErr = TRUE;
   }
}

CMySocket::~CMySocket()
{
    WSACleanup();
}

BOOL CMySocket::Create(int af, int type, int proto)
{
    m_Socket = ::socket(af, type, proto);
    if (INVALID_SOCKET == m_Socket)
    {
        m_strErr = "CMySocket Create Error";
        m_IsErr = TRUE;

        return FALSE;
    }

    m_IsErr = FALSE;
    return TRUE;
}


TCHAR * CMySocket::GetError()
{
    if (m_IsErr)
    {
        return m_strErr.GetBuffer(0);
    }
    else
    {
        return "No Error";
    }
    
}

BOOL CMySocket::Bind(const char *IP, u_short Port)
{
    sockaddr_in addr = {0};
    addr.sin_family = AF_INET;
    addr.sin_port   = Port;
    addr.sin_addr.S_un.S_addr   = inet_addr(IP);

    int nRet = ::bind(m_Socket, (sockaddr *)&addr, sizeof(sockaddr));
    if (SOCKET_ERROR == nRet)
    {
        m_strErr = "CMySocket Bind Error";
        m_IsErr  = TRUE;
        return FALSE;
    }

    m_IsErr = FALSE;
    return TRUE;
}

BOOL CMySocket::Listen(int backlog)
{
    int nRet = ::listen(m_Socket, backlog);
    if (SOCKET_ERROR == nRet )
    {
        m_strErr = "CMySocket Listen Error";
        m_IsErr = TRUE;
        return FALSE;
    }

    m_IsErr = FALSE;
    return TRUE;
}

BOOL CMySocket::Accept(sockaddr *addr, SOCKET *clientsocket)
{
    int nLen = sizeof(sockaddr);
    SOCKET sk = ::accept(m_Socket,
                         addr,
                         &nLen);

    if (INVALID_SOCKET == sk)
    {
        m_strErr = "CMySocket Accept Error";
        m_IsErr = TRUE;

        *clientsocket = INVALID_SOCKET;
        return FALSE;
    }

    *clientsocket = sk;
    m_IsErr = FALSE;
    return TRUE;
}

BOOL CMySocket::Accept(tagClientSocket *client)
{
    int nLen = sizeof(sockaddr);
    SOCKET sk = ::accept(m_Socket,
                        &client->m_addr,
                        &nLen);

    if (INVALID_SOCKET == sk)
    {
        m_strErr = "CMySocket Accept Error";
        m_IsErr = TRUE;
        
        client->m_Socket = INVALID_SOCKET;
        return FALSE;
    }
    
    m_IsErr = FALSE;
    client->m_Socket = sk;
    return TRUE;

}

BOOL CMySocket::Connect(const char *IP, u_short Port)
{
    sockaddr_in addr = {0};
    addr.sin_family = AF_INET;
    addr.sin_port   = Port;
    addr.sin_addr.S_un.S_addr   = inet_addr(IP);
    
    int nRet = ::connect(m_Socket, (sockaddr *)&addr, sizeof(sockaddr));
    if (SOCKET_ERROR == nRet)
    {
        m_strErr = "CMySocket Connect Error";
        m_IsErr  = TRUE;
        return FALSE;
    }
    
    m_IsErr = FALSE;
    return TRUE;
}

int CMySocket::Recv(char *buf, int len, int flags)
{
    return ::recv(m_Socket, buf, len ,flags);
}


int CMySocket::Send(const char *buf, int len, int flags)
{
    return ::send(m_Socket, buf, len, flags);
}

BOOL CMySocket::Close()
{
    int nRet = ::closesocket(m_Socket);
    if (SOCKET_ERROR == nRet)
    {
        m_strErr = "CMySocket close error";
        m_IsErr = TRUE;

        return FALSE;
    }

    m_IsErr = FALSE;
    return TRUE;
}
