#ifndef MSG_H_E93368F2_923A_426a_B2F5_8A428BF0BC73

#define MSG_H_E93368F2_923A_426a_B2F5_8A428BF0BC73

typedef struct _tagMyMSG
{
    UINT dwType;
    char *pszInfo;
}tagMyMSG;

#define MYMSG(x) {x, #x}

extern tagMyMSG *g_pMSGAry;
extern size_t g_nMSGCount;

BOOL GetIndex(UINT uMsg, size_t *pIndex);


#endif