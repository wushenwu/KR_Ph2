#ifndef PKTHEADER_H_1967A467_2624_4c17_BF88_25FBD1AEE998
#define PKTHEADER_H_1967A467_2624_4c17_BF88_25FBD1AEE998

typedef struct _ip_hdr
{
    unsigned char h_len:4;         //length of header
    unsigned char version:4;      //Version of IP
    unsigned char tos;               //Type of service
    unsigned short total_len;     //total length of the packet
    
    unsigned short ident;          //unique identifier
    unsigned short frag_and_flags; //flags
    
    unsigned char ttl;          //ttl
    unsigned char proto;        //protocol(TCP ,UDP etc)
    unsigned short checksum;    //IP checksum
    
    unsigned int sourceIP;
    unsigned int destIP;
}IP_HDR;

typedef struct _icmp_hdr 
{
    unsigned char icmp_type;     //类型
    unsigned char icmp_code;     //代码
    unsigned short icmp_cksum;  //效验和
    unsigned short icmp_id;     //n
    unsigned short icmp_seq;    //n
    unsigned long  icmp_data;   //GetTickout()
}ICMP_HDR;

#define ICMP_ECHOREPLY	0
#define ICMP_ECHOREQ	8

// ICMP Echo Request
typedef struct tagECHOREQUEST
{
    ICMP_HDR icmpHdr;
    //Other Data
}ECHOREQUEST, *PECHOREQUEST;


// ICMP Echo Reply
typedef struct tagECHOREPLY
{
    IP_HDR	ipHdr;
    ICMP_HDR icmpHdr;
    //Other Data
}ECHOREPLY, *PECHOREPLY;

#endif