#include <windows.h>
#include <tchar.h>

//定义数据段
#pragma data_seg("ShareSeg")

int g_nData = 0x1234;

TCHAR g_szMsg[] = TEXT("ShareSeg");

#pragma data_seg()

//设置数据段属性
#pragma comment(linker, "SECTION: ShareSeg, RWS")

void
Add()
{
    //可用Critical Section 进行同步
    g_nData++;
}

void
SetBuff(TCHAR *psz)
{
    //可用Critical Section进行同步
    _tcscpy(g_szMsg, psz);
}