#include <windows.h>
#include <tchar.h>

//�������ݶ�
#pragma data_seg("ShareSeg")

int g_nData = 0x1234;

TCHAR g_szMsg[] = TEXT("ShareSeg");

#pragma data_seg()

//�������ݶ�����
#pragma comment(linker, "SECTION: ShareSeg, RWS")

void
Add()
{
    //����Critical Section ����ͬ��
    g_nData++;
}

void
SetBuff(TCHAR *psz)
{
    //����Critical Section����ͬ��
    _tcscpy(g_szMsg, psz);
}