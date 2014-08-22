#include <stdio.h>
#include "..\\StaticLib\\StaticLib.h"

#pragma comment(lib, "..\\Bin\\Static\\Debug\\StaticLib")

int
main(void)
{
    printf("g_nData = %p\r\n", g_nData);
    printf("%d\r\n", Add(1, 2));
    ShowCurPath();
    return 0;
}