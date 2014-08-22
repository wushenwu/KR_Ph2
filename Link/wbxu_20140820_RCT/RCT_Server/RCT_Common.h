#ifndef RCT_COMMON_H_85CDA3EF_8E39_4c9e_A844_D8A457A9A471
#define RCT_COMMON_H_85CDA3EF_8E39_4c9e_A844_D8A457A9A471

//unsigned short
#define RCT_CAPTURE         0x0001  // m_nLen, m_pCommand not needed
#define RCT_SCREEN_INFO     0x0002  // m_nLen, m_pCommand need,  Width , Height

typedef struct _tagRCTCommand
{
    unsigned short m_Command;
    unsigned int   m_nLen;  
    char *m_pCommand;
}tagRCTCommand;

#define COMPRESS
typedef struct _tagScreenData  //截屏的xinxi
{
    int m_nWidth;
    int m_nHeight;
#ifdef COMPRESS
    unsigned long m_nDstLen;    //compressBound所返回的长度
    unsigned long m_nCompressLen;   //压缩后旱长度
#endif
}tagScreenData;

#endif