#include <stdio.h>

//#define DEF_EXPORT

#ifndef DEF_EXPORT

    #include "..\\dll\dll.h"

    //��ָ̬��lib, ��ӵĶ�̬����dll�ļ�
    #pragma comment(lib, "..\\DLL\\Debug\\DLL.lib")
#else
    
    #include "..\\DLL_DEF\\DLL_DEF.h"
    #pragma comment(lib, "..\\DLL_DEF\\Debug\\DLL_DEF.lib")

    //��Ҫָ��ȫ�ֱ����ĵ���
    __declspec(dllimport) extern int g_nData;

#endif

int
main(void)
{
#ifdef DEF_EXPORT
    printf("%x\r\n", g_nData);
    printf("%p\r\n", &g_nData);
    printf("%p\r\n", GetAddr());

    SayHello();

#else
    printf("g_nData = %p\r\n", g_nData);
    printf("%d\r\n", Add(1, 2));
    ShowCurPath();

    CTest test;

#endif

    return 0;
}