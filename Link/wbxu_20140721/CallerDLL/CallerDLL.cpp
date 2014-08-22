#include <stdio.h>
#include "..\\dll\dll.h"

//静态指定lib, 间接的动态包含dll文件
#pragma comment(lib, "..\\DLL\\Debug\\DLL.lib")

int
main(void)
{
    printf("g_nData = %p\r\n", g_nData);
    printf("%d\r\n", Add(1, 2));
    ShowCurPath();

    return 0;
}