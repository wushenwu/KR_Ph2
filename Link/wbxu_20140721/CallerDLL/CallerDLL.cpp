#include <stdio.h>
#include "..\\dll\dll.h"

//��ָ̬��lib, ��ӵĶ�̬����dll�ļ�
#pragma comment(lib, "..\\DLL\\Debug\\DLL.lib")

int
main(void)
{
    printf("g_nData = %p\r\n", g_nData);
    printf("%d\r\n", Add(1, 2));
    ShowCurPath();

    return 0;
}