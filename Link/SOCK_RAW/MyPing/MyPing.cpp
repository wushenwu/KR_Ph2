// MyPing.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <stdio.h>

#include "MySocket.h"
#include "MyPing.h"
#include "pktHeader.h"

#define REQ_DATASIZE    (32)
//used to init
CMySocket sRaw;

void Usage(char *szApp)
{
    printf("%s x.x.x.x or %s domain.com", szApp, szApp);
    
    //todo
}

/*
*			I N _ C K S U M
*
* Checksum routine for Internet Protocol family headers (C Version)
*
*/
u_short in_cksum(u_short *addr, int len)
{
    register int nleft = len;
    register u_short *w = addr;
    register u_short answer;
    register int sum = 0;
    
    /*
    *  Our algorithm is simple, using a 32 bit accumulator (sum),
    *  we add sequential 16 bit words to it, and at the end, fold
    *  back all the carry bits from the top 16 bits into the lower
    *  16 bits.
    */
    while( nleft > 1 )  {
        sum += *w++;
        nleft -= 2;
    }
    
    /* mop up an odd byte, if necessary */
    if( nleft == 1 ) {
        u_short	u = 0;
        
        *(u_char *)(&u) = *(u_char *)w ;
        sum += u;
    }
    
    /*
    * add back carry outs from top 16 bits to low 16 bits
    */
    sum = (sum >> 16) + (sum & 0xffff);	/* add hi 16 to low 16 */
    sum += (sum >> 16);			/* add carry */
    answer = ~sum;				/* truncate to 16 bits */
    return (answer);
}

BOOL SendEchoRequest(CMySocket &s, LPSOCKADDR_IN lpstToAddr)
{
    static tagECHOREQUEST echoReq;
    static unsigned short seq = 0;
    static unsigned short pid = (short)GetCurrentProcessId();

    ICMP_HDR *phdr = &echoReq.icmpHdr; 
    phdr->icmp_type = ICMP_ECHOREQ;
    phdr->icmp_id = pid;
    phdr->icmp_seq = seq++;
    phdr->icmp_data = GetTickCount();
    phdr->icmp_cksum = 0;

    phdr->icmp_cksum = in_cksum((unsigned short *)phdr, sizeof(ICMP_HDR));

    BOOL bRet = CMySocket::SendTo(s.m_Socket,
                             (char *)&echoReq,
                             sizeof(tagECHOREQUEST),
                             0,
                             (sockaddr *)lpstToAddr,
                             sizeof(sockaddr)
                             );
    if (!bRet)
    {
        return FALSE;
    }

    return TRUE;
}

int WaitForEchoReply(CMySocket &s)
{
    fd_set fdReads;
    FD_ZERO(&fdReads);
    FD_SET(sRaw.m_Socket, &fdReads);

    timeval tv = {1, 0};
    return select(0, &fdReads, NULL, NULL, &tv);
}

BOOL RecvEchoReply(CMySocket &s, LPSOCKADDR_IN lpsaFrom, u_char *pTTL, unsigned long *plTime) 
{
    ECHOREPLY echoReply;
    int nAddrLen = sizeof(struct sockaddr_in);
    
    // Receive the echo reply	
    BOOL bRet = CMySocket::RecvFrom(s.m_Socket,					// socket
                            (LPSTR)&echoReply,	// buffer
                            sizeof(ECHOREPLY),	// size of buffer
                            0,					// flags
                            (LPSOCKADDR)lpsaFrom,	// From address
                            &nAddrLen);			// pointer to address len
    
    // Check return value
    if (!bRet)
    {
        return FALSE;
    }
    
    // return time sent and IP TTL
    *pTTL = echoReply.ipHdr.ttl;
	*plTime = echoReply.icmpHdr.icmp_data; 
  	
    return TRUE;
}

void Ping(const char *szHost, unsigned int nRetries)
{
    //创建原始套接字， 用于后续ICMP的发送
    BOOL bRet = sRaw.Create_RAW();
    if (!bRet)
    {
        printf("Create Raw Socket Error\r\n");
        return;
    }

    LPHOSTENT lpHost = gethostbyname(szHost);
    if (NULL == lpHost)
    {
        printf("Host %s not found\r\n", szHost);
        return;
    }

    //just for fun
    for (int n = 0;  lpHost->h_addr_list[n] != NULL; n++)
    {
        printf("%s\r\n", inet_ntoa(*(struct in_addr *)lpHost->h_addr_list[n]));
    }

    //设置发送目的地
    sockaddr_in dstAddr;
    dstAddr.sin_family = AF_INET;
    dstAddr.sin_port   = htons(0);  //ICMP对port不关注
    dstAddr.sin_addr.s_addr = *((u_long *) (lpHost->h_addr));   //The macro h_addr is defined to be h_addr_list[0] for compatibility with older software //((u_long**)lpHost->h_addr_list)[0][0];

    printf("Pinging %s [%s] with %d bytes of data:\r\n\r\n",
           lpHost->h_name,
           inet_ntoa(dstAddr.sin_addr),
           REQ_DATASIZE
           );

    //准备接收reply的变量
    sockaddr_in srcAddr;
    unsigned char ttl;
    unsigned long ltime;
    DWORD dwElapsed;
    
    for (unsigned int i = 0; i < nRetries; i++)
    {
        // 发送echo request
		bRet = SendEchoRequest(sRaw, &dstAddr);
        if (!bRet)
        {
            printf("SendEchoRequest Error");
            continue;
        }

        // 等待应答
        int nRet = WaitForEchoReply(sRaw);
        if (0 == nRet)
        {
            printf("Request Time Out\r\n");
            continue;
        }
        else if (SOCKET_ERROR == nRet)
        {
            printf("Select Error\r\n");
            continue;
        }

        //接收应答
        bRet = RecvEchoReply(sRaw, &srcAddr,  &ttl, &ltime);
        if (!bRet)
        {
            printf("Recv Echo Error\r\n");
            continue;
        }

        // Calculate elapsed time
        dwElapsed = GetTickCount() - ltime;
        printf("Reply[%d] from: %s: bytes=%d time=%ldms TTL=%d\r\n", 
                i + 1,
                inet_ntoa(srcAddr.sin_addr), 
                REQ_DATASIZE,
                dwElapsed,
                ttl);
    }
}

int main(int argc, char* argv[])
{
    if (argc < 2)
    {
        Usage(argv[0]);
        return -1;
    }
    
    //getopt

    Ping(argv[1], 4);

	return 0;
}
