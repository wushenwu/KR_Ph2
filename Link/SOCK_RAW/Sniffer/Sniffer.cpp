#include <stdio.h>   
#include <winsock2.h>   
#include <ws2tcpip.h>   
   
#pragma comment (lib,"ws2_32.lib")   

#include "MySocket.h"
   
#define SIO_RCVALL _WSAIOW(IOC_VENDOR,1)   
   
struct IPHEAD   
{   
    unsigned char h_len:4;//4λ�ײ�����+4λIP�汾��   
    unsigned char ver:4;   
    unsigned char tos;//8λ��������TOS   
    unsigned short total_len;//16λ�ܳ��ȣ��ֽڣ�   
    unsigned short ident;//16λ��ʶ   
    unsigned short frag_and_flags;//3λ��־λ   
    unsigned char ttl;//8λ����ʱ�� TTL   
    unsigned char proto;//8λЭ�� (TCP, UDP ������)   
    unsigned short checksum;//16λIP�ײ�У���   
    unsigned int sourceip;//32λԴIP��ַ   
    unsigned int destip;//32λĿ��IP��ַ   
};   
   
struct TCPHEAD //����TCP�ײ�   
{   
    USHORT th_sport; //16λԴ�˿�   
    USHORT th_dport; //16λĿ�Ķ˿�   
    unsigned int th_seq; //32λ���к�   
    unsigned int th_ack; //32λȷ�Ϻ�   
    unsigned char th_lenres; //4λ�ײ�����/6λ������   
    unsigned char th_flag; //6λ��־λ   
    USHORT th_win; //16λ���ڴ�С   
    USHORT th_sum; //16λУ���   
    USHORT th_urp; //16λ��������ƫ����   
};   
   
   
char *phostlist[10];//�о���������������   
   
DWORD _stdcall Sniffer(void *p)   
{   
    SOCKET s;   
    struct sockaddr_in addr;   
    int itimeout=1000;   
    int ret;   
    char cbuf[1500];//�������ݻ�����   
    struct IPHEAD *piphd;//����IPͷ�ṹ   
    struct TCPHEAD *ptcphd;//����TCPͷ�ṹ   
    
    s = socket(AF_INET, SOCK_RAW, IPPROTO_ICMP); //����һ��ԭʼ�׽���   
    setsockopt(s, SOL_SOCKET, SO_RCVTIMEO, (char*)&itimeout, sizeof(itimeout));   
   
    memset(&addr,0,sizeof(addr));   
    addr.sin_family=AF_INET;   
    addr.sin_addr.S_un.S_addr=inet_addr((char *)p);   
    addr.sin_port=htons(0);     //���ñ��ض˿ں�   
    bind(s,(struct sockaddr *)&addr,sizeof(addr));//�󶨶˿�   
    //����sock_rawΪsio_rcvall,�Ա��������IP��   
    DWORD dwin=1;   
    DWORD dwout[10];   
    DWORD dwret;   
    WSAIoctl(s,SIO_RCVALL,&dwin,sizeof(dwin),&dwout,sizeof(dwout),&dwret,NULL,NULL);   
   
    for(;;)   
    {   
        ret=recv(s,cbuf,sizeof(cbuf),0);//��������   
        if(ret==SOCKET_ERROR)   
        {   
            if(WSAGetLastError()==WSAETIMEDOUT)continue;   
            closesocket(s);   
            return 0;   
        }   
   
        piphd=(struct IPHEAD *)cbuf;//ȡ��IPͷ���ݵĵ�ַ   
        int iIphLen = sizeof(unsigned long) * (piphd->h_len  & 0xf);   
        ptcphd=(struct TCPHEAD *)(cbuf+iIphLen);//ȡ��TCPͷ���ݵĵ�ַ   
   
   
        printf("From : %s \t port %d\t",inet_ntoa(*(struct in_addr*)&piphd->sourceip),ntohs(ptcphd->th_sport) );   
        printf("To : %s \t port %d  ",inet_ntoa(*(struct in_addr*)&piphd->destip),ntohs(ptcphd->th_dport));   
       
        switch(piphd->proto)//����IPͷ��Э���ж����ݰ�Э������   
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
    
    //ȡ����������ţ�Ϊÿ����������һ�������߳� 
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
   
    for(;;)//Ϊÿ���������������̺߳�Ҫ��һ��ѭ����ֹ���߳��˳�   
    {   
        Sleep(10);   
    } 
    
    return 0;
}   