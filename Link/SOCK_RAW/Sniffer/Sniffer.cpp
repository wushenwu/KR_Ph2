#include <stdio.h>   
#include <winsock2.h>   
#include <ws2tcpip.h>   
   
#pragma comment (lib,"ws2_32.lib")   

#include "MySocket.h"
   
#define SIO_RCVALL _WSAIOW(IOC_VENDOR,1)   
   
struct IPHEAD   
{   
    unsigned char h_len:4;//4位首部长度+4位IP版本号   
    unsigned char ver:4;   
    unsigned char tos;//8位服务类型TOS   
    unsigned short total_len;//16位总长度（字节）   
    unsigned short ident;//16位标识   
    unsigned short frag_and_flags;//3位标志位   
    unsigned char ttl;//8位生存时间 TTL   
    unsigned char proto;//8位协议 (TCP, UDP 或其他)   
    unsigned short checksum;//16位IP首部校验和   
    unsigned int sourceip;//32位源IP地址   
    unsigned int destip;//32位目的IP地址   
};   
   
struct TCPHEAD //定义TCP首部   
{   
    USHORT th_sport; //16位源端口   
    USHORT th_dport; //16位目的端口   
    unsigned int th_seq; //32位序列号   
    unsigned int th_ack; //32位确认号   
    unsigned char th_lenres; //4位首部长度/6位保留字   
    unsigned char th_flag; //6位标志位   
    USHORT th_win; //16位窗口大小   
    USHORT th_sum; //16位校验和   
    USHORT th_urp; //16位紧急数据偏移量   
};   
   
   
char *phostlist[10];//列举主机网卡的数组   
   
DWORD _stdcall Sniffer(void *p)   
{   
    SOCKET s;   
    struct sockaddr_in addr;   
    int itimeout=1000;   
    int ret;   
    char cbuf[1500];//接收数据缓冲区   
    struct IPHEAD *piphd;//定义IP头结构   
    struct TCPHEAD *ptcphd;//定义TCP头结构   
    
    s = socket(AF_INET, SOCK_RAW, IPPROTO_ICMP); //创建一个原始套接字   
    setsockopt(s, SOL_SOCKET, SO_RCVTIMEO, (char*)&itimeout, sizeof(itimeout));   
   
    memset(&addr,0,sizeof(addr));   
    addr.sin_family=AF_INET;   
    addr.sin_addr.S_un.S_addr=inet_addr((char *)p);   
    addr.sin_port=htons(0);     //设置本地端口号   
    bind(s,(struct sockaddr *)&addr,sizeof(addr));//绑定端口   
    //设置sock_raw为sio_rcvall,以便接收所有IP包   
    DWORD dwin=1;   
    DWORD dwout[10];   
    DWORD dwret;   
    WSAIoctl(s,SIO_RCVALL,&dwin,sizeof(dwin),&dwout,sizeof(dwout),&dwret,NULL,NULL);   
   
    for(;;)   
    {   
        ret=recv(s,cbuf,sizeof(cbuf),0);//接收数据   
        if(ret==SOCKET_ERROR)   
        {   
            if(WSAGetLastError()==WSAETIMEDOUT)continue;   
            closesocket(s);   
            return 0;   
        }   
   
        piphd=(struct IPHEAD *)cbuf;//取得IP头数据的地址   
        int iIphLen = sizeof(unsigned long) * (piphd->h_len  & 0xf);   
        ptcphd=(struct TCPHEAD *)(cbuf+iIphLen);//取得TCP头数据的地址   
   
   
        printf("From : %s \t port %d\t",inet_ntoa(*(struct in_addr*)&piphd->sourceip),ntohs(ptcphd->th_sport) );   
        printf("To : %s \t port %d  ",inet_ntoa(*(struct in_addr*)&piphd->destip),ntohs(ptcphd->th_dport));   
       
        switch(piphd->proto)//根据IP头的协议判断数据包协议类型   
        {   
        case 1:   
            printf("ICMP\n");   
            break;   
        case 2:   
            printf("IGMP\n");   
            break;   
        case 6:   
            printf("TCP\n");   
            break;   
        case 17:   
            printf("UDP\n");   
            break;   
        default:   
            printf("unknow:%d\n",piphd->proto);   
        }   
    }   
   
    return 1;   
}   
   
int main(int argc, char **argv)   
{   
    //just for Init
    CMySocket sRaw;
    
    char chname[128];  
    DWORD dwtid; 
    hostent *host; 
    int i = 0;   
    
    //取所有网卡序号，为每个网卡开启一个监听线程 
    gethostname(chname,sizeof(chname));   
    host = gethostbyname(chname);   
    while(host->h_addr_list[i]!=NULL)  
    {   
        phostlist[i] = (char *)malloc(16);   
        sprintf(phostlist[i], "%s",
                               inet_ntoa(*(struct in_addr *)host->h_addr_list[i]));   
        printf("Bind to %s\n", phostlist[i]);  
        
        CreateThread(NULL,
                    0,
                    Sniffer,
                    phostlist[i],
                    0,
                    &dwtid);   
        i++;   
    }   
   
    for(;;)//为每个网卡创建监听线程后要用一个循环防止主线程退出   
    {   
        Sleep(10);   
    } 
    
    return 0;
}   