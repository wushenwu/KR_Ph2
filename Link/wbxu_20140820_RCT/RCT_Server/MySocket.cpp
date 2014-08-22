// MySocket.cpp: implementation of the CMySocket class.
//
//////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "MySocket.h"

#ifdef _DEBUG
#undef THIS_FILE
static char THIS_FILE[]=__FILE__;
#define new DEBUG_NEW
#endif

void ShowErrorMessage()
{
    LPVOID lpMsgBuf;
    FormatMessage( 
        FORMAT_MESSAGE_ALLOCATE_BUFFER | 
        FORMAT_MESSAGE_FROM_SYSTEM | 
        FORMAT_MESSAGE_IGNORE_INSERTS,
        NULL,
        ::WSAGetLastError(),
        MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT), // Default language
        (LPTSTR) &lpMsgBuf,
        0,
        NULL 
        );

    DebugBreak();
    
    ::MessageBox( NULL, (LPCTSTR)lpMsgBuf, "Error", MB_OK | MB_ICONINFORMATION );
    LocalFree(lpMsgBuf);
}

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
   m_Socket = INVALID_SOCKET;
   memset(&m_wsaData, 0, sizeof(WSADATA));
   m_IsErr = FALSE;

   //////////////////////////////////////////////////////////////////////////
   WORD wVerReq = MAKEWORD(low, high);
   int nRet = ::WSAStartup(wVerReq, &m_wsaData);
   if (nRet != 0)
   {
       //其他详细错误处理
       ShowErrorMessage();
       m_strErr = "CMySocket WSAStartup Error";
       m_IsErr = TRUE;
   }
}

CMySocket::~CMySocket()
{
    //AfxMessageBox("~CMySocket");
    Close();

    //WSACleanup();  不能这样处理，可能因为栈空间对象的释放而导致整个网络状态的变更。
}


BOOL CMySocket::Create_TCP(int af, int type, int proto)
{
    m_Socket = ::socket(af, type, proto);
    if (INVALID_SOCKET == m_Socket)
    {
        ShowErrorMessage();
        m_strErr = "CMySocket Create Error";
        m_IsErr = TRUE;

        return FALSE;
    }

    m_IsErr = FALSE;
    return TRUE;
}

BOOL CMySocket::Create_UDP(int af, int type, int proto)
{
    m_Socket = ::socket(af, type, proto);
    if (INVALID_SOCKET == m_Socket)
    {
        ShowErrorMessage();
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
    addr.sin_port   = htons(Port);  //别忘记大端处理
    addr.sin_addr.S_un.S_addr   = inet_addr(IP);

    int nRet = ::bind(m_Socket, (sockaddr *)&addr, sizeof(sockaddr));
    if (SOCKET_ERROR == nRet)
    {
        ShowErrorMessage();
        closesocket(m_Socket);

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
        ShowErrorMessage();
        closesocket(m_Socket);

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
        ShowErrorMessage();
        closesocket(m_Socket);

        m_strErr = "CMySocket Accept Error";
        m_IsErr = TRUE;

        *clientsocket = INVALID_SOCKET;
        return FALSE;
    }

    *clientsocket = sk;
    m_IsErr = FALSE;
    return TRUE;
}

#if 0
BOOL CMySocket::Accept(tagClientSocket *client)
{
    int nLen = sizeof(sockaddr);
    sockaddr addr;
    SOCKET sk = ::accept(m_Socket,
                        &addr,
                        &nLen);

    if (INVALID_SOCKET == sk)
    {
        closesocket(m_Socket);

        m_strErr = "CMySocket Accept Error";
        m_IsErr = TRUE;
        
        client->m_Socket = INVALID_SOCKET;
        return FALSE;
    }
    
    m_IsErr = FALSE;
    client->m_Socket = sk;
    return TRUE;

}
#endif

BOOL CMySocket::Connect(const char *IP, u_short Port)
{
    sockaddr_in addr = {0};
    addr.sin_family = AF_INET;
    addr.sin_port   = htons(Port);  //不要忘记对大端的处理
    addr.sin_addr.S_un.S_addr   = inet_addr(IP);
    
    int nRet = ::connect(m_Socket, (sockaddr *)&addr, sizeof(sockaddr));
    if (SOCKET_ERROR == nRet)
    {
        ShowErrorMessage();
        closesocket(m_Socket);

        m_strErr = "CMySocket Connect Error";
        m_IsErr  = TRUE;
        return FALSE;
    }
    
    m_IsErr = FALSE;
    return TRUE;
}

BOOL CMySocket::Send(SOCKET client, char *buf, int len, int flags)
{
    int nRet = ::send(client, buf, len, flags);
    if (SOCKET_ERROR == nRet)
    {
        ShowErrorMessage();
        return FALSE;
    }
    
    return TRUE;
}

BOOL CMySocket::SendTo(SOCKET client, char *buf, int len, int flags, 
                     struct sockaddr *addr, 
                     int nLen)
{
    int nRet = ::sendto(client, buf, len, flags, addr, nLen);
    if (SOCKET_ERROR == nRet)
    {
        ShowErrorMessage();
        return FALSE;
    }
    
    return TRUE;
}

int CMySocket::Send(const char *buf, int len, int flags)
{
    int nRet = ::send(m_Socket, buf, len, flags);
    if (SOCKET_ERROR == nRet)
    {
        ShowErrorMessage();
    }

    return nRet;
}

BOOL CMySocket::Close()
{
    if (INVALID_SOCKET == m_Socket)
    {
        m_strErr = "CMySocket close INVALID_SOCKET";
        m_IsErr = TRUE;
        return FALSE;
    }

    int nRet = ::closesocket(m_Socket);
    if (SOCKET_ERROR == nRet)
    {
        ShowErrorMessage();
        m_strErr = "CMySocket close error";
        m_IsErr = TRUE;

        return FALSE;
    }

    m_Socket = INVALID_SOCKET;
    m_IsErr = FALSE;
    return TRUE;
}

//应该保持与Packet中灰恢
typedef struct _tagHDR
{
    u_int pad1;
    u_int pad2;
}tagHDR;

/*
同上面的重载，只是针对非类对象的工具性使用
*/
BOOL CMySocket::Recv(SOCKET client, char *buf, int len, int flags)
{
    //应该进行粘包处理, tagInfo:  len, (type, data)
    u_int nTotalLen;
    u_int nRecv = 0;
    int nRet = 0;
    
    nRet = ::recv(client, buf, sizeof(tagHDR), flags);
    if (0 == nRet)
    {
        ShowErrorMessage();
        //gracefully closed
        return FALSE;
        
    }
    else if (SOCKET_ERROR == nRet)
    {
        //erro
        ShowErrorMessage();
        return FALSE;
    }
    
    //应该一直读取，直到读够nTotalLen
    nTotalLen = *(u_int *)buf;
    nRecv = 0; //len
    while (nRecv < nTotalLen)
    {
        nRet = ::recv(client, buf + sizeof(tagHDR) + nRecv, nTotalLen - nRecv, flags);
        if (0 == nRet)
        {
            //gracefully closed
            ShowErrorMessage();
            return FALSE;
        }
        else if (SOCKET_ERROR == nRet)
        {
            //error
            ShowErrorMessage();
            return FALSE;
        }
        
        nRecv += nRet;
    }
    
    return TRUE;
}

BOOL CMySocket::RecvRaw(SOCKET client, char *buf, int len, int flags, int *pnLen)
{
    int nRet = ::recv(client, buf, len, flags);
    if (0 == nRet)
    {
        //gracefully closed
        ShowErrorMessage();
        return FALSE;
    }
    else if (SOCKET_ERROR == nRet)
    {
        if (WSAEWOULDBLOCK == WSAGetLastError())
        {
            return FALSE;
        }

        //error
        ShowErrorMessage();
        return FALSE;
    }

    if (pnLen != NULL)
    {
        *pnLen = nRet;
    }
    return TRUE;
}

BOOL CMySocket::GetAddress(SOCKET sk, sockaddr_in *paddrin, CString &strIPPort)
{
    int nLen = sizeof(sockaddr_in);
    int nRet = getpeername(sk, (sockaddr *)paddrin, &nLen);
    if (SOCKET_ERROR == nRet)
    {
        ShowErrorMessage();
        return FALSE;
    }

    char *cIP = inet_ntoa(paddrin->sin_addr);
    strIPPort.Format("%s: %d", cIP, ntohs(paddrin->sin_port));

    return TRUE;
}

BOOL CMySocket::RecvFrom(SOCKET s, char *buf, int len, int flags, sockaddr *from, int *fromlen)
{
    int nRet = ::recvfrom(s, buf, len, flags, from, fromlen);
    if (0 == nRet)
    {
        ShowErrorMessage();
        return FALSE;
    }
    else if (SOCKET_ERROR == nRet)
    {
        ShowErrorMessage();
        return FALSE;
    }

    return TRUE;
}

void CMySocket::GetAddress(sockaddr_in *paddrin, CString &strIPPort)
{
    char *cIP = inet_ntoa(paddrin->sin_addr);
    strIPPort.Format("%s: %d", cIP, ntohs(paddrin->sin_port));
}
